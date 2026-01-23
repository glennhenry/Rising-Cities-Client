package net.bigpoint.cityrama.view.field.ui.components.event
{
   import net.bigpoint.event.SimpleEvent;
   
   public class BuildingObjectEvent extends SimpleEvent
   {
      
      public static const OFFSET_CHANGED:String = "OFFSET_CHANGED";
      
      public static const MYSTERY_UNWRAP_PROGRESS_CHANGED:String = "MYSTERY_UNWRAP_PROGRESS_CHANGED";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && BuildingObjectEvent))
      {
         OFFSET_CHANGED = "OFFSET_CHANGED";
         if(_loc2_ || _loc2_)
         {
            MYSTERY_UNWRAP_PROGRESS_CHANGED = "MYSTERY_UNWRAP_PROGRESS_CHANGED";
         }
      }
      
      public function BuildingObjectEvent(param1:String, param2:*, param3:Boolean = false, param4:Boolean = false)
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(!(_loc5_ && param3))
         {
            super(param1,param2,param3,param4);
         }
      }
   }
}

