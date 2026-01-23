package net.bigpoint.cityrama.controller.residentSelection
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.detailViews.MainLayerProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.residentSelection.ResidentSelectionMediator;
   import net.bigpoint.cityrama.view.residentSelection.ui.components.ResidentSelectionPopup;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenResidentSwapCommand extends SimpleCommand
   {
      
      public function OpenResidentSwapCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ResidentialFieldObject = param1.getBody() as ResidentialFieldObject;
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         _loc3_.modal = true;
         _loc3_.viewClass = ResidentSelectionPopup;
         _loc3_.mediatorClass = ResidentSelectionMediator;
         _loc3_.mediatorName = ResidentSelectionMediator.NAME;
         _loc3_.data = MainLayerProxy(facade.retrieveProxy(MainLayerProxy.NAME)).getResidentSelectionVo(_loc2_,true);
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
      }
   }
}

