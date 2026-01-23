package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.DecorationVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldDecorationCreateFailed extends SimpleCommand
   {
      
      public function ServerMessagePlayfieldDecorationCreateFailed()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:Object = MessageVo(param1.getBody()).json;
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc5_:ConfigPlayfieldItemDTO = _loc4_.getConfigPlayfieldItemById(_loc2_.cdi);
         var _loc6_:Cuboid = new Cuboid(_loc2_.x,_loc2_.y,0,_loc5_.sizeX,_loc5_.sizeY,_loc5_.zLevels.length);
         var _loc7_:IGameObjectVo = _loc3_.getGameObjectByCuboid(_loc6_);
         var _loc8_:BillboardObject = _loc3_.getBillboardById((_loc7_ as DecorationVo).id);
         _loc3_.removeGameObjectVofromMatrix(_loc8_.billboardObjectVo);
         sendNotification(ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM,_loc8_);
      }
   }
}

