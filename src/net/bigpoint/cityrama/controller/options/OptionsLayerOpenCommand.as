package net.bigpoint.cityrama.controller.options
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.optionsmenu.OptionsMenuPopupMediator;
   import net.bigpoint.cityrama.view.optionsmenu.ui.components.OptionsMenuPopup;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OptionsLayerOpenCommand extends SimpleCommand
   {
      
      public function OptionsLayerOpenCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         _loc2_.modal = true;
         _loc2_.viewClass = OptionsMenuPopup;
         _loc2_.mediatorClass = OptionsMenuPopupMediator;
         _loc2_.mediatorName = OptionsMenuPopupMediator.NAME;
         sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
      }
   }
}

