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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            sendNotification(ApplicationNotificationConstants.SHOW_GUI,true);
            if(!_loc2_)
            {
               TweenMax.delayedCall(1,this.delayedHide);
            }
         }
      }
      
      private function delayedHide() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            sendNotification(ApplicationNotificationConstants.SWITCH_MODAL_COVER,false);
            if(!_loc2_)
            {
               §§goto(addr0042);
            }
            §§goto(addr0069);
         }
         addr0042:
         sendNotification(ApplicationNotificationConstants.ENABLE_USER_INTERACTION,true);
         if(_loc1_ || _loc2_)
         {
            sendNotification(ApplicationNotificationConstants.HIDE_PLAYFIELD_LOADING_ANIMATION);
            if(!_loc2_)
            {
               addr0069:
               sendNotification(ApplicationNotificationConstants.ADD_SCREENSHOT_TO_FOREGROUND,false);
            }
         }
      }
   }
}

