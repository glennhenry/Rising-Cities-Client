package as3isolib.events
{
   import flash.events.Event;
   
   public class IsoEvent extends Event
   {
      
      public static const INVALIDATE:String = "as3isolib_invalidate";
      
      public static const RENDER:String = "as3isolib_render";
      
      public static const RENDER_COMPLETE:String = "as3isolib_renderComplete";
      
      public static const MOVE:String = "as3isolib_move";
      
      public static const RESIZE:String = "as3isolib_resize";
      
      public static const CHILD_ADDED:String = "as3isolib_childAdded";
      
      public static const CHILD_REMOVED:String = "as3isolib_childRemoved";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         INVALIDATE = "as3isolib_invalidate";
         if(_loc1_)
         {
            RENDER = "as3isolib_render";
            if(!(_loc2_ && _loc2_))
            {
               RENDER_COMPLETE = "as3isolib_renderComplete";
               if(_loc1_ || IsoEvent)
               {
                  addr005c:
                  MOVE = "as3isolib_move";
                  if(!(_loc2_ && IsoEvent))
                  {
                     RESIZE = "as3isolib_resize";
                     if(_loc1_ || IsoEvent)
                     {
                        addr0093:
                        CHILD_ADDED = "as3isolib_childAdded";
                        if(!_loc2_)
                        {
                           CHILD_REMOVED = "as3isolib_childRemoved";
                        }
                     }
                     §§goto(addr00ac);
                  }
                  §§goto(addr0093);
               }
               addr00ac:
               return;
            }
         }
         §§goto(addr0093);
      }
      §§goto(addr005c);
      
      public var propName:String;
      
      public var oldValue:Object;
      
      public var newValue:Object;
      
      public function IsoEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:IsoEvent = new IsoEvent(type,bubbles,cancelable);
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.propName = this.propName;
            if(_loc2_)
            {
               _loc1_.oldValue = this.oldValue;
               if(!(_loc3_ && _loc2_))
               {
                  addr006d:
                  _loc1_.newValue = this.newValue;
               }
               §§goto(addr0075);
            }
            §§goto(addr006d);
         }
         addr0075:
         return _loc1_;
      }
   }
}

