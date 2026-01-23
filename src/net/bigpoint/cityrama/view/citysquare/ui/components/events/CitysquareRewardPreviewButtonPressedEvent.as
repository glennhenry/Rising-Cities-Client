package net.bigpoint.cityrama.view.citysquare.ui.components.events
{
   import flash.events.Event;
   
   public class CitysquareRewardPreviewButtonPressedEvent extends Event
   {
      
      public static var PREVIEW_BUTTON_PRESSED:String = "PREVIEW_BUTTON_PRESSED";
      
      private var _challengeNumber:int;
      
      public function CitysquareRewardPreviewButtonPressedEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get challengeNumber() : int
      {
         return this._challengeNumber;
      }
      
      public function set challengeNumber(param1:int) : void
      {
         this._challengeNumber = param1;
      }
   }
}

