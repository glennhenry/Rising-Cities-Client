package net.bigpoint.cityrama.controller.citysquare
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.quest.QuestSystemStateConst;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.detailViews.EventLayerProxy;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.events.vo.EventQuestVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.citysquare.CitySquareEventPopupMediator;
   import net.bigpoint.cityrama.view.citysquare.CitySquarePopupMediator;
   import net.bigpoint.cityrama.view.citysquare.ui.components.CitySquareEventPopup;
   import net.bigpoint.cityrama.view.citysquare.ui.components.CitySquarePopup;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenCitySquareQuestByIdCommand extends SimpleCommand
   {
      
      public function OpenCitySquareQuestByIdCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:Number = param1.getBody() as Number;
         var _loc3_:EventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         var _loc4_:EventQuestVo = _loc3_.eventById(_loc2_);
         if(_loc4_ == null)
         {
            throw new RamaCityError(this + " ups event not found.. " + _loc2_);
         }
         if(_loc4_.currentState == QuestSystemStateConst.VALID)
         {
            this.openRunningEventView();
         }
         else
         {
            this.openAvailableEvent(_loc2_);
         }
      }
      
      private function openAvailableEvent(param1:Number) : void
      {
         var _loc2_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         _loc2_.modal = true;
         _loc2_.viewClass = CitySquarePopup;
         _loc2_.mediatorClass = CitySquarePopupMediator;
         _loc2_.mediatorName = CitySquarePopupMediator.NAME;
         var _loc3_:EventLayerProxy = facade.retrieveProxy(EventLayerProxy.NAME) as EventLayerProxy;
         _loc2_.data = _loc3_.getCitySquareDetailViewVoById(param1);
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc2_);
      }
      
      private function openRunningEventView() : void
      {
         var _loc1_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         _loc1_.modal = true;
         _loc1_.viewClass = CitySquareEventPopup;
         _loc1_.mediatorClass = CitySquareEventPopupMediator;
         _loc1_.mediatorName = CitySquareEventPopupMediator.NAME;
         var _loc2_:EventLayerProxy = facade.retrieveProxy(EventLayerProxy.NAME) as EventLayerProxy;
         _loc1_.data = _loc2_.getCitySquareDetailViewVo(true);
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc1_);
      }
   }
}

