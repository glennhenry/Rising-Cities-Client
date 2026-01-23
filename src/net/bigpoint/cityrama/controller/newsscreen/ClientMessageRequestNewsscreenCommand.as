package net.bigpoint.cityrama.controller.newsscreen
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.newsscreen.NewsscreenLayerProxy;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageRequestNewsscreenCommand extends SimpleCommand
   {
      
      public function ClientMessageRequestNewsscreenCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc3_:ServerCommunicationProxy = null;
         var _loc2_:NewsscreenLayerProxy = facade.retrieveProxy(NewsscreenLayerProxy.NAME) as NewsscreenLayerProxy;
         if(_loc2_.shouldRequestNewData)
         {
            _loc3_ = facade.retrieveProxy(ServerCommunicationProxy.NAME) as ServerCommunicationProxy;
            _loc3_.sendMessage(_loc3_.createMessage({},ServerMessageConstants.PLAYER_REQUEST_NEWSSCREEN));
         }
         else
         {
            sendNotification(ApplicationNotificationConstants.OPEN_NEWSSCREEN_POPUP);
         }
      }
   }
}

