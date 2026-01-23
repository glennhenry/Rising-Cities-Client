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
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc2_)
      {
         NAME = "CitySquareEventSelectionPopupMediator";
      }
      
      private var _data:CitySquareEventSelectionVo;
      
      public function CitySquareEventSelectionPopupMediator(param1:String = "CitySquareEventSelectionPopupMediator", param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super.onRegister();
            if(_loc2_ || Boolean(this))
            {
               §§push(this.component);
               if(!_loc1_)
               {
                  §§pop().eventSelectionList.addEventListener(CitySquareEventSelectionItemRenderer.ITEM_CLICKED,this.onEventSelected);
                  if(!_loc1_)
                  {
                     §§goto(addr0066);
                  }
                  §§goto(addr0080);
               }
               addr0066:
               this.component.addEventListener(Event.CLOSE,this.onClose);
               if(_loc2_ || _loc1_)
               {
                  addr0080:
                  sendNotification(VirtualTaskNotificationInterest.CITYSQUARELAYER_SELECTION_OPENED);
               }
               §§goto(addr008b);
            }
            addr008b:
            return;
         }
         §§goto(addr0080);
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            §§push(this.component);
            if(!(_loc1_ && _loc1_))
            {
               §§pop().removeEventListener(Event.CLOSE,this.onClose);
               if(_loc2_)
               {
                  this.component.eventSelectionList.removeEventListener(CitySquareEventSelectionItemRenderer.ITEM_CLICKED,this.onEventSelected);
                  addr004f:
                  if(_loc2_ || _loc1_)
                  {
                     §§goto(addr0076);
                  }
                  §§goto(addr008e);
               }
               addr0076:
               sendNotification(VirtualTaskNotificationInterest.CITYSQUARELAYER_SELECTION_CLOSED);
               if(!(_loc1_ && Boolean(this)))
               {
                  addr008e:
                  super.onRemove();
               }
               §§goto(addr0093);
            }
            §§goto(addr004f);
         }
         addr0093:
      }
      
      private function onEventSelected(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:CitySquareEventSelectionItemRenderer = param1.target as CitySquareEventSelectionItemRenderer;
         §§push(_loc2_.eventQuestId);
         if(_loc5_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || Boolean(param1))
         {
            sendNotification(ApplicationNotificationConstants.OPEN_CITYSQUARE_QUEST_BY_ID,_loc3_);
         }
      }
      
      private function onClose(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.getMediatorName());
         }
      }
      
      public function setData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._data = param1 as CitySquareEventSelectionVo;
            if(!(_loc2_ && Boolean(this)))
            {
               addr0043:
               this.component.data = this._data;
            }
            return;
         }
         §§goto(addr0043);
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
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:EventLayerProxy = null;
         var _loc3_:* = param1.getName();
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(ApplicationNotificationConstants.CONFIG_EVENTS_CHANGED === _loc3_)
            {
               addr0085:
               §§push(0);
               if(_loc4_)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  _loc2_ = facade.retrieveProxy(EventLayerProxy.NAME) as EventLayerProxy;
                  if(!_loc4_)
                  {
                     this.setData(_loc2_.getCitysquareEventSelectionVo());
                  }
            }
            return;
         }
         §§goto(addr0085);
      }
   }
}

