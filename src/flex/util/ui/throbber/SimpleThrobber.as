package flex.util.ui.throbber
{
   import flash.display.CapsStyle;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class SimpleThrobber extends Sprite
   {
      
      public var colors:Array = [5209744,4880775,4486527,3432035,2704977];
      
      public var lineAlpha:Number = 1;
      
      public var lineThickness:int = 3;
      
      public var delay:int = 100;
      
      public var autoStart:Boolean = false;
      
      public var hideWhenStopped:Boolean = false;
      
      private var lastDraw:int = 0;
      
      private var w:Number;
      
      private var h:Number;
      
      private var _running:Boolean;
      
      private var _currentStep:int = 0;
      
      private var _maxSteps:int = 12;
      
      public function SimpleThrobber(param1:int = 32, param2:int = 32, param3:int = 3)
      {
         super();
         this.w = param1;
         this.h = param2;
         this.lineThickness = param3;
         addEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.removedFromStage);
      }
      
      public function deleteThrobber() : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
         removeEventListener(Event.REMOVED_FROM_STAGE,this.removedFromStage);
         removeEventListener(Event.ENTER_FRAME,this.enterFrameHandler);
         delete global[this];
      }
      
      private function addedToStage(param1:Event) : void
      {
         if(this.autoStart)
         {
            this.start();
         }
         else if(!this.hideWhenStopped)
         {
            this.redraw();
         }
      }
      
      private function removedFromStage(param1:Event) : void
      {
         this.stop();
      }
      
      public function get running() : Boolean
      {
         return this._running;
      }
      
      public function get currentStep() : int
      {
         return this._currentStep;
      }
      
      public function nextStep() : void
      {
         this._currentStep = (this._currentStep + 1) % this.maxSteps;
         this.redraw();
      }
      
      public function get maxSteps() : int
      {
         return this._maxSteps;
      }
      
      public function start() : void
      {
         if(!this._running)
         {
            this._running = true;
            this.redraw();
            addEventListener(Event.ENTER_FRAME,this.enterFrameHandler,false,0,true);
         }
      }
      
      public function stop() : void
      {
         if(this._running)
         {
            this._running = false;
            removeEventListener(Event.ENTER_FRAME,this.enterFrameHandler);
            if(this.hideWhenStopped)
            {
               graphics.clear();
               this._currentStep = 0;
            }
         }
      }
      
      public function reset() : void
      {
         this._currentStep = 0;
         if(!this.running)
         {
            if(this.hideWhenStopped)
            {
               graphics.clear();
            }
            else
            {
               this.redraw();
            }
         }
      }
      
      private function enterFrameHandler(param1:Event) : void
      {
         var _loc2_:int = 0;
         if(this.running)
         {
            _loc2_ = getTimer() - this.lastDraw;
            if(_loc2_ > this.delay)
            {
               this.nextStep();
            }
         }
      }
      
      protected function redraw() : void
      {
         this.lastDraw = getTimer();
         this.drawLines();
      }
      
      protected function drawLines() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         var _loc9_:uint = 0;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc1_:Graphics = graphics;
         _loc1_.clear();
         var _loc2_:int = Math.round(this.w / 2);
         var _loc3_:int = Math.round(this.w / 2);
         var _loc4_:int = Math.min(_loc2_,_loc3_);
         if(_loc4_ > 0 && this.lineThickness > 0 && this.lineAlpha > 0)
         {
            _loc5_ = 0;
            _loc6_ = 2 * Math.PI;
            _loc7_ = _loc6_ / this.maxSteps;
            _loc8_ = 0;
            while(_loc5_ < _loc6_)
            {
               _loc9_ = this.getColor(_loc8_);
               _loc1_.lineStyle(this.lineThickness,_loc9_,this.lineAlpha,true,null,CapsStyle.ROUND);
               _loc10_ = _loc2_ + _loc4_ * Math.sin(_loc5_);
               _loc11_ = _loc3_ - _loc4_ * Math.cos(_loc5_);
               _loc12_ = 3 * _loc4_ / 5;
               _loc13_ = _loc2_ + _loc12_ * Math.sin(_loc5_);
               _loc14_ = _loc3_ - _loc12_ * Math.cos(_loc5_);
               _loc1_.moveTo(_loc10_,_loc11_);
               _loc1_.lineTo(_loc13_,_loc14_);
               _loc5_ += _loc7_;
               _loc8_++;
            }
         }
      }
      
      private function getColor(param1:int) : uint
      {
         var _loc2_:uint = uint(this.colors[0]);
         if(this.currentStep >= 0)
         {
            var _loc3_:int = this.currentStep - param1;
            var _loc4_:int = Math.min(this.colors.length - 1,0);
            _loc2_ = uint(this.colors[0]);
         }
         return _loc2_;
      }
   }
}

