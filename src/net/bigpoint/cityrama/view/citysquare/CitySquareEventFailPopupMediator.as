package net.bigpoint.cityrama.view.citysquare
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.quest.QuestSystemStateConst;
   import net.bigpoint.cityrama.model.ServerBalanceParameterConstants;
   import net.bigpoint.cityrama.model.detailViews.EventLayerProxy;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.events.vo.EventQuestVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.citysquare.ui.components.CitySquareEventFailPopup;
   import net.bigpoint.cityrama.view.citysquare.ui.vo.CitySquareEventFailVo;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class CitySquareEventFailPopupMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "CitySquareEventFailPopupMediator";
      
      public function CitySquareEventFailPopupMediator(param1:String, param2:Object)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         this.component.addEventListener(CitySquareEventFailPopup.BUY_REWARD,this.handleBuyReward);
         this.component.addEventListener(CitySquareEventFailPopup.OPEN_TREASURY,this.handleOpenTreasury);
         this.component.addEventListener(CitySquareEventFailPopup.CANCEL_BUY_REWARD,this.handleCancelBuyReward);
      }
      
      override public function onRemove() : void
      {
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
         this.component.removeEventListener(CitySquareEventFailPopup.BUY_REWARD,this.handleBuyReward);
         this.component.removeEventListener(CitySquareEventFailPopup.CANCEL_BUY_REWARD,this.handleCancelBuyReward);
         this.component.addEventListener(CitySquareEventFailPopup.OPEN_TREASURY,this.handleOpenTreasury);
         super.onRemove();
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.EVENTS_CHANGED,ApplicationNotificationConstants.REALCURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:EventLayerProxy = null;
         var _loc3_:CitySquareEventFailVo = null;
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.EVENTS_CHANGED:
               this.handleClose(null);
               break;
            case ApplicationNotificationConstants.REALCURRENCY_CHANGED:
               _loc2_ = facade.retrieveProxy(EventLayerProxy.NAME) as EventLayerProxy;
               _loc3_ = _loc2_.getCitySquareEventFailVo();
               if(_loc3_)
               {
                  this.setData(_loc3_);
               }
         }
      }
      
      private function handleBuyReward(param1:Event) : void
      {
         param1.stopPropagation();
         StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
         var _loc2_:EventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         sendNotification(ApplicationNotificationConstants.QUEST_UPSELL,{
            "id":_loc2_.expiredEventQuest.quests[0].config.id,
            "type":"EVENT"
         });
         sendNotification(MiniLayerConstants.OPEN_MINI_CITYSQUARE_UPSELL_REWARD);
         sendNotification(ApplicationNotificationConstants.EVENTS_CHANGED);
         this.handleClose(null);
      }
      
      private function handleOpenTreasury(param1:Event) : void
      {
         param1.stopPropagation();
         sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
      }
      
      private function handleCancelBuyReward(param1:Event) : void
      {
         param1.stopPropagation();
         StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
         var _loc2_:EventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         var _loc3_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc4_:TimerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         var _loc5_:EventQuestVo = _loc2_.expiredEventQuest;
         var _loc6_:Number = _loc5_.quests[0].questDto.endTimeStamp + _loc3_.config.balanceParameters[ServerBalanceParameterConstants.UPSELLING_OVERTIME].value;
         if(Boolean(_loc5_) && _loc4_.currentTimeStamp < _loc6_)
         {
            facade.sendNotification(ApplicationNotificationConstants.QUEST_CHANGE_STATE,{
               "id":_loc5_.quests[0].config.id,
               "state":QuestSystemStateConst.CANCELLED
            });
         }
         sendNotification(ApplicationNotificationConstants.EVENTS_CHANGED);
         this.handleClose(null);
      }
      
      private function handleClose(param1:Event) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.getMediatorName());
      }
      
      public function get component() : CitySquareEventFailPopup
      {
         return super.viewComponent as CitySquareEventFailPopup;
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is CitySquareEventFailVo)
         {
            this.component.data = param1 as CitySquareEventFailVo;
         }
      }
   }
}

