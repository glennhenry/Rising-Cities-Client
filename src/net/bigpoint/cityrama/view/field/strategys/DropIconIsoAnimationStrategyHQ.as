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
         super();
         this.loadStarEmiterGraphic();
         this._finishEvent = new DropIconAnimationEvent(DropIconAnimationEvent.DROP_FINISHED);
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
      
      public function prepare(param1:IFacade) : void
      {
         this._applicationFacade = param1;
         this._soundProxy = this._applicationFacade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
      }
      
      public function drop(param1:DisplayObject, param2:DropIconVO) : void
      {
         var _loc3_:TimelineMax = null;
         var _loc4_:TweenMax = null;
         var _loc5_:TweenMax = null;
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
         }
         var _loc6_:int = (50 + 100 * Math.random()) * (this._direction == 0 ? 1 : -1);
         ++this._direction;
         if(this._direction > 1)
         {
            this._direction = 0;
         }
         this._soundProxy.playBounce();
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
         _loc3_.appendMultiple([_loc4_,_loc5_]);
         _loc3_.play();
      }
      
      private function waitForIt(param1:DisplayObject, param2:TimelineMax, param3:DropIconVO) : void
      {
         var particle:ParticleEmitterDecorator = null;
         var onDropIconOver:Function = null;
         var $icon:DisplayObject = param1;
         var timeline:TimelineMax = param2;
         var $data:DropIconVO = param3;
         onDropIconOver = function(param1:MouseEvent = null):void
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
         timeline.pause();
         TweenMax.delayedCall(2,onDropIconOver);
         if($icon is Sprite)
         {
            ($icon as Sprite).addEventListener(MouseEvent.ROLL_OVER,onDropIconOver);
            ($icon as Sprite).mouseEnabled = true;
            ($icon as Sprite).parent.mouseChildren = true;
            ($icon as Sprite).mouseChildren = true;
         }
         particle = this._particleStarEmiter;
      }
      
      private function resumeCollect(param1:Sprite, param2:ParticleEmitterDecorator, param3:DropIconVO) : void
      {
         (param1 as Sprite).getChildAt(0).visible = false;
         if(param2)
         {
            TweenMax.delayedCall(0.5,this._applicationFacade.sendNotification,[ApplicationNotificationConstants.ANIMATION_LAYER_REMOVE_PARTICLE,param2]);
         }
         param2 = null;
         var _loc4_:DropIconAnimationEvent = new DropIconAnimationEvent(DropIconAnimationEvent.DROP_FINISHED);
         _loc4_.data = param3;
         _loc4_.data.isoTo2D = true;
         param3.startPoint = new Point(param1.x,param1.y);
         dispatchEvent(_loc4_);
         RandomUtilities.cleanRemoveChild(param1);
      }
      
      private function loadStarEmiterGraphic() : void
      {
         this._imageLoader = new BriskMCDynaLib();
         this._imageLoader.addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.initParticles);
         this._imageLoader.createBitmapClip = true;
         this._imageLoader.bitmapClipFramerate = 12;
         this._imageLoader.dynaMCSourceName = "particle_dropicon";
         this._imageLoader.dynaLibName = "gui_infield_dropIcons";
         this._imageLoader.forceExternalCreation();
      }
      
      private function initParticles(param1:BriskMCDynaLibEvent) : void
      {
         if(this._particleStarEmiter == null)
         {
            if(this._imageLoader && this._imageLoader.bitmapClip && Boolean(this._imageLoader.bitmapClip.currentFrameBitmap))
            {
               this._particleStarEmiter = getStandardBoosterEmiter(this._imageLoader.bitmapClip.currentFrameBitmap.bitmapData);
            }
         }
      }
      
      public function get finishEvent() : DropIconAnimationEvent
      {
         return this._finishEvent;
      }
   }
}

