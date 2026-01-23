package net.bigpoint.cityrama.view.common.components
{
   import mx.core.IVisualElement;
   import spark.layouts.supportClasses.LayoutBase;
   
   public class WheelLayout extends LayoutBase
   {
      
      private var _scrollPosition:Number = 0;
      
      private var _elementWidth:Number = 100;
      
      public function WheelLayout()
      {
         super();
      }
      
      public function set elementWidth(param1:Number) : void
      {
         this._elementWidth = param1;
      }
      
      public function get scrollPosition() : Number
      {
         return this._scrollPosition;
      }
      
      public function set scrollPosition(param1:Number) : void
      {
         if(param1 > 1)
         {
            param1 -= Math.floor(param1);
         }
         else if(param1 < 0)
         {
            param1 = Math.ceil(Math.abs(param1)) - param1;
         }
         if(this._scrollPosition != param1)
         {
            this._scrollPosition = param1;
            target.invalidateDisplayList();
         }
      }
      
      override public function updateDisplayList(param1:Number, param2:Number) : void
      {
         var _loc4_:IVisualElement = null;
         super.updateDisplayList(param1,param2);
         var _loc3_:int = int(target.numElements);
         var _loc5_:int = 0;
         while(_loc5_ < target.numElements)
         {
            _loc4_ = target.getElementAt(_loc5_) as IVisualElement;
            _loc4_.x = param1 * 0.5 + (_loc5_ - 0.5) * this._elementWidth - this._scrollPosition * this._elementWidth * _loc3_;
            if(_loc4_.x > param1)
            {
               _loc4_.x -= this._elementWidth * _loc3_;
            }
            if(_loc4_.x + this._elementWidth < 0)
            {
               _loc4_.x += this._elementWidth * _loc3_;
            }
            _loc5_++;
         }
      }
   }
}

