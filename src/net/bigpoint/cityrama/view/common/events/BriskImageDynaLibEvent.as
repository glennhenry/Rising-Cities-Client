package net.bigpoint.cityrama.view.common.events
{
   import flash.events.Event;
   
   public class BriskImageDynaLibEvent extends Event
   {
      
      public static const LOAD_COMPLETE:String = "briskImageDynaLibComplete";
      
      public static const SIZE_CHANGED:String = "sizeChanged";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         LOAD_COMPLETE = "briskImageDynaLibComplete";
         if(_loc1_)
         {
            SIZE_CHANGED = "sizeChanged";
         }
      }
      
      public function BriskImageDynaLibEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            super(param1,param2,param3);
         }
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

