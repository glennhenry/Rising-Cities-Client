package net.bigpoint.cityrama.view.citysquare.ui.components.events
{
   import flash.events.Event;
   
   public class CitysquareRewardPreviewButtonPressedEvent extends Event
   {
      
      public static var PREVIEW_BUTTON_PRESSED:String = "PREVIEW_BUTTON_PRESSED";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && CitysquareRewardPreviewButtonPressedEvent))
      {
         PREVIEW_BUTTON_PRESSED = "PREVIEW_BUTTON_PRESSED";
      }
      
      private var _challengeNumber:int;
      
      public function CitysquareRewardPreviewButtonPressedEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!_loc4_)
         {
            super(param1,param2,param3);
         }
      }
      
      public function get challengeNumber() : int
      {
         return this._challengeNumber;
      }
      
      public function set challengeNumber(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._challengeNumber = param1;
         }
      }
   }
}

