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
         super();
         this.loadSubLevelAnimation();
         this._particleDotEmitter = getStandardHUDReachEmitter();
      }
      
      private static function getStandardBoosterEmiter(param1:BitmapData, param2:Number = 0, param3:Number = 0) : ParticleEmitterDecorator
      {
         var _loc4_:ParticleStartVelocity = null;
         var _loc5_:ParticleEmitterDecorator = null;
         _loc5_ = new ParticleEmitterDecorator();
         _loc5_.bitmapData = param1.clone();
         _loc5_.lifeTime = 300;
         _loc5_.newParticlesPerSecond = 12;
         _loc5_.blendMode = BlendMode.NORMAL;
         _loc5_.addUpdater(new ParticleUseVelocity());
         _loc5_.addUpdater(new ParticleAcceleration(140,140));
         _loc4_ = new ParticleStartVelocity(200,1,360,0);
         _loc4_.offsetX = param2;
         _loc4_.offsetY = param3;
         _loc5_.addInitializer(_loc4_);
         _loc5_.addInitializer(new ParticleScale(0.6,2));
         _loc5_.addUpdater(new ParticleAlphaFade(0,400));
         var _loc6_:ParticleRotation = new ParticleRotation(180);
         _loc5_.addInitializer(_loc6_);
         _loc5_.addUpdater(_loc6_);
         return _loc5_;
      }
      
      public static function getStandardHUDReachEmitter() : ParticleEmitterDecorator
      {
         var _loc2_:ParticleStartVelocity = null;
         var _loc1_:BitmapData = getCircle();
         var _loc3_:ParticleEmitterDecorator = new ParticleEmitterDecorator();
         _loc3_.bitmapData = _loc1_.clone();
         _loc3_.lifeTime = 800;
         _loc3_.newParticlesPerSecond = 100;
         _loc3_.blendMode = BlendMode.NORMAL;
         _loc3_.startVariationWidth = 150;
         _loc3_.addUpdater(new ParticleUseVelocity());
         _loc3_.addUpdater(new ParticleAcceleration(100,1000));
         _loc2_ = new ParticleStartVelocity(50,180,360,1);
         _loc2_.offsetX = 0;
         _loc2_.offsetY = 0;
         _loc3_.addInitializer(_loc2_);
         _loc3_.addInitializer(new ParticleScale(0.5,1));
         _loc3_.addUpdater(new ParticleAlphaFade(0,800));
         return _loc3_;
      }
      
      private static function getCircle() : BitmapData
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginGradientFill(GradientType.RADIAL,[16776960,16777096],[0.8,0],[0,20]);
         _loc1_.graphics.drawCircle(0,0,20);
         _loc1_.graphics.endFill();
         var _loc3_:BitmapData = new BitmapData(_loc1_.width,_loc1_.height,true,0);
         var _loc4_:Matrix = new Matrix();
         _loc4_.translate(_loc1_.width / 2,_loc1_.height / 2);
         _loc3_.lock();
         _loc3_.draw(_loc1_,_loc4_);
         _loc3_.unlock();
         return _loc3_;
      }
      
      private function loadSubLevelAnimation() : void
      {
         this._subLevelAnimationLoader = new BriskMCDynaLib();
         this._subLevelAnimationLoader.addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.initSubLevelAnimation);
         this._subLevelAnimationLoader.createBitmapClip = true;
         this._subLevelAnimationLoader.bitmapClipFramerate = 40;
         this._subLevelAnimationLoader.dynaMCSourceName = "sublevel_dropAnimation";
         this._subLevelAnimationLoader.dynaLibName = "gui_infield_dropIcons";
         this._subLevelAnimationLoader.forceExternalCreation();
      }
      
      private function initSubLevelAnimation(param1:BriskMCDynaLibEvent) : void
      {
         this._subLevelAnimationLoader.removeEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.initSubLevelAnimation);
         if(this._subLevelAnimationLoader.bitmapClip)
         {
            this._subLevelAnimation = this._subLevelAnimationLoader.bitmapClip;
         }
      }
      
      public function prepare(param1:IFacade) : void
      {
         this._applicationFacade = param1;
         this._soundProxy = this._applicationFacade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
      }
      
      public function drop(param1:DisplayObject, param2:DropIconVO) : void
      {
         var _loc4_:TweenMax = null;
         param1.cacheAsBitmap = true;
         if(param1 is Sprite)
         {
            if((param1 as Sprite).numChildren)
            {
               if((param1 as Sprite).getChildAt(0) is Bitmap)
               {
                  ((param1 as Sprite).getChildAt(0) as Bitmap).smoothing = true;
               }
            }
            if(param2.isSubLevelDrop)
            {
               if(this._subLevelAnimation)
               {
                  this._subLevelAnimation.x = 60;
                  Sprite(param1).addChild(this._subLevelAnimation);
                  this._subLevelAnimation.frame = 1;
                  this._subLevelAnimation.play();
               }
            }
         }
         var _loc3_:Point = param2.destinationElement.localToGlobal(new Point());
         if(param2.isSubLevelDrop)
         {
            _loc4_ = TweenMax.to(param1,1.2,{
               "delay":0,
               "bezier":[{
                  "x":_loc3_.x,
                  "y":_loc3_.y / 10
               },{
                  "x":_loc3_.x,
                  "y":_loc3_.y
               }]
            });
         }
         else
         {
            _loc4_ = TweenMax.to(param1,1,{
               "delay":0,
               "ease":Sine.easeOut,
               "bezierThrough":[{
                  "x":(param1 as Sprite).x + 20,
                  "y":(param1 as Sprite).y
               },{
                  "x":_loc3_.x,
                  "y":_loc3_.y
               }]
            });
         }
         var _loc5_:TimelineMax = new TimelineMax({
            "onComplete":this.collectComplete,
            "onCompleteParams":[param1,param2]
         });
         _loc5_.append(_loc4_);
         _loc5_.play();
      }
      
      private function collectComplete(param1:DisplayObject, param2:DropIconVO) : void
      {
         var remove:Function = null;
         var $icon:DisplayObject = param1;
         var $data:DropIconVO = param2;
         remove = function():void
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
         Sprite($icon).getChildAt(0).visible = false;
         if($data.isSubLevelDrop)
         {
            if(Sprite($icon).numChildren > 1)
            {
               Sprite($icon).removeChildAt(1);
            }
         }
         TweenMax.delayedCall(1,remove);
         if(!$data.isSubLevelDrop)
         {
            this._particleDotEmitter.startX = $icon.width / 2;
            this._particleDotEmitter.startY = $icon.height / 2;
            this._particleDotEmitter.container = $data.destinationElement as Sprite;
            this._applicationFacade.sendNotification(ApplicationNotificationConstants.ANIMATION_LAYER_ADD_PARTICLE,this._particleDotEmitter);
         }
         if(ServerResConst.RESOURCE_EXPERIENCE == $data.type)
         {
            this._soundProxy.playCollectXP();
         }
         else
         {
            this._soundProxy.playCollect();
         }
      }
      
      public function get finishEvent() : DropIconAnimationEvent
      {
         return null;
      }
   }
}

