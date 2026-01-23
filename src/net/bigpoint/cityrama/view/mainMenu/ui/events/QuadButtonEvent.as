package net.bigpoint.cityrama.view.mainMenu.ui.events
{
   import flash.events.Event;
   
   public class QuadButtonEvent extends Event
   {
      
      public static const SELECTION_CHANGED:String = "selectionChanged";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         SELECTION_CHANGED = "selectionChanged";
      }
      
      public function QuadButtonEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!_loc4_)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function clone() : Event
      {
         return new QuadButtonEvent(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("QuadButtonEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}

