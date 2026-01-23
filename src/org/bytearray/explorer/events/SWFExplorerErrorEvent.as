package org.bytearray.explorer.events
{
   import flash.events.Event;
   
   public final class SWFExplorerErrorEvent extends Event
   {
      
      public static const NO_DEFINITIONS:String = "noDefinitions";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc2_))
      {
         NO_DEFINITIONS = "noDefinitions";
      }
      
      public function SWFExplorerErrorEvent(param1:String)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            super(param1,false,false);
         }
      }
      
      override public function clone() : Event
      {
         return new SWFExplorerErrorEvent(SWFExplorerErrorEvent.NO_DEFINITIONS);
      }
      
      override public function toString() : String
      {
         return "[LoaderExplorerEvent type=noDefinitions]";
      }
   }
}

