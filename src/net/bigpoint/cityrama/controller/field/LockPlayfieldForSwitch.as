package net.bigpoint.cityrama.controller.field
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class LockPlayfieldForSwitch extends SimpleCommand
   {
      
      public function LockPlayfieldForSwitch()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         sendNotification(ApplicationNotificationConstants.ENABLE_USER_INTERACTION,false);
         sendNotification(ApplicationNotificationConstants.SHOW_GUI,false);
         sendNotification(ApplicationNotificationConstants.ADD_SCREENSHOT_TO_FOREGROUND,true);
         sendNotification(ApplicationNotificationConstants.SHOW_PLAYFIELD_LOADING_ANIMATION,param1.getBody().gfxId);
         sendNotification(ApplicationNotificationConstants.POPUP_REMOVE_ALL);
      }
   }
}

