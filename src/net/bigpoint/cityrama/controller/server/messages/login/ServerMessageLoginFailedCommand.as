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
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ServerConfigProxy = ServerConfigProxy(facade.retrieveProxy(ServerConfigProxy.NAME));
         facade.sendNotification(MiniLayerConstants.OPEN_MINI_CONNECTIONLOST,null);
         _loc2_.connectionCounter = 0;
      }
   }
}

