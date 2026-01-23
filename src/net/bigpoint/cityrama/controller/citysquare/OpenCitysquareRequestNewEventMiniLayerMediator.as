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
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && OpenCitysquareRequestNewEventMiniLayerMediator))
      {
         NAME = "OpenCitysquareRequestNewEventMiniLayerMediator";
      }
      
      private var _requestedNewEventId:Number;
      
      public function OpenCitysquareRequestNewEventMiniLayerMediator(param1:String = "OpenCitysquareRequestNewEventMiniLayerMediator", param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._requestedNewEventId = param1 as Number;
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super.onRegister();
            if(_loc2_)
            {
               this.setLayerData();
               if(_loc2_)
               {
                  this.addListener();
               }
            }
         }
      }
      
      private function setLayerData() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:QueryMiniLayerVo = new QueryMiniLayerVo(QueryMiniLayerVo.LAYER_TYPE_QUERY);
         if(_loc2_ || _loc3_)
         {
            _loc1_.title = LocaUtils.getString("rcl.miniLayer.citysquareEventWillBeCanceled","rcl.miniLayer.citysquareEventWillBeCanceled.title.capital");
            if(!_loc3_)
            {
               _loc1_.layerText = LocaUtils.getString("rcl.miniLayer.citysquareEventWillBeCanceled","rcl.miniLayer.citysquareEventWillBeCanceled.flavour");
               §§goto(addr0044);
            }
            §§goto(addr00ba);
         }
         addr0044:
         if(_loc2_)
         {
            _loc1_.confirmBtnLabel = LocaUtils.getString("rcl.miniLayer.citysquareEventWillBeCanceled","rcl.miniLayer.citysquareEventWillBeCanceled.acceptButton");
            if(_loc2_)
            {
               §§goto(addr007b);
            }
            §§goto(addr00ba);
         }
         addr007b:
         _loc1_.denyBtnLabel = LocaUtils.getString("rcl.miniLayer.citysquareEventWillBeCanceled","rcl.miniLayer.citysquareEventWillBeCanceled.denyButton");
         if(_loc2_)
         {
            _loc1_.confirmBtnTooltip = LocaUtils.getString("rcl.miniLayer.citysquareEventWillBeCanceled","rcl.miniLayer.citysquareEventWillBeCanceled.acceptButton.tooltip");
            if(_loc2_ || _loc3_)
            {
               addr00ba:
               _loc1_.denyBtnTooltip = LocaUtils.getString("rcl.miniLayer.citysquareEventWillBeCanceled","rcl.miniLayer.citysquareEventWillBeCanceled.denyButton.tooltip");
               if(!_loc3_)
               {
                  addr00cf:
                  this.component.data = _loc1_;
               }
               §§goto(addr00d5);
            }
            §§goto(addr00cf);
         }
         addr00d5:
      }
      
      private function addListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.component);
            if(!(_loc2_ && _loc1_))
            {
               §§push(QueryMiniLayer.CONFIRM_CLICKED);
               if(_loc1_)
               {
                  §§pop().addEventListener(§§pop(),this.onConfirm);
                  if(_loc1_)
                  {
                     §§push(this.component);
                     if(!_loc2_)
                     {
                        addr005f:
                        §§pop().addEventListener(QueryMiniLayer.DENY_CLICKED,this.handleClose);
                        if(!(_loc2_ && _loc1_))
                        {
                           addr0076:
                           this.component.addEventListener(Event.CLOSE,this.handleClose);
                           addr0073:
                        }
                        §§goto(addr0082);
                     }
                     §§goto(addr0076);
                  }
                  addr0082:
                  return;
               }
               §§goto(addr005f);
            }
            §§goto(addr0076);
         }
         §§goto(addr0073);
      }
      
      private function onConfirm(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            param1.stopPropagation();
         }
         var _loc2_:EventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         if(_loc4_ || Boolean(this))
         {
            facade.sendNotification(ApplicationNotificationConstants.QUEST_CHANGE_STATE,{
               "id":_loc2_.currentRunningEventID,
               "state":QuestSystemStateConst.CANCELLED
            });
            if(_loc4_ || Boolean(this))
            {
               facade.sendNotification(ApplicationNotificationConstants.QUEST_CHANGE_STATE,{
                  "id":this._requestedNewEventId,
                  "state":QuestSystemStateConst.ACTIVE
               });
               if(!_loc3_)
               {
                  addr00a1:
                  this.handleClose();
               }
               §§goto(addr00a6);
            }
            §§goto(addr00a1);
         }
         addr00a6:
      }
      
      private function handleClose(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            if(param1)
            {
               if(_loc3_)
               {
                  §§goto(addr0038);
               }
            }
            §§goto(addr004a);
         }
         addr0038:
         param1.stopPropagation();
         if(!(_loc2_ && Boolean(param1)))
         {
            addr004a:
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         }
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            this.removeListener();
            if(!(_loc2_ && Boolean(this)))
            {
               addr0030:
               super.onRemove();
            }
            return;
         }
         §§goto(addr0030);
      }
      
      private function removeListener() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(this.component);
            if(_loc1_ || Boolean(this))
            {
               §§push(QueryMiniLayer.CONFIRM_CLICKED);
               if(!_loc2_)
               {
                  §§pop().removeEventListener(§§pop(),this.onConfirm);
                  if(_loc1_)
                  {
                     §§push(this.component);
                     if(_loc1_ || Boolean(this))
                     {
                        addr006f:
                        §§pop().removeEventListener(QueryMiniLayer.DENY_CLICKED,this.handleClose);
                        if(_loc1_)
                        {
                           addr007e:
                           this.component.removeEventListener(Event.CLOSE,this.handleClose);
                        }
                        §§goto(addr008a);
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr008a);
               }
               §§goto(addr006f);
            }
            §§goto(addr007e);
         }
         addr008a:
      }
      
      public function get component() : QueryMiniLayer
      {
         return super.viewComponent as QueryMiniLayer;
      }
   }
}

