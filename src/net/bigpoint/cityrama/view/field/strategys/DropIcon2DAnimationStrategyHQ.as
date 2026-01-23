package net.bigpoint.cityrama.view.field.strategys
{
   import com.greensock.TimelineMax;
   import com.greensock.TweenMax;
   import com.greensock.easing.Sine;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.display.DisplayObject;
   import flash.display.GradientType;
   import flash.display.Sprite;
   import flash.events.EventDispatcher;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
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
   
   public class DropIcon2DAnimationStrategyHQ extends EventDispatcher implements IDropIconAnimationStrategy
   {
      
      private var _applicationFacade:IFacade;
      
      private var _soundProxy:SoundProxy;
      
      private var _particleDotEmitter:ParticleEmitterDecorator;
      
      private var _subLevelAnimationLoader:BriskMCDynaLib;
      
      private var _subLevelAnimation:BitmapClip;
      
      public function DropIcon2DAnimationStrategyHQ()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
            if(!_loc2_)
            {
               this.loadSubLevelAnimation();
               if(!_loc2_)
               {
                  this._particleDotEmitter = getStandardHUDReachEmitter();
               }
            }
         }
      }
      
      private static function getStandardBoosterEmiter(param1:BitmapData, param2:Number = 0, param3:Number = 0) : ParticleEmitterDecorator
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc4_:ParticleStartVelocity = null;
         var _loc5_:ParticleEmitterDecorator = null;
         _loc5_ = new ParticleEmitterDecorator();
         _loc5_.bitmapData = param1.clone();
         if(!(_loc7_ && Boolean(param1)))
         {
            _loc5_.lifeTime = 300;
            if(!_loc7_)
            {
               _loc5_.newParticlesPerSecond = 12;
               if(_loc8_)
               {
                  addr0060:
                  _loc5_.blendMode = BlendMode.NORMAL;
                  if(!_loc7_)
                  {
                     _loc5_.addUpdater(new ParticleUseVelocity());
                     if(_loc8_)
                     {
                        _loc5_.addUpdater(new ParticleAcceleration(140,140));
                        addr0084:
                     }
                     _loc4_ = new ParticleStartVelocity(200,1,360,0);
                     _loc4_.offsetX = param2;
                     if(_loc8_ || Boolean(param3))
                     {
                        _loc4_.offsetY = param3;
                        if(_loc8_)
                        {
                           _loc5_.addInitializer(_loc4_);
                           if(!(_loc7_ && Boolean(param1)))
                           {
                              _loc5_.addInitializer(new ParticleScale(0.6,2));
                              if(!_loc7_)
                              {
                                 _loc5_.addUpdater(new ParticleAlphaFade(0,400));
                                 addr0107:
                              }
                              addr0125:
                              var _loc6_:ParticleRotation = new ParticleRotation(180);
                              if(_loc8_ || Boolean(param1))
                              {
                                 _loc5_.addInitializer(_loc6_);
                                 if(!_loc7_)
                                 {
                                    addr0150:
                                    _loc5_.addUpdater(_loc6_);
                                 }
                                 return _loc5_;
                              }
                              §§goto(addr0150);
                           }
                           §§goto(addr0107);
                        }
                        §§goto(addr0125);
                     }
                     §§goto(addr0107);
                  }
               }
            }
            §§goto(addr0084);
         }
         §§goto(addr0060);
      }
      
      public static function getStandardHUDReachEmitter() : ParticleEmitterDecorator
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:ParticleStartVelocity = null;
         var _loc1_:BitmapData = getCircle();
         var _loc3_:ParticleEmitterDecorator = new ParticleEmitterDecorator();
         if(_loc5_)
         {
            _loc3_.bitmapData = _loc1_.clone();
            if(!_loc4_)
            {
               _loc3_.lifeTime = 800;
               if(!_loc4_)
               {
                  _loc3_.newParticlesPerSecond = 100;
                  if(!(_loc4_ && Boolean(_loc1_)))
                  {
                     _loc3_.blendMode = BlendMode.NORMAL;
                     if(_loc5_ || DropIcon2DAnimationStrategyHQ)
                     {
                        addr007e:
                        _loc3_.startVariationWidth = 150;
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr00a2:
                           _loc3_.addUpdater(new ParticleUseVelocity());
                           if(_loc5_)
                           {
                              addr00b4:
                              _loc3_.addUpdater(new ParticleAcceleration(100,1000));
                           }
                           addr00c5:
                           _loc2_ = new ParticleStartVelocity(50,180,360,1);
                           if(_loc5_ || Boolean(_loc2_))
                           {
                              _loc2_.offsetX = 0;
                              if(!(_loc4_ && Boolean(_loc3_)))
                              {
                                 _loc2_.offsetY = 0;
                                 if(!_loc4_)
                                 {
                                    _loc3_.addInitializer(_loc2_);
                                    if(!(_loc4_ && Boolean(_loc1_)))
                                    {
                                       addr0126:
                                       _loc3_.addInitializer(new ParticleScale(0.5,1));
                                       if(_loc5_)
                                       {
                                          addr013c:
                                          _loc3_.addUpdater(new ParticleAlphaFade(0,800));
                                       }
                                       §§goto(addr014d);
                                    }
                                    §§goto(addr013c);
                                 }
                                 addr014d:
                                 return _loc3_;
                              }
                              §§goto(addr0126);
                           }
                           §§goto(addr013c);
                        }
                        §§goto(addr00b4);
                     }
                     §§goto(addr00c5);
                  }
                  §§goto(addr007e);
               }
               §§goto(addr00a2);
            }
            §§goto(addr007e);
         }
         §§goto(addr00a2);
      }
      
      private static function getCircle() : BitmapData
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc1_:Sprite = new Sprite();
         var _loc2_:int = 20;
         if(!_loc5_)
         {
            _loc1_.graphics.beginGradientFill(GradientType.RADIAL,[16776960,16777096],[0.8,0],[0,_loc2_]);
            if(!_loc5_)
            {
               _loc1_.graphics.drawCircle(0,0,_loc2_);
               if(!_loc5_)
               {
                  addr006f:
                  _loc1_.graphics.endFill();
               }
               var _loc3_:BitmapData = new BitmapData(_loc1_.width,_loc1_.height,true,0);
               var _loc4_:Matrix = new Matrix();
               _loc4_.translate(_loc1_.width / 2,_loc1_.height / 2);
               if(!(_loc5_ && DropIcon2DAnimationStrategyHQ))
               {
                  _loc3_.lock();
                  if(!_loc5_)
                  {
                     _loc3_.draw(_loc1_,_loc4_);
                     if(!_loc5_)
                     {
                        _loc3_.unlock();
                     }
                  }
               }
               return _loc3_;
            }
         }
         §§goto(addr006f);
      }
      
      private function loadSubLevelAnimation() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            this._subLevelAnimationLoader = new BriskMCDynaLib();
            if(_loc1_)
            {
               §§push(this._subLevelAnimationLoader);
               if(_loc1_)
               {
                  §§pop().addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.initSubLevelAnimation);
                  if(!_loc2_)
                  {
                     §§push(this._subLevelAnimationLoader);
                     if(_loc1_)
                     {
                        addr005a:
                        §§pop().createBitmapClip = true;
                        if(!_loc2_)
                        {
                           §§push(this._subLevelAnimationLoader);
                           if(!_loc2_)
                           {
                              §§goto(addr006c);
                           }
                           §§goto(addr00c9);
                        }
                        §§goto(addr007e);
                     }
                     addr006c:
                     §§pop().bitmapClipFramerate = 40;
                     if(_loc1_ || _loc1_)
                     {
                        addr007e:
                        §§push(this._subLevelAnimationLoader);
                        if(!(_loc2_ && _loc2_))
                        {
                           §§push("sublevel_dropAnimation");
                           if(!(_loc2_ && _loc1_))
                           {
                              §§pop().dynaMCSourceName = §§pop();
                              if(_loc1_)
                              {
                                 addr00b2:
                                 §§push(this._subLevelAnimationLoader);
                                 if(_loc1_)
                                 {
                                    §§goto(addr00be);
                                 }
                                 §§goto(addr00c9);
                              }
                              §§goto(addr00c5);
                           }
                           addr00be:
                           §§pop().dynaLibName = "gui_infield_dropIcons";
                           if(!_loc2_)
                           {
                              addr00c9:
                              this._subLevelAnimationLoader.forceExternalCreation();
                              addr00c5:
                           }
                           §§goto(addr00cd);
                        }
                        §§goto(addr00c9);
                     }
                     §§goto(addr00cd);
                  }
                  §§goto(addr00c5);
               }
               §§goto(addr005a);
            }
            §§goto(addr00b2);
         }
         addr00cd:
      }
      
      private function initSubLevelAnimation(param1:BriskMCDynaLibEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §§push(this._subLevelAnimationLoader);
            if(_loc3_)
            {
               §§pop().removeEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.initSubLevelAnimation);
               if(!_loc2_)
               {
                  §§goto(addr0042);
               }
               §§goto(addr004e);
            }
            addr0042:
            §§goto(addr003e);
         }
         addr003e:
         if(this._subLevelAnimationLoader.bitmapClip)
         {
            if(!_loc2_)
            {
               addr004e:
               this._subLevelAnimation = this._subLevelAnimationLoader.bitmapClip;
            }
         }
      }
      
      public function prepare(param1:IFacade) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._applicationFacade = param1;
            if(!_loc3_)
            {
               this._soundProxy = this._applicationFacade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
            }
         }
      }
      
      public function drop(param1:DisplayObject, param2:DropIconVO) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc4_:TweenMax = null;
         if(_loc6_ || Boolean(param1))
         {
            param1.cacheAsBitmap = true;
            if(_loc6_)
            {
               §§push(param1 is Sprite);
               if(_loc6_)
               {
                  if(§§pop())
                  {
                     if(!(_loc7_ && Boolean(this)))
                     {
                        if((param1 as Sprite).numChildren)
                        {
                           if(_loc6_)
                           {
                              addr005f:
                              §§push((param1 as Sprite).getChildAt(0) is Bitmap);
                              if(_loc6_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       ((param1 as Sprite).getChildAt(0) as Bitmap).smoothing = true;
                                       if(!_loc7_)
                                       {
                                          §§goto(addr0095);
                                       }
                                       §§goto(addr00e1);
                                    }
                                 }
                                 addr0095:
                                 §§goto(addr0099);
                              }
                              addr0099:
                              if(param2.isSubLevelDrop)
                              {
                                 if(_loc6_)
                                 {
                                    §§push(this._subLevelAnimation);
                                    if(!_loc7_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc7_ && Boolean(param1)))
                                          {
                                             addr00bf:
                                             §§push(this._subLevelAnimation);
                                             if(_loc6_ || _loc3_)
                                             {
                                                §§push(60);
                                                if(_loc6_)
                                                {
                                                   §§pop().x = §§pop();
                                                   if(!_loc7_)
                                                   {
                                                      addr00e1:
                                                      Sprite(param1).addChild(this._subLevelAnimation);
                                                      if(!(_loc7_ && Boolean(param2)))
                                                      {
                                                         addr010b:
                                                         §§push(this._subLevelAnimation);
                                                         if(_loc6_ || Boolean(param1))
                                                         {
                                                            §§goto(addr011f);
                                                         }
                                                         §§goto(addr012c);
                                                      }
                                                      §§goto(addr0128);
                                                   }
                                                   §§goto(addr010b);
                                                }
                                                addr011f:
                                                §§pop().frame = 1;
                                                §§goto(addr011d);
                                             }
                                             addr011d:
                                             if(_loc6_)
                                             {
                                                addr012c:
                                                this._subLevelAnimation.play();
                                                addr0128:
                                             }
                                             §§goto(addr0130);
                                          }
                                          §§goto(addr010b);
                                       }
                                       §§goto(addr0130);
                                    }
                                    §§goto(addr011d);
                                 }
                                 §§goto(addr0128);
                              }
                           }
                           §§goto(addr0130);
                        }
                        §§goto(addr0095);
                     }
                     §§goto(addr005f);
                  }
                  addr0130:
                  var _loc3_:Point = param2.destinationElement.localToGlobal(new Point());
                  if(_loc6_)
                  {
                     if(param2.isSubLevelDrop)
                     {
                        §§goto(addr014e);
                     }
                     else
                     {
                        §§push(TweenMax.to(param1,1,{
                           "delay":0,
                           "ease":Sine.easeOut,
                           "bezierThrough":[{
                              "x":(param1 as Sprite).x + 20,
                              "y":(param1 as Sprite).y
                           },{
                              "x":_loc3_.x,
                              "y":_loc3_.y
                           }]
                        }));
                     }
                     §§goto(addr01e8);
                  }
                  addr014e:
                  §§push(TweenMax.to(param1,1.2,{
                     "delay":0,
                     "bezier":[{
                        "x":_loc3_.x,
                        "y":_loc3_.y / 10
                     },{
                        "x":_loc3_.x,
                        "y":_loc3_.y
                     }]
                  }));
                  if(!(_loc7_ && Boolean(param1)))
                  {
                     _loc4_ = §§pop();
                  }
                  else
                  {
                     addr01e8:
                     _loc4_ = §§pop();
                  }
                  var _loc5_:TimelineMax = new TimelineMax({
                     "onComplete":this.collectComplete,
                     "onCompleteParams":[param1,param2]
                  });
                  _loc5_.append(_loc4_);
                  if(!_loc7_)
                  {
                     _loc5_.play();
                  }
                  return;
               }
               §§goto(addr0099);
            }
            §§goto(addr0128);
         }
         §§goto(addr00bf);
      }
      
      private function collectComplete(param1:DisplayObject, param2:DropIconVO) : void
      {
         var $icon:DisplayObject;
         var $data:DropIconVO;
         var remove:Function;
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc5_ || Boolean(this))
         {
            §§pop().§§slot[3] = null;
            if(_loc5_ || Boolean(param2))
            {
               §§push(§§newactivation());
               if(_loc5_)
               {
                  §§pop().§§slot[1] = param1;
                  if(_loc5_ || Boolean(param1))
                  {
                     §§push(§§newactivation());
                     if(_loc5_)
                     {
                        addr005e:
                        §§pop().§§slot[2] = param2;
                        if(!_loc4_)
                        {
                           §§push(§§newactivation());
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              §§pop().§§slot[3] = function():void
                              {
                                 if(!$data.isSubLevelDrop)
                                 {
                                    _applicationFacade.sendNotification(ApplicationNotificationConstants.ANIMATION_LAYER_REMOVE_PARTICLE,_particleDotEmitter);
                                 }
                                 RandomUtilities.cleanRemoveChild($icon);
                                 if(_subLevelAnimation)
                                 {
                                    _subLevelAnimation.stop();
                                 }
                              };
                              if(!(_loc4_ && _loc3_))
                              {
                                 Sprite($icon).getChildAt(0).visible = false;
                                 if(_loc5_)
                                 {
                                    §§push(§§newactivation());
                                    if(!_loc4_)
                                    {
                                       addr00ad:
                                       §§push(§§pop().§§slot[2]);
                                       if(_loc5_)
                                       {
                                          §§push(§§pop().isSubLevelDrop);
                                          if(!_loc4_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc4_ && Boolean(this)))
                                                {
                                                   if(Sprite($icon).numChildren > 1)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         Sprite($icon).removeChildAt(1);
                                                         addr00e8:
                                                         if(!_loc4_)
                                                         {
                                                            addr0109:
                                                            TweenMax.delayedCall(1,remove);
                                                            if(_loc5_)
                                                            {
                                                               addr011b:
                                                               addr0122:
                                                               addr011f:
                                                               addr011d:
                                                               if(!$data.isSubLevelDrop)
                                                               {
                                                                  if(_loc5_ || Boolean(param1))
                                                                  {
                                                                     §§push(this._particleDotEmitter);
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(§§pop().§§slot[1].width / 2);
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              §§pop().startX = §§pop();
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§push(this._particleDotEmitter);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§push(§§newactivation());
                                                                                    if(_loc5_ || Boolean(this))
                                                                                    {
                                                                                       §§goto(addr0185);
                                                                                    }
                                                                                    §§goto(addr019c);
                                                                                 }
                                                                                 §§goto(addr019a);
                                                                              }
                                                                              §§goto(addr0196);
                                                                           }
                                                                           addr0185:
                                                                           §§pop().startY = §§pop().§§slot[1].height / 2;
                                                                           if(!(_loc4_ && Boolean(this)))
                                                                           {
                                                                              addr019c:
                                                                              this._particleDotEmitter.container = $data.destinationElement as Sprite;
                                                                              addr019a:
                                                                              addr0196:
                                                                              if(_loc5_)
                                                                              {
                                                                                 this._applicationFacade.sendNotification(ApplicationNotificationConstants.ANIMATION_LAYER_ADD_PARTICLE,this._particleDotEmitter);
                                                                                 if(!(_loc4_ && Boolean(this)))
                                                                                 {
                                                                                    addr01cb:
                                                                                    if(ServerResConst.RESOURCE_EXPERIENCE == $data.type)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr01ec:
                                                                                          §§push(this._soundProxy);
                                                                                          if(_loc5_ || Boolean(param2))
                                                                                          {
                                                                                             §§pop().playCollectXP();
                                                                                             if(_loc4_ && Boolean(param1))
                                                                                             {
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr0219:
                                                                                             §§pop().playCollect();
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr021e);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(this._soundProxy);
                                                                                    }
                                                                                    §§goto(addr0219);
                                                                                 }
                                                                                 §§goto(addr021e);
                                                                              }
                                                                              §§goto(addr01cb);
                                                                           }
                                                                           §§goto(addr021e);
                                                                        }
                                                                        §§goto(addr019c);
                                                                     }
                                                                     §§goto(addr019a);
                                                                  }
                                                                  §§goto(addr01ec);
                                                               }
                                                               §§goto(addr01cb);
                                                            }
                                                         }
                                                      }
                                                      addr021e:
                                                      return;
                                                   }
                                                   §§goto(addr0109);
                                                }
                                                §§goto(addr011b);
                                             }
                                             §§goto(addr0109);
                                          }
                                          §§goto(addr0122);
                                       }
                                       §§goto(addr011f);
                                    }
                                    §§goto(addr011d);
                                 }
                                 §§goto(addr0109);
                              }
                              §§goto(addr011b);
                           }
                           §§goto(addr011d);
                        }
                        §§goto(addr01ec);
                     }
                     §§goto(addr00ad);
                  }
                  §§goto(addr0109);
               }
               §§goto(addr005e);
            }
            §§goto(addr00e8);
         }
         §§goto(addr011d);
      }
      
      public function get finishEvent() : DropIconAnimationEvent
      {
         return null;
      }
   }
}

