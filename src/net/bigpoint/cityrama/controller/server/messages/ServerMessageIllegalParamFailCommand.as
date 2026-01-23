package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageIllegalParamFailCommand extends SimpleCommand
   {
      
      public function ServerMessageIllegalParamFailCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ServerCommunicationProxy = super.facade.retrieveProxy(ServerCommunicationProxy.NAME) as ServerCommunicationProxy;
         _loc2_.disconnect();
         facade.sendNotification(MiniLayerConstants.OPEN_MINI_CONNECTIONLOST,null);
      }
   }
}

