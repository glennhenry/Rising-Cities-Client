package net.bigpoint.cityrama.controller.field
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class UnlockPlayfieldForSwitch extends SimpleCommand
   {
      
      public function UnlockPlayfieldForSwitch()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         sendNotification(ApplicationNotificationConstants.SHOW_GUI,true);
         TweenMax.delayedCall(1,this.delayedHide);
      }
      
      private function delayedHide() : void
      {
         sendNotification(ApplicationNotificationConstants.SWITCH_MODAL_COVER,false);
         sendNotification(ApplicationNotificationConstants.ENABLE_USER_INTERACTION,true);
         sendNotification(ApplicationNotificationConstants.HIDE_PLAYFIELD_LOADING_ANIMATION);
         sendNotification(ApplicationNotificationConstants.ADD_SCREENSHOT_TO_FOREGROUND,false);
      }
   }
}

