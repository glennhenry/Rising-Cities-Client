package net.bigpoint.cityrama.model.cityWheel.events
{
   import flash.events.Event;
   
   public class CityWheelItemEvent extends Event
   {
      
      public static const ITEM_OVER:String = "ITEM_OVER";
      
      public static const ITEM_OUT:String = "ITEM_OUT";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc2_)
      {
         ITEM_OVER = "ITEM_OVER";
         if(!_loc2_)
         {
            addr002b:
            ITEM_OUT = "ITEM_OUT";
         }
         return;
      }
      §§goto(addr002b);
      
      private var _elementIndex:int;
      
      public function CityWheelItemEvent(param1:String, param2:Boolean = true, param3:int = -1)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!_loc4_)
         {
            this._elementIndex = param3;
            if(!(_loc4_ && Boolean(this)))
            {
               super(param1,param2);
            }
         }
      }
      
      public function get elementIndex() : int
      {
         return this._elementIndex;
      }
   }
}

