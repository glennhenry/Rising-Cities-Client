package net.bigpoint.cityrama.controller.server.messages.login
{
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.model.server.ServerConfigProxy;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageLoginFailedCommand extends SimpleCommand
   {
      
      public function ServerMessageLoginFailedCommand()
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
         var _loc2_:ServerConfigProxy = ServerConfigProxy(facade.retrieveProxy(ServerConfigProxy.NAME));
         if(!(_loc3_ && _loc3_))
         {
            facade.sendNotification(MiniLayerConstants.OPEN_MINI_CONNECTIONLOST,null);
            if(!(_loc3_ && Boolean(_loc2_)))
            {
               addr005b:
               _loc2_.connectionCounter = 0;
            }
            return;
         }
         §§goto(addr005b);
      }
   }
}

