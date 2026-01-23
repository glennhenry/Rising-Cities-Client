package net.bigpoint.cityrama.view.field.ui.components.event
{
   import net.bigpoint.event.SimpleEvent;
   
   public class BuildingObjectEvent extends SimpleEvent
   {
      
      public static const OFFSET_CHANGED:String = "OFFSET_CHANGED";
      
      public static const MYSTERY_UNWRAP_PROGRESS_CHANGED:String = "MYSTERY_UNWRAP_PROGRESS_CHANGED";
      
      public function BuildingObjectEvent(param1:String, param2:*, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
      }
   }
}

