package net.bigpoint.cityrama.model.cityWheel.events
{
   import flash.events.Event;
   
   public class CityWheelItemEvent extends Event
   {
      
      public static const ITEM_OVER:String = "ITEM_OVER";
      
      public static const ITEM_OUT:String = "ITEM_OUT";
      
      private var _elementIndex:int;
      
      public function CityWheelItemEvent(param1:String, param2:Boolean = true, param3:int = -1)
      {
         this._elementIndex = param3;
         super(param1,param2);
      }
      
      public function get elementIndex() : int
      {
         return this._elementIndex;
      }
   }
}

