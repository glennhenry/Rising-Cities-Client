package com.greensock.loading.core
{
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.ProgressEvent;
   import flash.net.LocalConnection;
   import flash.system.Capabilities;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class LoaderCore extends EventDispatcher
   {
      
      protected static var _types:Object;
      
      protected static var _listenerTypes:Object;
      
      protected static var _isLocal:Boolean;
      
      protected static var _extensions:Object;
      
      protected static var _globalRootLoader:LoaderMax;
      
      public static const version:Number = 1.87;
      
      protected static var _rootLookup:Dictionary;
      
      protected static var _loaderCount:uint = 0;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc2_)
      {
         version = 1.87;
         if(!(_loc1_ && _loc2_))
         {
            _loaderCount = 0;
            if(!_loc1_)
            {
               addr0040:
               _rootLookup = new Dictionary(false);
               if(_loc2_)
               {
                  _listenerTypes = {
                     "onOpen":"open",
                     "onInit":"init",
                     "onComplete":"complete",
                     "onProgress":"progress",
                     "onCancel":"cancel",
                     "onFail":"fail",
                     "onError":"error",
                     "onSecurityError":"securityError",
                     "onHTTPStatus":"httpStatus",
                     "onIOError":"ioError",
                     "onScriptAccessDenied":"scriptAccessDenied",
                     "onChildOpen":"childOpen",
                     "onChildCancel":"childCancel",
                     "onChildComplete":"childComplete",
                     "onChildProgress":"childProgress",
                     "onChildFail":"childFail",
                     "onRawLoad":"rawLoad",
                     "onUncaughtError":"uncaughtError"
                  };
                  if(_loc2_ || LoaderCore)
                  {
                     _types = {};
                     if(_loc2_ || LoaderCore)
                     {
                        addr00fe:
                        _extensions = {};
                     }
                     §§goto(addr0106);
                  }
               }
               §§goto(addr00fe);
            }
            §§goto(addr0106);
         }
         §§goto(addr0040);
      }
      addr0106:
      
      protected var _prePauseStatus:int;
      
      public var name:String;
      
      protected var _dispatchChildProgress:Boolean;
      
      protected var _status:int;
      
      protected var _type:String;
      
      protected var _auditedSize:Boolean;
      
      protected var _dispatchProgress:Boolean;
      
      public var vars:Object;
      
      protected var _cachedBytesTotal:uint;
      
      protected var _time:uint;
      
      protected var _content:*;
      
      protected var _rootLoader:LoaderMax;
      
      protected var _cacheIsDirty:Boolean;
      
      protected var _cachedBytesLoaded:uint;
      
      public var autoDispose:Boolean;
      
      public function LoaderCore(param1:Object = null)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:* = null;
         if(_loc5_)
         {
            super();
            if(!(_loc6_ && Boolean(this)))
            {
               §§push(this);
               if(!(_loc6_ && _loc3_))
               {
                  §§pop().vars = param1 != null ? param1 : {};
                  if(_loc5_ || Boolean(this))
                  {
                     if(this.vars.isGSVars)
                     {
                        if(!_loc6_)
                        {
                           §§goto(addr0074);
                        }
                        §§goto(addr02b2);
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr01ec);
               }
               §§goto(addr0046);
            }
            §§goto(addr0254);
         }
         addr0074:
         this.vars = this.vars.vars;
         if(!_loc6_)
         {
            addr0086:
            §§push(this);
            if(!(_loc6_ && _loc3_))
            {
               §§push(this.vars.name == undefined);
               if(_loc5_)
               {
                  §§push(!§§pop());
                  if(!(_loc6_ && Boolean(param1)))
                  {
                     var _temp_6:* = §§pop();
                     §§push(_temp_6);
                     if(_temp_6)
                     {
                        if(!(_loc6_ && Boolean(_loc2_)))
                        {
                           §§pop();
                           if(_loc5_ || Boolean(param1))
                           {
                              addr00ef:
                              §§push(String(this.vars.name) == "");
                              if(!_loc6_)
                              {
                                 addr00ee:
                                 §§push(!§§pop());
                              }
                              if(§§pop())
                              {
                                 addr00f3:
                                 §§push(this.vars.name);
                                 if(_loc5_ || Boolean(param1))
                                 {
                                 }
                              }
                              else
                              {
                                 §§push("loader");
                                 if(_loc5_ || Boolean(this))
                                 {
                                    var _loc3_:* = §§findproperty(_loaderCount);
                                    §§push(Number(_loc3_._loaderCount));
                                    if(_loc5_)
                                    {
                                       var _temp_12:* = §§pop();
                                       §§push(_temp_12);
                                       §§push(_temp_12);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc4_:* = §§pop();
                                       if(!_loc6_)
                                       {
                                          _loc3_._loaderCount = _loc4_;
                                       }
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§push(§§pop());
                              }
                              §§pop().name = §§pop();
                              if(_loc5_ || Boolean(param1))
                              {
                                 _cachedBytesLoaded = 0;
                                 if(_loc5_)
                                 {
                                    §§push(§§findproperty(_cachedBytesTotal));
                                    if(!(_loc6_ && Boolean(param1)))
                                    {
                                       if(uint(this.vars.estimatedBytes) != 0)
                                       {
                                          addr018d:
                                          §§push(uint(this.vars.estimatedBytes));
                                          if(!(_loc5_ || _loc3_))
                                          {
                                             addr01c1:
                                             §§push(§§pop());
                                          }
                                       }
                                       else
                                       {
                                          §§push(LoaderMax.defaultEstimatedBytes);
                                          if(!(_loc6_ && Boolean(param1)))
                                          {
                                             §§goto(addr01c1);
                                          }
                                       }
                                       §§pop()._cachedBytesTotal = §§pop();
                                       if(_loc5_)
                                       {
                                          this.autoDispose = Boolean(this.vars.autoDispose == true);
                                          if(_loc5_ || Boolean(this))
                                          {
                                             addr01ec:
                                             §§push(§§findproperty(_status));
                                             if(_loc5_ || Boolean(this))
                                             {
                                                if(this.vars.paused == true)
                                                {
                                                   addr020a:
                                                   §§push(LoaderStatus.PAUSED);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc6_)
                                                      {
                                                         addr0235:
                                                         §§push(§§pop());
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(LoaderStatus.READY);
                                                   if(_loc5_ || Boolean(param1))
                                                   {
                                                      §§goto(addr0235);
                                                   }
                                                }
                                                §§pop()._status = §§pop();
                                                if(_loc5_ || Boolean(_loc2_))
                                                {
                                                   _auditedSize = Boolean(uint(this.vars.estimatedBytes) != 0 && this.vars.auditSize != true);
                                                   addr0254:
                                                   if(_loc5_)
                                                   {
                                                      if(_globalRootLoader == null)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            if(this.vars.__isRoot == true)
                                                            {
                                                               if(_loc5_ || Boolean(this))
                                                               {
                                                                  addr02b2:
                                                                  return;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr02c1:
                                                               _globalRootLoader = new LoaderMax({
                                                                  "name":"root",
                                                                  "__isRoot":true
                                                               });
                                                               if(_loc5_)
                                                               {
                                                                  _isLocal = Boolean(Capabilities.playerType == "Desktop" || new LocalConnection().domain == "localhost");
                                                                  addr02e0:
                                                                  if(_loc5_ || Boolean(_loc2_))
                                                                  {
                                                                     addr031d:
                                                                     §§push(§§findproperty(_rootLoader));
                                                                     if(_loc5_ || Boolean(this))
                                                                     {
                                                                        §§pop()._rootLoader = this.vars.requireWithRoot is DisplayObject ? _rootLookup[this.vars.requireWithRoot] : _globalRootLoader;
                                                                        if(!(_loc6_ && Boolean(this)))
                                                                        {
                                                                           addr0367:
                                                                           §§push(_rootLoader);
                                                                           if(!(_loc6_ && Boolean(this)))
                                                                           {
                                                                              if(§§pop() == null)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    addr0383:
                                                                                    _rootLookup[this.vars.requireWithRoot] = _rootLoader = new LoaderMax();
                                                                                    if(!(_loc6_ && Boolean(param1)))
                                                                                    {
                                                                                       addr03b0:
                                                                                       §§push(_rootLoader);
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§push("subloaded_swf_");
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             if(this.vars.requireWithRoot.loaderInfo != null)
                                                                                             {
                                                                                                if(_loc5_ || Boolean(_loc2_))
                                                                                                {
                                                                                                   addr03fe:
                                                                                                   addr03e1:
                                                                                                   §§push(§§pop() + this.vars.requireWithRoot.loaderInfo.url);
                                                                                                }
                                                                                                §§pop().name = §§pop();
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   addr040b:
                                                                                                   _rootLoader.skipFailed = false;
                                                                                                   addr0408:
                                                                                                }
                                                                                                §§goto(addr040f);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(String(_loaderCount));
                                                                                             }
                                                                                             §§goto(addr03fe);
                                                                                          }
                                                                                          §§goto(addr03e1);
                                                                                       }
                                                                                       §§goto(addr040b);
                                                                                    }
                                                                                    §§goto(addr0408);
                                                                                 }
                                                                                 §§goto(addr03b0);
                                                                              }
                                                                              §§goto(addr040f);
                                                                           }
                                                                           §§goto(addr040b);
                                                                        }
                                                                        §§goto(addr040f);
                                                                     }
                                                                     §§goto(addr033c);
                                                                  }
                                                                  §§goto(addr0408);
                                                               }
                                                            }
                                                            §§goto(addr0367);
                                                         }
                                                         §§goto(addr0383);
                                                      }
                                                      §§goto(addr031d);
                                                   }
                                                   §§goto(addr0367);
                                                }
                                                §§goto(addr02c1);
                                             }
                                             §§goto(addr020a);
                                          }
                                          §§goto(addr02e0);
                                       }
                                       §§goto(addr0367);
                                    }
                                    §§goto(addr018d);
                                 }
                                 §§goto(addr02e0);
                              }
                              §§goto(addr0367);
                           }
                           §§goto(addr00f3);
                        }
                     }
                  }
                  §§goto(addr00ef);
               }
               §§goto(addr00ee);
            }
            §§goto(addr00f3);
         }
         addr040f:
         _loc3_ = 0;
         _loc4_ = _listenerTypes;
         for(_loc3_ in _loc4_)
         {
            §§push(_loc3_);
            if(_loc5_ || Boolean(param1))
            {
               _loc2_ = §§pop();
               if(_loc6_)
               {
                  continue;
               }
               §§push(_loc2_);
            }
            §§push(§§pop() in this.vars);
            if(_loc5_ || Boolean(_loc3_))
            {
               var _temp_33:* = §§pop();
               §§push(_temp_33);
               if(_temp_33)
               {
                  if(_loc5_)
                  {
                     addr0456:
                     §§pop();
                     if(_loc5_)
                     {
                        addr0468:
                        if(!(this.vars[_loc2_] is Function))
                        {
                           continue;
                        }
                        if(!(_loc5_ || Boolean(_loc3_)))
                        {
                           continue;
                        }
                     }
                     this.addEventListener(_listenerTypes[_loc2_],this.vars[_loc2_],false,0,true);
                     continue;
                  }
               }
               §§goto(addr0468);
            }
            §§goto(addr0456);
         }
         if(_loc5_)
         {
            _rootLoader.append(this);
         }
      }
      
      protected static function _activateClass(param1:String, param2:Class, param3:String) : Boolean
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(!_loc7_)
         {
            §§push(param1);
            if(!(_loc7_ && Boolean(param1)))
            {
               §§push("");
               if(!(_loc7_ && Boolean(param2)))
               {
                  if(§§pop() != §§pop())
                  {
                     if(!(_loc7_ && LoaderCore))
                     {
                        _types[param1.toLowerCase()] = param2;
                     }
                  }
                  addr0064:
                  addr0063:
                  §§push(param3);
                  §§push(",");
               }
               var _loc4_:Array = §§pop().split(§§pop());
               var _loc5_:* = int(_loc4_.length);
               while(true)
               {
                  §§push(_loc5_);
                  if(_loc6_ || Boolean(param3))
                  {
                     §§push(§§pop() - 1);
                     if(!_loc7_)
                     {
                        addr00b2:
                        var _temp_6:* = §§pop();
                        §§push(_temp_6);
                        §§push(_temp_6);
                        if(_loc6_ || LoaderCore)
                        {
                           §§push(§§pop());
                           if(_loc6_)
                           {
                              addr00c8:
                              _loc5_ = §§pop();
                              addr00ca:
                              §§push(-1);
                           }
                           if(§§pop() <= §§pop())
                           {
                              break;
                           }
                           _extensions[_loc4_[_loc5_]] = param2;
                           if(!_loc6_)
                           {
                              break;
                           }
                           continue;
                        }
                        §§goto(addr00c8);
                     }
                     §§goto(addr00ca);
                  }
                  §§goto(addr00b2);
               }
               return true;
            }
            §§goto(addr0064);
         }
         §§goto(addr0063);
      }
      
      protected function _errorHandler(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:Object = param1.target;
         if(_loc5_)
         {
            §§push(param1 is LoaderEvent);
            if(_loc5_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(_temp_2)
               {
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0041:
                     §§pop();
                     if(_loc5_)
                     {
                        _loc2_ = Boolean(this.hasOwnProperty("getChildren")) ? param1.target : this;
                        var _loc3_:* = "";
                        addr0051:
                        if(_loc5_ || Boolean(_loc3_))
                        {
                           §§push(Boolean(param1.hasOwnProperty("error")));
                           if(_loc5_)
                           {
                              var _temp_5:* = §§pop();
                              §§push(_temp_5);
                              §§push(_temp_5);
                              if(_loc5_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc5_)
                                    {
                                       §§pop();
                                       if(_loc5_)
                                       {
                                          §§push(Object(param1).error is Error);
                                          if(_loc5_)
                                          {
                                             addr00b1:
                                             if(§§pop())
                                             {
                                                if(_loc5_)
                                                {
                                                   §§push(Object(param1).error.message);
                                                   if(_loc5_ || Boolean(this))
                                                   {
                                                      _loc3_ = §§pop();
                                                      if(_loc5_ || Boolean(param1))
                                                      {
                                                         addr011b:
                                                         §§push(param1.type == LoaderEvent.ERROR);
                                                         if(!_loc4_)
                                                         {
                                                            §§push(!§§pop());
                                                            if(_loc5_)
                                                            {
                                                               addr0132:
                                                               var _temp_8:* = §§pop();
                                                               §§push(_temp_8);
                                                               §§push(_temp_8);
                                                               if(_loc5_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc4_ && Boolean(this)))
                                                                     {
                                                                        §§pop();
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr0152:
                                                                           §§push(param1.type == LoaderEvent.FAIL);
                                                                           if(_loc5_)
                                                                           {
                                                                              §§push(!§§pop());
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr0169:
                                                                                 var _temp_10:* = §§pop();
                                                                                 addr016a:
                                                                                 §§push(_temp_10);
                                                                                 if(_temp_10)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr0174:
                                                                                       §§pop();
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§goto(addr0183);
                                                                                       }
                                                                                       §§goto(addr0206);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr0183);
                                                                        }
                                                                        §§goto(addr01c5);
                                                                     }
                                                                     §§goto(addr0174);
                                                                  }
                                                                  §§goto(addr0169);
                                                               }
                                                               §§goto(addr016a);
                                                            }
                                                         }
                                                         addr0183:
                                                         if(this.hasEventListener(param1.type))
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               dispatchEvent(new LoaderEvent(param1.type,_loc2_,_loc3_,param1));
                                                               if(_loc5_ || Boolean(_loc3_))
                                                               {
                                                                  §§goto(addr01ad);
                                                               }
                                                               §§goto(addr01f2);
                                                            }
                                                            §§goto(addr0206);
                                                         }
                                                         addr01ad:
                                                         if(param1.type != "uncaughtError")
                                                         {
                                                            if(!(_loc4_ && Boolean(_loc3_)))
                                                            {
                                                               addr01c5:
                                                               trace("----\nError on " + this.toString() + ": " + _loc3_ + "\n----");
                                                               if(_loc5_)
                                                               {
                                                                  §§goto(addr01f2);
                                                               }
                                                               §§goto(addr0206);
                                                            }
                                                            addr01f2:
                                                            if(this.hasEventListener(LoaderEvent.ERROR))
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  addr0206:
                                                                  dispatchEvent(new LoaderEvent(LoaderEvent.ERROR,_loc2_,this.toString() + " > " + _loc3_,param1));
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr0225);
                                                      }
                                                      addr0225:
                                                      return;
                                                   }
                                                   addr0114:
                                                   _loc3_ = §§pop();
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr011b);
                                                   }
                                                   §§goto(addr0206);
                                                }
                                                §§goto(addr01f2);
                                             }
                                             else if(param1.hasOwnProperty("text"))
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§goto(addr0114);
                                                   §§push(Object(param1).text);
                                                }
                                                §§goto(addr0152);
                                             }
                                             §§goto(addr011b);
                                          }
                                          §§goto(addr0132);
                                       }
                                       §§goto(addr0152);
                                    }
                                    §§goto(addr0169);
                                 }
                                 §§goto(addr00b1);
                              }
                              §§goto(addr016a);
                           }
                           §§goto(addr0132);
                        }
                        §§goto(addr0152);
                     }
                     §§goto(addr0055);
                  }
               }
               §§goto(addr0051);
            }
            §§goto(addr0041);
         }
         §§goto(addr0055);
      }
      
      protected function _failHandler(param1:Event, param2:Boolean = true) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:Object = null;
         if(!_loc4_)
         {
            _dump(0,LoaderStatus.FAILED);
            if(!_loc4_)
            {
               if(param2)
               {
                  if(!_loc4_)
                  {
                     _errorHandler(param1);
                     if(!(_loc4_ && Boolean(_loc3_)))
                     {
                        dispatchEvent(new LoaderEvent(LoaderEvent.FAIL,param1 is LoaderEvent && Boolean(this.hasOwnProperty("getChildren")) ? param1.target : this,this.toString() + " > " + (param1 as Object).text,param1));
                        addr006a:
                     }
                  }
                  §§goto(addr00c0);
               }
               else
               {
                  _loc3_ = param1.target;
               }
               §§goto(addr006a);
            }
         }
         addr00c0:
      }
      
      protected function _completeHandler(param1:Event = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            _cachedBytesLoaded = _cachedBytesTotal;
            if(_loc2_)
            {
               if(_status != LoaderStatus.COMPLETED)
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     dispatchEvent(new LoaderEvent(LoaderEvent.PROGRESS,this));
                     §§goto(addr0047);
                  }
               }
               §§goto(addr00a8);
            }
            §§goto(addr00d5);
         }
         addr0047:
         if(!(_loc3_ && _loc3_))
         {
            _status = LoaderStatus.COMPLETED;
            if(!_loc3_)
            {
               _time = getTimer() - _time;
               if(!_loc3_)
               {
                  addr00a8:
                  dispatchEvent(new LoaderEvent(LoaderEvent.COMPLETE,this));
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.autoDispose)
                     {
                        if(_loc2_)
                        {
                           addr00d5:
                           dispose();
                        }
                     }
                     §§goto(addr00dc);
                  }
               }
               §§goto(addr00d5);
            }
         }
         addr00dc:
      }
      
      public function get rootLoader() : LoaderMax
      {
         return _rootLoader;
      }
      
      protected function _progressHandler(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(param1 is ProgressEvent);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     _cachedBytesLoaded = (param1 as ProgressEvent).bytesLoaded;
                     if(_loc2_)
                     {
                        _cachedBytesTotal = (param1 as ProgressEvent).bytesTotal;
                        if(_loc2_ || Boolean(this))
                        {
                           §§push(_auditedSize);
                           if(_loc2_ || Boolean(this))
                           {
                              if(!§§pop())
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    addr0079:
                                    _auditedSize = true;
                                    if(!_loc3_)
                                    {
                                       dispatchEvent(new Event("auditedSize"));
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          addr00ab:
                                          §§push(_dispatchProgress);
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop());
                                             if(_loc2_)
                                             {
                                                var _temp_5:* = §§pop();
                                                §§push(_temp_5);
                                                §§push(_temp_5);
                                                if(!_loc3_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc3_ && Boolean(this)))
                                                      {
                                                         §§goto(addr00d0);
                                                      }
                                                      §§goto(addr011d);
                                                   }
                                                   §§goto(addr00ed);
                                                }
                                                §§goto(addr00ee);
                                             }
                                             §§goto(addr00ed);
                                          }
                                          §§goto(addr011e);
                                       }
                                       §§goto(addr0111);
                                    }
                                    §§goto(addr00ab);
                                 }
                                 §§goto(addr00de);
                              }
                              §§goto(addr00ab);
                           }
                           §§goto(addr00ed);
                        }
                        §§goto(addr00de);
                     }
                     §§goto(addr00ab);
                  }
                  §§goto(addr0079);
               }
               §§goto(addr00ab);
            }
            addr00d0:
            §§pop();
            if(_loc2_ || Boolean(this))
            {
               addr00de:
               §§push(_status == LoaderStatus.LOADING);
               if(_loc2_)
               {
                  addr00ed:
                  var _temp_8:* = §§pop();
                  addr00ee:
                  §§push(_temp_8);
                  if(_temp_8)
                  {
                     if(!_loc3_)
                     {
                        §§pop();
                        if(!(_loc3_ && _loc3_))
                        {
                           addr011e:
                           addr0111:
                           §§push(_cachedBytesLoaded == _cachedBytesTotal);
                           if(_loc2_)
                           {
                              addr011d:
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 dispatchEvent(new LoaderEvent(LoaderEvent.PROGRESS,this));
                              }
                           }
                        }
                        §§goto(addr0142);
                     }
                     §§goto(addr011d);
                  }
               }
               §§goto(addr011e);
            }
            addr0142:
            return;
         }
         §§goto(addr00ab);
      }
      
      public function dispose(param1:Boolean = false) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(§§findproperty(_dump));
            if(_loc2_ || Boolean(this))
            {
               if(param1)
               {
                  addr003a:
                  §§push(3);
                  if(_loc2_)
                  {
                  }
               }
               else
               {
                  §§push(2);
               }
               §§pop()._dump(§§pop(),LoaderStatus.DISPOSED);
               §§goto(addr0051);
            }
            §§goto(addr003a);
         }
         addr0051:
      }
      
      public function get bytesTotal() : uint
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            if(_cacheIsDirty)
            {
               if(!_loc2_)
               {
                  _calculateProgress();
               }
            }
         }
         return _cachedBytesTotal;
      }
      
      public function resume() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.paused = false;
            if(!(_loc1_ && _loc2_))
            {
               load(false);
            }
         }
      }
      
      public function get paused() : Boolean
      {
         return Boolean(_status == LoaderStatus.PAUSED);
      }
      
      protected function _calculateProgress() : void
      {
      }
      
      public function get progress() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.bytesTotal);
            if(_loc2_ || _loc2_)
            {
               if(§§pop() != 0)
               {
                  if(_loc2_)
                  {
                     addr003d:
                     §§push(_cachedBytesLoaded / _cachedBytesTotal);
                     if(!(_loc1_ && Boolean(this)))
                     {
                        §§push(§§pop());
                        if(_loc1_)
                        {
                        }
                     }
                  }
                  else
                  {
                     addr0086:
                     §§push(1);
                     if(_loc2_ || _loc2_)
                     {
                        §§push(§§pop());
                        if(_loc1_ && _loc1_)
                        {
                        }
                     }
                     else
                     {
                        addr00a9:
                        return §§pop();
                     }
                  }
                  return §§pop();
               }
               §§push(_status);
               if(_loc2_ || Boolean(this))
               {
                  if(§§pop() == LoaderStatus.COMPLETED)
                  {
                     §§goto(addr0086);
                  }
                  else
                  {
                     §§push(0);
                  }
               }
               §§goto(addr00a9);
            }
            §§goto(addr003d);
         }
         §§goto(addr0086);
      }
      
      public function prioritize(param1:Boolean = true) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            dispatchEvent(new Event("prioritize"));
            if(_loc2_ || _loc3_)
            {
               addr0030:
               §§push(param1);
               if(!_loc3_)
               {
                  §§push(§§pop());
                  if(!(_loc3_ && _loc2_))
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     §§push(_temp_3);
                     if(!(_loc3_ && Boolean(this)))
                     {
                        if(§§pop())
                        {
                           if(_loc2_)
                           {
                              §§pop();
                              if(_loc2_ || _loc3_)
                              {
                                 §§push(_status);
                                 if(!_loc3_)
                                 {
                                    §§push(LoaderStatus.COMPLETED);
                                    if(_loc2_ || param1)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc2_ || _loc2_)
                                       {
                                          §§push(!§§pop());
                                          if(!(_loc3_ && param1))
                                          {
                                             addr00ae:
                                             var _temp_9:* = §§pop();
                                             addr00af:
                                             §§push(_temp_9);
                                             if(_temp_9)
                                             {
                                                if(!_loc3_)
                                                {
                                                   §§goto(addr00b8);
                                                }
                                             }
                                             §§goto(addr00eb);
                                          }
                                          addr00b8:
                                          §§pop();
                                          if(_loc2_ || Boolean(this))
                                          {
                                             addr00eb:
                                             addr00dc:
                                             addr00d6:
                                             addr00d3:
                                             §§push(_status == LoaderStatus.LOADING);
                                             if(_loc2_ || _loc2_)
                                             {
                                                addr00ea:
                                                §§push(!§§pop());
                                             }
                                             if(§§pop())
                                             {
                                                if(_loc2_)
                                                {
                                                   load(false);
                                                }
                                             }
                                          }
                                          §§goto(addr00fc);
                                       }
                                       §§goto(addr00ea);
                                    }
                                    §§goto(addr00dc);
                                 }
                                 §§goto(addr00d6);
                              }
                              addr00fc:
                              return;
                           }
                           §§goto(addr00eb);
                        }
                        §§goto(addr00ae);
                     }
                     §§goto(addr00af);
                  }
                  §§goto(addr00b8);
               }
               §§goto(addr00ae);
            }
            §§goto(addr00d3);
         }
         §§goto(addr0030);
      }
      
      override public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(_loc6_ || Boolean(param1))
         {
            §§push(param1);
            if(!_loc7_)
            {
               §§push(LoaderEvent.PROGRESS);
               if(_loc6_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc7_ && Boolean(param2)))
                     {
                        _dispatchProgress = true;
                        if(_loc7_)
                        {
                        }
                        addr00c5:
                        super.addEventListener(param1,param2,param3,param4,param5);
                     }
                     else
                     {
                        addr00b8:
                        _dispatchChildProgress = true;
                        if(_loc6_)
                        {
                           §§goto(addr00c5);
                        }
                     }
                  }
                  else
                  {
                     addr006d:
                     addr0067:
                     §§push(param1 == LoaderEvent.CHILD_PROGRESS);
                     if(_loc6_ || Boolean(param1))
                     {
                        var _temp_4:* = §§pop();
                        §§push(_temp_4);
                        if(_temp_4)
                        {
                           if(_loc6_ || Boolean(this))
                           {
                              §§goto(addr008f);
                           }
                        }
                        §§goto(addr00ae);
                     }
                     addr008f:
                     §§pop();
                     if(_loc6_ || Boolean(this))
                     {
                        addr00ae:
                        addr00a9:
                        if(this is LoaderMax)
                        {
                           if(_loc6_)
                           {
                              §§goto(addr00b8);
                           }
                        }
                        §§goto(addr00c5);
                     }
                     §§goto(addr00d0);
                  }
                  addr00d0:
                  return;
               }
               §§goto(addr006d);
            }
            §§goto(addr0067);
         }
         §§goto(addr00a9);
      }
      
      public function get bytesLoaded() : uint
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            if(_cacheIsDirty)
            {
               if(_loc2_)
               {
                  addr002a:
                  _calculateProgress();
               }
            }
            return _cachedBytesLoaded;
         }
         §§goto(addr002a);
      }
      
      protected function _dump(param1:int = 0, param2:int = 0, param3:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc5_:* = null;
         if(_loc9_)
         {
            _content = null;
         }
         var _loc4_:Boolean = Boolean(_status == LoaderStatus.LOADING);
         if(!(_loc8_ && Boolean(param1)))
         {
            §§push(_status);
            if(!_loc8_)
            {
               §§push(LoaderStatus.PAUSED);
               if(!_loc8_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc9_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     §§push(_temp_3);
                     if(_loc9_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc8_ && Boolean(param1)))
                           {
                              §§pop();
                              if(!(_loc8_ && Boolean(this)))
                              {
                                 §§push(param2);
                                 if(!(_loc8_ && Boolean(this)))
                                 {
                                    §§push(LoaderStatus.PAUSED);
                                    if(_loc9_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(!(_loc8_ && Boolean(this)))
                                       {
                                          §§push(!§§pop());
                                          if(!(_loc8_ && Boolean(this)))
                                          {
                                             addr00c5:
                                             var _temp_9:* = §§pop();
                                             §§push(_temp_9);
                                             §§push(_temp_9);
                                             if(!(_loc8_ && param3))
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      addr00de:
                                                      §§pop();
                                                      if(!(_loc8_ && Boolean(param2)))
                                                      {
                                                         §§push(param2);
                                                         if(_loc9_ || param3)
                                                         {
                                                            §§push(LoaderStatus.FAILED);
                                                            if(_loc9_)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(!_loc8_)
                                                               {
                                                                  addr010f:
                                                                  §§push(!§§pop());
                                                                  if(_loc9_)
                                                                  {
                                                                     §§goto(addr0116);
                                                                  }
                                                                  §§goto(addr0185);
                                                               }
                                                               §§goto(addr027a);
                                                            }
                                                            §§goto(addr0256);
                                                         }
                                                         §§goto(addr03b3);
                                                      }
                                                      §§goto(addr017d);
                                                   }
                                                   §§goto(addr010f);
                                                }
                                                addr0116:
                                                if(§§pop())
                                                {
                                                   if(_loc9_ || Boolean(param2))
                                                   {
                                                      _prePauseStatus = param2;
                                                      if(!_loc8_)
                                                      {
                                                         addr017d:
                                                         §§push(_loc4_);
                                                         if(!_loc8_)
                                                         {
                                                            addr0185:
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc8_ && Boolean(param2)))
                                                               {
                                                                  addr0197:
                                                                  _time = getTimer() - _time;
                                                                  if(!_loc8_)
                                                                  {
                                                                     addr01ae:
                                                                     §§push(_dispatchProgress);
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc9_ || param3)
                                                                        {
                                                                           addr01c6:
                                                                           var _temp_16:* = §§pop();
                                                                           §§push(_temp_16);
                                                                           §§push(_temp_16);
                                                                           if(!(_loc8_ && Boolean(param2)))
                                                                           {
                                                                              addr01d5:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc9_ || Boolean(param1))
                                                                                 {
                                                                                    §§pop();
                                                                                    if(!(_loc8_ && Boolean(param2)))
                                                                                    {
                                                                                       §§push(param3);
                                                                                       if(!(_loc8_ && Boolean(param2)))
                                                                                       {
                                                                                          §§push(!§§pop());
                                                                                          if(_loc9_ || param3)
                                                                                          {
                                                                                             addr021f:
                                                                                             var _temp_22:* = §§pop();
                                                                                             addr0220:
                                                                                             §§push(_temp_22);
                                                                                             if(_temp_22)
                                                                                             {
                                                                                                if(!(_loc8_ && Boolean(param2)))
                                                                                                {
                                                                                                   addr0232:
                                                                                                   §§pop();
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      §§push(_status);
                                                                                                      if(!(_loc8_ && Boolean(param1)))
                                                                                                      {
                                                                                                         §§push(LoaderStatus.FAILED);
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            addr0256:
                                                                                                            §§push(§§pop() < §§pop());
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               addr025d:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     §§push(this is LoaderMax);
                                                                                                                     if(!(_loc8_ && Boolean(param1)))
                                                                                                                     {
                                                                                                                        addr027a:
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc9_ || Boolean(param1))
                                                                                                                           {
                                                                                                                              addr028c:
                                                                                                                              _calculateProgress();
                                                                                                                              if(!(_loc8_ && Boolean(param1)))
                                                                                                                              {
                                                                                                                                 §§goto(addr02bb);
                                                                                                                              }
                                                                                                                              §§goto(addr0399);
                                                                                                                           }
                                                                                                                           §§goto(addr02bb);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           _cachedBytesLoaded = 0;
                                                                                                                           if(!(_loc8_ && Boolean(param2)))
                                                                                                                           {
                                                                                                                              addr02bb:
                                                                                                                              dispatchEvent(new LoaderEvent(LoaderEvent.PROGRESS,this));
                                                                                                                              if(_loc9_ || Boolean(param2))
                                                                                                                              {
                                                                                                                                 addr02dc:
                                                                                                                                 §§push(param3);
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    addr02e3:
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc9_ || Boolean(param2))
                                                                                                                                       {
                                                                                                                                          addr02f5:
                                                                                                                                          §§push(_loc4_);
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr02fd);
                                                                                                                                          }
                                                                                                                                          §§goto(addr039a);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0399);
                                                                                                                                    }
                                                                                                                                    §§goto(addr037a);
                                                                                                                                 }
                                                                                                                                 addr02fd:
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc9_ || Boolean(param1))
                                                                                                                                    {
                                                                                                                                       addr030f:
                                                                                                                                       dispatchEvent(new LoaderEvent(LoaderEvent.CANCEL,this));
                                                                                                                                       if(!(_loc8_ && Boolean(this)))
                                                                                                                                       {
                                                                                                                                          §§goto(addr0330);
                                                                                                                                       }
                                                                                                                                       §§goto(addr037a);
                                                                                                                                    }
                                                                                                                                    §§goto(addr03a4);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr0330);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr030f);
                                                                                                                     }
                                                                                                                     §§goto(addr02fd);
                                                                                                                  }
                                                                                                                  §§goto(addr028c);
                                                                                                               }
                                                                                                               §§goto(addr02dc);
                                                                                                            }
                                                                                                            §§goto(addr02e3);
                                                                                                         }
                                                                                                         §§goto(addr0347);
                                                                                                      }
                                                                                                      §§goto(addr03b3);
                                                                                                   }
                                                                                                   §§goto(addr028c);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr025d);
                                                                                       }
                                                                                       §§goto(addr0232);
                                                                                    }
                                                                                    §§goto(addr0330);
                                                                                 }
                                                                                 §§goto(addr039a);
                                                                              }
                                                                              §§goto(addr021f);
                                                                           }
                                                                           §§goto(addr0220);
                                                                        }
                                                                        §§goto(addr0232);
                                                                     }
                                                                     §§goto(addr01c6);
                                                                  }
                                                                  §§goto(addr030f);
                                                               }
                                                               §§goto(addr0330);
                                                            }
                                                            §§goto(addr01ae);
                                                         }
                                                         §§goto(addr0232);
                                                      }
                                                      §§goto(addr03b1);
                                                   }
                                                   addr0330:
                                                   §§push(param1);
                                                   if(_loc9_ || param3)
                                                   {
                                                      §§push(2);
                                                      if(_loc9_)
                                                      {
                                                         addr0347:
                                                         if(§§pop() != §§pop())
                                                         {
                                                            if(!(_loc8_ && Boolean(this)))
                                                            {
                                                               dispatchEvent(new LoaderEvent(LoaderEvent.UNLOAD,this));
                                                               if(!(_loc8_ && Boolean(this)))
                                                               {
                                                                  addr037a:
                                                                  §§push(param2);
                                                                  if(!(_loc8_ && Boolean(this)))
                                                                  {
                                                                     §§goto(addr038f);
                                                                  }
                                                                  §§goto(addr03b3);
                                                               }
                                                            }
                                                            §§goto(addr0399);
                                                         }
                                                         §§goto(addr037a);
                                                      }
                                                      addr038f:
                                                   }
                                                   §§goto(addr0389);
                                                }
                                                else
                                                {
                                                   §§push(_status);
                                                   if(!(_loc8_ && Boolean(param2)))
                                                   {
                                                      addr014a:
                                                      §§push(LoaderStatus.DISPOSED);
                                                      if(!(_loc8_ && Boolean(param1)))
                                                      {
                                                         addr015e:
                                                         if(§§pop() != §§pop())
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               _status = param2;
                                                               if(_loc9_ || Boolean(param2))
                                                               {
                                                                  §§goto(addr017d);
                                                               }
                                                               §§goto(addr02f5);
                                                            }
                                                            §§goto(addr01ae);
                                                         }
                                                         §§goto(addr017d);
                                                      }
                                                      §§goto(addr038f);
                                                   }
                                                }
                                                addr0389:
                                                if(§§pop() == LoaderStatus.DISPOSED)
                                                {
                                                   if(_loc9_)
                                                   {
                                                      addr0399:
                                                      addr039a:
                                                      if(!param3)
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            addr03a4:
                                                            dispatchEvent(new Event("dispose"));
                                                         }
                                                      }
                                                      addr03b3:
                                                      var _loc6_:* = 0;
                                                      var _loc7_:* = _listenerTypes;
                                                      addr03b1:
                                                      for(_loc6_ in _loc7_)
                                                      {
                                                         §§push(_loc6_);
                                                         if(_loc9_)
                                                         {
                                                            _loc5_ = §§pop();
                                                            §§push(_loc5_);
                                                         }
                                                         §§push(§§pop() in this.vars);
                                                         if(_loc9_ || Boolean(param2))
                                                         {
                                                            var _temp_38:* = §§pop();
                                                            §§push(_temp_38);
                                                            if(_temp_38)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  addr03ed:
                                                                  §§pop();
                                                                  if(_loc8_ && param3)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(this.vars[_loc5_] is Function);
                                                               }
                                                            }
                                                            if(§§pop())
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  this.removeEventListener(_listenerTypes[_loc5_],this.vars[_loc5_]);
                                                               }
                                                            }
                                                            continue;
                                                         }
                                                         §§goto(addr03ed);
                                                      }
                                                      §§goto(addr043c);
                                                   }
                                                   §§goto(addr03a4);
                                                }
                                                addr043c:
                                                return;
                                             }
                                             §§goto(addr0220);
                                          }
                                          §§goto(addr0185);
                                       }
                                       §§goto(addr00de);
                                    }
                                    §§goto(addr015e);
                                 }
                                 §§goto(addr03b3);
                              }
                              §§goto(addr0399);
                           }
                           §§goto(addr027a);
                        }
                        §§goto(addr00c5);
                     }
                     §§goto(addr01d5);
                  }
                  §§goto(addr021f);
               }
               §§goto(addr038f);
            }
            §§goto(addr014a);
         }
         §§goto(addr0197);
      }
      
      protected function _load() : void
      {
      }
      
      public function get loadTime() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(_status);
            if(_loc1_)
            {
               §§push(LoaderStatus.READY);
               if(!(_loc2_ && _loc1_))
               {
                  if(§§pop() == §§pop())
                  {
                     if(!_loc2_)
                     {
                        §§push(0);
                        if(_loc1_ || _loc2_)
                        {
                           §§goto(addr0052);
                        }
                        else
                        {
                           addr0063:
                           addr0069:
                           if(§§pop() == LoaderStatus.LOADING)
                           {
                              if(_loc1_ || _loc1_)
                              {
                                 §§push(getTimer() - _time);
                                 if(_loc1_ || _loc1_)
                                 {
                                    §§push(§§pop() / 1000);
                                    if(_loc2_)
                                    {
                                       §§goto(addr00ad);
                                    }
                                 }
                                 return §§pop();
                              }
                              addr00a6:
                              §§push(_time / 1000);
                              addr00ad:
                              return §§pop();
                           }
                        }
                     }
                     §§goto(addr00a6);
                  }
                  else
                  {
                     §§push(_status);
                  }
                  §§goto(addr0063);
               }
               §§goto(addr0069);
            }
            addr0052:
            return §§pop();
         }
         §§goto(addr00a6);
      }
      
      public function get auditedSize() : Boolean
      {
         return _auditedSize;
      }
      
      public function set paused(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            §§push(param1);
            if(!(_loc3_ && Boolean(this)))
            {
               §§push(§§pop());
               if(!_loc3_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  §§push(_temp_3);
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc2_ || param1)
                        {
                           §§pop();
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(_status);
                              if(_loc2_)
                              {
                                 §§push(LoaderStatus.PAUSED);
                                 if(!(_loc3_ && param1))
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(!_loc3_)
                                    {
                                       addr0079:
                                       §§push(!§§pop());
                                       if(_loc2_ || _loc3_)
                                       {
                                          addr0087:
                                          if(§§pop())
                                          {
                                             if(_loc2_)
                                             {
                                                _prePauseStatus = _status;
                                                if(!_loc3_)
                                                {
                                                   §§push(_status);
                                                   if(_loc2_)
                                                   {
                                                      §§push(LoaderStatus.LOADING);
                                                      if(!_loc3_)
                                                      {
                                                         addr00b1:
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               _dump(0,LoaderStatus.PAUSED);
                                                               if(_loc2_)
                                                               {
                                                                  §§goto(addr00e5);
                                                               }
                                                            }
                                                            §§goto(addr015b);
                                                         }
                                                         addr00e5:
                                                         _status = LoaderStatus.PAUSED;
                                                         if(_loc3_ && _loc2_)
                                                         {
                                                            addr015b:
                                                            addr0164:
                                                            addr015e:
                                                            if(_prePauseStatus == LoaderStatus.LOADING)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  load(false);
                                                                  if(_loc3_ && param1)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(§§findproperty(_status));
                                                               if(_loc2_ || _loc2_)
                                                               {
                                                                  §§push(_prePauseStatus);
                                                                  if(_loc2_ || param1)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc2_)
                                                                     {
                                                                        var _temp_13:* = §§pop();
                                                                        §§push(_temp_13);
                                                                        if(!_temp_13)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr01c2:
                                                                              §§pop();
                                                                              addr01c3:
                                                                              §§push(LoaderStatus.READY);
                                                                              if(_loc2_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§pop()._status = §§pop();
                                                                     §§goto(addr01d2);
                                                                  }
                                                                  §§goto(addr01c2);
                                                               }
                                                               §§goto(addr01c3);
                                                            }
                                                         }
                                                         §§goto(addr01d2);
                                                      }
                                                      §§goto(addr0164);
                                                   }
                                                   §§goto(addr015e);
                                                }
                                                §§goto(addr015b);
                                             }
                                          }
                                          else
                                          {
                                             §§push(param1);
                                             if(_loc2_)
                                             {
                                                addr0108:
                                                §§push(!§§pop());
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   addr0116:
                                                   var _temp_15:* = §§pop();
                                                   addr0117:
                                                   §§push(_temp_15);
                                                   if(_temp_15)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         addr0120:
                                                         §§pop();
                                                         if(!_loc3_)
                                                         {
                                                            §§push(_status);
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               addr0136:
                                                               §§push(LoaderStatus.PAUSED);
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  §§goto(addr014a);
                                                               }
                                                               §§goto(addr0164);
                                                            }
                                                            §§goto(addr015e);
                                                         }
                                                         §§goto(addr015b);
                                                      }
                                                   }
                                                }
                                             }
                                             addr014a:
                                             if(§§pop() == §§pop())
                                             {
                                                if(_loc2_ || Boolean(this))
                                                {
                                                   §§goto(addr015b);
                                                }
                                             }
                                             §§goto(addr01d2);
                                          }
                                          §§goto(addr01d2);
                                       }
                                       §§goto(addr0120);
                                    }
                                    §§goto(addr0116);
                                 }
                                 §§goto(addr00b1);
                              }
                              §§goto(addr0136);
                           }
                           §§goto(addr01d2);
                        }
                        §§goto(addr0079);
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr0117);
               }
               §§goto(addr0108);
            }
            §§goto(addr0120);
         }
         addr01d2:
      }
      
      protected function _passThroughEvent(param1:Event) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:* = param1.type;
         var _loc3_:Object = this;
         if(_loc4_ || Boolean(param1))
         {
            if(this.hasOwnProperty("getChildren"))
            {
               if(_loc4_)
               {
                  if(param1 is LoaderEvent)
                  {
                     if(!_loc5_)
                     {
                        _loc3_ = param1.target;
                        addr0055:
                        §§push(_loc2_);
                        if(!(_loc5_ && Boolean(param1)))
                        {
                           §§push("complete");
                           if(!_loc5_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    §§push("childComplete");
                                    if(!(_loc5_ && Boolean(_loc3_)))
                                    {
                                       _loc2_ = §§pop();
                                       if(!_loc5_)
                                       {
                                          addr014a:
                                          if(this.hasEventListener(_loc2_))
                                          {
                                             if(_loc4_)
                                             {
                                                dispatchEvent(new LoaderEvent(_loc2_,_loc3_,param1.hasOwnProperty("text") ? Object(param1).text : "",param1 is LoaderEvent && LoaderEvent(param1).data != null ? LoaderEvent(param1).data : param1));
                                                addr0159:
                                             }
                                          }
                                       }
                                       §§goto(addr01bd);
                                    }
                                    else
                                    {
                                       addr00c6:
                                       _loc2_ = §§pop();
                                       if(_loc5_ && Boolean(this))
                                       {
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(_loc2_);
                                 if(!(_loc5_ && Boolean(param1)))
                                 {
                                    addr00a2:
                                    §§push("open");
                                    if(_loc4_ || Boolean(param1))
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc4_)
                                          {
                                             §§push("childOpen");
                                             if(_loc4_)
                                             {
                                                §§goto(addr00c6);
                                             }
                                             else
                                             {
                                                addr010f:
                                                _loc2_ = §§pop();
                                                if(_loc5_ && Boolean(param1))
                                                {
                                                }
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(_loc2_);
                                          if(!(_loc5_ && Boolean(param1)))
                                          {
                                             addr00f3:
                                             §§push("cancel");
                                             if(!_loc5_)
                                             {
                                                addr00fc:
                                                if(§§pop() == §§pop())
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      §§push("childCancel");
                                                      if(!_loc5_)
                                                      {
                                                         §§goto(addr010f);
                                                      }
                                                      else
                                                      {
                                                         addr013b:
                                                         _loc2_ = §§pop();
                                                         if(_loc4_ || Boolean(param1))
                                                         {
                                                            §§goto(addr014a);
                                                         }
                                                      }
                                                      addr01bd:
                                                      return;
                                                   }
                                                }
                                                else
                                                {
                                                   addr0126:
                                                   addr0123:
                                                   if(_loc2_ == "fail")
                                                   {
                                                      if(!(_loc5_ && Boolean(this)))
                                                      {
                                                         §§goto(addr013b);
                                                         §§push("childFail");
                                                      }
                                                      §§goto(addr0159);
                                                   }
                                                }
                                                §§goto(addr014a);
                                             }
                                             §§goto(addr0126);
                                          }
                                          §§goto(addr0123);
                                       }
                                       §§goto(addr014a);
                                    }
                                    §§goto(addr0126);
                                 }
                                 §§goto(addr00f3);
                              }
                              §§goto(addr014a);
                           }
                           §§goto(addr00fc);
                        }
                        §§goto(addr00a2);
                     }
                     §§goto(addr014a);
                  }
                  §§goto(addr0055);
               }
            }
         }
         §§goto(addr014a);
      }
      
      public function load(param1:Boolean = false) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:uint = uint(getTimer());
         if(_loc3_ || Boolean(_loc2_))
         {
            §§push(this.status);
            if(_loc3_ || Boolean(_loc2_))
            {
               §§push(LoaderStatus.PAUSED);
               if(_loc3_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc3_)
                     {
                        §§push(§§findproperty(_status));
                        if(!(_loc4_ && Boolean(this)))
                        {
                           §§push(_prePauseStatus);
                           if(_loc3_ || Boolean(_loc2_))
                           {
                              if(§§pop() <= LoaderStatus.LOADING)
                              {
                                 addr007b:
                                 §§push(LoaderStatus.READY);
                                 if(_loc3_)
                                 {
                                    §§push(§§pop());
                                    if(_loc3_)
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(_prePauseStatus);
                                 if(_loc3_ || param1)
                                 {
                                    §§push(§§pop());
                                 }
                              }
                           }
                           §§pop()._status = §§pop();
                           if(_loc3_)
                           {
                              §§push(_status);
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 §§push(LoaderStatus.READY);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(_loc3_)
                                    {
                                       var _temp_7:* = §§pop();
                                       §§push(_temp_7);
                                       §§push(_temp_7);
                                       if(_loc3_ || Boolean(_loc2_))
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc4_ && Boolean(this)))
                                             {
                                                §§pop();
                                                if(!_loc4_)
                                                {
                                                   §§push(this is LoaderMax);
                                                   if(!_loc4_)
                                                   {
                                                      addr00fe:
                                                      if(§§pop())
                                                      {
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            addr010f:
                                                            §§push(_loc2_);
                                                            if(_loc3_ || Boolean(this))
                                                            {
                                                               §§push(§§pop() - _time);
                                                               if(!_loc4_)
                                                               {
                                                                  addr0133:
                                                                  _loc2_ = §§pop();
                                                                  if(_loc3_)
                                                                  {
                                                                     addr0139:
                                                                     §§push(param1);
                                                                     if(_loc3_ || Boolean(this))
                                                                     {
                                                                        addr0147:
                                                                        §§push(§§pop());
                                                                        if(_loc3_ || Boolean(_loc2_))
                                                                        {
                                                                           var _temp_14:* = §§pop();
                                                                           addr0156:
                                                                           §§push(_temp_14);
                                                                           if(!_temp_14)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr0160:
                                                                                 §§pop();
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§push(_status);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       addr016e:
                                                                                       §§push(LoaderStatus.FAILED);
                                                                                       if(_loc3_ || Boolean(_loc2_))
                                                                                       {
                                                                                          addr0182:
                                                                                          addr0181:
                                                                                          if(§§pop() == §§pop())
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                _dump(1,LoaderStatus.READY);
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   addr019f:
                                                                                                   §§push(_status);
                                                                                                   if(!(_loc4_ && param1))
                                                                                                   {
                                                                                                      §§push(LoaderStatus.READY);
                                                                                                      if(!(_loc4_ && param1))
                                                                                                      {
                                                                                                         if(§§pop() == §§pop())
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               addr01ce:
                                                                                                               _status = LoaderStatus.LOADING;
                                                                                                               if(_loc3_ || Boolean(this))
                                                                                                               {
                                                                                                                  addr01e7:
                                                                                                                  _time = _loc2_;
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     §§goto(addr01f3);
                                                                                                                  }
                                                                                                                  §§goto(addr021f);
                                                                                                               }
                                                                                                               addr01f3:
                                                                                                               _load();
                                                                                                               if(!(_loc4_ && param1))
                                                                                                               {
                                                                                                                  addr0208:
                                                                                                                  addr020c:
                                                                                                                  if(this.progress < 1)
                                                                                                                  {
                                                                                                                     if(_loc3_ || _loc3_)
                                                                                                                     {
                                                                                                                        dispatchEvent(new LoaderEvent(LoaderEvent.OPEN,this));
                                                                                                                        addr021f:
                                                                                                                        if(_loc4_ && Boolean(_loc2_))
                                                                                                                        {
                                                                                                                           addr026b:
                                                                                                                           _completeHandler(null);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr0273);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr0259:
                                                                                                            addr0253:
                                                                                                            if(_status == LoaderStatus.COMPLETED)
                                                                                                            {
                                                                                                               if(!(_loc4_ && _loc3_))
                                                                                                               {
                                                                                                                  §§goto(addr026b);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr0273:
                                                                                                         return;
                                                                                                      }
                                                                                                      §§goto(addr0259);
                                                                                                   }
                                                                                                   §§goto(addr0253);
                                                                                                }
                                                                                                §§goto(addr01ce);
                                                                                             }
                                                                                             §§goto(addr0208);
                                                                                          }
                                                                                          §§goto(addr019f);
                                                                                       }
                                                                                       §§goto(addr0259);
                                                                                    }
                                                                                    §§goto(addr0253);
                                                                                 }
                                                                                 §§goto(addr01e7);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr0182);
                                                                     }
                                                                     §§goto(addr0160);
                                                                  }
                                                                  §§goto(addr01ce);
                                                               }
                                                               §§goto(addr020c);
                                                            }
                                                            §§goto(addr0133);
                                                         }
                                                      }
                                                      §§goto(addr0139);
                                                   }
                                                   §§goto(addr0147);
                                                }
                                                §§goto(addr010f);
                                             }
                                             §§goto(addr0147);
                                          }
                                          §§goto(addr00fe);
                                       }
                                       §§goto(addr0156);
                                    }
                                    §§goto(addr0182);
                                 }
                                 §§goto(addr0181);
                              }
                              §§goto(addr016e);
                           }
                           §§goto(addr01ce);
                        }
                        §§goto(addr007b);
                     }
                     §§goto(addr01e7);
                  }
                  §§goto(addr0139);
               }
               §§goto(addr0181);
            }
            §§goto(addr016e);
         }
         §§goto(addr021f);
      }
      
      override public function toString() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(_type + " \'");
         if(!(_loc2_ && _loc2_))
         {
            §§push(§§pop() + this.name);
            if(!_loc2_)
            {
               §§push("\'");
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§§pop() + §§pop());
                  if(!(_loc2_ && _loc2_))
                  {
                     if(this is LoaderItem)
                     {
                        if(!_loc2_)
                        {
                           addr0066:
                           §§push(" (");
                           if(_loc1_ || _loc2_)
                           {
                              addr0081:
                              §§push(§§pop() + (this as LoaderItem).url);
                              if(!_loc2_)
                              {
                                 §§goto(addr00a1);
                              }
                           }
                           §§goto(addr0098);
                        }
                        §§goto(addr00a1);
                     }
                     else
                     {
                        §§push("");
                     }
                     §§goto(addr009f);
                  }
                  §§goto(addr00a1);
               }
               §§goto(addr0081);
            }
            addr00a1:
            return §§pop() + ")" + (!_loc2_ ? §§pop() : §§pop());
         }
         §§goto(addr0066);
      }
      
      public function get status() : int
      {
         return _status;
      }
      
      public function pause() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            this.paused = true;
         }
      }
      
      public function get content() : *
      {
         return _content;
      }
      
      public function cancel() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            if(_status == LoaderStatus.LOADING)
            {
               if(_loc2_ || Boolean(this))
               {
                  addr003a:
                  _dump(0,LoaderStatus.READY);
               }
            }
            return;
         }
         §§goto(addr003a);
      }
      
      public function auditSize() : void
      {
      }
      
      public function unload() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            _dump(1,LoaderStatus.READY);
         }
      }
   }
}

