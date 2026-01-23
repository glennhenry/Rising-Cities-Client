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
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:URLRequest = null;
         var _loc2_:FlashVarsProxy = FlashVarsProxy(facade.retrieveProxy(FlashVarsProxy.NAME));
         §§push(_loc2_.logOutURL);
         if(_loc5_ || Boolean(_loc2_))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(!(_loc6_ && Boolean(_loc2_)))
         {
            if(_loc3_ != "")
            {
               if(!_loc6_)
               {
                  addr0078:
                  facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_LOGOUT);
               }
               _loc4_ = new URLRequest(_loc3_);
               if(!_loc6_)
               {
                  navigateToURL(_loc4_,"_self");
               }
            }
            return;
         }
         §§goto(addr0078);
      }
   }
}

