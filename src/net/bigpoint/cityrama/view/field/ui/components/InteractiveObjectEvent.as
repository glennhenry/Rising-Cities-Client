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
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc2_))
      {
         ON_INTERACTIVE_ROLLOVER = "ON_INTERACTIVE_ROLLOVER";
         if(_loc2_)
         {
            ON_INTERACTIVE_ROLLOUT = "ON_INTERACTIVE_ROLLOUT";
            if(_loc2_)
            {
               ON_INTERACTIVE_CLICK = "ON_INTERACTIVE_CLICK";
               if(!_loc1_)
               {
                  addr005c:
                  ON_INTERACTIVEVALUE_CHECK = "ON_INTERACTIVE_VALUE_CHECK";
                  if(!_loc1_)
                  {
                     addr006b:
                     ON_INTERACTIVE_BEGIN_DRAG = "ON_INTERACTIVE_BEGIN_DRAG";
                     if(!(_loc1_ && _loc1_))
                     {
                        addr0081:
                        ON_INTERACTIVE_MOUSE_UP = "ON_INTERACTIVE_MOUSE_UP";
                     }
                  }
               }
               return;
            }
            §§goto(addr006b);
         }
         §§goto(addr005c);
      }
      §§goto(addr0081);
      
      private var _iconEvent:Boolean;
      
      public function InteractiveObjectEvent(param1:String, param2:*, param3:Boolean = false, param4:Boolean = false)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(!_loc6_)
         {
            super(param1,param2,param3,param4);
         }
      }
      
      public function get iconEvent() : Boolean
      {
         return this._iconEvent;
      }
      
      public function set iconEvent(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._iconEvent = param1;
         }
      }
   }
}

