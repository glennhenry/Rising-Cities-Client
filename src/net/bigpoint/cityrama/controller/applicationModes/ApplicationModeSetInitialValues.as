package net.bigpoint.cityrama.controller.applicationModes
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ApplicationModeSetInitialValues extends SimpleCommand
   {
      
      public function ApplicationModeSetInitialValues()
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:ApplicationModeProxy = ApplicationModeProxy(facade.retrieveProxy(ApplicationModeProxy.NAME));
         if(!_loc3_)
         {
            _loc2_.mode = ApplicationModeProxy.MODE_NORMAL;
            if(_loc4_)
            {
               TweenMax.delayedCall(5,super.facade.sendNotification,[ApplicationNotificationConstants.FRIENDS_UPDATE]);
            }
         }
      }
   }
}

