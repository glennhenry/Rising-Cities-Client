package net.bigpoint.cityrama.controller.applicationModes.move
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.controller.applicationModes.move.playfieldItemInventory.GenerateSelectedInventoryMoveItemCommand;
   import net.bigpoint.cityrama.controller.applicationModes.move.playfieldItemInventory.RemoveSelectedInventoryMoveItemCommand;
   import net.bigpoint.cityrama.controller.applicationModes.move.playfieldItemInventory.ResetSelectedFieldItemForMoveCommand;
   import net.bigpoint.cityrama.model.field.FieldMoveProxy;
   import net.bigpoint.cityrama.model.field.ground.GridProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.view.application.ApplicationMediator;
   import net.bigpoint.cityrama.view.hud.HUDMediator;
   import net.bigpoint.cityrama.view.playfieldItemInventory.PlayfieldItemInventoryMediator;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.components.PlayfieldItemInventoryView;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ApplicationModeMoveInitialize extends SimpleCommand
   {
      
      public function ApplicationModeMoveInitialize()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:GridProxy = GridProxy(facade.retrieveProxy(GridProxy.NAME));
         _loc2_.tileGridVisiblity = false;
         _loc2_.itemGridVisiblity = false;
         _loc2_.mode = GridProxy.MODE_SINGLE_SELECTION;
         (facade.retrieveMediator(HUDMediator.NAME) as HUDMediator).visible(false);
         facade.registerProxy(new FieldMoveProxy(FieldMoveProxy.NAME));
         facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK,FieldClickToSelectFieldMoveItemCommand);
         facade.registerCommand(ApplicationNotificationConstants.FIELD_MOUSE_MOVE,FieldMoveMouseForMoveCommand);
         facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OVER,PlayfieldInteractiveRollOverForMoveCommand);
         facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OUT,PlayfieldInteractiveRollOutForMoveCommand);
         facade.registerCommand(ApplicationNotificationConstants.INVENTORY_ITEM_SELECTED_FOR_MOVE,GenerateSelectedInventoryMoveItemCommand);
         facade.registerCommand(ApplicationNotificationConstants.INVENTORY_ITEM_DESELECTED_FOR_MOVE,RemoveSelectedInventoryMoveItemCommand);
         facade.registerCommand(ApplicationNotificationConstants.FIELD_ITEM_DESELECTED_FOR_MOVE,ResetSelectedFieldItemForMoveCommand);
         this.setupInventory();
         facade.sendNotification(ApplicationNotificationConstants.REMOVE_ALL_URBIES);
         facade.sendNotification(ApplicationNotificationConstants.HIDE_ALL_ICONS);
         sendNotification(VirtualTaskNotificationInterest.APPLICATIONMODES_MOVE_INIT);
         sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_PLAYFIELD_RESOURCES);
         sendNotification(ApplicationNotificationConstants.POPUP_REMOVE_ALL);
      }
      
      private function setupInventory() : void
      {
         var _loc1_:ApplicationMediator = facade.retrieveMediator(ApplicationMediator.NAME) as ApplicationMediator;
         var _loc2_:PlayfieldItemInventoryMediator = facade.retrieveMediator(PlayfieldItemInventoryMediator.NAME) as PlayfieldItemInventoryMediator;
         if(!_loc2_)
         {
            _loc2_ = new PlayfieldItemInventoryMediator(new PlayfieldItemInventoryView());
            facade.registerMediator(_loc2_);
         }
         _loc1_.component.mainView.inventoryTopBarView.addElement(_loc2_.component);
      }
   }
}

