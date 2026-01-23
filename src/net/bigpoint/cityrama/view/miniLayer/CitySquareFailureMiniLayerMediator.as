package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.quest.QuestSystemStateConst;
   import net.bigpoint.cityrama.model.detailViews.vo.CitySquareDetailViewVo;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.CitySquareRewardMiniLayer;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class CitySquareFailureMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "CitySquareFailureMiniLayerMediator";
      
      private var _soundProxy:SoundProxy;
      
      public function CitySquareFailureMiniLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         this.component.okButton.addEventListener(MouseEvent.CLICK,this.handleClose);
      }
      
      private function handleClose(param1:Event) : void
      {
         this._soundProxy.playButtonClick();
         var _loc2_:EventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         facade.sendNotification(ApplicationNotificationConstants.QUEST_CHANGE_STATE,{
            "id":_loc2_.expiredEventQuest.quests[0].config.id,
            "state":QuestSystemStateConst.CANCELLED
         });
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
         this.component.removeEventListener(MouseEvent.CLICK,this.handleClose);
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.getMediatorName());
         sendNotification(ApplicationNotificationConstants.EVENTS_CHANGED);
      }
      
      override public function onRegister() : void
      {
         this.component.successState = false;
         this.component.upsellState = false;
         this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
      }
      
      override public function listNotificationInterests() : Array
      {
         return [];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:String = param1.getName();
         var _loc3_:Object = param1.getBody();
         var _loc4_:* = _loc2_;
         switch(0)
         {
         }
      }
      
      public function setData(param1:Object) : void
      {
         this.component.data = param1 as CitySquareDetailViewVo;
      }
      
      public function get component() : CitySquareRewardMiniLayer
      {
         return super.viewComponent as CitySquareRewardMiniLayer;
      }
   }
}

