package net.bigpoint.cityrama.controller.server
{
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.ServerConfigProxy;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerNewCommand extends SimpleCommand
   {
      
      public function ServerNewCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:ServerConfigProxy = ServerConfigProxy(facade.retrieveProxy(ServerConfigProxy.NAME));
         var _loc4_:FlashVarsProxy = super.facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
         if(_loc6_ || Boolean(this))
         {
            _loc2_.connect(_loc3_.gameServer,_loc4_.policyPort);
         }
      }
   }
}

