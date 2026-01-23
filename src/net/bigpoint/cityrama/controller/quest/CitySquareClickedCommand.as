package net.bigpoint.cityrama.controller.quest
{
   import net.bigpoint.cityrama.constants.*;
   import net.bigpoint.cityrama.model.ServerBalanceParameterConstants;
   import net.bigpoint.cityrama.model.detailViews.EventLayerProxy;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.events.vo.EventQuestVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.citysquare.CitySquareEventFailPopupMediator;
   import net.bigpoint.cityrama.view.citysquare.CitySquareEventPopupMediator;
   import net.bigpoint.cityrama.view.citysquare.ui.components.CitySquareEventFailPopup;
   import net.bigpoint.cityrama.view.citysquare.ui.components.CitySquareEventPopup;
   import net.bigpoint.cityrama.view.miniLayer.CitySquareFailureMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.CitySquareRewardMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.CitySquareRewardMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class CitySquareClickedCommand extends SimpleCommand implements ICommand
   {
      
      public function CitySquareClickedCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:EventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         if(_loc2_.runningEventQuest != null && _loc2_.finishedEventQuest == null)
         {
            this.openCitySquareEventView();
            return;
         }
         var _loc3_:EventQuestVo = _loc2_.expiredEventQuest;
         if(_loc3_ != null)
         {
            this.openCitySquareEventFailView(_loc3_);
            return;
         }
         if(_loc2_.finishedEventQuest != null)
         {
            this.openCitySquareRewardEventView();
            return;
         }
         this.openCitySquareSelectionView();
      }
      
      private function openCitySquareRewardEventView() : void
      {
         var _loc1_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         _loc1_.modal = true;
         _loc1_.viewClass = CitySquareRewardMiniLayer;
         _loc1_.mediatorClass = CitySquareRewardMiniLayerMediator;
         _loc1_.mediatorName = CitySquareRewardMiniLayerMediator.NAME;
         _loc1_.data = EventLayerProxy(facade.retrieveProxy(EventLayerProxy.NAME)).getCitySquareDetailViewVo(false,true);
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc1_);
      }
      
      private function openCitySquareExpiredEventView() : void
      {
         var _loc1_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
         _loc1_.modal = true;
         _loc1_.viewClass = CitySquareRewardMiniLayer;
         _loc1_.mediatorClass = CitySquareFailureMiniLayerMediator;
         _loc1_.mediatorName = CitySquareFailureMiniLayerMediator.NAME;
         _loc1_.data = EventLayerProxy(facade.retrieveProxy(EventLayerProxy.NAME)).getCitySquareDetailViewVo(false,false,true);
         facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc1_);
      }
      
      private function openCitySquareSelectionView() : void
      {
         sendNotification(ApplicationNotificationConstants.OPEN_CITYSQUARE_EVENT_SELECTION);
      }
      
      private function openCitySquareEventView() : void
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
      
      private function openCitySquareEventFailView(param1:EventQuestVo) : void
      {
         var _loc5_:PopupSettingsVo = null;
         var _loc6_:EventLayerProxy = null;
         var _loc2_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc3_:TimerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         var _loc4_:Number = param1.quests[0].questDto.endTimeStamp + _loc2_.config.balanceParameters[ServerBalanceParameterConstants.UPSELLING_OVERTIME].value;
         if(Boolean(param1) && _loc3_.currentTimeStamp < _loc4_)
         {
            _loc5_ = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
            _loc5_.modal = true;
            _loc5_.viewClass = CitySquareEventFailPopup;
            _loc5_.mediatorClass = CitySquareEventFailPopupMediator;
            _loc5_.mediatorName = CitySquareEventFailPopupMediator.NAME;
            _loc6_ = facade.retrieveProxy(EventLayerProxy.NAME) as EventLayerProxy;
            _loc5_.data = _loc6_.getCitySquareEventFailVo();
            if(_loc5_.data != null)
            {
               facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc5_);
            }
         }
      }
   }
}

