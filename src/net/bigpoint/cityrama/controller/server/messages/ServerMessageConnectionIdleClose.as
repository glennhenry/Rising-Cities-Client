package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.view.miniLayer.ConnectionLostMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.ConnectionLostMiniLayer;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageConnectionIdleClose extends SimpleCommand
   {
      
      public function ServerMessageConnectionIdleClose()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ServerCommunicationProxy = super.facade.retrieveProxy(ServerCommunicationProxy.NAME) as ServerCommunicationProxy;
         _loc2_.disconnect();
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         _loc3_.modal = true;
         _loc3_.viewClass = ConnectionLostMiniLayer;
         _loc3_.mediatorClass = ConnectionLostMiniLayerMediator;
         _loc3_.mediatorName = ConnectionLostMiniLayerMediator.NAME;
         _loc3_.data = null;
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
      }
   }
}

