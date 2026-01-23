package net.bigpoint.cityrama.view.common.components
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import spark.components.VScrollBar;
   
   public class CustomVScrollBar extends VScrollBar
   {
      
      private static var _skinParts:Object = {
         "decrementButton":false,
         "incrementButton":false,
         "track":false,
         "thumb":false
      };
      
      private var _shouldCheckScroll:Boolean = true;
      
      public function CustomVScrollBar()
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
         incrementButton.visible = true;
         decrementButton.visible = true;
         if(param1.target == incrementButton)
         {
            _loc2_ = Math.min(value + pageSize,maximum);
            incrementButton.visible = _loc2_ != maximum;
         }
         else if(param1.target == decrementButton)
         {
            _loc2_ = Math.max(value - pageSize,minimum);
            decrementButton.visible = _loc2_ != minimum;
         }
         if(!isNaN(_loc2_))
         {
            this._shouldCheckScroll = false;
            TweenMax.to(this.viewport,0.5,{
               "verticalScrollPosition":_loc2_,
               "onComplete":this.resetCheckScroll
            });
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         this.checkScroll();
      }
      
      private function checkScroll() : void
      {
         if(this._shouldCheckScroll)
         {
            decrementButton.visible = this.viewport.verticalScrollPosition != minimum;
            incrementButton.visible = this.viewport.verticalScrollPosition != maximum;
         }
      }
      
      private function resetCheckScroll() : void
      {
         this._shouldCheckScroll = true;
      }
      
      override protected function button_buttonUpHandler(param1:Event) : void
      {
      }
      
      public function scrollpositionChanged() : void
      {
         this._shouldCheckScroll = true;
         invalidateProperties();
      }
   }
}

