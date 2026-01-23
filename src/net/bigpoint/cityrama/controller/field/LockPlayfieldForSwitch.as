package net.bigpoint.cityrama.controller.field
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class LockPlayfieldForSwitch extends SimpleCommand
   {
      
      public function LockPlayfieldForSwitch()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            sendNotification(ApplicationNotificationConstants.ENABLE_USER_INTERACTION,false);
            if(_loc2_ || Boolean(this))
            {
               addr0043:
               sendNotification(ApplicationNotificationConstants.SHOW_GUI,false);
               if(_loc2_ || Boolean(this))
               {
                  sendNotification(ApplicationNotificationConstants.ADD_SCREENSHOT_TO_FOREGROUND,true);
                  if(!_loc3_)
                  {
                     addr0077:
                     sendNotification(ApplicationNotificationConstants.SHOW_PLAYFIELD_LOADING_ANIMATION,param1.getBody().gfxId);
                     if(_loc2_)
                     {
                        addr008f:
                        sendNotification(ApplicationNotificationConstants.POPUP_REMOVE_ALL);
                     }
                  }
                  return;
               }
               §§goto(addr008f);
            }
            §§goto(addr0077);
         }
         §§goto(addr0043);
      }
   }
}

