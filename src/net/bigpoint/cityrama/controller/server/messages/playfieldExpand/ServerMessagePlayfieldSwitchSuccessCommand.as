package net.bigpoint.cityrama.controller.server.messages.playfieldExpand
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.buffSystem.NeedMatrixProxy;
   import net.bigpoint.cityrama.model.field.MatrixProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.ground.PlaneProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.horizon.vo.HorizionSettingsVo;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.BuildingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldDTO;
   import net.bigpoint.cityrama.model.server.vo.server.DecorationVo;
   import net.bigpoint.cityrama.model.server.vo.server.GroundDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayfieldDTO;
   import net.bigpoint.cityrama.model.urbies.PathWalkProxy;
   import net.bigpoint.cityrama.model.urbies.SpawnProxy;
   import net.bigpoint.cityrama.model.urbies.UrbiesLifeProxy;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldSwitchSuccessCommand extends SimpleCommand
   {
      
      public function ServerMessagePlayfieldSwitchSuccessCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:PlayfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
         var _loc3_:Boolean = false;
         if(_loc2_.playfieldDTO == null)
         {
            _loc3_ = true;
            facade.sendNotification(ApplicationNotificationConstants.PREPARE_PLAYFIELD);
         }
         var _loc4_:Object = MessageVo(param1.getBody()).json;
         var _loc5_:GameConfigProxy = GameConfigProxy(facade.retrieveProxy(GameConfigProxy.NAME));
         var _loc6_:ConfigPlayfieldDTO = _loc5_.getConfigPlayfieldVoById(_loc4_.p.c);
         var _loc7_:Vector.<BuildingDTO> = _loc2_.createBuidingDTOsForPlayfieldDTO(_loc4_.p.b);
         var _loc8_:Vector.<DecorationVo> = _loc2_.createDecorationVosForPlayfieldDTO(_loc4_.p.d);
         var _loc9_:Vector.<GroundDTO> = _loc2_.createGroundVosForPlayfieldDTO(_loc4_.p.g);
         _loc2_.playfieldDTO = new PlayfieldDTO(_loc4_.p,_loc6_,_loc7_,_loc8_,_loc9_);
         if(_loc3_)
         {
            facade.registerProxy(new PlaneProxy(PlaneProxy.NAME));
            facade.registerProxy(new NeedMatrixProxy(NeedMatrixProxy.NAME));
            facade.registerProxy(new MatrixProxy(MatrixProxy.NAME));
            facade.registerProxy(new PathWalkProxy());
            facade.registerProxy(new UrbiesLifeProxy());
            facade.registerProxy(new SpawnProxy());
            facade.sendNotification(ApplicationNotificationConstants.PLAYFIELD_GENERATE);
            facade.sendNotification(ApplicationNotificationConstants.APPLICATION_MODES_SET_INITIAL);
            facade.sendNotification(ApplicationNotificationConstants.INIT_QUEST_SYSTEM);
            facade.sendNotification(ApplicationNotificationConstants.FIELD_CENTER_ON_POINT,HorizionSettingsVo.centerPoint(_loc2_.config.gfxId));
         }
      }
   }
}

