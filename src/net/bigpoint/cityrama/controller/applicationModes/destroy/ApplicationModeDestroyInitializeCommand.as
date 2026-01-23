package net.bigpoint.cityrama.controller.applicationModes.destroy
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.FieldDeleteProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.ground.GridProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PlayfieldSwitchFieldObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ApplicationModeDestroyInitializeCommand extends SimpleCommand
   {
      
      public function ApplicationModeDestroyInitializeCommand()
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
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:PlayfieldSwitchFieldObject = null;
         var _loc2_:GridProxy = facade.retrieveProxy(GridProxy.NAME) as GridProxy;
         if(_loc7_)
         {
            _loc2_.tileGridVisiblity = false;
            if(_loc7_ || Boolean(_loc2_))
            {
               _loc2_.setItemSize(1,1,1,1);
               if(!(_loc8_ && Boolean(param1)))
               {
                  facade.sendNotification(ApplicationNotificationConstants.REMOVE_ALL_URBIES);
                  if(_loc7_)
                  {
                     facade.registerProxy(new FieldDeleteProxy(FieldDeleteProxy.NAME));
                     if(_loc7_ || _loc3_)
                     {
                        facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK,InteractiveClickForDestroyCommand);
                        if(!_loc8_)
                        {
                           addr00af:
                           facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OVER,PlayfieldInteractiveRollOverForDestroyCommand);
                           if(!_loc8_)
                           {
                              facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OUT,PlayfieldInteractiveRollOutForDestroyCommand);
                              if(_loc7_ || Boolean(param1))
                              {
                                 facade.sendNotification(ApplicationNotificationConstants.REMOVE_ALL_URBIES);
                                 if(!(_loc8_ && Boolean(param1)))
                                 {
                                    addr00f5:
                                    facade.sendNotification(VirtualTaskNotificationInterest.APPLICATIONMODES_DESTROY_INIT);
                                    if(!_loc8_)
                                    {
                                       addr0106:
                                       facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE_ALL);
                                    }
                                 }
                              }
                              var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
                              §§goto(addr0110);
                           }
                        }
                        §§goto(addr00f5);
                     }
                     §§goto(addr00af);
                  }
               }
               addr0110:
               for each(_loc4_ in _loc3_.playfieldSwitchObjects)
               {
                  _loc4_.iconVisibility = false;
               }
               return;
            }
            §§goto(addr00af);
         }
         §§goto(addr0106);
      }
   }
}

