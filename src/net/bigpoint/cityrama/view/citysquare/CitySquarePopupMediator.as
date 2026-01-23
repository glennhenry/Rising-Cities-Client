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
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc1_))
      {
         NAME = "CitySquarePopupMediator";
      }
      
      private var _soundProxy:SoundProxy;
      
      private var _data:CitySquareDetailViewVo;
      
      public function CitySquarePopupMediator(param1:String, param2:Object)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            super(param1,param2);
            if(!_loc4_)
            {
               §§push(this.component);
               if(!_loc4_)
               {
                  §§pop().addEventListener(Event.CLOSE,this.handleClose);
                  if(_loc3_)
                  {
                     addr0045:
                     §§push(this.component);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(CitySquarePopup.START_EVENT);
                        if(_loc3_ || Boolean(param1))
                        {
                           §§pop().addEventListener(§§pop(),this.handleStartEvent);
                           if(!_loc4_)
                           {
                              addr0084:
                              §§push(this.component);
                              if(_loc3_ || Boolean(this))
                              {
                                 addr00a7:
                                 §§pop().addEventListener(PaperPopupWindow.BACK,this.handleBack);
                                 addr00a1:
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr00bf:
                                    this.component.eventList.addEventListener(CitysquareRewardPreviewButtonPressedEvent.PREVIEW_BUTTON_PRESSED,this.handleShowRewardPreview,false,0,true);
                                 }
                                 §§goto(addr00d4);
                              }
                              §§goto(addr00bf);
                           }
                           addr00d4:
                           return;
                        }
                        §§goto(addr00a7);
                     }
                     §§goto(addr00bf);
                  }
                  §§goto(addr0084);
               }
               §§goto(addr00a1);
            }
         }
         §§goto(addr0045);
      }
      
      private function handleBack(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            facade.sendNotification(ApplicationNotificationConstants.OPEN_CITYSQUARE_EVENT_SELECTION);
         }
      }
      
      private function handleShowRewardPreview(param1:CitysquareRewardPreviewButtonPressedEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || _loc3_)
         {
            this._soundProxy.playButtonClick();
         }
         var _loc2_:CitySquareRewardPreviewVo = new CitySquareRewardPreviewVo();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc2_.challengeNumber = param1.challengeNumber;
            if(!_loc3_)
            {
               _loc2_.totalChallenges = this.component.data.eventList[0].listOfChallenges.length;
               if(_loc4_)
               {
                  _loc2_.rewardCollection = this.component.data.eventList[0].listOfChallenges[param1.challengeNumber - 1].rewards;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr00ae:
                     facade.sendNotification(MiniLayerConstants.OPEN_MINI_CITYSQUARE_REWARD_PREVIEW,_loc2_);
                  }
               }
            }
            return;
         }
         §§goto(addr00ae);
      }
      
      private function handleStartEvent(param1:Event) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            this._soundProxy.playButtonClick();
         }
         var _loc2_:EventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         if(!_loc5_)
         {
            if(_loc2_.runningEventQuest != null)
            {
               if(_loc4_)
               {
                  addr0052:
                  sendNotification(MiniLayerConstants.OPEN_MINI_REQUEST_START_NEW_EVENT,this._data.eventList[0].questUId);
                  if(!_loc4_)
                  {
                     addr0080:
                     var _loc3_:TimerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
                     if(!(_loc5_ && Boolean(_loc2_)))
                     {
                        _loc3_.eventTimer = 0;
                        if(!(_loc5_ && Boolean(param1)))
                        {
                           facade.sendNotification(ClickTaskNotificationConstants.CITYSQUARE_EVENT_STARTED);
                           if(!_loc5_)
                           {
                              facade.sendNotification(ApplicationNotificationConstants.QUEST_CHANGE_STATE,{
                                 "id":this._data.eventList[0].questUId,
                                 "state":QuestSystemStateConst.ACTIVE
                              });
                              §§goto(addr00c5);
                           }
                           §§goto(addr0106);
                        }
                        addr00c5:
                        if(!(_loc5_ && Boolean(param1)))
                        {
                           addr0106:
                           this.handleClose(null);
                        }
                        return;
                     }
                     §§goto(addr0106);
                  }
               }
               return;
            }
            §§goto(addr0080);
         }
         §§goto(addr0052);
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
            if(!(_loc1_ && Boolean(this)))
            {
               sendNotification(VirtualTaskNotificationInterest.CITYSQUARELAYER_DETAIL_OPENED);
               if(_loc2_)
               {
                  facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine],this));
                  if(_loc2_ || _loc2_)
                  {
                     addr008e:
                     §§push(this.component);
                     if(_loc2_)
                     {
                        §§push(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER);
                        if(!(_loc1_ && _loc2_))
                        {
                           §§pop().addEventListener(§§pop(),this.component_SHOW_UI_INFOLAYERHandler);
                           if(_loc2_)
                           {
                              addr00c9:
                              this.component.addEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_HIDE_UI_INFOLAYERHandler);
                              addr00c3:
                              addr00c0:
                           }
                           §§goto(addr00d1);
                        }
                        §§goto(addr00c9);
                     }
                     §§goto(addr00c3);
                  }
                  §§goto(addr00c0);
               }
               addr00d1:
               return;
            }
            §§goto(addr008e);
         }
         §§goto(addr00c0);
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            sendNotification(VirtualTaskNotificationInterest.CITYSQUARELAYER_DETAIL_CLOSED);
            if(_loc2_)
            {
               §§push(this.component);
               if(_loc2_)
               {
                  §§push(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER);
                  if(!_loc1_)
                  {
                     §§pop().removeEventListener(§§pop(),this.component_SHOW_UI_INFOLAYERHandler);
                     if(!(_loc1_ && _loc1_))
                     {
                        addr0073:
                        this.component.removeEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_HIDE_UI_INFOLAYERHandler);
                        addr006d:
                        if(_loc2_)
                        {
                           super.onRemove();
                        }
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0073);
               }
               §§goto(addr006d);
            }
         }
         addr0085:
      }
      
      private function handleClose(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this.component.removeEventListener(Event.CLOSE,this.handleClose);
            if(!(_loc2_ && _loc2_))
            {
               addr004b:
               facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.getMediatorName());
            }
            return;
         }
         §§goto(addr004b);
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
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §§push(param1.cid);
         if(!(_loc4_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Point = param1.target.localToGlobal(new Point());
         if(!_loc4_)
         {
            _loc3_.x += param1.target.width / 2;
            if(_loc5_)
            {
               sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
                  "cid":_loc2_,
                  "lineId":0,
                  "pt":_loc3_,
                  "type":param1.callerType
               },NAME);
            }
         }
      }
      
      private function component_HIDE_UI_INFOLAYERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
         }
      }
      
      public function get component() : CitySquarePopup
      {
         return super.viewComponent as CitySquarePopup;
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._data = param1 as CitySquareDetailViewVo;
            if(_loc2_ || _loc3_)
            {
               addr0043:
               this.component.data = this._data;
            }
            return;
         }
         §§goto(addr0043);
      }
   }
}

