package net.bigpoint.cityrama.controller.architectBook
{
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.serverStorage.ServerStorageProxy;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class UIAttentionMarksViewedPlayfieldItemId extends SimpleCommand implements ICommand
   {
      
      public function UIAttentionMarksViewedPlayfieldItemId()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ServerStorageProxy = facade.retrieveProxy(ServerStorageProxy.NAME) as ServerStorageProxy;
         OptionsGlobalVariables.getInstance().viewedPlayfieldItemConfigIds = _loc2_.uiDataDTO.viewedPlayfieldItemConfigIds;
         facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_UPDATE_CLIENT_UI_DATA);
      }
   }
}

