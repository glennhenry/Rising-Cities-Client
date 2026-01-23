package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.detailViews.EventLayerProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.CitySquareUpsellMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.CitySquareRewardMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenCitysquareUpsellRewardMinilayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenCitysquareUpsellRewardMinilayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:Object = param1.getBody();
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         _loc3_.modal = true;
         _loc3_.viewClass = CitySquareRewardMiniLayer;
         _loc3_.mediatorClass = CitySquareUpsellMiniLayerMediator;
         _loc3_.mediatorName = CitySquareUpsellMiniLayerMediator.NAME;
         _loc3_.data = EventLayerProxy(facade.retrieveProxy(EventLayerProxy.NAME)).getUpsellingCitySquareDetailViewVo();
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
      }
   }
}

