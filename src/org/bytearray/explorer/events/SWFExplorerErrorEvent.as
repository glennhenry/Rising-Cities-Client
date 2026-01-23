package org.bytearray.explorer.events
{
   import flash.events.Event;
   
   public final class SWFExplorerErrorEvent extends Event
   {
      
      public static const NO_DEFINITIONS:String = "noDefinitions";
      
      public function SWFExplorerErrorEvent(param1:String)
      {
         super(param1,false,false);
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

