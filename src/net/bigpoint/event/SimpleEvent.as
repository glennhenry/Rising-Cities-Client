package net.bigpoint.event
{
   import flash.events.Event;
   
   public class SimpleEvent extends Event
   {
      
      public var data:*;
      
      public function SimpleEvent(param1:String, param2:*, param3:Boolean = false, param4:Boolean = false)
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(_loc6_)
         {
            this.data = param2;
            if(!_loc5_)
            {
               super(param1,param3,param4);
            }
         }
      }
   }
}

