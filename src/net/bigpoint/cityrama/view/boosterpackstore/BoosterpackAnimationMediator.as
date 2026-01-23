package net.bigpoint.cityrama.view.boosterpackstore
{
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.easing.Back;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.boosterpack.vo.BoosterpackAnimationLayerVo;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.boosterpackstore.ui.components.BoosterpackAnimationLayer;
   import net.bigpoint.cityrama.view.boosterpackstore.ui.components.BoosterpackBonusLabel;
   import net.bigpoint.cityrama.view.boosterpackstore.ui.components.BoosterpackRewardItemRenderer;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.events.BriskMCDynaLibEvent;
   import net.bigpoint.cityrama.view.ingameStore.ui.components.IngameStoreBook;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import net.bigpoint.particles.particle.ParticleAcceleration;
   import net.bigpoint.particles.particle.ParticleAlphaFade;
   import net.bigpoint.particles.particle.ParticleEmitterDecorator;
   import net.bigpoint.particles.particle.ParticleScale;
   import net.bigpoint.particles.particle.ParticleStartVelocity;
   import net.bigpoint.particles.particle.ParticleUseVelocity;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class BoosterpackAnimationMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "BoosterpackAnimationMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         NAME = "BoosterpackAnimationMediator";
      }
      
      private var _component:BoosterpackAnimationLayer;
      
      private var _boosterAnimationDelay:TweenLite;
      
      private var _data:BoosterpackAnimationLayerVo;
      
      private var _particleEmiter:ParticleEmitterDecorator;
      
      private var _imageLoaderParticleStar:BriskMCDynaLib;
      
      private var _itemIntervalId:uint;
      
      private var _removeEmiterIntervalId:uint;
      
      private var _finishIntervalId:uint;
      
      private var _emiterIntervalId:uint;
      
      private var _rewardItemIndex:uint;
      
      private var _rewardItemEmiters:Dictionary;
      
      private var _rewardItemEmiterIntervals:Dictionary;
      
      private var _soundProxy:SoundProxy;
      
      private var _nextAnimationStep:uint = 0;
      
      private const ANIMATION_BOOSTERPACK:String = "ANIMATION_BOOSTERPACK";
      
      private const ANIMATION_PARTICLE_START:String = "ANIMATION_PARTICLE_START";
      
      private const ANIMATION_PARTICLE_END:String = "ANIMATION_PARTICLE_END";
      
      private const ANIMATION_ITEMLIST:String = "ANIMATION_ITEMLIST";
      
      private const ANIMATION_FINISHED:String = "ANIMATION_FINISHED";
      
      private const BACK_TO_DETAILLAYER:String = "BACK_TO_DETAILLAYER";
      
      private const ANIMATIONSTEPS:Array;
      
      public function BoosterpackAnimationMediator(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.ANIMATIONSTEPS = [this.ANIMATION_BOOSTERPACK,this.ANIMATION_PARTICLE_START,this.ANIMATION_PARTICLE_END,this.ANIMATION_ITEMLIST,this.ANIMATION_FINISHED,this.BACK_TO_DETAILLAYER];
            if(!(_loc2_ && _loc3_))
            {
               super(NAME,param1);
            }
         }
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super.onRemove();
            if(_loc1_ || _loc2_)
            {
               this.removeListeners();
               if(_loc1_)
               {
                  §§push(this._component);
                  if(!_loc2_)
                  {
                     §§push(§§pop());
                     if(_loc1_ || Boolean(this))
                     {
                        var _temp_4:* = §§pop();
                        §§push(_temp_4);
                        §§push(_temp_4);
                        if(_loc1_)
                        {
                           if(§§pop())
                           {
                              if(_loc1_)
                              {
                                 §§pop();
                                 if(_loc1_ || _loc1_)
                                 {
                                    addr006f:
                                    §§push(this.container);
                                    if(_loc1_)
                                    {
                                       §§push(§§pop().contentGroup);
                                       if(!_loc2_)
                                       {
                                          addr0082:
                                          var _temp_6:* = §§pop();
                                          addr0083:
                                          §§push(_temp_6);
                                          if(_temp_6)
                                          {
                                             if(_loc1_ || _loc2_)
                                             {
                                                addr009e:
                                                §§pop();
                                                if(_loc1_)
                                                {
                                                   addr00a4:
                                                   §§push(this._component);
                                                   if(_loc1_ || _loc1_)
                                                   {
                                                      addr00c0:
                                                      if(§§pop().parent == this.container.contentGroup)
                                                      {
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            addr00d5:
                                                            this.container.contentGroup.removeElement(this._component);
                                                            addr00d1:
                                                            if(!_loc2_)
                                                            {
                                                               addr00e5:
                                                               §§push(this._component);
                                                               if(_loc1_ || Boolean(this))
                                                               {
                                                                  §§push(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER);
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§pop().removeEventListener(§§pop(),this.component_SHOW_UI_INFOLAYERHandler);
                                                                     if(_loc1_ || Boolean(this))
                                                                     {
                                                                        §§goto(addr0129);
                                                                     }
                                                                     §§goto(addr013e);
                                                                  }
                                                                  addr0129:
                                                                  this._component.removeEventListener(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this.component_ITEM_OVERHandler);
                                                                  §§goto(addr0123);
                                                               }
                                                               addr0123:
                                                               if(!(_loc2_ && _loc1_))
                                                               {
                                                                  addr013e:
                                                                  this.lastAnimationStep();
                                                               }
                                                               §§goto(addr0144);
                                                            }
                                                            §§goto(addr013e);
                                                         }
                                                         addr0144:
                                                         return;
                                                      }
                                                      §§goto(addr00e5);
                                                   }
                                                   §§goto(addr0123);
                                                }
                                                §§goto(addr00d1);
                                             }
                                          }
                                       }
                                       §§goto(addr00c0);
                                    }
                                    §§goto(addr00d5);
                                 }
                                 §§goto(addr00a4);
                              }
                              §§goto(addr009e);
                           }
                           §§goto(addr0082);
                        }
                        §§goto(addr0083);
                     }
                     §§goto(addr00c0);
                  }
                  §§goto(addr0123);
               }
               §§goto(addr00d1);
            }
            §§goto(addr006f);
         }
         §§goto(addr00d1);
      }
      
      private function removeListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._component);
            if(!_loc1_)
            {
               if(§§pop() == null)
               {
                  if(!_loc1_)
                  {
                     return;
                  }
                  addr0099:
                  §§push(this._component);
                  if(!_loc1_)
                  {
                     addr00ac:
                     §§push(BoosterpackRewardItemRenderer.PUSH_EMITTER_FOR_REWARD_ITEM);
                     if(!_loc1_)
                     {
                        §§goto(addr00b7);
                     }
                     §§goto(addr00d5);
                  }
                  §§goto(addr00cf);
               }
               else
               {
                  §§push(this._component);
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(BoosterpackAnimationLayer.SKIP);
                     if(!_loc1_)
                     {
                        §§pop().removeEventListener(§§pop(),this.handleSkipAnimationClick);
                        if(_loc2_ || _loc2_)
                        {
                           addr0071:
                           §§push(this._component);
                           if(_loc2_)
                           {
                              §§push(BoosterpackAnimationLayer.START_PACK_SPARKLE);
                              if(_loc2_)
                              {
                                 §§pop().removeEventListener(§§pop(),this.handleStartPackSparkelAnimation);
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§goto(addr0099);
                                 }
                                 §§goto(addr00cb);
                              }
                              addr00b7:
                              §§pop().removeEventListener(§§pop(),this.handleStartRewardItemSparkelAnimation);
                              if(!(_loc1_ && _loc1_))
                              {
                                 addr00d5:
                                 this._component.removeEventListener(BoosterpackRewardItemRenderer.PUSH_EMITTER_FOR_FACTOR,this.handleStartBonusFactorAnimation);
                                 addr00cf:
                                 addr00cb:
                              }
                              return;
                           }
                           §§goto(addr00ac);
                        }
                        §§goto(addr00cb);
                     }
                     §§goto(addr00d5);
                  }
               }
            }
            §§goto(addr00ac);
         }
         §§goto(addr0071);
      }
      
      private function setupListeners() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            §§push(this._component);
            if(_loc1_ || _loc2_)
            {
               if(§§pop() == null)
               {
                  if(_loc1_)
                  {
                     return;
                  }
                  addr00d1:
                  §§push(this._component);
                  if(_loc1_ || _loc1_)
                  {
                     addr00e2:
                     §§push(BoosterpackAnimationLayer.START_PACK_SPARKLE);
                     if(_loc1_ || _loc1_)
                     {
                        §§pop().addEventListener(§§pop(),this.handleStartPackSparkelAnimation);
                        if(_loc1_ || Boolean(this))
                        {
                           §§push(this._component);
                           if(_loc1_ || _loc1_)
                           {
                              addr0124:
                              §§push(BoosterpackRewardItemRenderer.PUSH_EMITTER_FOR_REWARD_ITEM);
                              if(!_loc2_)
                              {
                                 addr012f:
                                 §§pop().addEventListener(§§pop(),this.handleStartRewardItemSparkelAnimation);
                                 if(_loc1_)
                                 {
                                    addr0145:
                                    this._component.addEventListener(BoosterpackRewardItemRenderer.PUSH_EMITTER_FOR_FACTOR,this.handleStartBonusFactorAnimation);
                                    addr013f:
                                    addr013b:
                                 }
                                 §§goto(addr014c);
                              }
                              §§goto(addr0145);
                           }
                           §§goto(addr013f);
                        }
                        §§goto(addr014c);
                     }
                     §§goto(addr0145);
                  }
                  §§goto(addr0124);
               }
               else
               {
                  §§push(this._component);
                  if(!_loc2_)
                  {
                     §§push(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER);
                     if(!_loc2_)
                     {
                        §§pop().addEventListener(§§pop(),this.component_SHOW_UI_INFOLAYERHandler);
                        if(!_loc2_)
                        {
                           §§push(this._component);
                           if(_loc1_ || Boolean(this))
                           {
                              addr006f:
                              §§push(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER);
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§pop().addEventListener(§§pop(),this.component_ITEM_OVERHandler);
                                 if(_loc1_)
                                 {
                                    §§push(this._component);
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       §§push(BoosterpackAnimationLayer.SKIP);
                                       if(_loc1_ || Boolean(this))
                                       {
                                          addr00bd:
                                          §§pop().addEventListener(§§pop(),this.handleSkipAnimationClick);
                                          if(_loc1_ || _loc1_)
                                          {
                                             §§goto(addr00d1);
                                          }
                                          §§goto(addr013b);
                                       }
                                       §§goto(addr0145);
                                    }
                                    §§goto(addr00e2);
                                 }
                                 §§goto(addr013b);
                              }
                              §§goto(addr00bd);
                           }
                           §§goto(addr0124);
                        }
                        §§goto(addr013b);
                     }
                     §§goto(addr012f);
                  }
               }
               §§goto(addr013f);
            }
            §§goto(addr006f);
         }
         addr014c:
      }
      
      private function component_SHOW_UI_INFOLAYERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(param1.cid);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Point = param1.target.localToGlobal(new Point());
         if(_loc4_ || Boolean(this))
         {
            _loc3_.x += param1.target.width / 2;
            if(_loc4_)
            {
               sendNotification(ApplicationNotificationConstants.SHOW_ITEM_IN_UI_INFOLAYER,{
                  "cid":_loc2_,
                  "lineId":7,
                  "pt":_loc3_,
                  "type":param1.callerType
               },NAME);
            }
         }
      }
      
      private function component_ITEM_OVERHandler(param1:UIInfolayerDispatcherEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
         }
      }
      
      private function prepareProxies() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         }
      }
      
      private function handleSkipAnimationClick(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(this.ANIMATIONSTEPS[this._nextAnimationStep] != this.BACK_TO_DETAILLAYER)
            {
               if(_loc3_)
               {
                  this.finishAnimationStep();
                  if(_loc3_)
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
      
      private function handleStartPackSparkelAnimation(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this.nextAnimationStep();
         }
      }
      
      private function handleStartBonusFactorAnimation(param1:Event) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:BoosterpackRewardItemRenderer = param1.target as BoosterpackRewardItemRenderer;
         if(!_loc7_)
         {
            if(_loc2_ == null)
            {
               if(_loc6_)
               {
                  return;
               }
            }
         }
         var _loc3_:BoosterpackBonusLabel = new BoosterpackBonusLabel();
         if(!_loc7_)
         {
            _loc3_.bonusFactor = _loc2_.bonusFactor;
         }
         §§push(_loc3_.getPosXByIndex(_loc2_.rewardOrderId));
         if(!(_loc7_ && Boolean(_loc3_)))
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_.getPosYByIndex(_loc2_.rewardOrderId));
         if(!(_loc7_ && Boolean(this)))
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         if(_loc6_ || Boolean(param1))
         {
            this._component.bonusfactorContainer.addChild(_loc3_);
            if(!_loc7_)
            {
               TweenMax.fromTo(_loc3_,0.8,{
                  "scaleX":8,
                  "scaleY":8,
                  "x":400,
                  "y":200
               },{
                  "scaleX":1,
                  "scaleY":1,
                  "x":_loc4_,
                  "y":_loc5_,
                  "ease":Back.easeOut
               });
               addr00ae:
            }
            return;
         }
         §§goto(addr00ae);
      }
      
      private function stopBonusFactorAnimation() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            TweenMax.killChildTweensOf(this._component.bonusfactorContainer,false);
         }
         loop0:
         do
         {
            §§push(this._component);
            while(§§pop().bonusfactorContainer.numChildren > 0)
            {
               §§push(this._component);
               if(!_loc2_)
               {
                  continue loop0;
               }
            }
            break;
         }
         while(§§pop().bonusfactorContainer.removeChildAt(0), !(_loc2_ && Boolean(this)));
         
      }
      
      private function handleStartRewardItemSparkelAnimation(param1:Event) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:BoosterpackRewardItemRenderer = param1.target as BoosterpackRewardItemRenderer;
         if(_loc6_)
         {
            §§push(_loc2_ == null);
            if(!(_loc7_ && Boolean(_loc2_)))
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(!_temp_2)
               {
                  if(_loc6_ || Boolean(this))
                  {
                     §§pop();
                     if(_loc6_ || Boolean(param1))
                     {
                        addr0060:
                        if(this._imageLoaderParticleStar == null)
                        {
                           if(_loc6_)
                           {
                              §§goto(addr006a);
                           }
                        }
                        else if(this._rewardItemEmiters == null)
                        {
                           if(_loc6_)
                           {
                              this._rewardItemEmiters = new Dictionary();
                              if(_loc6_)
                              {
                                 addr0097:
                                 if(this._rewardItemEmiters[_loc2_.rewardOrderId] != null)
                                 {
                                    if(_loc6_)
                                    {
                                       §§goto(addr00ad);
                                    }
                                 }
                                 var _loc3_:ParticleEmitterDecorator = this.getStandardRewardEmiter(this._imageLoaderParticleStar.bitmapClip.currentFrameBitmap.bitmapData);
                                 var _loc4_:Sprite = new Sprite();
                                 if(!_loc7_)
                                 {
                                    this._component.rewardParticleContainer.addChild(_loc4_);
                                    if(_loc6_ || Boolean(_loc2_))
                                    {
                                       _loc4_.x = 60 + _loc2_.rewardOrderId % 4 * 120;
                                       if(_loc6_)
                                       {
                                          _loc4_.y = 160 + int(_loc2_.rewardOrderId / 4) * 160;
                                          if(_loc6_ || Boolean(this))
                                          {
                                             addr013c:
                                             _loc3_.container = _loc4_;
                                             if(_loc6_)
                                             {
                                                addr0148:
                                                this._rewardItemEmiters[_loc2_.rewardOrderId] = _loc3_;
                                             }
                                          }
                                          addr0154:
                                          var _loc5_:uint = setInterval(this.stopRewardItemSparkel,300,_loc2_.rewardOrderId);
                                          if(_loc6_ || Boolean(_loc2_))
                                          {
                                             if(this._rewardItemEmiterIntervals == null)
                                             {
                                                if(!(_loc7_ && Boolean(_loc3_)))
                                                {
                                                   this._rewardItemEmiterIntervals = new Dictionary();
                                                   if(_loc6_ || Boolean(_loc2_))
                                                   {
                                                      addr01b1:
                                                      this._rewardItemEmiterIntervals[_loc2_.rewardOrderId] = _loc5_;
                                                      if(_loc6_)
                                                      {
                                                         addr01c4:
                                                         sendNotification(ApplicationNotificationConstants.ANIMATION_LAYER_ADD_PARTICLE,_loc3_);
                                                      }
                                                   }
                                                   return;
                                                }
                                             }
                                             §§goto(addr01b1);
                                          }
                                          §§goto(addr01c4);
                                       }
                                       §§goto(addr0148);
                                    }
                                    §§goto(addr013c);
                                 }
                                 §§goto(addr0154);
                              }
                              addr00ad:
                              return;
                           }
                        }
                        §§goto(addr0097);
                     }
                     addr006a:
                     return;
                  }
               }
            }
            §§goto(addr0060);
         }
         §§goto(addr0097);
      }
      
      private function stopRewardItemSparkel() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:uint = uint(arguments[0]);
         if(_loc3_)
         {
            clearInterval(this._rewardItemEmiterIntervals[_loc2_]);
            if(!_loc4_)
            {
               sendNotification(ApplicationNotificationConstants.ANIMATION_LAYER_REMOVE_PARTICLE,this._rewardItemEmiters[_loc2_]);
            }
         }
      }
      
      private function stopAllRewardItemSparkel() : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc1_:uint = 0;
         var _loc2_:ParticleEmitterDecorator = null;
         var _loc3_:int = 0;
         var _loc4_:* = this._rewardItemEmiterIntervals;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc4_,_loc3_));
            if(!(_loc6_ || Boolean(_loc2_)))
            {
               break;
            }
            if(§§pop())
            {
               _loc1_ = §§nextvalue(_loc3_,_loc4_);
               if(_loc6_ || Boolean(_loc1_))
               {
                  clearInterval(_loc1_);
               }
               continue;
            }
            if(!(_loc5_ && Boolean(this)))
            {
               if(!_loc5_)
               {
                  if(!_loc5_)
                  {
                     _loc3_ = 0;
                     if(!(_loc5_ && Boolean(_loc3_)))
                     {
                        addr009c:
                        _loc4_ = this._rewardItemEmiters;
                        while(true)
                        {
                           §§push(§§hasnext(_loc4_,_loc3_));
                           break loop0;
                        }
                        addr00dc:
                        addr00d5:
                     }
                  }
                  return;
               }
               §§goto(addr009c);
            }
            §§goto(addr00dc);
         }
         while(§§pop())
         {
            _loc2_ = §§nextvalue(_loc3_,_loc4_);
            if(!(_loc5_ && Boolean(_loc3_)))
            {
               sendNotification(ApplicationNotificationConstants.ANIMATION_LAYER_REMOVE_PARTICLE,_loc2_);
            }
            §§goto(addr00d5);
         }
         §§goto(addr00dc);
      }
      
      private function setInitialValues() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            §§push(this._component);
            if(!(_loc1_ && _loc1_))
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     this._component = new BoosterpackAnimationLayer();
                     if(_loc2_ || _loc2_)
                     {
                        addr0054:
                        this._component.data = this._data;
                        addr0050:
                        if(_loc2_)
                        {
                           this.container.contentGroup.addElement(this._component);
                           if(_loc2_)
                           {
                              addr007d:
                              if(facade.hasMediator(UserInterfaceInfoLayerMediator.NAME + NAME))
                              {
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    addr009c:
                                    facade.removeMediator(UserInterfaceInfoLayerMediator.NAME + NAME);
                                    if(_loc2_ || _loc2_)
                                    {
                                       facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this._component.uiInfolayerAlignmentLine],this));
                                       addr00b7:
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          this.firstAnimationStep();
                                       }
                                    }
                                 }
                                 §§goto(addr00ff);
                              }
                              §§goto(addr00b7);
                           }
                           §§goto(addr009c);
                        }
                     }
                     addr00ff:
                     return;
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0050);
            }
            §§goto(addr0054);
         }
         §§goto(addr007d);
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
         if(!(_loc2_ && _loc3_))
         {
            if(param1 is BoosterpackAnimationLayerVo)
            {
               if(!(_loc2_ && _loc3_))
               {
                  this._data = param1 as BoosterpackAnimationLayerVo;
                  if(!_loc2_)
                  {
                     this.prepareProxies();
                     if(!(_loc2_ && Boolean(param1)))
                     {
                        this.setInitialValues();
                        if(!_loc2_)
                        {
                           addr007a:
                           this.setupListeners();
                        }
                        §§goto(addr0080);
                     }
                  }
                  §§goto(addr007a);
               }
            }
            addr0080:
            return;
         }
         §§goto(addr007a);
      }
      
      override public function getMediatorName() : String
      {
         return BoosterpackAnimationMediator.NAME;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
      }
      
      private function firstAnimationStep() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this._nextAnimationStep = 0;
            if(!_loc1_)
            {
               addr0021:
               this.nextAnimationStep();
            }
            return;
         }
         §§goto(addr0021);
      }
      
      private function finishAnimationStep() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            this._nextAnimationStep = this.ANIMATIONSTEPS.indexOf(this.ANIMATION_FINISHED);
            if(!_loc1_)
            {
               this.nextAnimationStep();
            }
         }
      }
      
      private function lastAnimationStep() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            this._nextAnimationStep = this.ANIMATIONSTEPS.length - 1;
            if(!_loc1_)
            {
               addr002e:
               this.nextAnimationStep();
            }
            return;
         }
         §§goto(addr002e);
      }
      
      private function nextAnimationStep() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:String = this.ANIMATIONSTEPS[this._nextAnimationStep];
         if(_loc4_ || Boolean(_loc3_))
         {
            var _loc2_:* = this;
            var _loc3_:* = _loc2_._nextAnimationStep + 1;
            if(_loc4_)
            {
               _loc2_._nextAnimationStep = _loc3_;
            }
         }
         _loc2_ = _loc1_;
         if(!(_loc5_ && Boolean(_loc1_)))
         {
            §§push(this.ANIMATION_BOOSTERPACK);
            if(!(_loc5_ && Boolean(_loc3_)))
            {
               §§push(_loc2_);
               if(_loc4_ || Boolean(_loc1_))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc4_ || Boolean(_loc3_))
                     {
                        §§push(0);
                        if(_loc4_ || Boolean(_loc2_))
                        {
                        }
                     }
                     else
                     {
                        addr02f1:
                        §§push(4);
                        if(_loc4_ || Boolean(_loc1_))
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(this.ANIMATION_PARTICLE_START);
                     if(!_loc5_)
                     {
                        §§push(_loc2_);
                        if(_loc4_ || Boolean(_loc3_))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc4_)
                              {
                                 §§push(1);
                                 if(_loc5_ && Boolean(this))
                                 {
                                 }
                              }
                              else
                              {
                                 addr030e:
                                 §§push(5);
                                 if(_loc4_)
                                 {
                                 }
                              }
                              §§goto(addr0326);
                           }
                           else
                           {
                              §§push(this.ANIMATION_PARTICLE_END);
                              if(!(_loc5_ && Boolean(_loc1_)))
                              {
                                 addr0265:
                                 §§push(_loc2_);
                                 if(!(_loc5_ && Boolean(_loc3_)))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          §§push(2);
                                          if(_loc5_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr030e);
                                       }
                                       §§goto(addr0326);
                                    }
                                    else
                                    {
                                       §§push(this.ANIMATION_ITEMLIST);
                                       if(_loc4_)
                                       {
                                          addr0295:
                                          §§push(_loc2_);
                                          if(_loc4_)
                                          {
                                             addr029c:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc5_ && Boolean(this)))
                                                {
                                                   §§push(3);
                                                   if(_loc5_ && Boolean(this))
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr030e);
                                                }
                                             }
                                             else
                                             {
                                                §§push(this.ANIMATION_FINISHED);
                                                if(!(_loc5_ && Boolean(_loc1_)))
                                                {
                                                   addr02d4:
                                                   §§push(_loc2_);
                                                   if(!_loc5_)
                                                   {
                                                      addr02db:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            §§goto(addr02f1);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr030e);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr030a);
                                                      }
                                                      §§goto(addr030e);
                                                   }
                                                   addr030a:
                                                   §§goto(addr0309);
                                                }
                                                addr0309:
                                                if(this.BACK_TO_DETAILLAYER === _loc2_)
                                                {
                                                   §§goto(addr030e);
                                                }
                                                else
                                                {
                                                   §§push(6);
                                                }
                                             }
                                             §§goto(addr0326);
                                          }
                                          §§goto(addr030a);
                                       }
                                       §§goto(addr02d4);
                                    }
                                 }
                                 §§goto(addr02db);
                              }
                              §§goto(addr0295);
                           }
                        }
                        §§goto(addr02db);
                     }
                     §§goto(addr0295);
                  }
                  addr0326:
                  switch(§§pop())
                  {
                     case 0:
                        §§push(this._soundProxy);
                        if(!(_loc5_ && Boolean(_loc2_)))
                        {
                           §§pop().playBoosterUnwrap();
                           if(!_loc5_)
                           {
                              sendNotification(ApplicationNotificationConstants.ANIMATION_WHITE_BLEND_OUT);
                              if(!(_loc5_ && Boolean(this)))
                              {
                                 this._boosterAnimationDelay = TweenLite.delayedCall(0.8,this.showBoosterpackAnimation);
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 addr010d:
                                 this.clearParticles();
                                 if(_loc4_)
                                 {
                                 }
                                 break;
                              }
                              addr015d:
                              this._component.showFinishState();
                              addr0159:
                              if(_loc4_ || Boolean(this))
                              {
                                 break;
                              }
                           }
                           else
                           {
                              addr00e3:
                              this.loadStarGraphic();
                              if(!_loc5_)
                              {
                                 break;
                              }
                              addr0134:
                              this.startItemAnimation();
                              if(!_loc5_)
                              {
                                 break;
                              }
                           }
                           facade.sendNotification(ApplicationNotificationConstants.BOOSTERPACKBOOK_CONTENT_CHANGE,{
                              "container":this.container,
                              "content":this._data.boosterpackVo.slotId
                           });
                           addr0180:
                           if(_loc4_ || Boolean(_loc1_))
                           {
                           }
                           break;
                        }
                        addr00a8:
                        §§pop().playBoosterSparkle();
                        if(_loc5_)
                        {
                           break;
                        }
                        §§push(this._component);
                        if(!_loc5_)
                        {
                           §§pop().removeEventListener(BoosterpackAnimationLayer.START_PACK_SPARKLE,this.handleStartPackSparkelAnimation);
                           if(!(_loc4_ || Boolean(_loc3_)))
                           {
                              break;
                           }
                           this.stopBoosterpackAnimation();
                           if(_loc5_)
                           {
                              break;
                           }
                           §§goto(addr00e3);
                        }
                        else
                        {
                           §§goto(addr015d);
                        }
                        §§goto(addr0180);
                        §§goto(addr015d);
                     case 1:
                        §§push(this._soundProxy);
                        if(_loc4_)
                        {
                           §§goto(addr00a8);
                        }
                        else
                        {
                           addr0122:
                           §§pop().playBossterFanfare();
                           if(_loc5_ && Boolean(this))
                           {
                              break;
                           }
                        }
                        §§goto(addr0134);
                     case 2:
                        clearInterval(this._emiterIntervalId);
                        if(!(_loc4_ || Boolean(_loc3_)))
                        {
                           break;
                        }
                        §§goto(addr010d);
                        break;
                     case 3:
                        §§goto(addr0122);
                        §§push(this._soundProxy);
                     case 4:
                        this.resetAnimationParams();
                        if(_loc5_ && Boolean(_loc1_))
                        {
                           break;
                        }
                        §§goto(addr0159);
                        break;
                     case 5:
                        this.resetAnimationParams();
                        if(_loc5_)
                        {
                           break;
                        }
                        §§goto(addr0180);
                  }
                  return;
               }
               §§goto(addr029c);
            }
            §§goto(addr0265);
         }
         §§goto(addr02f1);
      }
      
      private function resetAnimationParams() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            sendNotification(ApplicationNotificationConstants.ANIMATION_LAYER_REMOVE_PARTICLE,this._particleEmiter);
            if(!_loc1_)
            {
               §§push(this._component);
               if(!(_loc1_ && Boolean(this)))
               {
                  §§push(BoosterpackAnimationLayer.START_PACK_SPARKLE);
                  if(_loc2_ || Boolean(this))
                  {
                     §§pop().removeEventListener(§§pop(),this.handleStartPackSparkelAnimation);
                     if(_loc2_ || _loc2_)
                     {
                        §§push(this._component);
                        if(_loc2_ || _loc1_)
                        {
                           §§push(BoosterpackRewardItemRenderer.PUSH_EMITTER_FOR_REWARD_ITEM);
                           if(!_loc1_)
                           {
                              §§pop().removeEventListener(§§pop(),this.handleStartRewardItemSparkelAnimation);
                              if(_loc2_ || Boolean(this))
                              {
                                 addr00a5:
                                 this._component.removeEventListener(BoosterpackRewardItemRenderer.PUSH_EMITTER_FOR_FACTOR,this.handleStartBonusFactorAnimation);
                                 addr009f:
                                 if(_loc2_)
                                 {
                                    clearInterval(this._emiterIntervalId);
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       clearInterval(this._itemIntervalId);
                                       if(!(_loc1_ && Boolean(this)))
                                       {
                                          addr00e1:
                                          clearInterval(this._removeEmiterIntervalId);
                                          if(_loc2_ || Boolean(this))
                                          {
                                             clearInterval(this._finishIntervalId);
                                             if(_loc2_ || _loc1_)
                                             {
                                                addr011b:
                                                this._boosterAnimationDelay.kill();
                                                if(!_loc1_)
                                                {
                                                   §§goto(addr0128);
                                                }
                                                §§goto(addr0146);
                                             }
                                             §§goto(addr013b);
                                          }
                                          §§goto(addr0146);
                                       }
                                       §§goto(addr0128);
                                    }
                                    §§goto(addr011b);
                                 }
                                 §§goto(addr013b);
                              }
                              §§goto(addr00e1);
                           }
                           §§goto(addr00a5);
                        }
                        §§goto(addr009f);
                     }
                     §§goto(addr0128);
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr009f);
            }
            addr0128:
            this.stopAllRewardItemSparkel();
            if(_loc2_ || _loc1_)
            {
               addr013b:
               this.stopBoosterpackAnimation();
               if(_loc2_)
               {
                  addr0146:
                  this.stopBonusFactorAnimation();
               }
            }
            §§goto(addr014c);
         }
         addr014c:
      }
      
      private function stopBoosterpackAnimation() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this._component.stopBoosterPackAnim();
         }
      }
      
      private function showBoosterpackAnimation() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            this._boosterAnimationDelay.kill();
            if(!_loc1_)
            {
               this._component.startBoosterPackAnim();
            }
         }
      }
      
      private function loadStarGraphic() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this._imageLoaderParticleStar = new BriskMCDynaLib();
            if(!(_loc2_ && _loc2_))
            {
               §§push(this._imageLoaderParticleStar);
               if(_loc1_ || _loc2_)
               {
                  §§pop().addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.initStarParticles);
                  if(_loc1_)
                  {
                     §§push(this._imageLoaderParticleStar);
                     if(_loc1_ || Boolean(this))
                     {
                        §§pop().createBitmapClip = true;
                        if(_loc1_)
                        {
                           addr0069:
                           §§push(this._imageLoaderParticleStar);
                           if(!_loc2_)
                           {
                              §§goto(addr0072);
                           }
                           §§goto(addr00b2);
                        }
                        §§goto(addr012a);
                     }
                     addr0072:
                     §§pop().bitmapClipFramerate = 12;
                     if(!(_loc2_ && _loc1_))
                     {
                        §§push(this._imageLoaderParticleStar);
                        if(_loc1_)
                        {
                           addr0097:
                           §§push("gui_popups_boosterpackBook");
                           if(_loc1_ || _loc1_)
                           {
                              §§pop().dynaLibName = §§pop();
                              if(_loc1_)
                              {
                                 addr00b6:
                                 this._imageLoaderParticleStar.dynaMCSourceName = "particle_one";
                                 addr00b2:
                                 addr00ae:
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    §§goto(addr00c6);
                                 }
                              }
                              §§goto(addr00ef);
                           }
                           §§goto(addr00b6);
                        }
                        §§goto(addr00b2);
                     }
                     §§goto(addr00c6);
                  }
                  §§goto(addr00ae);
               }
               §§goto(addr0097);
            }
            addr00c6:
            §§push(this._component);
            if(!_loc2_)
            {
               §§pop().particleContainer.x = this._component.boosterpackImage.x + this._component.boosterpackImage.width / 2;
               if(!_loc2_)
               {
                  addr00ef:
                  §§push(this._component);
                  if(_loc1_ || Boolean(this))
                  {
                     §§goto(addr010a);
                  }
                  §§goto(addr012e);
               }
               §§goto(addr012a);
            }
            addr010a:
            §§pop().particleContainer.y = this._component.boosterpackImage.y + this._component.boosterpackImage.height / 2;
            if(_loc1_)
            {
               addr012e:
               this._component.particleContainer.addChild(this._imageLoaderParticleStar);
               addr012a:
            }
            return;
         }
         §§goto(addr0069);
      }
      
      private function initStarParticles(param1:BriskMCDynaLibEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            §§push(this._imageLoaderParticleStar);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop().bitmapClip);
               if(_loc2_ || _loc3_)
               {
                  §§push(§§pop());
                  if(!_loc3_)
                  {
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     if(_temp_4)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           §§goto(addr0059);
                        }
                     }
                     §§goto(addr007d);
                  }
                  addr0059:
                  §§pop();
                  if(_loc2_ || Boolean(this))
                  {
                     addr007d:
                     addr0079:
                     addr0076:
                     addr0072:
                     if(Boolean(this._imageLoaderParticleStar.bitmapClip.currentFrameBitmap))
                     {
                        if(_loc2_)
                        {
                           this._particleEmiter = this.getStandardBoosterEmiter(this._imageLoaderParticleStar.bitmapClip.currentFrameBitmap.bitmapData);
                           if(_loc2_)
                           {
                              this._particleEmiter.container = this._component.particleContainer;
                              if(_loc2_)
                              {
                                 clearInterval(this._emiterIntervalId);
                                 addr00b5:
                                 if(!_loc3_)
                                 {
                                    §§goto(addr00d2);
                                 }
                                 §§goto(addr00f1);
                              }
                              addr00d2:
                              this._emiterIntervalId = setInterval(this.nextAnimationStep,1000);
                              if(_loc2_ || Boolean(this))
                              {
                                 addr00f1:
                                 sendNotification(ApplicationNotificationConstants.ANIMATION_LAYER_ADD_PARTICLE,this._particleEmiter);
                              }
                              §§goto(addr00ff);
                           }
                        }
                        §§goto(addr00b5);
                     }
                  }
                  addr00ff:
                  return;
               }
               §§goto(addr0079);
            }
            §§goto(addr0076);
         }
         §§goto(addr0072);
      }
      
      private function getStandardBoosterEmiter(param1:BitmapData, param2:Number = 0, param3:Number = 0) : ParticleEmitterDecorator
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc4_:ParticleStartVelocity = null;
         var _loc5_:ParticleEmitterDecorator = new ParticleEmitterDecorator();
         _loc5_.bitmapData = param1.clone();
         if(_loc7_ || Boolean(this))
         {
            _loc5_.lifeTime = 2000;
            if(_loc7_ || Boolean(param1))
            {
               addr0055:
               _loc5_.newParticlesPerSecond = 30;
               if(_loc7_)
               {
                  _loc5_.blendMode = BlendMode.NORMAL;
                  if(_loc7_)
                  {
                     _loc5_.addUpdater(new ParticleUseVelocity());
                     if(!(_loc6_ && Boolean(param1)))
                     {
                        addr009c:
                        _loc5_.addUpdater(new ParticleAcceleration(40,200));
                     }
                     addr00ae:
                     _loc4_ = new ParticleStartVelocity(350,310,360,0);
                     _loc4_.offsetX = param2;
                     if(_loc7_ || Boolean(param1))
                     {
                        _loc4_.offsetY = param3;
                        if(_loc7_)
                        {
                           _loc5_.addInitializer(_loc4_);
                           if(_loc7_ || Boolean(this))
                           {
                              addr0105:
                              _loc5_.addInitializer(new ParticleScale(0.6,1));
                              if(_loc7_)
                              {
                                 _loc5_.addUpdater(new ParticleAlphaFade(1600,2000));
                              }
                           }
                           return _loc5_;
                        }
                     }
                     §§goto(addr0105);
                  }
               }
               §§goto(addr009c);
            }
            §§goto(addr00ae);
         }
         §§goto(addr0055);
      }
      
      private function getStandardRewardEmiter(param1:BitmapData, param2:Number = 0, param3:Number = 0) : ParticleEmitterDecorator
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc4_:ParticleStartVelocity = null;
         var _loc5_:ParticleEmitterDecorator = new ParticleEmitterDecorator();
         _loc5_.bitmapData = param1.clone();
         if(_loc7_ || Boolean(param2))
         {
            _loc5_.lifeTime = 400;
            if(!_loc6_)
            {
               _loc5_.newParticlesPerSecond = 60;
               if(!(_loc6_ && Boolean(param2)))
               {
                  §§goto(addr006e);
               }
               §§goto(addr0087);
            }
            addr006e:
            _loc5_.blendMode = BlendMode.NORMAL;
            if(!(_loc6_ && Boolean(this)))
            {
               addr0087:
               _loc5_.addUpdater(new ParticleUseVelocity());
            }
            _loc4_ = new ParticleStartVelocity(350,0,360,0);
            _loc4_.offsetX = param2;
            §§goto(addr0094);
         }
         addr0094:
         if(_loc7_)
         {
            _loc4_.offsetY = param3;
            if(_loc7_ || Boolean(param1))
            {
               _loc5_.addInitializer(_loc4_);
            }
         }
         return _loc5_;
      }
      
      private function clearParticles() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            this._removeEmiterIntervalId = setInterval(this.removeEmiterParticles,1000);
            if(_loc2_)
            {
               this.nextAnimationStep();
            }
         }
      }
      
      private function removeEmiterParticles() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            clearInterval(this._removeEmiterIntervalId);
            if(_loc1_)
            {
               addr0037:
               sendNotification(ApplicationNotificationConstants.ANIMATION_LAYER_REMOVE_PARTICLE,this._particleEmiter);
            }
            return;
         }
         §§goto(addr0037);
      }
      
      private function startItemAnimation() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            clearInterval(this._itemIntervalId);
            if(_loc2_ || _loc1_)
            {
               this._rewardItemIndex = 0;
               if(!_loc1_)
               {
                  §§goto(addr0055);
               }
            }
            §§goto(addr006d);
         }
         addr0055:
         this._itemIntervalId = setInterval(this.fillItemToList,1000);
         if(!_loc1_)
         {
            addr006d:
            this.fillItemToList();
         }
      }
      
      private function fillItemToList() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:RewardItemComponentVo = null;
         if(!(_loc4_ && Boolean(_loc1_)))
         {
            if(this._rewardItemIndex >= this._data.rewards.length)
            {
               if(!_loc4_)
               {
                  clearInterval(this._itemIntervalId);
                  if(!_loc4_)
                  {
                     this._finishIntervalId = setInterval(this.finishAnimationStep,3000);
                  }
               }
            }
            else
            {
               _loc1_ = this._data.rewards[this._rewardItemIndex];
               if(!_loc4_)
               {
                  this._component.addRewardData(_loc1_);
                  if(_loc5_)
                  {
                     addr00a5:
                     var _loc2_:* = this;
                     var _loc3_:* = _loc2_._rewardItemIndex + 1;
                     if(_loc5_ || Boolean(_loc3_))
                     {
                        _loc2_._rewardItemIndex = _loc3_;
                     }
                  }
                  §§goto(addr00c4);
               }
               §§goto(addr00a5);
            }
         }
         addr00c4:
      }
   }
}

