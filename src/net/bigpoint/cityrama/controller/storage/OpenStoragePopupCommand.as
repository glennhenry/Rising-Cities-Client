package net.bigpoint.cityrama.controller.storage
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.storageBook.StoragePopupMediator;
   import net.bigpoint.cityrama.view.storageBook.ui.components.StoragePopup;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenStoragePopupCommand extends SimpleCommand
   {
      
      public function OpenStoragePopupCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         _loc2_.modal = true;
         _loc2_.viewClass = StoragePopup;
         _loc2_.mediatorClass = StoragePopupMediator;
         _loc2_.mediatorName = StoragePopupMediator.NAME;
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
      }
   }
}

