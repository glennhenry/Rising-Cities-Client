package net.bigpoint.cityrama.controller.citysquare
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.quest.QuestSystemStateConst;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.miniLayer.vo.QueryMiniLayerVo;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.QueryMiniLayer;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class OpenCitysquareRequestNewEventMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "OpenCitysquareRequestNewEventMiniLayerMediator";
      
      private var _requestedNewEventId:Number;
      
      public function OpenCitysquareRequestNewEventMiniLayerMediator(param1:String = "OpenCitysquareRequestNewEventMiniLayerMediator", param2:Object = null)
      {
         super(param1,param2);
      }
      
      public function setData(param1:Object) : void
      {
         this._requestedNewEventId = param1 as Number;
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this.setLayerData();
         this.addListener();
      }
      
      private function setLayerData() : void
      {
         var _loc1_:QueryMiniLayerVo = new QueryMiniLayerVo(QueryMiniLayerVo.LAYER_TYPE_QUERY);
         _loc1_.title = LocaUtils.getString("rcl.miniLayer.citysquareEventWillBeCanceled","rcl.miniLayer.citysquareEventWillBeCanceled.title.capital");
         _loc1_.layerText = LocaUtils.getString("rcl.miniLayer.citysquareEventWillBeCanceled","rcl.miniLayer.citysquareEventWillBeCanceled.flavour");
         _loc1_.confirmBtnLabel = LocaUtils.getString("rcl.miniLayer.citysquareEventWillBeCanceled","rcl.miniLayer.citysquareEventWillBeCanceled.acceptButton");
         _loc1_.denyBtnLabel = LocaUtils.getString("rcl.miniLayer.citysquareEventWillBeCanceled","rcl.miniLayer.citysquareEventWillBeCanceled.denyButton");
         _loc1_.confirmBtnTooltip = LocaUtils.getString("rcl.miniLayer.citysquareEventWillBeCanceled","rcl.miniLayer.citysquareEventWillBeCanceled.acceptButton.tooltip");
         _loc1_.denyBtnTooltip = LocaUtils.getString("rcl.miniLayer.citysquareEventWillBeCanceled","rcl.miniLayer.citysquareEventWillBeCanceled.denyButton.tooltip");
         this.component.data = _loc1_;
      }
      
      private function addListener() : void
      {
         this.component.addEventListener(QueryMiniLayer.CONFIRM_CLICKED,this.onConfirm);
         this.component.addEventListener(QueryMiniLayer.DENY_CLICKED,this.handleClose);
         this.component.addEventListener(Event.CLOSE,this.handleClose);
      }
      
      private function onConfirm(param1:Event) : void
      {
         param1.stopPropagation();
         var _loc2_:EventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         facade.sendNotification(ApplicationNotificationConstants.QUEST_CHANGE_STATE,{
            "id":_loc2_.currentRunningEventID,
            "state":QuestSystemStateConst.CANCELLED
         });
         facade.sendNotification(ApplicationNotificationConstants.QUEST_CHANGE_STATE,{
            "id":this._requestedNewEventId,
            "state":QuestSystemStateConst.ACTIVE
         });
         this.handleClose();
      }
      
      private function handleClose(param1:Event = null) : void
      {
         if(param1)
         {
            param1.stopPropagation();
         }
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      override public function onRemove() : void
      {
         this.removeListener();
         super.onRemove();
      }
      
      private function removeListener() : void
      {
         this.component.removeEventListener(QueryMiniLayer.CONFIRM_CLICKED,this.onConfirm);
         this.component.removeEventListener(QueryMiniLayer.DENY_CLICKED,this.handleClose);
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
      }
      
      public function get component() : QueryMiniLayer
      {
         return super.viewComponent as QueryMiniLayer;
      }
   }
}

