package net.bigpoint.cityrama.controller.logout
{
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ApplicationLogoutCommand extends SimpleCommand
   {
      
      public function ApplicationLogoutCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc4_:URLRequest = null;
         var _loc2_:FlashVarsProxy = FlashVarsProxy(facade.retrieveProxy(FlashVarsProxy.NAME));
         var _loc3_:String = _loc2_.logOutURL;
         if(_loc3_ != "")
         {
            facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_LOGOUT);
            _loc4_ = new URLRequest(_loc3_);
            navigateToURL(_loc4_,"_self");
         }
      }
   }
}

