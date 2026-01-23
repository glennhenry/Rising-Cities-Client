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
         super(param2.type,param2.bubbles,param2.cancelable);
         this.proxy = param1;
         this.proxyTarget = Object(param1).hasOwnProperty("proxyTarget") ? Object(param1).proxyTarget : null;
         this.targetEvent = param2;
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

