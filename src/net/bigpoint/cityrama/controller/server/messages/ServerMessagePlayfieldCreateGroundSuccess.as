package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.ground.vo.PlaneObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.preloader.FilePreloadServiceProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.GroundDTO;
   import net.bigpoint.cityrama.view.field.ui.components.factory.ServerTagToClassSelector;
   import net.bigpoint.util.VectorUtilities;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldCreateGroundSuccess extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldCreateGroundSuccess()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
         var _loc4_:TimerProxy = TimerProxy(facade.retrieveProxy(TimerProxy.NAME));
         var _loc5_:FilePreloadServiceProxy = FilePreloadServiceProxy(facade.retrieveProxy(FilePreloadServiceProxy.NAME));
         var _loc6_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc7_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc8_:GroundDTO = new GroundDTO(_loc2_.json.g,_loc7_.getConfigPlayfieldItemById(_loc2_.json.g.c));
         var _loc9_:Cuboid = new Cuboid(_loc8_.posX,_loc8_.posY,0,_loc8_.config.sizeX,_loc8_.config.sizeY,_loc8_.config.zLevels.length);
         var _loc10_:IGameObjectVo = _loc6_.getGameObjectByCuboid(_loc9_);
         var _loc11_:* = _loc10_ is PlaneObjectVo;
         if(_loc11_ == false)
         {
            var _loc12_:ConfigPlayfieldItemDTO = _loc7_.getConfigPlayfieldItemById(_loc8_.configId);
            var _loc13_:Cuboid = new Cuboid(_loc8_.posX,_loc8_.posY,VectorUtilities.getMinValue(null.zLevels),null.sizeX,null.sizeY,1);
            var _loc14_:PlaneObjectVo = PlaneObjectVo(ServerTagToClassSelector.getFieldObjectVoClassByTags(null,null,_loc4_,_loc7_,_loc3_));
            _loc14_.groundDTO = _loc8_;
            _loc6_.addGameObjectByData(null);
            return;
         }
         if(_loc10_ is PlaneObjectVo)
         {
            (_loc10_ as PlaneObjectVo).groundDTO = _loc8_;
         }
      }
   }
}

