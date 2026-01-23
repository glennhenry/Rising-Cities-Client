package net.bigpoint.cityrama.view.field.strategys
{
   import com.greensock.TimelineMax;
   import com.greensock.TweenMax;
   import com.greensock.easing.Bounce;
   import com.greensock.easing.Sine;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.dropIcons.vo.DropIconVO;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.events.BriskMCDynaLibEvent;
   import net.bigpoint.particles.particle.ParticleAcceleration;
   import net.bigpoint.particles.particle.ParticleAlphaFade;
   import net.bigpoint.particles.particle.ParticleEmitterDecorator;
   import net.bigpoint.particles.particle.ParticleRotation;
   import net.bigpoint.particles.particle.ParticleScale;
   import net.bigpoint.particles.particle.ParticleStartVelocity;
   import net.bigpoint.particles.particle.ParticleUseVelocity;
   import net.bigpoint.util.RandomUtilities;
   import org.puremvc.as3.interfaces.IFacade;
   
   public class DropIconIsoAnimationStrategyHQ extends EventDispatcher implements IDropIconAnimationStrategy
   {
      
      private var _applicationFacade:IFacade;
      
      private var _soundProxy:SoundProxy;
      
      private var _direction:int;
      
      private var _imageLoader:BriskMCDynaLib;
      
      private var _particleStarEmiter:ParticleEmitterDecorator;
      
      private var _finishEvent:DropIconAnimationEvent;
      
      public function DropIconIsoAnimationStrategyHQ()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(_loc2_ || Boolean(this))
            {
               this.loadStarEmiterGraphic();
               if(_loc2_)
               {
                  addr003b:
                  this._finishEvent = new DropIconAnimationEvent(DropIconAnimationEvent.DROP_FINISHED);
               }
               §§goto(addr004c);
            }
            §§goto(addr003b);
         }
         addr004c:
      }
      
      private static function getStandardBoosterEmiter(param1:BitmapData, param2:Number = 0, param3:Number = 0) : ParticleEmitterDecorator
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:ParticleStartVelocity = null;
         var _loc5_:ParticleEmitterDecorator = null;
         _loc5_ = new ParticleEmitterDecorator();
         _loc5_.bitmapData = param1.clone();
         if(_loc7_)
         {
            _loc5_.lifeTime = 300;
            if(_loc7_)
            {
               §§goto(addr0049);
            }
            §§goto(addr0056);
         }
         addr0049:
         _loc5_.newParticlesPerSecond = 12;
         if(_loc7_)
         {
            addr0056:
            _loc5_.blendMode = BlendMode.NORMAL;
            if(_loc7_)
            {
               _loc5_.addUpdater(new ParticleUseVelocity());
               if(_loc7_ || Boolean(param2))
               {
                  _loc5_.addUpdater(new ParticleAcceleration(140,140));
               }
            }
         }
         _loc4_ = new ParticleStartVelocity(200,1,360,0);
         _loc4_.offsetX = param2;
         if(!(_loc8_ && DropIconIsoAnimationStrategyHQ))
         {
            _loc4_.offsetY = param3;
            if(_loc7_)
            {
               _loc5_.addInitializer(_loc4_);
               if(!(_loc8_ && Boolean(param2)))
               {
                  §§goto(addr00ec);
               }
               §§goto(addr0103);
            }
            addr00ec:
            _loc5_.addInitializer(new ParticleScale(0.6,2));
            if(!_loc8_)
            {
               _loc5_.addUpdater(new ParticleAlphaFade(0,400));
               addr0103:
            }
            §§goto(addr0122);
         }
         addr0122:
         var _loc6_:ParticleRotation = new ParticleRotation(180);
         if(!(_loc8_ && Boolean(param3)))
         {
            _loc5_.addInitializer(_loc6_);
            if(_loc7_)
            {
               _loc5_.addUpdater(_loc6_);
            }
         }
         return _loc5_;
      }
      
      public function prepare(param1:IFacade) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this._applicationFacade = param1;
            if(_loc3_ || Boolean(param1))
            {
               this._soundProxy = this._applicationFacade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
            }
         }
      }
      
      public function drop(param1:DisplayObject, param2:DropIconVO) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc3_:TimelineMax = null;
         var _loc4_:TweenMax = null;
         var _loc5_:TweenMax = null;
         if(_loc10_ || Boolean(_loc3_))
         {
            param1.cacheAsBitmap = true;
            if(_loc10_)
            {
               §§push(param1 is Sprite);
               if(!(_loc9_ && Boolean(this)))
               {
                  if(§§pop())
                  {
                     if(_loc10_)
                     {
                        if((param1 as Sprite).numChildren)
                        {
                           if(!(_loc9_ && Boolean(_loc3_)))
                           {
                              addr0080:
                              addr0072:
                              if((param1 as Sprite).getChildAt(0) is Bitmap)
                              {
                                 if(!(_loc9_ && Boolean(param2)))
                                 {
                                    addr0092:
                                    ((param1 as Sprite).getChildAt(0) as Bitmap).smoothing = true;
                                 }
                              }
                              addr00a4:
                              §§push(50);
                              if(!(_loc9_ && Boolean(_loc3_)))
                              {
                                 §§push(§§pop() + 100 * Math.random());
                                 if(_loc10_ || Boolean(param2))
                                 {
                                    §§push(this._direction);
                                    if(!_loc9_)
                                    {
                                       if(§§pop() == 0)
                                       {
                                          addr00f5:
                                          if(!_loc9_)
                                          {
                                             addr00e3:
                                             §§push(1 * (_loc10_ ? §§pop() : §§pop()));
                                          }
                                          var _loc6_:int = §§pop();
                                          if(!_loc9_)
                                          {
                                             var _loc7_:* = this;
                                             §§push(_loc7_._direction);
                                             if(_loc10_)
                                             {
                                                §§push(§§pop() + 1);
                                             }
                                             var _loc8_:* = §§pop();
                                             if(!_loc9_)
                                             {
                                                _loc7_._direction = _loc8_;
                                             }
                                             if(!_loc9_)
                                             {
                                                if(this._direction > 1)
                                                {
                                                   if(_loc10_)
                                                   {
                                                      addr0142:
                                                      this._direction = 0;
                                                      if(_loc10_)
                                                      {
                                                         addr014e:
                                                         this._soundProxy.playBounce();
                                                      }
                                                      §§goto(addr0158);
                                                   }
                                                }
                                                §§goto(addr014e);
                                             }
                                             addr0158:
                                             _loc3_ = new TimelineMax();
                                             _loc4_ = TweenMax.fromTo(param1,1.5,{"x":param2.startPoint.x - param1.width / 2},{
                                                "onComplete":this.waitForIt,
                                                "onCompleteParams":[param1,_loc3_,param2],
                                                "ease":Sine.easeOut,
                                                "bezierThrough":[{"x":param2.startPoint.x + _loc6_ * 0.5},{"x":param2.startPoint.x + _loc6_}]
                                             });
                                             _loc5_ = TweenMax.fromTo(param1,1.5,{"y":param2.startPoint.y - param1.height / 2},{
                                                "ease":Bounce.easeOut,
                                                "bezierThrough":[{"y":param2.startPoint.y - 150},{"y":param2.startPoint.y}]
                                             });
                                             if(!(_loc9_ && Boolean(param1)))
                                             {
                                                _loc3_.appendMultiple([_loc4_,_loc5_]);
                                                if(!_loc9_)
                                                {
                                                   _loc3_.play();
                                                }
                                             }
                                             return;
                                          }
                                          §§goto(addr0142);
                                       }
                                       else
                                       {
                                          §§push(-1);
                                       }
                                    }
                                    §§goto(addr00f2);
                                 }
                                 §§goto(addr00e3);
                              }
                              §§goto(addr00f5);
                           }
                           §§goto(addr0092);
                        }
                        §§goto(addr00a4);
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr00a4);
               }
               §§goto(addr0080);
            }
            §§goto(addr0072);
         }
         §§goto(addr00a4);
      }
      
      private function waitForIt(param1:DisplayObject, param2:TimelineMax, param3:DropIconVO) : void
      {
         var $icon:DisplayObject;
         var timeline:TimelineMax;
         var $data:DropIconVO;
         var particle:ParticleEmitterDecorator;
         var onDropIconOver:Function;
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§push(null);
            if(_loc6_)
            {
               §§pop().§§slot[4] = §§pop();
               if(_loc6_)
               {
                  §§push(§§newactivation());
                  if(!_loc5_)
                  {
                     addr003d:
                     §§pop().§§slot[5] = null;
                     if(_loc6_ || Boolean(param2))
                     {
                        §§push(§§newactivation());
                        if(_loc6_ || Boolean(this))
                        {
                           §§pop().§§slot[1] = param1;
                           if(_loc6_)
                           {
                              §§push(§§newactivation());
                              if(_loc6_ || Boolean(param2))
                              {
                                 §§pop().§§slot[2] = param2;
                                 if(_loc6_)
                                 {
                                    §§push(§§newactivation());
                                    if(_loc6_)
                                    {
                                       §§pop().§§slot[3] = param3;
                                       if(!_loc5_)
                                       {
                                          addr0092:
                                          §§push(§§newactivation());
                                          if(_loc6_ || Boolean(param3))
                                          {
                                             §§pop().§§slot[5] = function(param1:MouseEvent = null):void
                                             {
                                                if(param1)
                                                {
                                                   param1.stopPropagation();
                                                   if(particle != null)
                                                   {
                                                      particle.startX = $icon.width / 2;
                                                      particle.startY = $icon.height / 2;
                                                      particle.container = $icon as Sprite;
                                                   }
                                                   TweenMax.to($icon as Sprite,0.2,{
                                                      "transformAroundCenter":{
                                                         "scaleX":0.8,
                                                         "scaleY":0.8
                                                      },
                                                      "yoyo":true,
                                                      "ease":Bounce.easeOut,
                                                      "onComplete":resumeCollect,
                                                      "onCompleteParams":[$icon,particle,$data]
                                                   });
                                                }
                                                else
                                                {
                                                   resumeCollect($icon as Sprite,null,$data);
                                                }
                                                ($icon as Sprite).removeEventListener(MouseEvent.ROLL_OVER,onDropIconOver);
                                                ($icon as Sprite).mouseEnabled = false;
                                                ($icon as Sprite).mouseChildren = false;
                                                TweenMax.killDelayedCallsTo(onDropIconOver);
                                             };
                                             if(!(_loc5_ && Boolean(this)))
                                             {
                                                §§push(§§newactivation());
                                                if(_loc6_ || Boolean(param3))
                                                {
                                                   addr00d5:
                                                   §§pop().§§slot[2].pause();
                                                   if(!_loc5_)
                                                   {
                                                      TweenMax.delayedCall(2,onDropIconOver);
                                                      if(!(_loc5_ && Boolean(param1)))
                                                      {
                                                         addr00fb:
                                                         §§push(§§newactivation());
                                                         if(!(_loc5_ && Boolean(this)))
                                                         {
                                                            addr010b:
                                                            if(§§pop().§§slot[1] is Sprite)
                                                            {
                                                               if(!(_loc5_ && Boolean(this)))
                                                               {
                                                                  addr0122:
                                                                  §§push(§§newactivation());
                                                                  if(_loc6_ || Boolean(this))
                                                                  {
                                                                     addr0132:
                                                                     (§§pop().§§slot[1] as Sprite).addEventListener(MouseEvent.ROLL_OVER,onDropIconOver);
                                                                     if(_loc6_)
                                                                     {
                                                                        addr0149:
                                                                        §§push(§§newactivation());
                                                                        if(_loc6_ || Boolean(this))
                                                                        {
                                                                           addr0159:
                                                                           (§§pop().§§slot[1] as Sprite).mouseEnabled = true;
                                                                           if(_loc6_)
                                                                           {
                                                                              addr0168:
                                                                              §§push(§§newactivation());
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§goto(addr0170);
                                                                              }
                                                                              §§goto(addr01a6);
                                                                           }
                                                                           §§goto(addr0196);
                                                                        }
                                                                        §§goto(addr01a6);
                                                                     }
                                                                     §§goto(addr0168);
                                                                  }
                                                                  addr0170:
                                                                  (§§pop().§§slot[1] as Sprite).parent.mouseChildren = true;
                                                                  if(_loc6_ || Boolean(this))
                                                                  {
                                                                     addr0196:
                                                                     §§push(§§newactivation());
                                                                     if(_loc6_ || Boolean(param2))
                                                                     {
                                                                        addr01a6:
                                                                        (§§pop().§§slot[1] as Sprite).mouseChildren = true;
                                                                        if(!_loc5_)
                                                                        {
                                                                           addr01b7:
                                                                           particle = this._particleStarEmiter;
                                                                           addr01b5:
                                                                        }
                                                                        §§goto(addr01c0);
                                                                     }
                                                                     §§goto(addr01b7);
                                                                  }
                                                                  §§goto(addr01c0);
                                                               }
                                                            }
                                                            §§goto(addr01b5);
                                                         }
                                                         §§goto(addr0132);
                                                      }
                                                      §§goto(addr0168);
                                                   }
                                                   §§goto(addr01c0);
                                                }
                                                §§goto(addr010b);
                                             }
                                             §§goto(addr00fb);
                                          }
                                          §§goto(addr01a6);
                                       }
                                       addr01c0:
                                       return;
                                    }
                                    §§goto(addr01a6);
                                 }
                                 §§goto(addr0122);
                              }
                              §§goto(addr0159);
                           }
                           §§goto(addr0092);
                        }
                        §§goto(addr00d5);
                     }
                     §§goto(addr0149);
                  }
                  §§goto(addr01b7);
               }
               §§goto(addr0122);
            }
            §§goto(addr003d);
         }
         §§goto(addr0159);
      }
      
      private function resumeCollect(param1:Sprite, param2:ParticleEmitterDecorator, param3:DropIconVO) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(_loc6_)
         {
            (param1 as Sprite).getChildAt(0).visible = false;
            if(!(_loc5_ && Boolean(param1)))
            {
               addr0038:
               if(param2)
               {
                  if(_loc6_)
                  {
                     TweenMax.delayedCall(0.5,this._applicationFacade.sendNotification,[ApplicationNotificationConstants.ANIMATION_LAYER_REMOVE_PARTICLE,param2]);
                  }
               }
            }
            param2 = null;
            var _loc4_:DropIconAnimationEvent = new DropIconAnimationEvent(DropIconAnimationEvent.DROP_FINISHED);
            _loc4_.data = param3;
            if(!_loc5_)
            {
               _loc4_.data.isoTo2D = true;
               if(!_loc5_)
               {
                  param3.startPoint = new Point(param1.x,param1.y);
                  if(_loc6_)
                  {
                     dispatchEvent(_loc4_);
                     if(_loc6_ || Boolean(this))
                     {
                        RandomUtilities.cleanRemoveChild(param1);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0038);
      }
      
      private function loadStarEmiterGraphic() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            this._imageLoader = new BriskMCDynaLib();
            if(!(_loc1_ && Boolean(this)))
            {
               §§push(this._imageLoader);
               if(!_loc1_)
               {
                  §§pop().addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.initParticles);
                  if(!(_loc1_ && Boolean(this)))
                  {
                     §§push(this._imageLoader);
                     if(!_loc1_)
                     {
                        §§pop().createBitmapClip = true;
                        if(_loc2_)
                        {
                           §§push(this._imageLoader);
                           if(_loc2_ || Boolean(this))
                           {
                              §§pop().bitmapClipFramerate = 12;
                              if(!_loc1_)
                              {
                                 addr008f:
                                 §§push(this._imageLoader);
                                 if(_loc2_)
                                 {
                                    addr00a2:
                                    §§push("particle_dropicon");
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       §§pop().dynaMCSourceName = §§pop();
                                       if(!_loc1_)
                                       {
                                          §§push(this._imageLoader);
                                          if(_loc2_)
                                          {
                                             §§goto(addr00c7);
                                          }
                                          §§goto(addr00d2);
                                       }
                                       §§goto(addr00ce);
                                    }
                                    addr00c7:
                                    §§pop().dynaLibName = "gui_infield_dropIcons";
                                    if(!_loc1_)
                                    {
                                       addr00d2:
                                       this._imageLoader.forceExternalCreation();
                                       addr00ce:
                                    }
                                    §§goto(addr00d6);
                                 }
                                 §§goto(addr00d2);
                              }
                              §§goto(addr00d6);
                           }
                           §§goto(addr00d2);
                        }
                        §§goto(addr008f);
                     }
                     §§goto(addr00a2);
                  }
                  §§goto(addr00ce);
               }
               §§goto(addr00d2);
            }
            §§goto(addr00ce);
         }
         addr00d6:
      }
      
      private function initParticles(param1:BriskMCDynaLibEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            if(this._particleStarEmiter == null)
            {
               if(!(_loc3_ && _loc3_))
               {
                  §§push(this._imageLoader);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§push(§§pop());
                     if(_loc2_ || Boolean(param1))
                     {
                        var _temp_5:* = §§pop();
                        §§push(_temp_5);
                        §§push(_temp_5);
                        if(_loc2_)
                        {
                           if(§§pop())
                           {
                              if(!_loc3_)
                              {
                                 §§pop();
                                 if(!_loc3_)
                                 {
                                    addr0074:
                                    §§push(this._imageLoader);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr0085:
                                       §§push(§§pop().bitmapClip);
                                       if(_loc2_ || _loc3_)
                                       {
                                          §§push(§§pop());
                                          if(_loc2_ || _loc2_)
                                          {
                                             addr00a4:
                                             var _temp_9:* = §§pop();
                                             addr00a5:
                                             §§push(_temp_9);
                                             if(_temp_9)
                                             {
                                                if(_loc2_)
                                                {
                                                   §§goto(addr00ae);
                                                }
                                             }
                                             §§goto(addr00ca);
                                          }
                                          §§goto(addr00ae);
                                       }
                                       §§goto(addr00c6);
                                    }
                                    §§goto(addr00c3);
                                 }
                                 §§goto(addr00db);
                              }
                              §§goto(addr00ca);
                           }
                           §§goto(addr00a4);
                        }
                        §§goto(addr00a5);
                     }
                     addr00ae:
                     §§pop();
                     if(!_loc3_)
                     {
                        addr00ca:
                        addr00c6:
                        addr00c3:
                        if(Boolean(this._imageLoader.bitmapClip.currentFrameBitmap))
                        {
                           if(!(_loc3_ && Boolean(param1)))
                           {
                              addr00db:
                              this._particleStarEmiter = getStandardBoosterEmiter(this._imageLoader.bitmapClip.currentFrameBitmap.bitmapData);
                           }
                        }
                     }
                     §§goto(addr00f3);
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0074);
            }
            addr00f3:
            return;
         }
         §§goto(addr0074);
      }
      
      public function get finishEvent() : DropIconAnimationEvent
      {
         return this._finishEvent;
      }
   }
}

