package net.bigpoint.cityrama.controller.server
{
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.model.server.ServerConfigProxy;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerConnectionClosed extends SimpleCommand
   {
      
      public function ServerConnectionClosed()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ServerConfigProxy = ServerConfigProxy(facade.retrieveProxy(ServerConfigProxy.NAME));
         _loc2_.requestUrlIgnoreHost = _loc2_.gameServer.host;
         if(_loc2_.connectionCounter < 3)
         {
            _loc2_.loadServer(1);
         }
         else if(_loc2_.connectionCounter == 3)
         {
            facade.sendNotification(MiniLayerConstants.OPEN_MINI_CONNECTIONLOST,null);
         }
      }
   }
}

