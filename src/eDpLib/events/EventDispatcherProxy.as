package eDpLib.events
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.FocusEvent;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class EventDispatcherProxy implements IEventDispatcher, IEventDispatcherProxy
   {
      
      private var _proxyTarget:IEventDispatcher;
      
      private var _proxy:IEventDispatcher;
      
      private var listenerHashTable:Object = {};
      
      protected var interceptedEventHash:Dictionary = new Dictionary(true);
      
      public var deleteQueueAfterUpdate:Boolean = true;
      
      private var _proxyTargetListenerQueue:Array = [];
      
      private var eventDispatcher:EventDispatcher;
      
      public function EventDispatcherProxy()
      {
         super();
         this.proxy = this;
         this.interceptedEventTypes = this.generateEventTypes();
      }
      
      public function get proxyTarget() : IEventDispatcher
      {
         return this._proxyTarget;
      }
      
      public function set proxyTarget(param1:IEventDispatcher) : void
      {
         if(this._proxyTarget != param1)
         {
            this._proxyTarget = param1;
            this.updateProxyListeners();
         }
      }
      
      public function get proxy() : IEventDispatcher
      {
         return this._proxy;
      }
      
      public function set proxy(param1:IEventDispatcher) : void
      {
         if(this._proxy != param1)
         {
            this._proxy = param1;
            this.eventDispatcher = new EventDispatcher(this._proxy);
         }
      }
      
      private function setListenerHashProperty(param1:String, param2:Function) : void
      {
         var _loc3_:ListenerHash = null;
         if(!this.listenerHashTable.hasOwnProperty(param1))
         {
            _loc3_ = new ListenerHash();
            _loc3_.addListener(param2);
            this.listenerHashTable[param1] = _loc3_;
         }
         else
         {
            _loc3_ = ListenerHash(this.listenerHashTable[param1]);
            _loc3_.addListener(param2);
         }
      }
      
      private function hasListenerHashProperty(param1:String) : Boolean
      {
         return this.listenerHashTable.hasOwnProperty(param1);
      }
      
      private function getListenersForEventType(param1:String) : Array
      {
         if(this.listenerHashTable.hasOwnProperty(param1))
         {
            return ListenerHash(this.listenerHashTable[param1]).listeners;
         }
         return [];
      }
      
      private function removeListenerHashProperty(param1:String, param2:Function) : Boolean
      {
         if(this.listenerHashTable.hasOwnProperty(param1))
         {
            var _loc3_:ListenerHash = ListenerHash(this.listenerHashTable[param1]);
            null.removeListener(param2);
            return true;
         }
         return false;
      }
      
      public function get interceptedEventTypes() : Array
      {
         var _loc2_:Object = null;
         var _loc1_:Array = [];
         for(_loc2_ in this.interceptedEventHash)
         {
            _loc1_.push(this.interceptedEventHash[_loc2_]);
         }
         return _loc1_;
      }
      
      public function set interceptedEventTypes(param1:Array) : void
      {
         var _loc3_:String = null;
         var _loc2_:Dictionary = new Dictionary(true);
         for each(_loc3_ in param1)
         {
            _loc2_[_loc3_] = _loc3_;
         }
         this.interceptedEventHash = _loc2_;
      }
      
      protected function generateEventTypes() : Array
      {
         var _loc1_:Array = [];
         _loc1_.push(Event.ADDED,Event.ADDED_TO_STAGE,Event.ENTER_FRAME,Event.REMOVED,Event.REMOVED_FROM_STAGE,Event.RENDER,Event.TAB_CHILDREN_CHANGE,Event.TAB_ENABLED_CHANGE,Event.TAB_INDEX_CHANGE,FocusEvent.FOCUS_IN,FocusEvent.FOCUS_OUT,FocusEvent.KEY_FOCUS_CHANGE,FocusEvent.MOUSE_FOCUS_CHANGE,MouseEvent.CLICK,MouseEvent.DOUBLE_CLICK,MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_OUT,MouseEvent.MOUSE_OVER,MouseEvent.MOUSE_UP,MouseEvent.MOUSE_WHEEL,MouseEvent.ROLL_OUT,MouseEvent.ROLL_OVER,KeyboardEvent.KEY_DOWN,KeyboardEvent.KEY_UP);
         return _loc1_;
      }
      
      private function checkForInteceptedEventType(param1:String) : Boolean
      {
         return this.interceptedEventHash.hasOwnProperty(param1);
      }
      
      protected function eventDelegateFunction(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         var _loc2_:ProxyEvent = new ProxyEvent(this.proxy,param1);
         _loc2_.proxyTarget = this.proxyTarget;
         if(this.hasListenerHashProperty(param1.type))
         {
            var _loc4_:Array = this.getListenersForEventType(param1.type);
            for each(var _loc3_ in null)
            {
               null.call(this,_loc2_);
            }
         }
      }
      
      protected function updateProxyListeners() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this._proxyTargetListenerQueue)
         {
            this.proxyTarget.addEventListener(_loc1_.type,this.eventDelegateFunction,_loc1_.useCapture,_loc1_.priority,_loc1_.useWeakReference);
         }
         if(this.deleteQueueAfterUpdate)
         {
            this._proxyTargetListenerQueue = [];
         }
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         if(this.checkForInteceptedEventType(param1))
         {
            if(this.proxyTarget)
            {
               return this.proxyTarget.hasEventListener(param1);
            }
            return false;
         }
         return this.eventDispatcher.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         if(this.checkForInteceptedEventType(param1))
         {
            if(this.proxyTarget)
            {
               return this.proxyTarget.willTrigger(param1);
            }
            return false;
         }
         return this.eventDispatcher.willTrigger(param1);
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         if(this.checkForInteceptedEventType(param1))
         {
            this.setListenerHashProperty(param1,param2);
            if(this.proxyTarget)
            {
               this.proxyTarget.addEventListener(param1,this.eventDelegateFunction,param3,param4,param5);
            }
            else
            {
               var _loc6_:Object = {
                  "type":param1,
                  "useCapture":param3,
                  "priority":param4,
                  "useWeakReference":param5
               };
               this._proxyTargetListenerQueue.push(null);
            }
         }
         else
         {
            this.eventDispatcher.addEventListener(param1,param2,param3,param4,param5);
         }
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         if(this.checkForInteceptedEventType(param1))
         {
            if(this.hasListenerHashProperty(param1))
            {
               this.removeListenerHashProperty(param1,param2);
               if(!this.proxyTarget)
               {
                  var _loc6_:uint = this._proxyTargetListenerQueue.length;
               }
            }
         }
         else
         {
            this.eventDispatcher.removeEventListener(param1,param2,param3);
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         if(param1.bubbles || this.checkForInteceptedEventType(param1.type))
         {
            return this.proxyTarget.dispatchEvent(new ProxyEvent(this,param1));
         }
         return this.eventDispatcher.dispatchEvent(param1);
      }
   }
}

