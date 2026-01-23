package net.bigpoint.cityrama.view.citysquare
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.detailViews.EventLayerProxy;
   import net.bigpoint.cityrama.model.detailViews.vo.CitySquareDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.CitySquareRewardPreviewVo;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
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
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         NAME = "CitySquareEventPopupMediator";
      }
      
      private var _data:CitySquareDetailViewVo;
      
      private var _eventLayerProxy:EventLayerProxy;
      
      private var _soundProxy:SoundProxy;
      
      public function CitySquareEventPopupMediator(param1:String, param2:Object)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(this)))
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            this._eventLayerProxy = facade.retrieveProxy(EventLayerProxy.NAME) as EventLayerProxy;
            if(_loc2_)
            {
               this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
               if(_loc2_)
               {
                  addr004d:
                  §§push(this.component);
                  if(!_loc1_)
                  {
                     §§pop().addEventListener(Event.CLOSE,this.handleClose);
                     if(_loc2_ || _loc2_)
                     {
                        §§push(this.component);
                        if(_loc2_ || Boolean(this))
                        {
                           §§push(CitySquareEventPopup.OPEN_DEPOSIT_MINILAYER);
                           if(_loc2_ || Boolean(this))
                           {
                              §§pop().addEventListener(§§pop(),this.handleOpenDepositMinilayer);
                              if(!_loc1_)
                              {
                                 addr00a8:
                                 §§push(this.component);
                                 if(!_loc1_)
                                 {
                                    §§push(CitySquareEventPopup.OPEN_REWARD_PREVIEW);
                                    if(_loc2_ || _loc1_)
                                    {
                                       §§pop().addEventListener(§§pop(),this.handleOpenRewardPreview);
                                       if(_loc2_ || Boolean(this))
                                       {
                                          §§push(this.component);
                                          if(_loc2_ || _loc1_)
                                          {
                                             addr00e7:
                                             §§push(ChallengeBarComponent.OPEN_PAYMENT);
                                             if(_loc2_)
                                             {
                                                addr00f2:
                                                §§pop().addEventListener(§§pop(),this.handleOpenPayment);
                                                if(!(_loc1_ && _loc2_))
                                                {
                                                   addr0106:
                                                   §§push(this.component);
                                                   if(!_loc1_)
                                                   {
                                                      addr010e:
                                                      §§push(ChallengeBarComponent.UPSELL_GOOD);
                                                      if(!(_loc1_ && _loc2_))
                                                      {
                                                         addr012b:
                                                         §§pop().addEventListener(§§pop(),this.handleGoodUpsell);
                                                         if(_loc2_ || _loc1_)
                                                         {
                                                            addr0148:
                                                            this.component.addEventListener(PaperPopupWindow.BACK,this.handleBack);
                                                            addr0142:
                                                            addr013f:
                                                         }
                                                         §§goto(addr0150);
                                                      }
                                                      §§goto(addr0148);
                                                   }
                                                   §§goto(addr0142);
                                                }
                                                §§goto(addr0150);
                                             }
                                             §§goto(addr012b);
                                          }
                                          §§goto(addr0142);
                                       }
                                       §§goto(addr0150);
                                    }
                                    §§goto(addr00f2);
                                 }
                                 §§goto(addr010e);
                              }
                              §§goto(addr0106);
                           }
                           §§goto(addr012b);
                        }
                        §§goto(addr00e7);
                     }
                     §§goto(addr00a8);
                  }
                  §§goto(addr010e);
               }
               addr0150:
               return;
            }
            §§goto(addr004d);
         }
         §§goto(addr013f);
      }
      
      private function handleBack(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            sendNotification(ApplicationNotificationConstants.OPEN_CITYSQUARE_EVENT_SELECTION);
         }
      }
      
      private function handleGoodUpsell(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:ChallengeBarVo = null;
         if(_loc4_)
         {
            param1.stopPropagation();
            if(!(_loc3_ && Boolean(_loc2_)))
            {
               if(param1.target is ChallengeBarComponent)
               {
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     _loc2_ = ChallengeBarComponent(param1.target).data;
                     §§goto(addr0067);
                  }
                  §§goto(addr0079);
               }
               addr0067:
               if(_loc2_)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
                     addr0079:
                     if(_loc4_ || Boolean(this))
                     {
                        addr009f:
                        sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_QUEST_ELEMENT_INSTANT_FINISH,{
                           "elementId":_loc2_.elementId,
                           "questId":_loc2_.questId,
                           "questType":_loc2_.questType
                        });
                     }
                     §§goto(addr00c1);
                  }
                  §§goto(addr009f);
               }
               addr00c1:
               return;
            }
         }
         §§goto(addr009f);
      }
      
      private function handleOpenPayment(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            param1.stopPropagation();
            if(_loc2_)
            {
               sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
            }
         }
      }
      
      private function handleOpenRewardPreview(param1:CitysquareRewardPreviewButtonPressedEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:CitySquareRewardPreviewVo = new CitySquareRewardPreviewVo();
         if(_loc3_)
         {
            _loc2_.challengeNumber = param1.challengeNumber;
            if(!(_loc4_ && _loc3_))
            {
               _loc2_.totalChallenges = this.component.data.eventList[0].listOfChallenges.length;
               if(!(_loc4_ && _loc3_))
               {
                  _loc2_.rewardCollection = this.component.data.eventList[0].listOfChallenges[param1.challengeNumber - 1].rewards;
                  if(!_loc4_)
                  {
                     addr009e:
                     facade.sendNotification(MiniLayerConstants.OPEN_MINI_CITYSQUARE_REWARD_PREVIEW,_loc2_);
                  }
                  return;
               }
            }
         }
         §§goto(addr009e);
      }
      
      private function handleOpenDepositMinilayer(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(param1))
         {
            param1.stopPropagation();
            if(_loc4_)
            {
               this._soundProxy.playButtonClick();
            }
         }
         var _loc2_:CitySquareDetailViewVo = this._eventLayerProxy.getCitySquareDetailViewVo(true);
         if(!_loc3_)
         {
            facade.sendNotification(MiniLayerConstants.OPEN_MINI_CITYSQUARE_DEPOSIT,_loc2_);
         }
      }
      
      private function handleClose(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.getMediatorName());
         }
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            RandomUtilities.removestackCall(this.updateData);
            if(!(_loc1_ && Boolean(this)))
            {
               this.removeListener();
               if(!_loc1_)
               {
                  addr004b:
                  super.onRemove();
               }
            }
            return;
         }
         §§goto(addr004b);
      }
      
      private function removeListener() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            §§push(this.component);
            if(!_loc1_)
            {
               §§pop().removeEventListener(Event.CLOSE,this.handleClose);
               if(_loc2_ || _loc2_)
               {
                  §§push(this.component);
                  if(!(_loc1_ && Boolean(this)))
                  {
                     §§push(CitySquareEventPopup.OPEN_DEPOSIT_MINILAYER);
                     if(_loc2_)
                     {
                        §§pop().removeEventListener(§§pop(),this.handleOpenDepositMinilayer);
                        if(!(_loc1_ && _loc1_))
                        {
                           §§push(this.component);
                           if(!(_loc1_ && Boolean(this)))
                           {
                              §§push(CitySquareEventPopup.OPEN_REWARD_PREVIEW);
                              if(_loc2_)
                              {
                                 §§pop().removeEventListener(§§pop(),this.handleOpenRewardPreview);
                                 if(_loc2_)
                                 {
                                    §§push(this.component);
                                    if(_loc2_ || _loc1_)
                                    {
                                       addr00b0:
                                       §§push(ChallengeBarComponent.OPEN_PAYMENT);
                                       if(!_loc1_)
                                       {
                                          §§goto(addr00bb);
                                       }
                                       §§goto(addr0109);
                                    }
                                    §§goto(addr00e1);
                                 }
                                 §§goto(addr00cf);
                              }
                              §§goto(addr00ec);
                           }
                           §§goto(addr0103);
                        }
                        §§goto(addr00cf);
                     }
                     addr00bb:
                     §§pop().removeEventListener(§§pop(),this.handleOpenPayment);
                     if(!(_loc1_ && _loc1_))
                     {
                        addr00cf:
                        §§push(this.component);
                        if(!_loc1_)
                        {
                           addr00e1:
                           §§push(ChallengeBarComponent.UPSELL_GOOD);
                           if(!_loc1_)
                           {
                              addr00ec:
                              §§pop().removeEventListener(§§pop(),this.handleGoodUpsell);
                              if(!(_loc1_ && _loc1_))
                              {
                                 addr0109:
                                 this.component.removeEventListener(PaperPopupWindow.BACK,this.handleBack);
                                 addr0103:
                              }
                              §§goto(addr0111);
                           }
                           §§goto(addr0109);
                        }
                        §§goto(addr0103);
                     }
                     §§goto(addr0111);
                  }
                  §§goto(addr00e1);
               }
               addr0111:
               return;
            }
            §§goto(addr00b0);
         }
         §§goto(addr00cf);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.EVENT_QUEST_STATE_CHANGED,ApplicationNotificationConstants.REALCURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = param1.getName();
         if(!_loc3_)
         {
            §§push(ApplicationNotificationConstants.EVENT_QUEST_STATE_CHANGED);
            if(_loc4_)
            {
               §§push(_loc2_);
               if(!_loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        addr00a9:
                        §§push(0);
                        if(_loc3_)
                        {
                        }
                     }
                     else
                     {
                        addr00be:
                        §§push(1);
                        if(_loc4_ || Boolean(param1))
                        {
                        }
                     }
                     §§goto(addr00de);
                  }
                  else
                  {
                     §§goto(addr00ba);
                  }
               }
               addr00ba:
               §§goto(addr00b9);
            }
            addr00b9:
            if(ApplicationNotificationConstants.REALCURRENCY_CHANGED === _loc2_)
            {
               §§goto(addr00be);
            }
            else
            {
               §§push(2);
            }
            addr00de:
            switch(§§pop())
            {
               case 0:
               case 1:
                  if(this._eventLayerProxy.getCitySquareDetailViewVo(true) != null)
                  {
                     if(!(_loc3_ && Boolean(param1)))
                     {
                        RandomUtilities.addstackCall(this.updateData);
                        if(_loc3_ && Boolean(_loc2_))
                        {
                        }
                     }
                     break;
                  }
                  this.handleClose(null);
                  if(_loc4_)
                  {
                  }
            }
            return;
         }
         §§goto(addr00a9);
      }
      
      private function updateData() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            this.component.data = this._eventLayerProxy.getCitySquareDetailViewVo(true);
         }
      }
      
      public function setData(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._data = param1 as CitySquareDetailViewVo;
            if(!_loc3_)
            {
               this.component.data = this._data;
            }
         }
      }
      
      public function get component() : CitySquareEventPopup
      {
         return super.viewComponent as CitySquareEventPopup;
      }
   }
}

