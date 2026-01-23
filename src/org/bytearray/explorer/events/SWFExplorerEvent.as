package org.bytearray.explorer.events
{
   import flash.events.Event;
   import org.bytearray.explorer.SWFExplo;
   
   public final class SWFExplorerEvent extends Event
   {
      
      public static const COMPLETE:String = "parseComplete";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc2_)
      {
         COMPLETE = "parseComplete";
      }
      
      public var definitions:Array;
      
      public var libName:String;
      
      public var pSWFExploInstance:SWFExplo;
      
      public function SWFExplorerEvent(param1:String, param2:Array, param3:String = "", param4:SWFExplo = null)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(_loc5_)
         {
            super(param1,false,false);
            if(!_loc6_)
            {
               addr0034:
               this.definitions = param2;
               if(_loc5_)
               {
                  this.libName = param3;
                  if(!(_loc6_ && Boolean(param1)))
                  {
                     addr0052:
                     this.pSWFExploInstance = param4;
                  }
                  return;
               }
            }
            §§goto(addr0052);
         }
         §§goto(addr0034);
      }
      
      override public function clone() : Event
      {
         return new SWFExplorerEvent(SWFExplorerEvent.COMPLETE,this.definitions);
      }
      
      override public function toString() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push("[LoaderExplorerEvent type=parseComplete, definitions=");
         if(_loc2_)
         {
            §§push(§§pop() + this.definitions);
            if(_loc2_)
            {
               return §§pop() + "]";
            }
         }
      }
   }
}

