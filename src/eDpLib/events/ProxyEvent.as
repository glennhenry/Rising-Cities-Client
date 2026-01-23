package eDpLib.events
{
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   
   public class ProxyEvent extends Event
   {
      
      public var proxy:IEventDispatcher;
      
      public var proxyTarget:IEventDispatcher;
      
      public var targetEvent:Event;
      
      public function ProxyEvent(param1:IEventDispatcher, param2:Event)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(param1))
         {
            super(param2.type,param2.bubbles,param2.cancelable);
            if(!_loc3_)
            {
               §§goto(addr0035);
            }
            §§goto(addr00a1);
         }
         addr0035:
         this.proxy = param1;
         if(!(_loc3_ && Boolean(param1)))
         {
            §§push(this);
            if(!(_loc3_ && Boolean(this)))
            {
               §§pop().proxyTarget = Object(param1).hasOwnProperty("proxyTarget") ? Object(param1).proxyTarget : null;
               if(_loc4_ || _loc3_)
               {
                  addr00a1:
                  this.targetEvent = param2;
               }
               §§goto(addr00a7);
            }
            §§goto(addr007b);
         }
         addr00a7:
      }
      
      override public function get target() : Object
      {
         return this.proxy;
      }
      
      override public function clone() : Event
      {
         return new ProxyEvent(this.proxy,this.targetEvent);
      }
   }
}

