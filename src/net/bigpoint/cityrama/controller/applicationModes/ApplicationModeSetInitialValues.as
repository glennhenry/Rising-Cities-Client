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
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ApplicationModeProxy = ApplicationModeProxy(facade.retrieveProxy(ApplicationModeProxy.NAME));
         _loc2_.mode = ApplicationModeProxy.MODE_NORMAL;
         TweenMax.delayedCall(5,super.facade.sendNotification,[ApplicationNotificationConstants.FRIENDS_UPDATE]);
      }
   }
}

