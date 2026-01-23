package net.bigpoint.cityrama.view.field.ui.components
{
   import net.bigpoint.event.SimpleEvent;
   
   public class InteractiveObjectEvent extends SimpleEvent
   {
      
      public static const ON_INTERACTIVE_ROLLOVER:String = "ON_INTERACTIVE_ROLLOVER";
      
      public static const ON_INTERACTIVE_ROLLOUT:String = "ON_INTERACTIVE_ROLLOUT";
      
      public static const ON_INTERACTIVE_CLICK:String = "ON_INTERACTIVE_CLICK";
      
      public static const ON_INTERACTIVEVALUE_CHECK:String = "ON_INTERACTIVE_VALUE_CHECK";
      
      public static const ON_INTERACTIVE_BEGIN_DRAG:String = "ON_INTERACTIVE_BEGIN_DRAG";
      
      public static const ON_INTERACTIVE_MOUSE_UP:String = "ON_INTERACTIVE_MOUSE_UP";
      
      private var _iconEvent:Boolean;
      
      public function InteractiveObjectEvent(param1:String, param2:*, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
      }
      
      public function get iconEvent() : Boolean
      {
         return this._iconEvent;
      }
      
      public function set iconEvent(param1:Boolean) : void
      {
         this._iconEvent = param1;
      }
   }
}

