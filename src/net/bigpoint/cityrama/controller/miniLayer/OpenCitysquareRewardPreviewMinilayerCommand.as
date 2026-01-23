package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.CitysquareRewardPreviewMinilayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.CitysquareRewardPreviewMinilayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenCitysquareRewardPreviewMinilayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenCitysquareRewardPreviewMinilayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:Object = param1.getBody();
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         _loc3_.modal = true;
         _loc3_.viewClass = CitysquareRewardPreviewMinilayer;
         _loc3_.mediatorClass = CitysquareRewardPreviewMinilayerMediator;
         _loc3_.mediatorName = CitysquareRewardPreviewMinilayerMediator.NAME;
         _loc3_.data = _loc2_;
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
      }
   }
}

