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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:GridProxy = GridProxy(facade.retrieveProxy(GridProxy.NAME));
         if(_loc4_ || Boolean(param1))
         {
            _loc2_.tileGridVisiblity = false;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc2_.itemGridVisiblity = false;
               if(_loc4_)
               {
                  _loc2_.mode = GridProxy.MODE_SINGLE_SELECTION;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     (facade.retrieveMediator(HUDMediator.NAME) as HUDMediator).visible(false);
                     if(!_loc3_)
                     {
                        addr0081:
                        facade.registerProxy(new FieldMoveProxy(FieldMoveProxy.NAME));
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK,FieldClickToSelectFieldMoveItemCommand);
                           if(_loc4_ || _loc3_)
                           {
                              facade.registerCommand(ApplicationNotificationConstants.FIELD_MOUSE_MOVE,FieldMoveMouseForMoveCommand);
                              if(!_loc3_)
                              {
                                 facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OVER,PlayfieldInteractiveRollOverForMoveCommand);
                                 if(!_loc3_)
                                 {
                                    addr00ec:
                                    facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OUT,PlayfieldInteractiveRollOutForMoveCommand);
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       facade.registerCommand(ApplicationNotificationConstants.INVENTORY_ITEM_SELECTED_FOR_MOVE,GenerateSelectedInventoryMoveItemCommand);
                                       if(!_loc3_)
                                       {
                                          addr0119:
                                          facade.registerCommand(ApplicationNotificationConstants.INVENTORY_ITEM_DESELECTED_FOR_MOVE,RemoveSelectedInventoryMoveItemCommand);
                                          if(_loc4_ || Boolean(param1))
                                          {
                                             addr0134:
                                             facade.registerCommand(ApplicationNotificationConstants.FIELD_ITEM_DESELECTED_FOR_MOVE,ResetSelectedFieldItemForMoveCommand);
                                             if(_loc4_)
                                             {
                                                addr0148:
                                                this.setupInventory();
                                                if(_loc4_ || Boolean(_loc2_))
                                                {
                                                   facade.sendNotification(ApplicationNotificationConstants.REMOVE_ALL_URBIES);
                                                   if(!(_loc3_ && Boolean(this)))
                                                   {
                                                      facade.sendNotification(ApplicationNotificationConstants.HIDE_ALL_ICONS);
                                                      if(_loc4_)
                                                      {
                                                         addr0190:
                                                         sendNotification(VirtualTaskNotificationInterest.APPLICATIONMODES_MOVE_INIT);
                                                         if(!_loc3_)
                                                         {
                                                            addr01a0:
                                                            sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_PLAYFIELD_RESOURCES);
                                                            if(_loc4_ || Boolean(param1))
                                                            {
                                                               addr01b8:
                                                               sendNotification(ApplicationNotificationConstants.POPUP_REMOVE_ALL);
                                                            }
                                                            §§goto(addr01c2);
                                                         }
                                                      }
                                                      §§goto(addr01b8);
                                                   }
                                                   §§goto(addr01c2);
                                                }
                                                §§goto(addr0190);
                                             }
                                             §§goto(addr01b8);
                                          }
                                          §§goto(addr0190);
                                       }
                                       §§goto(addr01a0);
                                    }
                                    §§goto(addr0119);
                                 }
                                 §§goto(addr0134);
                              }
                              addr01c2:
                              return;
                           }
                        }
                     }
                  }
                  §§goto(addr0148);
               }
               §§goto(addr01a0);
            }
            §§goto(addr00ec);
         }
         §§goto(addr0081);
      }
      
      private function setupInventory() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:ApplicationMediator = facade.retrieveMediator(ApplicationMediator.NAME) as ApplicationMediator;
         var _loc2_:PlayfieldItemInventoryMediator = facade.retrieveMediator(PlayfieldItemInventoryMediator.NAME) as PlayfieldItemInventoryMediator;
         if(_loc4_ || Boolean(this))
         {
            if(!_loc2_)
            {
               if(!_loc3_)
               {
                  addr0068:
                  _loc2_ = new PlayfieldItemInventoryMediator(new PlayfieldItemInventoryView());
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     facade.registerMediator(_loc2_);
                  }
                  addr008f:
                  _loc1_.component.mainView.inventoryTopBarView.addElement(_loc2_.component);
               }
               return;
            }
            §§goto(addr008f);
         }
         §§goto(addr0068);
      }
   }
}

