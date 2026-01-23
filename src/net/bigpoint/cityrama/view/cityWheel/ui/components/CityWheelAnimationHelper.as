package net.bigpoint.cityrama.view.cityWheel.ui.components
{
   import com.greensock.TweenMax;
   import com.greensock.easing.Elastic;
   import com.greensock.easing.Linear;
   import net.bigpoint.cityrama.model.cityWheel.events.CityWheelItemEvent;
   import net.bigpoint.cityrama.view.common.components.WheelComponent;
   
   public class CityWheelAnimationHelper
   {
      
      private var _settings:CityWheelAnimationSettingsVo;
      
      private var _wheel:WheelComponent;
      
      private var _numberOfElements:int;
      
      private var _idleTween:TweenMax;
      
      private var _spinTween:TweenMax;
      
      private var _isWheelSpinning:Boolean;
      
      private var _isWheelStopping:Boolean;
      
      private var _lastTime:Number;
      
      private var _a:Number;
      
      private var _v:Number;
      
      private var _stopIndex:Number;
      
      private var _onSpinComplete:Function;
      
      public function CityWheelAnimationHelper(param1:WheelComponent, param2:CityWheelAnimationSettingsVo)
      {
         super();
         this._wheel = param1;
         this._settings = param2;
      }
      
      public function playJackpotAnimation(param1:Function) : void
      {
         TweenMax.to(this._wheel,0.5,{
            "scrollPosition":this._stopIndex + 1,
            "onComplete":param1
         });
      }
      
      public function init() : void
      {
         this._numberOfElements = this._wheel.dataGroup.dataProvider.length;
         this._wheel.addEventListener(CityWheelItemEvent.ITEM_OVER,this._wheel_ITEM_OVERHandler);
         this._wheel.addEventListener(CityWheelItemEvent.ITEM_OUT,this._wheel_ITEM_OUTHandler);
         this.spinWheelIdle();
      }
      
      public function dispose() : void
      {
      }
      
      public function spinWheelIdle() : void
      {
         if(this._idleTween)
         {
            this._idleTween.kill();
            this._idleTween = null;
         }
         this._idleTween = TweenMax.fromTo(this._wheel,this._settings.idleAnimationDuration,{"scrollPosition":0},{
            "scrollPosition":this._numberOfElements,
            "ease":Linear.easeInOut,
            "repeat":-1
         });
      }
      
      private function _wheel_ITEM_OVERHandler(param1:CityWheelItemEvent) : void
      {
         if(this._idleTween)
         {
            this._idleTween.pause();
         }
      }
      
      private function _wheel_ITEM_OUTHandler(param1:CityWheelItemEvent) : void
      {
         if(this._idleTween)
         {
            this._idleTween.resume();
         }
      }
      
      public function spinWheel(param1:Function) : void
      {
         if(this._idleTween)
         {
            this._idleTween.kill();
            this._idleTween = null;
         }
         this._onSpinComplete = param1;
         this._isWheelSpinning = true;
         this._spinTween = TweenMax.fromTo(this._wheel,this._settings.spinAnimationCycleDuration,{"scrollPosition":0},{
            "scrollPosition":this._numberOfElements,
            "ease":Linear.easeInOut,
            "repeat":-1
         });
      }
      
      public function stopWheelOnIndex(param1:Number, param2:Boolean = false) : void
      {
         if(this._isWheelStopping)
         {
            return;
         }
         this._isWheelStopping = true;
         if(param2)
         {
            param1 = (param1 - 1) % this._numberOfElements;
         }
         this._stopIndex = param1;
         param1 += Math.random() > 0.5 ? -0.5 : 0.15;
         this._v = this._numberOfElements / this._settings.spinAnimationCycleDuration;
         this._a = 0.25 - this._v / this._settings.spinDecelerationDuration;
         var _loc4_:Number = param1 - (this._a / 2 * (this._settings.spinDecelerationDuration * this._settings.spinDecelerationDuration) + this._v * this._settings.spinDecelerationDuration);
         _loc4_ = _loc4_ % this._numberOfElements;
         if(_loc4_ < 0)
         {
            _loc4_ += this._numberOfElements;
         }
         if(_loc4_ < this._wheel.scrollPosition)
         {
            _loc4_ += this._numberOfElements;
         }
         var _loc5_:Number = (_loc4_ - this._wheel.scrollPosition) * (this._settings.spinAnimationCycleDuration / this._numberOfElements);
         this._spinTween = TweenMax.to(this._wheel,_loc5_,{
            "scrollPosition":_loc4_,
            "onComplete":this.startDecelerationAnimation,
            "ease":Linear.easeInOut
         });
      }
      
      private function startDecelerationAnimation() : void
      {
         if(this._spinTween)
         {
            this._spinTween.kill();
         }
         this._lastTime = 0;
         this._spinTween = TweenMax.to(this._wheel,this._settings.spinDecelerationDuration,{
            "onUpdate":this.decelerationAnimationUpdate,
            "onComplete":this.decelerationLastStep
         });
      }
      
      private function decelerationAnimationUpdate() : void
      {
         var _loc1_:Number = this._spinTween.currentTime - this._lastTime;
         this._lastTime = this._spinTween.currentTime;
         this._wheel.scrollPosition += this._a / 2 * (_loc1_ * _loc1_) + this._v * _loc1_;
         this._v += this._a * _loc1_;
      }
      
      private function decelerationLastStep() : void
      {
         var _loc1_:Number = this._wheel.scrollPosition % this._numberOfElements;
         if(Math.abs(_loc1_ - this._stopIndex) > 1)
         {
            this._stopIndex += this._numberOfElements;
         }
         this._spinTween = TweenMax.fromTo(this._wheel,3.5,{"scrollPosition":_loc1_},{
            "scrollPosition":this._stopIndex,
            "onComplete":this.decelerationAnimationComplete,
            "ease":Elastic.easeOut
         });
      }
      
      private function decelerationAnimationComplete() : void
      {
         this._isWheelSpinning = false;
         this._isWheelStopping = false;
         this._spinTween.kill();
         this._spinTween = null;
         if(this._onSpinComplete != null)
         {
            this._onSpinComplete();
         }
      }
      
      public function get isWheelStopping() : Boolean
      {
         return this._isWheelStopping;
      }
      
      public function get isWheelSpinning() : Boolean
      {
         return this._isWheelSpinning;
      }
   }
}

