package net.bigpoint.cityrama.model.field.vo.event
{
   import net.bigpoint.event.SimpleEvent;
   
   public class DecorationObjectVoEvent extends SimpleEvent
   {
      
      public static const DATA_CHANGED:String = "DATA_CHANGED";
      
      public static const OFFSET_CHANGED:String = "OFFSET_CHANGED";
      
      public function DecorationObjectVoEvent(param1:String, param2:* = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
      }
   }
}

