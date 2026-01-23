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
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:ServerConfigProxy = ServerConfigProxy(facade.retrieveProxy(ServerConfigProxy.NAME));
         var _loc4_:FlashVarsProxy = super.facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
         _loc2_.connect(_loc3_.gameServer,_loc4_.policyPort);
      }
   }
}

