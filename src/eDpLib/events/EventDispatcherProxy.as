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
      
      private var listenerHashTable:Object;
      
      protected var interceptedEventHash:Dictionary;
      
      public var deleteQueueAfterUpdate:Boolean = true;
      
      private var _proxyTargetListenerQueue:Array;
      
      private var eventDispatcher:EventDispatcher;
      
      public function EventDispatcherProxy()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            this.listenerHashTable = {};
            if(_loc2_)
            {
               this.interceptedEventHash = new Dictionary(true);
               if(_loc2_)
               {
                  addr0042:
                  this._proxyTargetListenerQueue = [];
                  if(!(_loc1_ && _loc2_))
                  {
                     super();
                     if(!(_loc1_ && _loc2_))
                     {
                        §§goto(addr006f);
                     }
                     §§goto(addr0081);
                  }
                  addr006f:
                  this.proxy = this;
                  if(_loc2_ || Boolean(this))
                  {
                     addr0081:
                     this.interceptedEventTypes = this.generateEventTypes();
                  }
                  §§goto(addr008c);
               }
               addr008c:
               return;
            }
            §§goto(addr0081);
         }
         §§goto(addr0042);
      }
      
      public function get proxyTarget() : IEventDispatcher
      {
         return this._proxyTarget;
      }
      
      public function set proxyTarget(param1:IEventDispatcher) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(this._proxyTarget != param1)
            {
               if(!(_loc2_ && _loc3_))
               {
                  this._proxyTarget = param1;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr004a:
                     this.updateProxyListeners();
                  }
                  §§goto(addr0050);
               }
               §§goto(addr004a);
            }
            addr0050:
            return;
         }
         §§goto(addr004a);
      }
      
      public function get proxy() : IEventDispatcher
      {
         return this._proxy;
      }
      
      public function set proxy(param1:IEventDispatcher) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(this._proxy != param1)
            {
               if(_loc3_)
               {
                  this._proxy = param1;
                  if(_loc3_)
                  {
                     addr0038:
                     this.eventDispatcher = new EventDispatcher(this._proxy);
                  }
               }
            }
            return;
         }
         §§goto(addr0038);
      }
      
      private function setListenerHashProperty(param1:String, param2:Function) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:ListenerHash = null;
         if(_loc4_)
         {
            if(!this.listenerHashTable.hasOwnProperty(param1))
            {
               addr002c:
               _loc3_ = new ListenerHash();
               if(!_loc5_)
               {
                  _loc3_.addListener(param2);
                  if(_loc4_ || Boolean(param2))
                  {
                     this.listenerHashTable[param1] = _loc3_;
                     addr005f:
                  }
                  §§goto(addr00a0);
               }
               §§goto(addr005f);
            }
            else
            {
               _loc3_ = ListenerHash(this.listenerHashTable[param1]);
               if(!(_loc5_ && Boolean(param1)))
               {
                  _loc3_.addListener(param2);
               }
            }
            addr00a0:
            return;
         }
         §§goto(addr002c);
      }
      
      private function hasListenerHashProperty(param1:String) : Boolean
      {
         return this.listenerHashTable.hasOwnProperty(param1);
      }
      
      private function getListenersForEventType(param1:String) : Array
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(this.listenerHashTable.hasOwnProperty(param1))
            {
               if(_loc3_ || Boolean(this))
               {
                  §§goto(addr003c);
               }
            }
            return [];
         }
         addr003c:
         return ListenerHash(this.listenerHashTable[param1]).listeners;
      }
      
      private function removeListenerHashProperty(param1:String, param2:Function) : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:ListenerHash = null;
         if(_loc5_)
         {
            if(this.listenerHashTable.hasOwnProperty(param1))
            {
               _loc3_ = ListenerHash(this.listenerHashTable[param1]);
               §§goto(addr0039);
            }
            §§goto(addr007a);
         }
         addr0039:
         if(_loc5_ || Boolean(param2))
         {
            _loc3_.removeListener(param2);
            if(_loc4_ && Boolean(this))
            {
               addr007a:
               return false;
            }
         }
         return true;
      }
      
      public function get interceptedEventTypes() : Array
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:Object = null;
         var _loc1_:Array = [];
         for(_loc2_ in this.interceptedEventHash)
         {
            if(_loc5_)
            {
               _loc1_.push(this.interceptedEventHash[_loc2_]);
            }
         }
         return _loc1_;
      }
      
      public function set interceptedEventTypes(param1:Array) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:String = null;
         var _loc2_:Dictionary = new Dictionary(true);
         for each(_loc3_ in param1)
         {
            if(!_loc6_)
            {
               _loc2_[_loc3_] = _loc3_;
            }
         }
         if(!_loc6_)
         {
            this.interceptedEventHash = _loc2_;
         }
      }
      
      protected function generateEventTypes() : Array
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Array = [];
         if(_loc2_ || _loc3_)
         {
            _loc1_.push(Event.ADDED,Event.ADDED_TO_STAGE,Event.ENTER_FRAME,Event.REMOVED,Event.REMOVED_FROM_STAGE,Event.RENDER,Event.TAB_CHILDREN_CHANGE,Event.TAB_ENABLED_CHANGE,Event.TAB_INDEX_CHANGE,FocusEvent.FOCUS_IN,FocusEvent.FOCUS_OUT,FocusEvent.KEY_FOCUS_CHANGE,FocusEvent.MOUSE_FOCUS_CHANGE,MouseEvent.CLICK,MouseEvent.DOUBLE_CLICK,MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_OUT,MouseEvent.MOUSE_OVER,MouseEvent.MOUSE_UP,MouseEvent.MOUSE_WHEEL,MouseEvent.ROLL_OUT,MouseEvent.ROLL_OVER,KeyboardEvent.KEY_DOWN,KeyboardEvent.KEY_UP);
         }
         return _loc1_;
      }
      
      private function checkForInteceptedEventType(param1:String) : Boolean
      {
         return this.interceptedEventHash.hasOwnProperty(param1);
      }
      
      protected function eventDelegateFunction(param1:Event) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc3_:Function = null;
         var _loc4_:Array = null;
         if(!_loc8_)
         {
            param1.stopImmediatePropagation();
         }
         var _loc2_:ProxyEvent = new ProxyEvent(this.proxy,param1);
         if(!_loc8_)
         {
            _loc2_.proxyTarget = this.proxyTarget;
            if(!(_loc8_ && Boolean(param1)))
            {
               if(this.hasListenerHashProperty(param1.type))
               {
                  _loc4_ = this.getListenersForEventType(param1.type);
                  addr006e:
                  for each(_loc3_ in _loc4_)
                  {
                     if(_loc7_)
                     {
                        _loc3_.call(this,_loc2_);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr006e);
      }
      
      protected function updateProxyListeners() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:Object = null;
         for each(_loc1_ in this._proxyTargetListenerQueue)
         {
            if(!_loc4_)
            {
               this.proxyTarget.addEventListener(_loc1_.type,this.eventDelegateFunction,_loc1_.useCapture,_loc1_.priority,_loc1_.useWeakReference);
            }
         }
         if(_loc5_ || Boolean(_loc1_))
         {
            if(this.deleteQueueAfterUpdate)
            {
               if(!_loc4_)
               {
                  this._proxyTargetListenerQueue = [];
               }
            }
         }
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §§push(this.checkForInteceptedEventType(param1));
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     if(this.proxyTarget)
                     {
                        if(_loc3_)
                        {
                           return this.proxyTarget.hasEventListener(param1);
                        }
                     }
                     §§goto(addr0078);
                  }
               }
               §§goto(addr0079);
            }
            addr0078:
            return false;
         }
         addr0079:
         return this.eventDispatcher.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            §§push(this.checkForInteceptedEventType(param1));
            if(!(_loc2_ && Boolean(this)))
            {
               if(!§§pop())
               {
                  return this.eventDispatcher.willTrigger(param1);
               }
               if(!(_loc2_ && Boolean(this)))
               {
                  if(this.proxyTarget)
                  {
                     if(_loc3_)
                     {
                        §§goto(addr0067);
                     }
                  }
                  §§goto(addr0080);
               }
               §§goto(addr0067);
            }
            addr0080:
            return false;
         }
         addr0067:
         return this.proxyTarget.willTrigger(param1);
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc6_:Object = null;
         if(!_loc7_)
         {
            if(this.checkForInteceptedEventType(param1))
            {
               if(!_loc7_)
               {
                  this.setListenerHashProperty(param1,param2);
                  if(!(_loc7_ && Boolean(param1)))
                  {
                     if(this.proxyTarget)
                     {
                        if(!_loc7_)
                        {
                           addr0061:
                           this.proxyTarget.addEventListener(param1,this.eventDelegateFunction,param3,param4,param5);
                           if(_loc8_ || Boolean(this))
                           {
                           }
                        }
                     }
                     else
                     {
                        _loc6_ = {
                           "type":param1,
                           "useCapture":param3,
                           "priority":param4,
                           "useWeakReference":param5
                        };
                        if(_loc8_)
                        {
                           this._proxyTargetListenerQueue.push(_loc6_);
                        }
                     }
                  }
                  §§goto(addr00ce);
               }
               §§goto(addr0061);
            }
            else
            {
               this.eventDispatcher.addEventListener(param1,param2,param3,param4,param5);
            }
         }
         addr00ce:
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:Object = null;
         var _loc5_:* = 0;
         var _loc6_:uint = 0;
         if(_loc7_ || param3)
         {
            §§push(this.checkForInteceptedEventType(param1));
            if(!(_loc8_ && Boolean(this)))
            {
               if(§§pop())
               {
                  if(!_loc8_)
                  {
                     addr0058:
                     if(this.hasListenerHashProperty(param1))
                     {
                        if(_loc7_ || Boolean(this))
                        {
                           this.removeListenerHashProperty(param1,param2);
                           if(_loc7_)
                           {
                              §§goto(addr0078);
                           }
                           §§goto(addr0092);
                        }
                        addr0078:
                        if(!this.proxyTarget)
                        {
                           if(_loc7_)
                           {
                              addr0092:
                              _loc6_ = this._proxyTargetListenerQueue.length;
                           }
                           while(_loc5_ < _loc6_)
                           {
                              _loc4_ = this._proxyTargetListenerQueue[_loc5_];
                              if(_loc4_.type == param1)
                              {
                                 if(!(_loc8_ && param3))
                                 {
                                    this._proxyTargetListenerQueue.splice(_loc5_,1);
                                    if(_loc7_ || Boolean(this))
                                    {
                                       return;
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(_loc5_);
                                 if(!_loc8_)
                                 {
                                    §§push(uint(§§pop() + 1));
                                 }
                                 _loc5_ = §§pop();
                              }
                           }
                           if(_loc8_ && Boolean(param1))
                           {
                           }
                           addr00ff:
                        }
                     }
                     §§goto(addr0123);
                  }
                  §§goto(addr0092);
               }
               else
               {
                  this.eventDispatcher.removeEventListener(param1,param2,param3);
               }
               addr0123:
               return;
            }
            §§goto(addr0058);
         }
         §§goto(addr00ff);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(param1.bubbles);
            if(!_loc3_)
            {
               var _temp_1:* = §§pop();
               §§push(_temp_1);
               if(!_temp_1)
               {
                  if(_loc2_)
                  {
                     addr002a:
                     §§pop();
                     if(_loc2_ || _loc2_)
                     {
                        §§goto(addr0067);
                     }
                     §§goto(addr0070);
                  }
               }
               addr0067:
               §§goto(addr0044);
            }
            §§goto(addr002a);
         }
         addr0044:
         §§push(this.checkForInteceptedEventType(param1.type));
         if(!(_loc3_ && _loc3_))
         {
            §§push(§§pop());
         }
         if(§§pop())
         {
            if(_loc2_)
            {
               addr0070:
               return this.proxyTarget.dispatchEvent(new ProxyEvent(this,param1));
            }
         }
         return this.eventDispatcher.dispatchEvent(param1);
      }
   }
}

