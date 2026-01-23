package net.bigpoint.cityrama.model.field.vo.event
{
   import net.bigpoint.event.SimpleEvent;
   
   public class DecorationObjectVoEvent extends SimpleEvent
   {
      
      public static const DATA_CHANGED:String = "DATA_CHANGED";
      
      public static const OFFSET_CHANGED:String = "OFFSET_CHANGED";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || DecorationObjectVoEvent)
      {
         DATA_CHANGED = "DATA_CHANGED";
         if(_loc2_ || DecorationObjectVoEvent)
         {
            addr003e:
            OFFSET_CHANGED = "OFFSET_CHANGED";
         }
         return;
      }
      §§goto(addr003e);
      
      public function DecorationObjectVoEvent(param1:String, param2:* = null, param3:Boolean = false, param4:Boolean = false)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(!(_loc6_ && Boolean(this)))
         {
            super(param1,param2,param3,param4);
         }
      }
   }
}

