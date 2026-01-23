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
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && CitySquareEventFailPopupMediator))
      {
         NAME = "CitySquareEventFailPopupMediator";
      }
      
      public function CitySquareEventFailPopupMediator(param1:String, param2:Object)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(this)))
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.component);
            if(_loc2_ || Boolean(this))
            {
               §§pop().addEventListener(Event.CLOSE,this.handleClose);
               if(!_loc1_)
               {
                  addr0037:
                  §§push(this.component);
                  if(_loc2_ || _loc1_)
                  {
                     §§push(CitySquareEventFailPopup.BUY_REWARD);
                     if(!(_loc1_ && _loc2_))
                     {
                        §§pop().addEventListener(§§pop(),this.handleBuyReward);
                        if(_loc2_ || Boolean(this))
                        {
                           addr0079:
                           §§push(this.component);
                           if(!_loc1_)
                           {
                              §§push(CitySquareEventFailPopup.OPEN_TREASURY);
                              if(_loc2_)
                              {
                                 addr0096:
                                 §§pop().addEventListener(§§pop(),this.handleOpenTreasury);
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    addr00b4:
                                    this.component.addEventListener(CitySquareEventFailPopup.CANCEL_BUY_REWARD,this.handleCancelBuyReward);
                                    addr00ae:
                                 }
                                 §§goto(addr00bb);
                              }
                              §§goto(addr00b4);
                           }
                           §§goto(addr00ae);
                        }
                        addr00bb:
                        return;
                     }
                     §§goto(addr0096);
                  }
                  §§goto(addr00ae);
               }
               §§goto(addr0079);
            }
            §§goto(addr00ae);
         }
         §§goto(addr0037);
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            §§push(this.component);
            if(!_loc1_)
            {
               §§pop().removeEventListener(Event.CLOSE,this.handleClose);
               if(_loc2_ || _loc2_)
               {
                  §§push(this.component);
                  if(_loc2_ || _loc1_)
                  {
                     §§push(CitySquareEventFailPopup.BUY_REWARD);
                     if(!_loc1_)
                     {
                        §§pop().removeEventListener(§§pop(),this.handleBuyReward);
                        if(!(_loc1_ && _loc1_))
                        {
                           §§push(this.component);
                           if(!_loc1_)
                           {
                              addr008b:
                              §§push(CitySquareEventFailPopup.CANCEL_BUY_REWARD);
                              if(_loc2_)
                              {
                                 addr0096:
                                 §§pop().removeEventListener(§§pop(),this.handleCancelBuyReward);
                                 if(!_loc1_)
                                 {
                                    addr00ab:
                                    this.component.addEventListener(CitySquareEventFailPopup.OPEN_TREASURY,this.handleOpenTreasury);
                                    addr00a5:
                                    addr00a2:
                                    if(!_loc1_)
                                    {
                                       addr00b8:
                                       super.onRemove();
                                    }
                                 }
                                 §§goto(addr00bd);
                              }
                              §§goto(addr00ab);
                           }
                           §§goto(addr00a5);
                        }
                        addr00bd:
                        return;
                     }
                     §§goto(addr0096);
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr00a2);
            }
            §§goto(addr008b);
         }
         §§goto(addr00b8);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.EVENTS_CHANGED,ApplicationNotificationConstants.REALCURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:EventLayerProxy = null;
         var _loc3_:CitySquareEventFailVo = null;
         var _loc4_:* = param1.getName();
         if(!_loc5_)
         {
            §§push(ApplicationNotificationConstants.EVENTS_CHANGED);
            if(_loc6_)
            {
               §§push(_loc4_);
               if(!_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc5_ && Boolean(_loc2_)))
                     {
                        addr00dc:
                        §§push(0);
                        if(_loc5_)
                        {
                        }
                     }
                     else
                     {
                        addr00f3:
                        §§push(1);
                        if(_loc6_ || Boolean(_loc3_))
                        {
                        }
                     }
                     §§goto(addr0113);
                  }
                  else
                  {
                     §§goto(addr00ef);
                  }
               }
               addr00ef:
               §§goto(addr00ed);
            }
            addr00ed:
            if(ApplicationNotificationConstants.REALCURRENCY_CHANGED === _loc4_)
            {
               §§goto(addr00f3);
            }
            else
            {
               §§push(2);
            }
            addr0113:
            switch(§§pop())
            {
               case 0:
                  this.handleClose(null);
                  if(_loc5_ && Boolean(_loc2_))
                  {
                  }
                  break;
               case 1:
                  _loc2_ = facade.retrieveProxy(EventLayerProxy.NAME) as EventLayerProxy;
                  _loc3_ = _loc2_.getCitySquareEventFailVo();
                  if(_loc6_ || Boolean(param1))
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     if(!(_loc6_ || Boolean(_loc3_)))
                     {
                        break;
                     }
                  }
                  this.setData(_loc3_);
            }
            return;
         }
         §§goto(addr00dc);
      }
      
      private function handleBuyReward(param1:Event) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            param1.stopPropagation();
            if(!_loc4_)
            {
               addr0026:
               StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
            }
            var _loc2_:EventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
            if(!(_loc4_ && _loc3_))
            {
               sendNotification(ApplicationNotificationConstants.QUEST_UPSELL,{
                  "id":_loc2_.expiredEventQuest.quests[0].config.id,
                  "type":"EVENT"
               });
               if(_loc3_)
               {
                  sendNotification(MiniLayerConstants.OPEN_MINI_CITYSQUARE_UPSELL_REWARD);
                  if(_loc3_ || _loc3_)
                  {
                     sendNotification(ApplicationNotificationConstants.EVENTS_CHANGED);
                     if(_loc3_)
                     {
                        addr00bc:
                        this.handleClose(null);
                     }
                     §§goto(addr00c2);
                  }
                  §§goto(addr00bc);
               }
               addr00c2:
               return;
            }
            §§goto(addr00bc);
         }
         §§goto(addr0026);
      }
      
      private function handleOpenTreasury(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            param1.stopPropagation();
            if(_loc3_ || Boolean(this))
            {
               addr0029:
               sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
            }
            return;
         }
         §§goto(addr0029);
      }
      
      private function handleCancelBuyReward(param1:Event) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         if(_loc7_ || _loc2_)
         {
            param1.stopPropagation();
            if(!(_loc8_ && Boolean(this)))
            {
               StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
            }
         }
         var _loc2_:EventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         var _loc3_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc4_:TimerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         var _loc5_:EventQuestVo = _loc2_.expiredEventQuest;
         var _loc6_:Number = _loc5_.quests[0].questDto.endTimeStamp + _loc3_.config.balanceParameters[ServerBalanceParameterConstants.UPSELLING_OVERTIME].value;
         if(!(_loc8_ && Boolean(this)))
         {
            §§push(Boolean(_loc5_));
            if(!_loc8_)
            {
               var _temp_5:* = §§pop();
               §§push(_temp_5);
               if(_temp_5)
               {
                  if(!_loc8_)
                  {
                     §§pop();
                     if(_loc7_ || Boolean(this))
                     {
                        addr00ec:
                        if(_loc4_.currentTimeStamp < _loc6_)
                        {
                           if(_loc7_ || Boolean(this))
                           {
                              facade.sendNotification(ApplicationNotificationConstants.QUEST_CHANGE_STATE,{
                                 "id":_loc5_.quests[0].config.id,
                                 "state":QuestSystemStateConst.CANCELLED
                              });
                              if(!(_loc8_ && Boolean(this)))
                              {
                                 addr013d:
                                 sendNotification(ApplicationNotificationConstants.EVENTS_CHANGED);
                                 if(!(_loc8_ && Boolean(param1)))
                                 {
                                    addr0155:
                                    this.handleClose(null);
                                 }
                                 §§goto(addr015b);
                              }
                              §§goto(addr0155);
                           }
                           §§goto(addr015b);
                        }
                        §§goto(addr013d);
                     }
                     §§goto(addr0155);
                  }
               }
            }
            §§goto(addr00ec);
         }
         addr015b:
      }
      
      private function handleClose(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.getMediatorName());
         }
      }
      
      public function get component() : CitySquareEventFailPopup
      {
         return super.viewComponent as CitySquareEventFailPopup;
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            if(param1 is CitySquareEventFailVo)
            {
               if(_loc2_)
               {
                  this.component.data = param1 as CitySquareEventFailVo;
               }
            }
         }
      }
   }
}

