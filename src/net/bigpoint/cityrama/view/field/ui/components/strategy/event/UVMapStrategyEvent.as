package net.bigpoint.cityrama.view.field.ui.components.strategy.event
{
   import flash.display.BitmapData;
   import flash.events.Event;
   
   public class UVMapStrategyEvent extends Event
   {
      
      public static const STRATEGY_MAPPING_COMPLETE:String = "STRATEGY_MAPPING_COMPLETE";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && UVMapStrategyEvent))
      {
         STRATEGY_MAPPING_COMPLETE = "STRATEGY_MAPPING_COMPLETE";
      }
      
      private var _compiledSheet:BitmapData;
      
      public function UVMapStrategyEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!(_loc5_ && Boolean(this)))
         {
            super(param1,param2,param3);
         }
      }
      
      override public function clone() : Event
      {
         return new UVMapStrategyEvent(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("UVMapStrategyEvent","type","bubbles","cancelable","eventPhase");
      }
      
      public function get compiledSheet() : BitmapData
      {
         return this._compiledSheet;
      }
      
      public function set compiledSheet(param1:BitmapData) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._compiledSheet = param1;
         }
      }
   }
}

