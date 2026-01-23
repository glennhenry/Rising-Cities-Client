package net.bigpoint.cityrama.view.field.ui.components.event
{
   import net.bigpoint.event.SimpleEvent;
   
   public class ManagerEvent extends SimpleEvent
   {
      
      public static const FINISH_ANIMATION:String = "FINISH_ANIMATION";
      
      public function ManagerEvent(param1:String, param2:*, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
      }
   }
}

