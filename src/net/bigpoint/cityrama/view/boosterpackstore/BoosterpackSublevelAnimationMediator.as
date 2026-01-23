package net.bigpoint.cityrama.view.boosterpackstore
{
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.boosterpack.vo.BoosterpackAnimationLayerVo;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.boosterpackstore.ui.components.BoosterpackSublevelAnimationLayer;
   import net.bigpoint.cityrama.view.ingameStore.ui.components.IngameStoreBook;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class BoosterpackSublevelAnimationMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "BoosterpackSublevelAnimationMediator";
      
      private static const ANIMATION_IDLE_DURATION:Number = 1;
      
      private static const ANIMATION_DELAY:Number = 500;
      
      private static const ANIMATION_STOP_DELAY:Number = 1000;
      
      private static const ANIMATION_BOOSTERSWITCH_DELAY:Number = 0.5;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc2_)
      {
         NAME = "BoosterpackSublevelAnimationMediator";
         if(_loc2_)
         {
            addr0034:
            ANIMATION_IDLE_DURATION = 1;
            if(_loc2_ || _loc2_)
            {
               ANIMATION_DELAY = 500;
               if(!_loc1_)
               {
                  ANIMATION_STOP_DELAY = 1000;
                  if(!(_loc1_ && _loc2_))
                  {
                     addr0077:
                     ANIMATION_BOOSTERSWITCH_DELAY = 0.5;
                  }
               }
               §§goto(addr007f);
            }
            §§goto(addr0077);
         }
         addr007f:
         return;
      }
      §§goto(addr0034);
      
      private var _data:BoosterpackAnimationLayerVo;
      
      private var _component:BoosterpackSublevelAnimationLayer;
      
      private var _rewardItemIndex:uint;
      
      private var _soundProxy:SoundProxy;
      
      private var _nextAnimationStep:uint = 0;
      
      private var _boosterAnimationDelay:TweenLite;
      
      private var _itemIntervalId:uint;
      
      private var _finishIntervalId:uint;
      
      private const ANIMATION_IDLE:String = "ANIMATION_IDLE";
      
      private const ANIMATION_PARTICLE_START:String = "ANIMATION_PARTICLE_START";
      
      private const ANIMATION_ITEMLIST:String = "ANIMATION_ITEMLIST";
      
      private const ANIMATION_FINISHED:String = "ANIMATION_FINISHED";
      
      private const BACK_TO_DETAILLAYER:String = "BACK_TO_DETAILLAYER";
      
      private const ANIMATIONSTEPS:Array;
      
      public function BoosterpackSublevelAnimationMediator(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.ANIMATIONSTEPS = [this.ANIMATION_IDLE,this.ANIMATION_PARTICLE_START,this.ANIMATION_ITEMLIST,this.ANIMATION_FINISHED,this.BACK_TO_DETAILLAYER];
            if(!(_loc2_ && Boolean(param1)))
            {
               super(NAME,param1);
            }
         }
      }
      
      public function get container() : IngameStoreBook
      {
         return super.viewComponent as IngameStoreBook;
      }
      
      public function setData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            if(param1 is BoosterpackAnimationLayerVo)
            {
               if(_loc3_)
               {
                  this._data = param1 as BoosterpackAnimationLayerVo;
                  if(_loc3_)
                  {
                     this.prepareProxies();
                     if(!_loc2_)
                     {
                        addr0060:
                        this.setInitialValues();
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0073:
                           this.setupListeners();
                        }
                     }
                     §§goto(addr0079);
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0060);
            }
            addr0079:
            return;
         }
         §§goto(addr0060);
      }
      
      private function prepareProxies() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         }
      }
      
      private function setInitialValues() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._component);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     this._component = new BoosterpackSublevelAnimationLayer();
                     if(_loc2_ || _loc1_)
                     {
                        addr0044:
                        this._component.data = this._data;
                        §§goto(addr0040);
                     }
                     §§goto(addr00e6);
                  }
                  §§goto(addr00d2);
               }
               addr0040:
               if(!_loc1_)
               {
                  if(facade.hasMediator(UserInterfaceInfoLayerMediator.NAME + NAME))
                  {
                     if(_loc2_ || _loc1_)
                     {
                        facade.removeMediator(UserInterfaceInfoLayerMediator.NAME + NAME);
                        if(_loc2_)
                        {
                           addr008b:
                           §§push(facade);
                           §§push(§§findproperty(UserInterfaceInfoLayerMediator));
                           var _temp_4:* = new <UiInfolayerAlignmentLine>[this._component.uiInfolayerAlignmentLine,this._component.uiInfolayerAlignmentLine2];
                           §§pop().registerMediator(new §§pop().UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this._component.uiInfolayerAlignmentLine,this._component.uiInfolayerAlignmentLine2],this));
                           if(!_loc1_)
                           {
                              addr00d2:
                              this.container.contentGroup.addElement(this._component);
                              if(_loc2_)
                              {
                                 addr00e6:
                                 this.firstAnimationStep();
                              }
                              §§goto(addr00ec);
                           }
                           §§goto(addr00e6);
                        }
                        §§goto(addr00ec);
                     }
                     §§goto(addr00d2);
                  }
                  §§goto(addr008b);
               }
               §§goto(addr00ec);
            }
            §§goto(addr0044);
         }
         addr00ec:
      }
      
      private function setupListeners() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            §§push(this._component);
            if(_loc1_ || _loc2_)
            {
               if(§§pop() == null)
               {
                  if(!_loc2_)
                  {
                     return;
                  }
                  addr00b2:
                  §§push(this._component);
                  if(_loc1_)
                  {
                     addr00c5:
                     §§push(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER);
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§pop().addEventListener(§§pop(),this.component_SHOW_UI_INFOLAYERHandler);
                        if(_loc1_)
                        {
                           addr00ee:
                           this._component.addEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_HIDE_UI_INFOLAYERHandler);
                           addr00e8:
                           addr00e4:
                        }
                        §§goto(addr00f5);
                     }
                     §§goto(addr00ee);
                  }
                  §§goto(addr00e8);
               }
               else
               {
                  §§push(this._component);
                  if(!_loc2_)
                  {
                     addr0047:
                     §§push(BoosterpackSublevelAnimationLayer.BUY_BOOSTER_GOOD);
                     if(_loc1_ || Boolean(this))
                     {
                        §§pop().addEventListener(§§pop(),this.handleBuy);
                        if(!(_loc2_ && _loc2_))
                        {
                           §§push(this._component);
                           if(_loc1_ || Boolean(this))
                           {
                              §§push(BoosterpackSublevelAnimationLayer.SKIP);
                              if(_loc1_ || _loc2_)
                              {
                                 §§pop().addEventListener(§§pop(),this.handleSkipAnimationClick);
                                 if(_loc1_ || _loc2_)
                                 {
                                    §§goto(addr00b2);
                                 }
                                 addr00f5:
                                 return;
                              }
                              §§goto(addr00ee);
                           }
                           §§goto(addr00e8);
                        }
                        §§goto(addr00e4);
                     }
                     §§goto(addr00ee);
                  }
               }
               §§goto(addr00c5);
            }
            §§goto(addr0047);
         }
         §§goto(addr00b2);
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            this.removeListeners();
         }
      }
      
      private function component_SHOW_UI_INFOLAYERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §§push(param1.cid);
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Point = param1.target.localToGlobal(new Point());
         if(!_loc4_)
         {
            _loc3_.x += param1.target.width / 2;
            if(_loc5_ || Boolean(this))
            {
               sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
                  "cid":_loc2_,
                  "lineId":UserInterfaceInfoLayerMediator.LINE_AUTO_SELECT,
                  "pt":_loc3_,
                  "type":param1.callerType
               },NAME);
            }
         }
      }
      
      private function component_HIDE_UI_INFOLAYERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
         }
      }
      
      private function removeListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._component);
            if(_loc2_ || _loc1_)
            {
               if(§§pop() == null)
               {
                  if(!_loc1_)
                  {
                     return;
                  }
               }
               else
               {
                  §§push(this._component);
                  if(!_loc1_)
                  {
                     addr0048:
                     §§push(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER);
                     if(_loc2_)
                     {
                        §§pop().removeEventListener(§§pop(),this.component_SHOW_UI_INFOLAYERHandler);
                        if(_loc2_)
                        {
                           §§push(this._component);
                           if(_loc2_ || Boolean(this))
                           {
                              §§push(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER);
                              if(!(_loc1_ && _loc2_))
                              {
                                 addr008d:
                                 §§pop().removeEventListener(§§pop(),this.component_HIDE_UI_INFOLAYERHandler);
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    §§push(this._component);
                                    if(_loc2_)
                                    {
                                       addr00b4:
                                       §§push(BoosterpackSublevelAnimationLayer.BUY_BOOSTER_GOOD);
                                       if(_loc2_ || Boolean(this))
                                       {
                                          §§pop().removeEventListener(§§pop(),this.handleBuy);
                                          if(_loc2_)
                                          {
                                             addr00de:
                                             this._component.removeEventListener(BoosterpackSublevelAnimationLayer.SKIP,this.handleSkipAnimationClick);
                                             addr00d8:
                                             addr00d4:
                                          }
                                          §§goto(addr00e6);
                                       }
                                       §§goto(addr00de);
                                    }
                                    §§goto(addr00d8);
                                 }
                                 §§goto(addr00d4);
                              }
                              §§goto(addr00de);
                           }
                           §§goto(addr00d8);
                        }
                        §§goto(addr00e6);
                     }
                     §§goto(addr008d);
                  }
                  §§goto(addr00b4);
               }
               §§goto(addr00e6);
            }
            §§goto(addr0048);
         }
         addr00e6:
      }
      
      private function startItemAnimation() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            clearInterval(this._itemIntervalId);
            if(_loc1_)
            {
               this._component.adjustLayoutBasedOnRewardAmount(this._data.rewards.length);
               if(_loc1_)
               {
                  addr0058:
                  this._rewardItemIndex = 0;
                  if(!_loc2_)
                  {
                     §§goto(addr0063);
                  }
                  §§goto(addr0076);
               }
               addr0063:
               this.fillItemToList();
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0076:
                  this._itemIntervalId = setInterval(this.fillItemToList,ANIMATION_DELAY);
               }
               return;
            }
            §§goto(addr0058);
         }
         §§goto(addr0076);
      }
      
      private function fillItemToList() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:RewardItemComponentVo = null;
         if(_loc5_)
         {
            if(this._rewardItemIndex >= this._data.rewards.length)
            {
               if(!(_loc4_ && _loc3_))
               {
                  addr003e:
                  clearInterval(this._itemIntervalId);
                  if(_loc5_ || _loc3_)
                  {
                     addr0063:
                     this._finishIntervalId = setInterval(this.finishAnimationStep,ANIMATION_STOP_DELAY);
                  }
                  §§goto(addr00d6);
               }
               §§goto(addr0063);
            }
            else
            {
               _loc1_ = this._data.rewards[this._rewardItemIndex];
               if(!(_loc4_ && Boolean(_loc1_)))
               {
                  this._component.addRewardData(_loc1_);
                  if(!(_loc4_ && _loc3_))
                  {
                     addr00bf:
                     var _loc2_:* = this;
                     var _loc3_:* = _loc2_._rewardItemIndex + 1;
                     if(!_loc4_)
                     {
                        _loc2_._rewardItemIndex = _loc3_;
                     }
                  }
                  §§goto(addr00d6);
               }
               §§goto(addr00bf);
            }
            return;
         }
         §§goto(addr003e);
      }
      
      private function firstAnimationStep() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            this._nextAnimationStep = 0;
            if(!_loc1_)
            {
               addr0029:
               this.nextAnimationStep();
            }
            return;
         }
         §§goto(addr0029);
      }
      
      private function finishAnimationStep() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            this._nextAnimationStep = this.ANIMATIONSTEPS.indexOf(this.ANIMATION_FINISHED);
            if(!(_loc1_ && _loc2_))
            {
               addr0045:
               this.nextAnimationStep();
            }
            return;
         }
         §§goto(addr0045);
      }
      
      private function lastAnimationStep() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            this._nextAnimationStep = this.ANIMATIONSTEPS.length - 1;
            if(_loc2_ || Boolean(this))
            {
               addr0040:
               this.nextAnimationStep();
            }
            return;
         }
         §§goto(addr0040);
      }
      
      private function nextAnimationStep() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:String = this.ANIMATIONSTEPS[this._nextAnimationStep];
         if(_loc4_ || Boolean(_loc2_))
         {
            var _loc2_:* = this;
            var _loc3_:* = _loc2_._nextAnimationStep + 1;
            if(!_loc5_)
            {
               _loc2_._nextAnimationStep = _loc3_;
            }
         }
         _loc2_ = _loc1_;
         if(!_loc5_)
         {
            §§push(this.ANIMATION_IDLE);
            if(!_loc5_)
            {
               §§push(_loc2_);
               if(!_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc5_)
                     {
                        §§push(0);
                        if(_loc4_ || Boolean(_loc2_))
                        {
                        }
                     }
                     else
                     {
                        addr01d2:
                        §§push(1);
                        if(_loc5_ && Boolean(_loc3_))
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(this.ANIMATION_PARTICLE_START);
                     if(_loc4_ || Boolean(this))
                     {
                        addr01b9:
                        §§push(_loc2_);
                        if(!(_loc5_ && Boolean(_loc2_)))
                        {
                           addr01c8:
                           if(§§pop() === §§pop())
                           {
                              if(_loc4_)
                              {
                                 §§goto(addr01d2);
                              }
                              else
                              {
                                 addr025e:
                                 §§push(3);
                                 if(_loc5_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(this.ANIMATION_ITEMLIST);
                              if(_loc4_ || Boolean(_loc3_))
                              {
                                 addr01f8:
                                 §§push(_loc2_);
                                 if(!_loc5_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc4_ || Boolean(_loc2_))
                                       {
                                          addr0211:
                                          §§push(2);
                                          if(_loc4_ || Boolean(_loc2_))
                                          {
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr025e);
                                       }
                                    }
                                    else
                                    {
                                       §§push(this.ANIMATION_FINISHED);
                                       if(!(_loc5_ && Boolean(_loc1_)))
                                       {
                                          §§push(_loc2_);
                                          if(_loc4_ || Boolean(_loc1_))
                                          {
                                             addr0254:
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc4_)
                                                {
                                                   §§goto(addr025e);
                                                }
                                                else
                                                {
                                                   addr0273:
                                                   §§push(4);
                                                   if(_loc4_)
                                                   {
                                                   }
                                                }
                                                §§goto(addr028b);
                                             }
                                             else
                                             {
                                                §§goto(addr026f);
                                             }
                                          }
                                          addr026f:
                                          §§goto(addr026e);
                                       }
                                       addr026e:
                                       if(this.BACK_TO_DETAILLAYER === _loc2_)
                                       {
                                          §§goto(addr0273);
                                       }
                                       else
                                       {
                                          §§push(5);
                                       }
                                       §§goto(addr028b);
                                    }
                                    §§goto(addr028b);
                                 }
                                 §§goto(addr0254);
                              }
                              §§goto(addr026e);
                           }
                           §§goto(addr028b);
                        }
                        §§goto(addr0254);
                     }
                     §§goto(addr01f8);
                  }
                  addr028b:
                  switch(§§pop())
                  {
                     case 0:
                        TweenMax.delayedCall(ANIMATION_IDLE_DURATION,this.nextAnimationStep);
                        if(!_loc5_)
                        {
                           break;
                        }
                        addr007f:
                        §§push(this._component);
                        if(_loc4_ || Boolean(this))
                        {
                           §§pop().playStarsAnimation();
                           if(!(_loc5_ && Boolean(_loc3_)))
                           {
                              TweenMax.delayedCall(ANIMATION_BOOSTERSWITCH_DELAY,this.switchItemPackImage);
                              if(!_loc5_)
                              {
                                 addr00b7:
                                 TweenMax.delayedCall(ANIMATION_IDLE_DURATION,this.nextAnimationStep);
                                 if(!(_loc5_ && Boolean(_loc3_)))
                                 {
                                    break;
                                 }
                                 facade.sendNotification(ApplicationNotificationConstants.BOOSTERPACKBOOK_CONTENT_CHANGE,{
                                    "container":this.container,
                                    "content":this._data.boosterpackVo.slotId,
                                    "type":this._data.boosterpackVo.type
                                 });
                                 addr0127:
                                 if(_loc5_)
                                 {
                                 }
                              }
                              break;
                           }
                           addr00e5:
                           this.startItemAnimation();
                           if(_loc4_ || Boolean(_loc2_))
                           {
                           }
                           break;
                        }
                        addr010d:
                        §§pop().showFinishState();
                        if(_loc4_)
                        {
                        }
                        break;
                     case 1:
                        §§push(this._soundProxy);
                        if(!_loc5_)
                        {
                           §§pop().playBoosterSparkle();
                           if(!(_loc5_ && Boolean(this)))
                           {
                              §§goto(addr007f);
                           }
                           §§goto(addr00b7);
                        }
                        else
                        {
                           addr00db:
                           §§pop().playBossterFanfare();
                           if(_loc5_)
                           {
                              break;
                           }
                        }
                        §§goto(addr00e5);
                     case 2:
                        §§goto(addr00db);
                        §§push(this._soundProxy);
                     case 3:
                        this.resetAnimationParams();
                        if(_loc4_)
                        {
                           §§goto(addr010d);
                           §§push(this._component);
                        }
                        else
                        {
                           §§goto(addr0127);
                        }
                        break;
                     case 4:
                        this.resetAnimationParams();
                        if(!_loc4_)
                        {
                           break;
                        }
                        §§goto(addr0127);
                  }
                  return;
               }
               §§goto(addr01c8);
            }
            §§goto(addr01b9);
         }
         §§goto(addr0211);
      }
      
      private function switchItemPackImage() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this._component.switchItemPackImage();
         }
      }
      
      private function handleBuy(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(this._data.boosterpackVo);
            §§push(this._data.boosterpackVo.defaultCostUserStock);
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop() - this._data.boosterpackVo.defaultCostAmount);
            }
            §§pop().defaultCostUserStock = §§pop();
            if(_loc2_)
            {
               sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_BOOSTERPACK_BUY,{
                  "booster":this._data.boosterpackVo,
                  "rc":false
               });
            }
         }
      }
      
      private function handleSkipAnimationClick(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            if(this.ANIMATIONSTEPS[this._nextAnimationStep] != this.BACK_TO_DETAILLAYER)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this.finishAnimationStep();
                  if(_loc3_ && _loc2_)
                  {
                  }
               }
            }
            else
            {
               this.lastAnimationStep();
            }
         }
      }
      
      private function resetAnimationParams() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            clearInterval(this._itemIntervalId);
            if(_loc2_ || Boolean(this))
            {
               TweenMax.killDelayedCallsTo(this.nextAnimationStep);
               if(!(_loc1_ && Boolean(this)))
               {
                  TweenMax.killDelayedCallsTo(this.switchItemPackImage);
                  if(_loc2_)
                  {
                     this.switchItemPackImage();
                     if(!_loc1_)
                     {
                        clearInterval(this._finishIntervalId);
                        if(_loc2_)
                        {
                           addr0083:
                           §§push(this._boosterAnimationDelay);
                           if(!_loc1_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc1_)
                                 {
                                    addr009b:
                                    this._boosterAnimationDelay.kill();
                                    addr0096:
                                 }
                              }
                              §§goto(addr009f);
                           }
                           §§goto(addr009b);
                        }
                     }
                  }
                  addr009f:
                  return;
               }
               §§goto(addr0083);
            }
            §§goto(addr0096);
         }
         §§goto(addr0083);
      }
   }
}

