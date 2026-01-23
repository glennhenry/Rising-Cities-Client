package org.bytearray.explorer.events
{
   import flash.events.Event;
   import org.bytearray.explorer.SWFExplo;
   
   public final class SWFExplorerEvent extends Event
   {
      
      public static const COMPLETE:String = "parseComplete";
      
      public var definitions:Array;
      
      public var libName:String;
      
      public var pSWFExploInstance:SWFExplo;
      
      public function SWFExplorerEvent(param1:String, param2:Array, param3:String = "", param4:SWFExplo = null)
      {
         super(param1,false,false);
         this.definitions = param2;
         this.libName = param3;
         this.pSWFExploInstance = param4;
      }
      
      override public function clone() : Event
      {
         return new SWFExplorerEvent(SWFExplorerEvent.COMPLETE,this.definitions);
      }
      
      override public function toString() : String
      {
         return "[LoaderExplorerEvent type=parseComplete, definitions=" + this.definitions + "]";
      }
   }
}

