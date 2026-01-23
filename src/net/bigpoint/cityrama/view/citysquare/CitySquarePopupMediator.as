package net.bigpoint.cityrama.view.citysquare
{
   import flash.events.Event;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.quest.ClickTaskNotificationConstants;
   import net.bigpoint.cityrama.constants.quest.QuestSystemStateConst;
   import net.bigpoint.cityrama.model.detailViews.vo.CitySquareDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.CitySquareRewardPreviewVo;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.citysquare.ui.components.CitySquarePopup;
   import net.bigpoint.cityrama.view.citysquare.ui.components.events.CitysquareRewardPreviewButtonPressedEvent;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class CitySquarePopupMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "CitySquarePopupMediator";
      
      private var _soundProxy:SoundProxy;
      
      private var _data:CitySquareDetailViewVo;
      
      public function CitySquarePopupMediator(param1:String, param2:Object)
      {
         super(param1,param2);
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         this.component.addEventListener(CitySquarePopup.START_EVENT,this.handleStartEvent);
         this.component.addEventListener(PaperPopupWindow.BACK,this.handleBack);
         this.component.eventList.addEventListener(CitysquareRewardPreviewButtonPressedEvent.PREVIEW_BUTTON_PRESSED,this.handleShowRewardPreview,false,0,true);
      }
      
      private function handleBack(param1:Event) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.OPEN_CITYSQUARE_EVENT_SELECTION);
      }
      
      private function handleShowRewardPreview(param1:CitysquareRewardPreviewButtonPressedEvent) : void
      {
         this._soundProxy.playButtonClick();
         var _loc2_:CitySquareRewardPreviewVo = new CitySquareRewardPreviewVo();
         _loc2_.challengeNumber = param1.challengeNumber;
         _loc2_.totalChallenges = this.component.data.eventList[0].listOfChallenges.length;
         _loc2_.rewardCollection = this.component.data.eventList[0].listOfChallenges[param1.challengeNumber - 1].rewards;
         facade.sendNotification(MiniLayerConstants.OPEN_MINI_CITYSQUARE_REWARD_PREVIEW,_loc2_);
      }
      
      private function handleStartEvent(param1:Event) : void
      {
         this._soundProxy.playButtonClick();
         var _loc2_:EventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         if(_loc2_.runningEventQuest != null)
         {
            sendNotification(MiniLayerConstants.OPEN_MINI_REQUEST_START_NEW_EVENT,this._data.eventList[0].questUId);
            return;
         }
         var _loc3_:TimerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         _loc3_.eventTimer = 0;
         facade.sendNotification(ClickTaskNotificationConstants.CITYSQUARE_EVENT_STARTED);
         facade.sendNotification(ApplicationNotificationConstants.QUEST_CHANGE_STATE,{
            "id":this._data.eventList[0].questUId,
            "state":QuestSystemStateConst.ACTIVE
         });
         this.handleClose(null);
      }
      
      override public function onRegister() : void
      {
         this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         sendNotification(VirtualTaskNotificationInterest.CITYSQUARELAYER_DETAIL_OPENED);
         facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine],this));
         this.component.addEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.component_SHOW_UI_INFOLAYERHandler);
         this.component.addEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_HIDE_UI_INFOLAYERHandler);
      }
      
      override public function onRemove() : void
      {
         sendNotification(VirtualTaskNotificationInterest.CITYSQUARELAYER_DETAIL_CLOSED);
         this.component.removeEventListener(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this.component_SHOW_UI_INFOLAYERHandler);
         this.component.removeEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_HIDE_UI_INFOLAYERHandler);
         super.onRemove();
      }
      
      private function handleClose(param1:Event) : void
      {
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.getMediatorName());
      }
      
      override public function listNotificationInterests() : Array
      {
         return [];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:* = param1.getName();
         switch(0)
         {
         }
      }
      
      private function component_SHOW_UI_INFOLAYERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         var _loc2_:Number = param1.cid;
         var _loc3_:Point = param1.target.localToGlobal(new Point());
         _loc3_.x += param1.target.width / 2;
         sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
            "cid":_loc2_,
            "lineId":0,
            "pt":_loc3_,
            "type":param1.callerType
         },NAME);
      }
      
      private function component_HIDE_UI_INFOLAYERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
      }
      
      public function get component() : CitySquarePopup
      {
         return super.viewComponent as CitySquarePopup;
      }
      
      public function setData(param1:Object) : void
      {
         this._data = param1 as CitySquareDetailViewVo;
         this.component.data = this._data;
      }
   }
}

