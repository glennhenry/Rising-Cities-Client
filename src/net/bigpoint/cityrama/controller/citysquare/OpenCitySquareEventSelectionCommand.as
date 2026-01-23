package net.bigpoint.cityrama.controller.citysquare
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.detailViews.EventLayerProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.citysquare.CitySquareEventSelectionPopupMediator;
   import net.bigpoint.cityrama.view.citysquare.ui.components.CitySquareEventSelectionPopup;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenCitySquareEventSelectionCommand extends SimpleCommand
   {
      
      public function OpenCitySquareEventSelectionCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         _loc2_.modal = true;
         _loc2_.viewClass = CitySquareEventSelectionPopup;
         _loc2_.mediatorClass = CitySquareEventSelectionPopupMediator;
         _loc2_.mediatorName = CitySquareEventSelectionPopupMediator.NAME;
         var _loc3_:EventLayerProxy = facade.retrieveProxy(EventLayerProxy.NAME) as EventLayerProxy;
         _loc2_.data = _loc3_.getCitysquareEventSelectionVo();
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
      }
   }
}

