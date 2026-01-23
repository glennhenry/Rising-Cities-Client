package net.bigpoint.cityrama.view.common.events
{
   import flash.events.Event;
   
   public class BriskImageDynaLibEvent extends Event
   {
      
      public static const LOAD_COMPLETE:String = "briskImageDynaLibComplete";
      
      public static const SIZE_CHANGED:String = "sizeChanged";
      
      public function BriskImageDynaLibEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new BriskImageDynaLibEvent(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("BriskImageEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}

