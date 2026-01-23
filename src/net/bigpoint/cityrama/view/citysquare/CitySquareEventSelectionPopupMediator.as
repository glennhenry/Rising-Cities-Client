package net.bigpoint.cityrama.view.citysquare
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.detailViews.EventLayerProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.view.citysquare.ui.components.CitySquareEventSelectionItemRenderer;
   import net.bigpoint.cityrama.view.citysquare.ui.components.CitySquareEventSelectionPopup;
   import net.bigpoint.cityrama.view.citysquare.ui.vo.CitySquareEventSelectionVo;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class CitySquareEventSelectionPopupMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "CitySquareEventSelectionPopupMediator";
      
      private var _data:CitySquareEventSelectionVo;
      
      public function CitySquareEventSelectionPopupMediator(param1:String = "CitySquareEventSelectionPopupMediator", param2:Object = null)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this.component.eventSelectionList.addEventListener(CitySquareEventSelectionItemRenderer.ITEM_CLICKED,this.onEventSelected);
         this.component.addEventListener(Event.CLOSE,this.onClose);
         sendNotification(VirtualTaskNotificationInterest.CITYSQUARELAYER_SELECTION_OPENED);
      }
      
      override public function onRemove() : void
      {
         this.component.removeEventListener(Event.CLOSE,this.onClose);
         this.component.eventSelectionList.removeEventListener(CitySquareEventSelectionItemRenderer.ITEM_CLICKED,this.onEventSelected);
         sendNotification(VirtualTaskNotificationInterest.CITYSQUARELAYER_SELECTION_CLOSED);
         super.onRemove();
      }
      
      private function onEventSelected(param1:Event) : void
      {
         var _loc2_:CitySquareEventSelectionItemRenderer = param1.target as CitySquareEventSelectionItemRenderer;
         var _loc3_:Number = _loc2_.eventQuestId;
         sendNotification(ApplicationNotificationConstants.OPEN_CITYSQUARE_QUEST_BY_ID,_loc3_);
      }
      
      private function onClose(param1:Event) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.getMediatorName());
      }
      
      public function setData(param1:Object) : void
      {
         this._data = param1 as CitySquareEventSelectionVo;
         this.component.data = this._data;
      }
      
      private function get component() : CitySquareEventSelectionPopup
      {
         return viewComponent as CitySquareEventSelectionPopup;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.CONFIG_EVENTS_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:EventLayerProxy = null;
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.CONFIG_EVENTS_CHANGED:
               _loc2_ = facade.retrieveProxy(EventLayerProxy.NAME) as EventLayerProxy;
               this.setData(_loc2_.getCitysquareEventSelectionVo());
         }
      }
   }
}

