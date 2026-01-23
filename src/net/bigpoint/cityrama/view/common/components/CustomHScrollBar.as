package net.bigpoint.cityrama.view.common.components
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import spark.components.HScrollBar;
   
   public class CustomHScrollBar extends HScrollBar
   {
      
      private static var _skinParts:Object = {
         "decrementButton":false,
         "incrementButton":false,
         "track":false,
         "thumb":false
      };
      
      public var showScroller:Boolean;
      
      public var includeScroller:Boolean = true;
      
      private var _shouldCheckScroll:Boolean = true;
      
      private const DEFAULT_SCROLLSPEED:Number = 0.2;
      
      private var _incrementEnabled:Boolean;
      
      private var _decrementEnabled:Boolean;
      
      public function CustomHScrollBar()
      {
         super();
      }
      
      override protected function button_buttonDownHandler(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         if(!this._shouldCheckScroll)
         {
            return;
         }
         if(this.showScroller)
         {
            incrementButton.enabled = true;
            decrementButton.enabled = true;
         }
         else
         {
            incrementButton.visible = true;
            decrementButton.visible = true;
         }
         if(param1.target == incrementButton)
         {
            _loc2_ = Math.min(value + pageSize,maximum);
            if(this.showScroller)
            {
               incrementButton.enabled = _loc2_ != maximum;
            }
            else
            {
               incrementButton.visible = _loc2_ != maximum;
            }
         }
         else if(param1.target == decrementButton)
         {
            _loc2_ = Math.max(value - pageSize,minimum);
            if(this.showScroller)
            {
               decrementButton.enabled = _loc2_ != minimum;
            }
            else
            {
               decrementButton.visible = _loc2_ != minimum;
            }
         }
         this._incrementEnabled = incrementButton.enabled;
         this._decrementEnabled = decrementButton.enabled;
         incrementButton.enabled = false;
         decrementButton.enabled = false;
         if(!isNaN(_loc2_))
         {
            this._shouldCheckScroll = false;
            TweenMax.to(this.viewport,this.scrollspeed,{
               "horizontalScrollPosition":_loc2_,
               "onComplete":this.resetCheckScroll
            });
         }
      }
      
      public function scrollTo(param1:Number) : void
      {
         if(!isNaN(param1))
         {
            this._incrementEnabled = incrementButton.enabled;
            this._decrementEnabled = decrementButton.enabled;
            incrementButton.enabled = false;
            decrementButton.enabled = false;
            param1 = Math.max(Math.min(param1,maximum),minimum);
            this._shouldCheckScroll = false;
            TweenMax.to(this.viewport,this.scrollspeed,{
               "horizontalScrollPosition":param1,
               "onComplete":this.resetCheckScroll
            });
         }
      }
      
      private function get scrollspeed() : Number
      {
         if(this.getStyle("scrollSpeed") != null)
         {
            return this.getStyle("scrollSpeed");
         }
         return this.DEFAULT_SCROLLSPEED;
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         this.checkScroll();
      }
      
      private function checkScroll() : void
      {
         if(this.includeScroller)
         {
            if(this._shouldCheckScroll)
            {
               if(this.showScroller)
               {
                  decrementButton.enabled = this.viewport.horizontalScrollPosition != minimum;
                  incrementButton.enabled = this.viewport.horizontalScrollPosition != maximum;
               }
               else
               {
                  decrementButton.visible = this.viewport.horizontalScrollPosition != minimum;
                  incrementButton.visible = this.viewport.horizontalScrollPosition != maximum;
               }
            }
         }
         else
         {
            var _temp_1:* = incrementButton;
            incrementButton.visible = false;
            _temp_1.includeInLayout = false;
            var _temp_2:* = decrementButton;
            var _loc1_:Boolean;
            decrementButton.visible = _loc1_ = false;
            _temp_2.includeInLayout = false;
         }
      }
      
      private function resetCheckScroll() : void
      {
         this._shouldCheckScroll = true;
         incrementButton.enabled = this._incrementEnabled;
         decrementButton.enabled = this._decrementEnabled;
      }
      
      public function scrollpositionChanged() : void
      {
         this._shouldCheckScroll = true;
         invalidateProperties();
      }
      
      override protected function button_buttonUpHandler(param1:Event) : void
      {
      }
   }
}

