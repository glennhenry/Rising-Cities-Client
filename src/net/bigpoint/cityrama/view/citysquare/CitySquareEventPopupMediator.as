package net.bigpoint.cityrama.view.citysquare
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.detailViews.EventLayerProxy;
   import net.bigpoint.cityrama.model.detailViews.vo.CitySquareDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.CitySquareRewardPreviewVo;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.citysquare.ui.components.ChallengeBarComponent;
   import net.bigpoint.cityrama.view.citysquare.ui.components.CitySquareEventPopup;
   import net.bigpoint.cityrama.view.citysquare.ui.components.events.CitysquareRewardPreviewButtonPressedEvent;
   import net.bigpoint.cityrama.view.citysquare.ui.vo.ChallengeBarVo;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.util.RandomUtilities;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class CitySquareEventPopupMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "CitySquareEventPopupMediator";
      
      private var _data:CitySquareDetailViewVo;
      
      private var _eventLayerProxy:EventLayerProxy;
      
      private var _soundProxy:SoundProxy;
      
      public function CitySquareEventPopupMediator(param1:String, param2:Object)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         this._eventLayerProxy = facade.retrieveProxy(EventLayerProxy.NAME) as EventLayerProxy;
         this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         this.component.addEventListener(CitySquareEventPopup.OPEN_DEPOSIT_MINILAYER,this.handleOpenDepositMinilayer);
         this.component.addEventListener(CitySquareEventPopup.OPEN_REWARD_PREVIEW,this.handleOpenRewardPreview);
         this.component.addEventListener(ChallengeBarComponent.OPEN_PAYMENT,this.handleOpenPayment);
         this.component.addEventListener(ChallengeBarComponent.UPSELL_GOOD,this.handleGoodUpsell);
         this.component.addEventListener(PaperPopupWindow.BACK,this.handleBack);
      }
      
      private function handleBack(param1:Event) : void
      {
         sendNotification(ApplicationNotificationConstants.OPEN_CITYSQUARE_EVENT_SELECTION);
      }
      
      private function handleGoodUpsell(param1:Event) : void
      {
         param1.stopPropagation();
         if(param1.target is ChallengeBarComponent)
         {
            var _loc2_:ChallengeBarVo = ChallengeBarComponent(param1.target).data;
         }
      }
      
      private function handleOpenPayment(param1:Event) : void
      {
         param1.stopPropagation();
         sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
      }
      
      private function handleOpenRewardPreview(param1:CitysquareRewardPreviewButtonPressedEvent) : void
      {
         var _loc2_:CitySquareRewardPreviewVo = new CitySquareRewardPreviewVo();
         _loc2_.challengeNumber = param1.challengeNumber;
         _loc2_.totalChallenges = this.component.data.eventList[0].listOfChallenges.length;
         _loc2_.rewardCollection = this.component.data.eventList[0].listOfChallenges[param1.challengeNumber - 1].rewards;
         facade.sendNotification(MiniLayerConstants.OPEN_MINI_CITYSQUARE_REWARD_PREVIEW,_loc2_);
      }
      
      private function handleOpenDepositMinilayer(param1:Event) : void
      {
         param1.stopPropagation();
         this._soundProxy.playButtonClick();
         var _loc2_:CitySquareDetailViewVo = this._eventLayerProxy.getCitySquareDetailViewVo(true);
         facade.sendNotification(MiniLayerConstants.OPEN_MINI_CITYSQUARE_DEPOSIT,_loc2_);
      }
      
      private function handleClose(param1:Event) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.getMediatorName());
      }
      
      override public function onRemove() : void
      {
         RandomUtilities.removestackCall(this.updateData);
         this.removeListener();
         super.onRemove();
      }
      
      private function removeListener() : void
      {
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
         this.component.removeEventListener(CitySquareEventPopup.OPEN_DEPOSIT_MINILAYER,this.handleOpenDepositMinilayer);
         this.component.removeEventListener(CitySquareEventPopup.OPEN_REWARD_PREVIEW,this.handleOpenRewardPreview);
         this.component.removeEventListener(ChallengeBarComponent.OPEN_PAYMENT,this.handleOpenPayment);
         this.component.removeEventListener(ChallengeBarComponent.UPSELL_GOOD,this.handleGoodUpsell);
         this.component.removeEventListener(PaperPopupWindow.BACK,this.handleBack);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.EVENT_QUEST_STATE_CHANGED,ApplicationNotificationConstants.REALCURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.EVENT_QUEST_STATE_CHANGED:
            case ApplicationNotificationConstants.REALCURRENCY_CHANGED:
               if(this._eventLayerProxy.getCitySquareDetailViewVo(true) != null)
               {
                  RandomUtilities.addstackCall(this.updateData);
                  break;
               }
               this.handleClose(null);
         }
      }
      
      private function updateData() : void
      {
         this.component.data = this._eventLayerProxy.getCitySquareDetailViewVo(true);
      }
      
      public function setData(param1:Object) : void
      {
         this._data = param1 as CitySquareDetailViewVo;
         this.component.data = this._data;
      }
      
      public function get component() : CitySquareEventPopup
      {
         return super.viewComponent as CitySquareEventPopup;
      }
   }
}

