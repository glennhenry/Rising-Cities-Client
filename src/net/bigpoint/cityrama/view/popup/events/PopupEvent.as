package net.bigpoint.cityrama.view.popup.events
{
   import flash.events.Event;
   
   public class PopupEvent extends Event
   {
      
      public static const POPUP_CREATED:String = "POPUP_CREATED";
      
      public static const POPUP_DESTROYED:String = "POPUP_DESTROYED";
      
      public function PopupEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new PopupEvent(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopupEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}

