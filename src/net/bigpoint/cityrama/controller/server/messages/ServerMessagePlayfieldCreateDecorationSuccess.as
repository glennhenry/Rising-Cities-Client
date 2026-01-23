package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructureVO;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.DecorationFieldObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.preloader.FilePreloadServiceProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.DecorationDTO;
   import net.bigpoint.cityrama.model.server.vo.server.DecorationVo;
   import net.bigpoint.cityrama.view.field.ui.components.factory.ServerTagToClassSelector;
   import net.bigpoint.util.VectorUtilities;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldCreateDecorationSuccess extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldCreateDecorationSuccess()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc16_:ConfigPlayfieldItemDTO = null;
         var _loc17_:Cuboid = null;
         var _loc18_:DecorationFieldObjectVo = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:GameConfigProxy = GameConfigProxy(facade.retrieveProxy(GameConfigProxy.NAME));
         var _loc4_:PlayfieldObjectsProxy = PlayfieldObjectsProxy(facade.retrieveProxy(PlayfieldObjectsProxy.NAME));
         var _loc5_:PlayfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
         var _loc6_:TimerProxy = TimerProxy(facade.retrieveProxy(TimerProxy.NAME));
         var _loc7_:FilePreloadServiceProxy = FilePreloadServiceProxy(facade.retrieveProxy(FilePreloadServiceProxy.NAME));
         var _loc8_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc9_:ConfigPlayfieldItemDTO = _loc8_.getConfigPlayfieldItemById(_loc2_.json.de.c) as ConfigPlayfieldItemDTO;
         var _loc10_:DecorationDTO = new DecorationDTO(_loc2_.json.de);
         var _loc11_:Cuboid = new Cuboid(_loc10_.posX,_loc10_.posY,0,_loc9_.sizeX,_loc9_.sizeY,_loc9_.zLevels.length);
         var _loc12_:IGameObjectVo = _loc4_.getGameObjectByCuboid(_loc11_);
         var _loc13_:DecorationVo = new DecorationVo(_loc2_.json.de,_loc9_);
         var _loc14_:* = _loc12_ is DecorationFieldObjectVo;
         if(_loc12_ == null || _loc14_ == false)
         {
            _loc16_ = _loc3_.getConfigPlayfieldItemById(_loc13_.configId);
            _loc17_ = new Cuboid(_loc13_.dto.posX,_loc13_.dto.posY,VectorUtilities.getMinValue(_loc16_.zLevels),_loc16_.sizeX,_loc16_.sizeY,_loc16_.zLevels.length);
            _loc18_ = DecorationFieldObjectVo(ServerTagToClassSelector.getFieldObjectVoClassByTags(_loc16_,_loc17_,_loc6_,_loc8_,_loc5_));
            _loc18_.decorationVo = _loc13_;
            PlayfieldObjectsProxy.addIconOffsets(_loc18_ as BillboardObjectVo,_loc7_);
            _loc4_.addGameObjectByData(_loc18_);
            return;
         }
         if(_loc12_ is DecorationFieldObjectVo)
         {
            (_loc12_ as DecorationFieldObjectVo).decorationVo = _loc13_;
         }
         var _loc15_:SecurityMatrixProxy = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
         if(_loc12_ is IEmergencyInfrastructureVO)
         {
            _loc15_.addObject(_loc12_ as IEmergencyInfrastructureVO);
         }
      }
   }
}

