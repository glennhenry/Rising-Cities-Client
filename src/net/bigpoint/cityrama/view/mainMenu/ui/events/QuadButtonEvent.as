package net.bigpoint.cityrama.view.mainMenu.ui.events
{
   import flash.events.Event;
   
   public class QuadButtonEvent extends Event
   {
      
      public static const SELECTION_CHANGED:String = "selectionChanged";
      
      public function QuadButtonEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
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

