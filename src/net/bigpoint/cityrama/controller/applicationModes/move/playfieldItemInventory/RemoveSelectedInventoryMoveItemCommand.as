package net.bigpoint.cityrama.controller.applicationModes.move.playfieldItemInventory
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.controller.applicationModes.move.FieldClickToSelectFieldMoveItemCommand;
   import net.bigpoint.cityrama.controller.applicationModes.move.PlayfieldInteractiveRollOutForMoveCommand;
   import net.bigpoint.cityrama.controller.applicationModes.move.PlayfieldInteractiveRollOverForMoveCommand;
   import net.bigpoint.cityrama.model.field.FieldMoveProxy;
   import net.bigpoint.cityrama.model.field.PlayFieldHighlightedObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.ground.GridProxy;
   import net.bigpoint.cityrama.model.field.ground.RestrictionProxy;
   import net.bigpoint.cityrama.model.inventory.PlayfieldItemInventoryViewProxy;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.ClientFieldObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class RemoveSelectedInventoryMoveItemCommand extends SimpleCommand implements ICommand
   {
      
      public function RemoveSelectedInventoryMoveItemCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc4_:RestrictionProxy = null;
         var _loc5_:GridProxy = null;
         var _loc6_:PlayFieldHighlightedObjectsProxy = null;
         var _loc7_:PlayfieldObjectsProxy = null;
         var _loc8_:BillboardObject = null;
         var _loc9_:Boolean = false;
         var _loc10_:BillboardObject = null;
         var _loc11_:ClientFieldObject = null;
         var _loc2_:FieldMoveProxy = facade.retrieveProxy(FieldMoveProxy.NAME) as FieldMoveProxy;
         var _loc3_:PlayfieldItemInventoryViewProxy = facade.retrieveProxy(PlayfieldItemInventoryViewProxy.NAME) as PlayfieldItemInventoryViewProxy;
         if(Boolean(_loc2_.objectToMove) && Boolean(_loc3_.currentSelectedInventoryItem))
         {
            _loc4_ = facade.retrieveProxy(RestrictionProxy.NAME) as RestrictionProxy;
            _loc5_ = facade.retrieveProxy(GridProxy.NAME) as GridProxy;
            _loc6_ = facade.retrieveProxy(PlayFieldHighlightedObjectsProxy.NAME) as PlayFieldHighlightedObjectsProxy;
            _loc7_ = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
            _loc8_ = _loc2_.objectToMove as BillboardObject;
            sendNotification(ApplicationNotificationConstants.FIELD_REMOVE_TEMPORARY,_loc8_);
            _loc9_ = param1.getBody() as Boolean;
            if(_loc9_)
            {
               sendNotification(ApplicationNotificationConstants.ITEM_DESELECTED_FOR_MOVE);
            }
            if(_loc8_ is ShopFieldObject)
            {
               sendNotification(ApplicationNotificationConstants.HIDE_NEED_ICONS,true);
            }
            else if(_loc8_ is ResidentialFieldObject)
            {
               sendNotification(ApplicationNotificationConstants.HIDE_NEED_ICONS,false);
            }
            _loc4_.restrictionGridVisibility = false;
            _loc2_.objectToMove = null;
            _loc3_.currentSelectedInventoryItem = null;
            _loc5_.tileGridVisiblity = false;
            _loc5_.itemGridVisiblity = false;
            sendNotification(ApplicationNotificationConstants.GROUND_ITEM_BUFFGRID_VISIBILITY_CHANGED,false);
            _loc6_.resetHighlightedShops();
            _loc6_.resetHighlight();
            facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OVER,PlayfieldInteractiveRollOverForMoveCommand);
            facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OUT,PlayfieldInteractiveRollOutForMoveCommand);
            facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK,FieldClickToSelectFieldMoveItemCommand);
            for each(_loc10_ in _loc7_.billboardList)
            {
               _loc10_.changeInteractionstate(true);
            }
            for each(_loc11_ in _loc7_.clientFieldObjectsList)
            {
               _loc11_.changeInteractionstate(true);
            }
         }
      }
   }
}

