package eDpLib.events
{
   import flash.events.IEventDispatcher;
   
   public interface IEventDispatcherProxy extends IEventDispatcher
   {
      
      function get proxy() : IEventDispatcher;
      
      function set proxy(param1:IEventDispatcher) : void;
      
      function get proxyTarget() : IEventDispatcher;
      
      function set proxyTarget(param1:IEventDispatcher) : void;
   }
}

