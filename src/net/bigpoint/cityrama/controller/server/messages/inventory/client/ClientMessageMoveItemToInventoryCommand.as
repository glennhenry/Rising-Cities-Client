package net.bigpoint.cityrama.controller.server.messages.inventory.client
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.controller.applicationModes.move.FieldClickToSelectFieldMoveItemCommand;
   import net.bigpoint.cityrama.controller.applicationModes.move.PlayfieldInteractiveRollOutForMoveCommand;
   import net.bigpoint.cityrama.controller.applicationModes.move.PlayfieldInteractiveRollOverForMoveCommand;
   import net.bigpoint.cityrama.model.field.FieldMoveProxy;
   import net.bigpoint.cityrama.model.field.PlayFieldHighlightedObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.ground.GridProxy;
   import net.bigpoint.cityrama.model.field.ground.RestrictionProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructure;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.ClientFieldObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageMoveItemToInventoryCommand extends SimpleCommand
   {
      
      public function ClientMessageMoveItemToInventoryCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc6_:RestrictionProxy = null;
         var _loc7_:GridProxy = null;
         var _loc8_:PlayFieldHighlightedObjectsProxy = null;
         var _loc9_:PlayfieldObjectsProxy = null;
         var _loc10_:BillboardObject = null;
         var _loc11_:BillboardObject = null;
         var _loc12_:ClientFieldObject = null;
         var _loc13_:MessageVo = null;
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:FieldMoveProxy = facade.retrieveProxy(FieldMoveProxy.NAME) as FieldMoveProxy;
         var _loc4_:SecurityMatrixProxy = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
         var _loc5_:Object = {};
         _loc5_.pid = param1.getBody() as Number;
         if(Boolean(_loc3_.objectToMove) && _loc3_.objectToMove is BillboardObject)
         {
            _loc6_ = facade.retrieveProxy(RestrictionProxy.NAME) as RestrictionProxy;
            _loc7_ = facade.retrieveProxy(GridProxy.NAME) as GridProxy;
            _loc8_ = facade.retrieveProxy(PlayFieldHighlightedObjectsProxy.NAME) as PlayFieldHighlightedObjectsProxy;
            _loc9_ = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
            _loc10_ = _loc3_.objectToMove as BillboardObject;
            sendNotification(ApplicationNotificationConstants.ITEM_DESELECTED_FOR_MOVE);
            if(_loc10_ is ShopFieldObject)
            {
               sendNotification(ApplicationNotificationConstants.HIDE_NEED_ICONS,true);
            }
            else if(_loc10_ is ResidentialFieldObject)
            {
               sendNotification(ApplicationNotificationConstants.HIDE_NEED_ICONS,false);
            }
            else if(_loc10_ is IEmergencyInfrastructure)
            {
               _loc4_.removeObject((_loc10_ as IEmergencyInfrastructure).emergencyFieldObjectVo);
            }
            _loc6_.restrictionGridVisibility = false;
            _loc3_.objectToMove = null;
            _loc7_.tileGridVisiblity = false;
            _loc7_.itemGridVisiblity = false;
            sendNotification(ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_VISIBILITY_CHANGED,false);
            _loc8_.resetHighlightedShops();
            _loc8_.resetHighlight();
            facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OVER,PlayfieldInteractiveRollOverForMoveCommand);
            facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OUT,PlayfieldInteractiveRollOutForMoveCommand);
            facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK,FieldClickToSelectFieldMoveItemCommand);
            for each(_loc11_ in _loc9_.billboardList)
            {
               _loc11_.changeInteractionstate(true);
            }
            for each(_loc12_ in _loc9_.clientFieldObjectsList)
            {
               _loc12_.changeInteractionstate(true);
            }
            _loc13_ = _loc2_.createMessage(_loc5_,ServerMessageConstants.MOVE_PLAYFIELDITEM_TO_INVENTORY);
            _loc2_.sendMessage(_loc13_);
         }
      }
   }
}

