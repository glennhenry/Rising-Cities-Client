package net.bigpoint.cityrama.controller.ingameStore
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.ingameStore.IngameStoreBookMediator;
   import net.bigpoint.cityrama.view.ingameStore.ui.components.IngameStoreBook;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenIngameStorePopupCommand extends SimpleCommand
   {
      
      public function OpenIngameStorePopupCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:Object = param1.getBody() as Object;
         if(!_loc2_)
         {
            _loc2_ = new Object();
         }
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         _loc3_.modal = true;
         _loc3_.viewClass = IngameStoreBook;
         _loc3_.mediatorClass = IngameStoreBookMediator;
         _loc3_.mediatorName = IngameStoreBookMediator.NAME;
         _loc3_.data = _loc2_;
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
      }
   }
}

