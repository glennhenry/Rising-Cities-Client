package net.bigpoint.cityrama.view.field.ui.components.event
{
   import net.bigpoint.event.SimpleEvent;
   
   public class ManagerEvent extends SimpleEvent
   {
      
      public static const FINISH_ANIMATION:String = "FINISH_ANIMATION";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         FINISH_ANIMATION = "FINISH_ANIMATION";
      }
      
      public function ManagerEvent(param1:String, param2:*, param3:Boolean = false, param4:Boolean = false)
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(_loc6_ || Boolean(param1))
         {
            super(param1,param2,param3,param4);
         }
      }
   }
}

