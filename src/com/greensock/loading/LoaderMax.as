package com.greensock.loading
{
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.LoaderCore;
   import com.greensock.loading.core.LoaderItem;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.utils.Dictionary;
   
   public class LoaderMax extends LoaderCore
   {
      
      public static var defaultContext:LoaderContext;
      
      public static var contentDisplayClass:Class;
      
      public static var defaultEstimatedBytes:uint = 20000;
      
      public static const version:Number = 1.883;
      
      public static var defaultAuditSize:Boolean = true;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc2_))
      {
         version = 1.883;
         if(!_loc2_)
         {
            defaultEstimatedBytes = 20000;
            if(_loc1_)
            {
               addr0043:
               defaultAuditSize = true;
            }
         }
         return;
      }
      §§goto(addr0043);
      
      protected var _loaders:Array;
      
      public var skipPaused:Boolean;
      
      public var maxConnections:uint;
      
      protected var _activeLoaders:Dictionary;
      
      public var skipFailed:Boolean;
      
      public var autoLoad:Boolean;
      
      public function LoaderMax(param1:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:int = 0;
         if(_loc3_ || Boolean(this))
         {
            super(param1);
            if(!(_loc4_ && Boolean(param1)))
            {
               _type = "LoaderMax";
               if(_loc3_)
               {
                  _loaders = [];
                  if(_loc3_)
                  {
                     _activeLoaders = new Dictionary();
                     if(!_loc4_)
                     {
                        this.skipFailed = Boolean(this.vars.skipFailed != false);
                        if(_loc3_)
                        {
                           addr007a:
                           this.skipPaused = Boolean(this.vars.skipPaused != false);
                           if(_loc3_ || Boolean(_loc2_))
                           {
                              this.autoLoad = Boolean(this.vars.autoLoad == true);
                              if(_loc3_ || Boolean(_loc2_))
                              {
                                 §§push(this);
                                 if(!(_loc4_ && Boolean(this)))
                                 {
                                    if("maxConnections" in this.vars)
                                    {
                                       addr00e5:
                                       §§push(uint(this.vars.maxConnections));
                                       if(_loc3_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       §§push(2);
                                    }
                                    §§pop().maxConnections = §§pop();
                                    if(_loc3_)
                                    {
                                       §§goto(addr0107);
                                    }
                                    §§goto(addr012f);
                                 }
                                 §§goto(addr00e5);
                              }
                           }
                           §§goto(addr012f);
                        }
                        §§goto(addr0158);
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr012f);
               }
               §§goto(addr007a);
            }
         }
         addr0107:
         if(this.vars.loaders is Array)
         {
            if(_loc3_ || Boolean(param1))
            {
               addr012f:
               _loc2_ = 0;
            }
            while(_loc2_ < this.vars.loaders.length)
            {
               insert(this.vars.loaders[_loc2_],_loc2_);
               if(!_loc4_)
               {
                  _loc2_++;
                  if(_loc4_)
                  {
                     break;
                  }
               }
            }
            addr0158:
         }
      }
      
      public static function getContent(param1:String) : *
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            return _globalRootLoader != null ? _globalRootLoader.getContent(param1) : null;
         }
         §§goto(addr001e);
      }
      
      public static function getLoader(param1:String) : *
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            return _globalRootLoader != null ? _globalRootLoader.getLoader(param1) : null;
         }
         §§goto(addr0025);
      }
      
      public static function parse(param1:*, param2:Object = null, param3:Object = null) : *
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc4_:LoaderMax = null;
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         if(!_loc8_)
         {
            if(!(param1 is Array))
            {
               §§push(param1 is String);
               if(!(_loc8_ && LoaderMax))
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(!_temp_3)
                  {
                     if(!(_loc8_ && Boolean(param3)))
                     {
                        §§pop();
                        if(!_loc8_)
                        {
                           §§push(param1 is URLRequest);
                           if(_loc9_)
                           {
                              addr00c4:
                              if(§§pop())
                              {
                                 if(!(_loc8_ && Boolean(param2)))
                                 {
                                    §§push(param1 is String);
                                    if(!_loc8_)
                                    {
                                       addr00e0:
                                       if(§§pop())
                                       {
                                          if(_loc9_ || LoaderMax)
                                          {
                                             addr00f2:
                                             §§push(param1);
                                             if(_loc9_ || param1)
                                             {
                                                addr0124:
                                                §§push(§§pop());
                                                if(_loc9_ || Boolean(param3))
                                                {
                                                   var _temp_9:* = §§pop();
                                                   §§push(_temp_9);
                                                   §§push(_temp_9);
                                                   if(!(_loc8_ && param1))
                                                   {
                                                      _loc7_ = §§pop();
                                                      if(!(_loc8_ && LoaderMax))
                                                      {
                                                         §§push(§§pop().toLowerCase().split("?")[0]);
                                                         if(_loc9_ || LoaderMax)
                                                         {
                                                            addr0172:
                                                            var _temp_13:* = §§pop();
                                                            §§push(_temp_13);
                                                            §§push(_temp_13);
                                                            if(_loc9_ || Boolean(param2))
                                                            {
                                                               addr0181:
                                                               _loc7_ = §§pop();
                                                               §§push(_loc7_);
                                                               if(!_loc8_)
                                                               {
                                                                  §§goto(addr01ab);
                                                               }
                                                            }
                                                            §§goto(addr01a9);
                                                         }
                                                         addr01ab:
                                                         §§push(§§pop().substr(§§pop().lastIndexOf(".") + 1));
                                                         if(_loc9_ || Boolean(param3))
                                                         {
                                                            addr01a8:
                                                            var _temp_17:* = §§pop();
                                                            addr01a9:
                                                            _loc7_ = §§pop();
                                                            §§push(_loc7_);
                                                         }
                                                         §§push(§§pop() in _extensions);
                                                         if(_loc9_ || param1)
                                                         {
                                                            addr01bd:
                                                            if(§§pop())
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  return new _extensions[_loc7_](param1,param2);
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr01f6:
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc8_ && Boolean(param2)))
                                                               {
                                                                  §§goto(addr0208);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr020e);
                                                      }
                                                      §§goto(addr01a8);
                                                   }
                                                   §§goto(addr0181);
                                                }
                                                §§goto(addr0172);
                                             }
                                             §§goto(addr01a8);
                                          }
                                          addr0208:
                                          return param1 as LoaderCore;
                                       }
                                       §§push(URLRequest(param1).url);
                                       if(_loc9_)
                                       {
                                          §§goto(addr0124);
                                       }
                                       §§goto(addr0172);
                                    }
                                    §§goto(addr01bd);
                                 }
                                 §§goto(addr00f2);
                              }
                              else
                              {
                                 §§push(param1 is LoaderCore);
                              }
                              §§goto(addr01f6);
                           }
                           §§goto(addr00e0);
                        }
                        addr020e:
                        throw new Error("LoaderMax could not parse " + param1 + ". Don\'t forget to use LoaderMax.activate() to activate the necessary types of loaders.");
                     }
                     §§goto(addr01f6);
                  }
                  §§goto(addr00c4);
               }
               §§goto(addr01bd);
            }
         }
         _loc4_ = new LoaderMax(param2);
         if(_loc9_)
         {
            §§push(int(param1.length));
            if(_loc9_)
            {
               _loc5_ = §§pop();
               if(!_loc8_)
               {
                  addr005b:
                  _loc6_ = 0;
                  addr0059:
               }
               while(_loc6_ < _loc5_)
               {
                  _loc4_.append(LoaderMax.parse(param1[_loc6_],param3));
                  if(_loc9_)
                  {
                     _loc6_++;
                  }
               }
               return _loc4_;
            }
            §§goto(addr005b);
         }
         §§goto(addr0059);
      }
      
      public static function registerFileType(param1:String, param2:Class) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(param2)))
         {
            _activateClass("",param2,param1);
         }
      }
      
      public static function activate(param1:Array) : void
      {
      }
      
      public static function prioritize(param1:String, param2:Boolean = true) : LoaderCore
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:LoaderCore = getLoader(param1);
         if(!(_loc5_ && Boolean(param1)))
         {
            if(_loc3_ != null)
            {
               if(_loc4_ || LoaderMax)
               {
                  addr004e:
                  _loc3_.prioritize(param2);
               }
            }
            return _loc3_;
         }
         §§goto(addr004e);
      }
      
      public function getChildAt(param1:int) : *
      {
         return _loaders[param1];
      }
      
      public function getContent(param1:String) : *
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:LoaderCore = this.getLoader(param1);
         if(!(_loc3_ && _loc3_))
         {
            return _loc2_ != null ? _loc2_.content : null;
         }
         §§goto(addr003e);
      }
      
      public function remove(param1:LoaderCore) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            _removeLoader(param1,true);
         }
      }
      
      override protected function _load() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            _loadNext(null);
         }
      }
      
      protected function _cancelActiveLoaders() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:LoaderCore = null;
         var _loc1_:* = int(_loaders.length);
         while(true)
         {
            §§push(_loc1_);
            if(!_loc3_)
            {
               §§push(§§pop() - 1);
               if(!_loc3_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  §§push(_temp_2);
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     §§push(§§pop());
                     if(_loc4_)
                     {
                        addr00b3:
                        _loc1_ = §§pop();
                        addr00b4:
                        §§push(-1);
                     }
                     if(§§pop() <= §§pop())
                     {
                        break;
                     }
                     _loc2_ = _loaders[_loc1_];
                     if(!(_loc3_ && Boolean(_loc2_)))
                     {
                        if(_loc2_.status == LoaderStatus.LOADING)
                        {
                           if(_loc4_ || Boolean(_loc1_))
                           {
                              delete _activeLoaders[_loc2_];
                              if(_loc4_)
                              {
                                 addr0071:
                                 _removeLoaderListeners(_loc2_,false);
                                 if(!_loc4_)
                                 {
                                    continue;
                                 }
                              }
                           }
                           _loc2_.cancel();
                        }
                        continue;
                     }
                     §§goto(addr0071);
                  }
                  §§goto(addr00b3);
               }
            }
            §§goto(addr00b4);
         }
      }
      
      protected function _removeLoaderListeners(param1:LoaderCore, param2:Boolean) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:* = null;
         if(_loc6_ || Boolean(_loc3_))
         {
            param1.removeEventListener(LoaderEvent.COMPLETE,_loadNext);
            if(_loc6_ || Boolean(_loc3_))
            {
               param1.removeEventListener(LoaderEvent.CANCEL,_loadNext);
               if(_loc6_ || Boolean(_loc3_))
               {
                  §§goto(addr005c);
               }
            }
            §§goto(addr0082);
         }
         addr005c:
         if(param2)
         {
            if(_loc6_)
            {
               param1.removeEventListener(LoaderEvent.PROGRESS,_progressHandler);
               if(_loc6_ || param2)
               {
                  §§goto(addr0082);
               }
               §§goto(addr00a6);
            }
            addr0082:
            param1.removeEventListener("prioritize",_prioritizeHandler);
            if(_loc6_ || Boolean(param1))
            {
               addr00a6:
               param1.removeEventListener("dispose",_disposeHandler);
            }
            var _loc4_:* = 0;
            var _loc5_:* = _listenerTypes;
            for(_loc4_ in _loc5_)
            {
               §§push(_loc4_);
               if(!(_loc7_ && Boolean(_loc3_)))
               {
                  _loc3_ = §§pop();
                  if(!(_loc7_ && param2))
                  {
                     §§push(_loc3_);
                     if(!_loc7_)
                     {
                        addr00e9:
                        §§push("onProgress");
                        if(_loc6_)
                        {
                           §§push(§§pop() == §§pop());
                           if(!_loc7_)
                           {
                              §§push(!§§pop());
                              if(_loc6_)
                              {
                                 var _temp_8:* = §§pop();
                                 §§push(_temp_8);
                                 if(_temp_8)
                                 {
                                    if(_loc6_)
                                    {
                                       §§pop();
                                       if(_loc6_ || param2)
                                       {
                                          addr0134:
                                          addr012c:
                                          addr0129:
                                          addr011a:
                                          §§push(_loc3_ == "onInit");
                                          if(_loc6_)
                                          {
                                             addr0133:
                                             §§push(!§§pop());
                                          }
                                          if(§§pop())
                                          {
                                             if(!(_loc7_ && param2))
                                             {
                                                param1.removeEventListener(_listenerTypes[_loc3_],_passThroughEvent);
                                             }
                                          }
                                       }
                                       continue;
                                    }
                                    §§goto(addr0133);
                                 }
                              }
                              §§goto(addr0134);
                           }
                           §§goto(addr0133);
                        }
                        §§goto(addr012c);
                     }
                     §§goto(addr0129);
                  }
                  §§goto(addr011a);
               }
               §§goto(addr00e9);
            }
            §§goto(addr015f);
         }
         addr015f:
      }
      
      protected function _disposeHandler(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            _removeLoader(LoaderCore(param1.target),false);
         }
      }
      
      override public function auditSize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            if(!this.auditedSize)
            {
               if(_loc1_ || Boolean(this))
               {
                  addr002a:
                  _auditSize(null);
               }
            }
            return;
         }
         §§goto(addr002a);
      }
      
      public function getChildIndex(param1:LoaderCore) : uint
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = int(_loaders.length);
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               §§push(§§pop() - 1);
               if(!_loc3_)
               {
                  addr0071:
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  §§push(_temp_3);
                  if(_loc4_ || Boolean(param1))
                  {
                     §§push(§§pop());
                     if(!_loc3_)
                     {
                        _loc2_ = §§pop();
                        if(_loc4_ || Boolean(param1))
                        {
                           addr0097:
                           if(§§pop() <= -1)
                           {
                              break;
                           }
                           if(_loaders[_loc2_] != param1)
                           {
                              continue;
                           }
                           if(!_loc4_)
                           {
                              break;
                           }
                           §§push(_loc2_);
                           if(_loc4_ || _loc3_)
                           {
                              return §§pop();
                           }
                        }
                        §§goto(addr009d);
                     }
                  }
                  §§goto(addr0097);
               }
               §§goto(addr009d);
            }
            §§goto(addr0071);
         }
         addr009d:
         999999999;
         return §§pop();
      }
      
      public function prepend(param1:LoaderCore) : LoaderCore
      {
         return insert(param1,0);
      }
      
      public function getLoader(param1:String) : *
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:LoaderCore = null;
         var _loc2_:* = int(_loaders.length);
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc4_ && Boolean(this)))
            {
               §§push(§§pop() - 1);
               if(_loc5_)
               {
                  addr0140:
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  §§push(_temp_3);
                  if(_loc5_ || Boolean(_loc3_))
                  {
                     §§push(§§pop());
                     if(_loc5_ || Boolean(_loc2_))
                     {
                        addr015e:
                        _loc2_ = §§pop();
                        addr015f:
                        §§push(-1);
                     }
                     if(§§pop() <= §§pop())
                     {
                        return null;
                     }
                     _loc3_ = _loaders[_loc2_];
                     if(_loc5_)
                     {
                        §§push(_loc3_.name);
                        if(!(_loc4_ && Boolean(this)))
                        {
                           §§push(param1);
                           if(!(_loc4_ && Boolean(this)))
                           {
                              §§push(§§pop() == §§pop());
                              if(_loc5_)
                              {
                                 var _temp_8:* = §§pop();
                                 §§push(_temp_8);
                                 §§push(_temp_8);
                                 if(!_loc4_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(!(_loc4_ && Boolean(_loc3_)))
                                       {
                                          §§pop();
                                          if(!(_loc4_ && Boolean(_loc2_)))
                                          {
                                             §§push(_loc3_ is LoaderItem);
                                             if(_loc5_ || Boolean(_loc2_))
                                             {
                                                var _temp_12:* = §§pop();
                                                addr00a9:
                                                §§push(_temp_12);
                                                if(_temp_12)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      addr00b3:
                                                      §§pop();
                                                      if(!(_loc4_ && Boolean(param1)))
                                                      {
                                                         addr00cc:
                                                         addr00cb:
                                                         addr00ca:
                                                         if((_loc3_ as LoaderItem).url == param1)
                                                         {
                                                            if(!(_loc4_ && Boolean(this)))
                                                            {
                                                               return _loc3_;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr00ee:
                                                            if(!_loc3_.hasOwnProperty("getLoader"))
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                      }
                                                      addr00fa:
                                                      _loc3_ = (_loc3_ as Object).getLoader(param1) as LoaderCore;
                                                      if(_loc5_)
                                                      {
                                                         if(_loc3_ != null)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                      }
                                                      continue;
                                                   }
                                                }
                                             }
                                             §§goto(addr00cc);
                                          }
                                          §§goto(addr00fa);
                                       }
                                       §§goto(addr00b3);
                                    }
                                    §§goto(addr00cc);
                                 }
                                 §§goto(addr00a9);
                              }
                              §§goto(addr00b3);
                           }
                           §§goto(addr00cb);
                        }
                        §§goto(addr00ca);
                     }
                     §§goto(addr00ee);
                  }
                  §§goto(addr015e);
               }
               §§goto(addr015f);
            }
            §§goto(addr0140);
         }
         return _loc3_;
      }
      
      public function prependURLs(param1:String, param2:Boolean = false) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc3_:Array = getChildren(param2,true);
         var _loc4_:* = int(_loc3_.length);
         do
         {
            §§push(_loc4_);
            if(!(_loc6_ && Boolean(_loc3_)))
            {
               §§push(§§pop() - 1);
               if(!_loc6_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  §§push(_temp_2);
                  if(_loc5_ || Boolean(this))
                  {
                     §§push(§§pop());
                     if(!(_loc6_ && Boolean(this)))
                     {
                        _loc4_ = §§pop();
                        addr00a1:
                        §§push(-1);
                     }
                  }
                  if(§§pop() <= §§pop())
                  {
                     break;
                  }
                  continue;
               }
            }
            §§goto(addr00a1);
         }
         while(LoaderItem(_loc3_[_loc4_]).url = param1 + LoaderItem(_loc3_[_loc4_]).url, !_loc6_);
         
      }
      
      override protected function _dump(param1:int = 0, param2:int = 0, param3:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:* = 0;
         if(_loc6_)
         {
            §§push(param2);
            if(_loc6_ || Boolean(param2))
            {
               §§push(LoaderStatus.DISPOSED);
               if(_loc6_ || Boolean(this))
               {
                  if(§§pop() == §§pop())
                  {
                     if(!_loc5_)
                     {
                        addr004c:
                        _status = LoaderStatus.DISPOSED;
                        if(!(_loc5_ && Boolean(param1)))
                        {
                           empty(true,Boolean(param1 == 3));
                           if(_loc6_)
                           {
                              §§push(this.vars.requireWithRoot is DisplayObject);
                              if(!(_loc5_ && Boolean(param2)))
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc5_ && param3))
                                    {
                                       addr00b6:
                                       delete _rootLookup[this.vars.requireWithRoot];
                                       addr00a8:
                                       if(_loc6_)
                                       {
                                          addr00bd:
                                          _activeLoaders = null;
                                          if(!(_loc5_ && Boolean(param2)))
                                          {
                                             addr00dd:
                                             §§push(param1);
                                             if(!_loc5_)
                                             {
                                                addr00e4:
                                                §§push(1);
                                                if(!(_loc5_ && param3))
                                                {
                                                   addr00f4:
                                                   if(§§pop() <= §§pop())
                                                   {
                                                      if(!(_loc5_ && Boolean(this)))
                                                      {
                                                         addr0106:
                                                         _cancelActiveLoaders();
                                                         if(!(_loc5_ && param3))
                                                         {
                                                            addr011b:
                                                            §§push(param1);
                                                            if(_loc6_ || Boolean(param2))
                                                            {
                                                               addr012c:
                                                               addr012a:
                                                               if(§§pop() == 1)
                                                               {
                                                                  if(_loc6_ || Boolean(param2))
                                                                  {
                                                                     addr0144:
                                                                     _loc4_ = int(_loaders.length);
                                                                     addr013e:
                                                                  }
                                                                  do
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(_loc6_ || Boolean(param1))
                                                                     {
                                                                        §§push(§§pop() - 1);
                                                                        if(_loc6_)
                                                                        {
                                                                           addr017b:
                                                                           var _temp_14:* = §§pop();
                                                                           §§push(_temp_14);
                                                                           §§push(_temp_14);
                                                                           if(_loc6_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc6_ || Boolean(this))
                                                                              {
                                                                                 _loc4_ = §§pop();
                                                                                 addr019f:
                                                                                 §§push(-1);
                                                                              }
                                                                           }
                                                                           if(§§pop() <= §§pop())
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 addr01ab:
                                                                                 super._dump(param1,param2,param3);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr01c0);
                                                                              }
                                                                              break;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        §§goto(addr019f);
                                                                     }
                                                                     §§goto(addr017b);
                                                                  }
                                                                  while(LoaderCore(_loaders[_loc4_]).unload(), !_loc5_);
                                                                  
                                                                  _cacheIsDirty = true;
                                                                  addr01c0:
                                                                  return;
                                                                  addr0164:
                                                               }
                                                               §§goto(addr01ab);
                                                            }
                                                            §§goto(addr0144);
                                                         }
                                                         §§goto(addr0164);
                                                      }
                                                      §§goto(addr013e);
                                                   }
                                                   §§goto(addr011b);
                                                }
                                                §§goto(addr012c);
                                             }
                                             §§goto(addr012a);
                                          }
                                       }
                                       §§goto(addr013e);
                                    }
                                    §§goto(addr0106);
                                 }
                                 §§goto(addr00bd);
                              }
                              §§goto(addr00b6);
                           }
                        }
                        §§goto(addr0164);
                     }
                     §§goto(addr00a8);
                  }
                  §§goto(addr00dd);
               }
               §§goto(addr00f4);
            }
            §§goto(addr00e4);
         }
         §§goto(addr004c);
      }
      
      public function empty(param1:Boolean = true, param2:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = int(_loaders.length);
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc4_ && param1))
            {
               §§push(§§pop() - 1);
               if(!_loc4_)
               {
                  addr00c3:
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  §§push(_temp_3);
                  if(_loc5_)
                  {
                     §§push(§§pop());
                     if(!_loc4_)
                     {
                        _loc3_ = §§pop();
                        addr00d2:
                        §§push(-1);
                     }
                  }
                  if(§§pop() <= §§pop())
                  {
                     break;
                  }
                  §§push(param1);
                  if(!_loc4_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc4_ && Boolean(_loc3_)))
                        {
                           LoaderCore(_loaders[_loc3_]).dispose(param2);
                           if(!_loc5_)
                           {
                              break;
                           }
                        }
                        continue;
                     }
                     §§push(param2);
                  }
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        LoaderCore(_loaders[_loc3_]).unload();
                        if(!_loc5_)
                        {
                           break;
                        }
                     }
                  }
                  else
                  {
                     _removeLoader(_loaders[_loc3_],true);
                     if(!_loc5_)
                     {
                        break;
                     }
                  }
                  continue;
               }
               §§goto(addr00d2);
            }
            §§goto(addr00c3);
         }
      }
      
      protected function _removeLoader(param1:LoaderCore, param2:Boolean) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            if(param1 == null)
            {
               if(!_loc4_)
               {
                  return;
               }
               addr0112:
               if(_status == LoaderStatus.LOADING)
               {
                  if(_loc3_ || param2)
                  {
                     addr0138:
                     _loadNext(null);
                     if(!(_loc4_ && Boolean(this)))
                     {
                        §§goto(addr014e);
                     }
                  }
                  §§goto(addr015a);
               }
            }
            else
            {
               §§push(param2);
               if(_loc3_)
               {
                  §§push(§§pop());
                  if(_loc3_ || param2)
                  {
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     if(_temp_4)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           §§pop();
                           if(_loc3_)
                           {
                              §§push(this == param1.rootLoader);
                              if(!_loc4_)
                              {
                                 §§push(!§§pop());
                                 if(!(_loc4_ && Boolean(param1)))
                                 {
                                    addr007a:
                                    if(§§pop())
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          param1.rootLoader.append(param1);
                                          if(!_loc4_)
                                          {
                                             addr00a8:
                                             _removeLoaderListeners(param1,true);
                                             if(!(_loc4_ && Boolean(this)))
                                             {
                                                addr00bf:
                                                _loaders.splice(getChildIndex(param1),1);
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   §§push(param1 in _activeLoaders);
                                                   if(!_loc4_)
                                                   {
                                                      §§goto(addr00e9);
                                                   }
                                                   §§goto(addr00f9);
                                                }
                                                §§goto(addr0112);
                                             }
                                             §§goto(addr0100);
                                          }
                                          §§goto(addr00bf);
                                       }
                                       §§goto(addr015a);
                                    }
                                    §§goto(addr00a8);
                                 }
                              }
                              §§goto(addr00f9);
                           }
                           §§goto(addr00bf);
                        }
                     }
                     §§goto(addr007a);
                  }
               }
               addr00e9:
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr00f9:
                     delete _activeLoaders[param1];
                     if(!_loc4_)
                     {
                        addr0100:
                        param1.cancel();
                        if(_loc3_ || Boolean(this))
                        {
                           §§goto(addr0112);
                        }
                        §§goto(addr015a);
                     }
                     §§goto(addr0138);
                  }
               }
               §§goto(addr014e);
            }
            addr014e:
            _cacheIsDirty = true;
            if(_loc3_)
            {
               addr015a:
               _progressHandler(null);
            }
            return;
         }
         §§goto(addr0138);
      }
      
      public function get rawProgress() : Number
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc3_:* = 0;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc4_:* = int(_loaders.length);
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc5_ && Boolean(this)))
            {
               while(true)
               {
                  §§push(§§pop() - 1);
                  if(!(_loc5_ && Boolean(this)))
                  {
                     loop2:
                     while(true)
                     {
                        var _temp_4:* = §§pop();
                        §§push(_temp_4);
                        §§push(_temp_4);
                        if(!(_loc5_ && Boolean(_loc3_)))
                        {
                           §§push(§§pop());
                           if(_loc6_ || Boolean(_loc1_))
                           {
                              _loc4_ = §§pop();
                              if(!_loc5_)
                              {
                                 while(true)
                                 {
                                    §§push(-1);
                                    addr0285:
                                    while(true)
                                    {
                                       if(§§pop() <= §§pop())
                                       {
                                          if(!(_loc5_ && Boolean(_loc1_)))
                                          {
                                             §§goto(addr02a5);
                                          }
                                          break loop0;
                                       }
                                       §§push(LoaderCore(_loaders[_loc4_]).status);
                                       if(_loc6_ || Boolean(this))
                                       {
                                          _loc3_ = §§pop();
                                          if(!(_loc5_ && Boolean(_loc2_)))
                                          {
                                             §§push(_loc3_);
                                             if(!_loc5_)
                                             {
                                                addr0063:
                                                §§push(LoaderStatus.DISPOSED);
                                                if(!_loc5_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc6_ || Boolean(_loc3_))
                                                   {
                                                      §§push(!§§pop());
                                                      if(!(_loc5_ && Boolean(_loc1_)))
                                                      {
                                                         var _temp_12:* = §§pop();
                                                         §§push(_temp_12);
                                                         §§push(_temp_12);
                                                         if(!_loc5_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  §§pop();
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(_loc5_)
                                                                     {
                                                                        break loop2;
                                                                     }
                                                                     §§push(LoaderStatus.PAUSED);
                                                                     if(_loc5_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(§§pop() == §§pop());
                                                                     if(_loc6_)
                                                                     {
                                                                        var _temp_13:* = §§pop();
                                                                        §§push(_temp_13);
                                                                        §§push(_temp_13);
                                                                        if(_loc6_ || Boolean(_loc3_))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc5_ && Boolean(_loc1_)))
                                                                              {
                                                                                 §§pop();
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§push(this.skipPaused);
                                                                                    if(_loc6_ || Boolean(this))
                                                                                    {
                                                                                       addr00f9:
                                                                                       §§push(§§pop());
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          addr0100:
                                                                                          §§push(!§§pop());
                                                                                          if(_loc6_ || Boolean(this))
                                                                                          {
                                                                                             addr010f:
                                                                                             var _temp_18:* = §§pop();
                                                                                             §§push(_temp_18);
                                                                                             §§push(_temp_18);
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                addr0116:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc6_ || Boolean(_loc2_))
                                                                                                   {
                                                                                                      addr0128:
                                                                                                      §§pop();
                                                                                                      if(!(_loc5_ && Boolean(_loc1_)))
                                                                                                      {
                                                                                                         §§push(_loc3_);
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(LoaderStatus.FAILED);
                                                                                                         if(!(_loc6_ || Boolean(_loc3_)))
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         addr015f:
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         if(_loc6_ || Boolean(_loc1_))
                                                                                                         {
                                                                                                            addr016e:
                                                                                                            var _temp_23:* = §§pop();
                                                                                                            addr016f:
                                                                                                            §§push(_temp_23);
                                                                                                            if(_temp_23)
                                                                                                            {
                                                                                                               if(!(_loc5_ && Boolean(_loc1_)))
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     break loop0;
                                                                                                                  }
                                                                                                                  §§push(this.skipFailed);
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     addr0192:
                                                                                                                     addr01a2:
                                                                                                                     §§push(§§pop());
                                                                                                                     if(!(_loc5_ && Boolean(_loc1_)))
                                                                                                                     {
                                                                                                                        addr01a1:
                                                                                                                        §§push(!§§pop());
                                                                                                                     }
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     if(!(_loc6_ || Boolean(_loc2_)))
                                                                                                                     {
                                                                                                                        break loop0;
                                                                                                                     }
                                                                                                                     addr01b4:
                                                                                                                     §§push(_loc2_);
                                                                                                                     if(!(_loc5_ && Boolean(_loc3_)))
                                                                                                                     {
                                                                                                                        §§push(§§pop() + 1);
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              addr01d1:
                                                                                                                              _loc2_ = §§pop();
                                                                                                                              if(!(_loc6_ || Boolean(this)))
                                                                                                                              {
                                                                                                                                 break loop0;
                                                                                                                              }
                                                                                                                              addr01e0:
                                                                                                                              §§push(_loc1_);
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 if(_loaders[_loc4_] is LoaderMax)
                                                                                                                                 {
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       addr0227:
                                                                                                                                       §§push(§§pop() + LoaderMax(_loaders[_loc4_]).rawProgress);
                                                                                                                                       if(_loc6_ || Boolean(_loc1_))
                                                                                                                                       {
                                                                                                                                          addr0237:
                                                                                                                                          _loc1_ = §§pop();
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             break loop0;
                                                                                                                                          }
                                                                                                                                          continue loop0;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr02bf);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(LoaderCore(_loaders[_loc4_]).progress);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0227);
                                                                                                                              }
                                                                                                                              §§goto(addr02c7);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr02a5:
                                                                                                                              addr02a4:
                                                                                                                              if(_loc2_ == 0)
                                                                                                                              {
                                                                                                                                 break loop0;
                                                                                                                              }
                                                                                                                              §§goto(addr02c8);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr0237);
                                                                                                                     }
                                                                                                                     §§goto(addr01d1);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr01a1);
                                                                                                         }
                                                                                                         §§goto(addr0192);
                                                                                                      }
                                                                                                      §§goto(addr01b4);
                                                                                                   }
                                                                                                   §§goto(addr01a1);
                                                                                                }
                                                                                                §§goto(addr01a2);
                                                                                             }
                                                                                             §§goto(addr016f);
                                                                                          }
                                                                                          §§goto(addr01a1);
                                                                                       }
                                                                                       §§goto(addr016e);
                                                                                    }
                                                                                    §§goto(addr0128);
                                                                                 }
                                                                                 §§goto(addr01e0);
                                                                              }
                                                                              §§goto(addr01a1);
                                                                           }
                                                                           §§goto(addr0100);
                                                                        }
                                                                        §§goto(addr016f);
                                                                     }
                                                                     §§goto(addr01a2);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr02a4);
                                                                  }
                                                               }
                                                               §§goto(addr00f9);
                                                            }
                                                            §§goto(addr010f);
                                                         }
                                                         §§goto(addr0116);
                                                      }
                                                      §§goto(addr0100);
                                                   }
                                                   §§goto(addr016e);
                                                }
                                                §§goto(addr015f);
                                             }
                                             §§goto(addr02ad);
                                          }
                                          §§goto(addr02a4);
                                       }
                                       §§goto(addr0063);
                                       §§goto(addr02c7);
                                    }
                                    continue loop2;
                                 }
                                 addr0283:
                              }
                              §§goto(addr02ad);
                           }
                        }
                        §§goto(addr0285);
                     }
                     continue;
                  }
               }
            }
            §§goto(addr0283);
         }
         addr02ad:
         §§push(§§pop());
         if(!_loc6_)
         {
            §§goto(addr02c7);
         }
         addr02c8:
         §§push(_loc1_);
         if(_loc6_)
         {
            addr02bf:
            §§push(§§pop() / _loc2_);
            if(!_loc5_)
            {
               addr02c7:
               §§push(§§pop());
            }
         }
         0;
         return §§pop();
      }
      
      protected function _loadNext(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc2_:* = false;
         var _loc3_:LoaderCore = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         if(_loc8_)
         {
            §§push(param1 == null);
            if(_loc8_ || Boolean(this))
            {
               §§push(!§§pop());
               if(_loc8_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  §§push(_temp_3);
                  if(!_loc7_)
                  {
                     if(§§pop())
                     {
                        if(!_loc7_)
                        {
                           §§pop();
                           if(!(_loc7_ && _loc2_))
                           {
                              §§push(_activeLoaders == null);
                              if(!(_loc7_ && Boolean(param1)))
                              {
                                 §§push(!§§pop());
                                 if(_loc8_ || Boolean(_loc3_))
                                 {
                                    addr008a:
                                    if(§§pop())
                                    {
                                       if(!_loc7_)
                                       {
                                          §§push(delete _activeLoaders[param1.target]);
                                          if(_loc8_ || Boolean(this))
                                          {
                                             §§pop();
                                             if(_loc8_)
                                             {
                                                _removeLoaderListeners(LoaderCore(param1.target),false);
                                                if(!_loc7_)
                                                {
                                                   §§goto(addr00cc);
                                                }
                                                §§goto(addr01ce);
                                             }
                                             §§goto(addr0170);
                                          }
                                          §§goto(addr0182);
                                       }
                                       §§goto(addr0204);
                                    }
                                    §§goto(addr00cc);
                                 }
                                 §§goto(addr00ed);
                              }
                              §§goto(addr0182);
                           }
                           addr00cc:
                           if(_status == LoaderStatus.LOADING)
                           {
                              if(_loc8_)
                              {
                                 §§push("auditSize" in this.vars);
                                 if(_loc8_)
                                 {
                                    addr00ed:
                                    if(§§pop())
                                    {
                                       if(!(_loc7_ && Boolean(_loc3_)))
                                       {
                                          §§push(Boolean(this.vars.auditSize));
                                          if(_loc7_ && _loc2_)
                                          {
                                             addr012b:
                                             §§push(§§pop());
                                             if(!(_loc7_ && _loc2_))
                                             {
                                                addr013a:
                                                §§push(§§pop());
                                                if(_loc8_)
                                                {
                                                   addr0141:
                                                   _loc2_ = §§pop();
                                                   if(!_loc7_)
                                                   {
                                                      addr0148:
                                                      §§push(_loc2_);
                                                      if(!_loc7_)
                                                      {
                                                         addr014f:
                                                         §§push(§§pop());
                                                         if(!_loc7_)
                                                         {
                                                            addr0156:
                                                            var _temp_11:* = §§pop();
                                                            addr0157:
                                                            §§push(_temp_11);
                                                            if(_temp_11)
                                                            {
                                                               if(!(_loc7_ && Boolean(param1)))
                                                               {
                                                                  addr0169:
                                                                  §§pop();
                                                                  if(!_loc7_)
                                                                  {
                                                                     addr0183:
                                                                     addr0170:
                                                                     §§push(this.auditedSize);
                                                                     if(!(_loc7_ && Boolean(this)))
                                                                     {
                                                                        addr0182:
                                                                        §§push(!§§pop());
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc8_ || _loc2_)
                                                                        {
                                                                           _auditSize(null);
                                                                           if(!_loc7_)
                                                                           {
                                                                              return;
                                                                           }
                                                                           addr01ce:
                                                                           §§push(0);
                                                                           if(_loc8_ || Boolean(param1))
                                                                           {
                                                                              addr01df:
                                                                              _loc5_ = §§pop();
                                                                              if(!(_loc7_ && Boolean(this)))
                                                                              {
                                                                                 addr01ef:
                                                                                 _calculateProgress();
                                                                                 if(!(_loc7_ && Boolean(param1)))
                                                                                 {
                                                                                    addr0206:
                                                                                    _loc6_ = 0;
                                                                                    addr0204:
                                                                                 }
                                                                              }
                                                                              while(_loc6_ < _loc4_)
                                                                              {
                                                                                 _loc3_ = _loaders[_loc6_];
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    §§push(this.skipPaused);
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          var _temp_18:* = §§pop();
                                                                                          §§push(_temp_18);
                                                                                          §§push(_temp_18);
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      §§push(_loc3_.status);
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         §§push(LoaderStatus.PAUSED);
                                                                                                         if(!(_loc7_ && _loc2_))
                                                                                                         {
                                                                                                            §§push(§§pop() == §§pop());
                                                                                                            if(_loc8_ || Boolean(this))
                                                                                                            {
                                                                                                               addr0282:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     §§push(this);
                                                                                                                     §§push(§§findproperty(LoaderEvent));
                                                                                                                     §§push(LoaderEvent.FAIL);
                                                                                                                     §§push(this);
                                                                                                                     §§push("Did not complete LoaderMax because skipPaused was false and ");
                                                                                                                     if(!_loc7_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + _loc3_.toString());
                                                                                                                        if(_loc8_ || Boolean(param1))
                                                                                                                        {
                                                                                                                           addr02b5:
                                                                                                                           §§push(§§pop() + " was paused.");
                                                                                                                        }
                                                                                                                        §§pop().super._failHandler(new §§pop().LoaderEvent(§§pop(),§§pop(),§§pop()),false);
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           return;
                                                                                                                        }
                                                                                                                        §§goto(addr0395);
                                                                                                                     }
                                                                                                                     §§goto(addr02b5);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr0449);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(this.skipFailed);
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     addr02e2:
                                                                                                                     §§push(!§§pop());
                                                                                                                     if(!(_loc7_ && _loc2_))
                                                                                                                     {
                                                                                                                        var _temp_26:* = §§pop();
                                                                                                                        §§push(_temp_26);
                                                                                                                        §§push(_temp_26);
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           addr02f8:
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(_loc8_ || Boolean(_loc3_))
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 if(_loc8_ || Boolean(this))
                                                                                                                                 {
                                                                                                                                    §§push(_loc3_.status);
                                                                                                                                    if(_loc8_ || Boolean(param1))
                                                                                                                                    {
                                                                                                                                       §§push(LoaderStatus.FAILED);
                                                                                                                                       if(_loc8_ || Boolean(this))
                                                                                                                                       {
                                                                                                                                          addr033f:
                                                                                                                                          §§push(§§pop() == §§pop());
                                                                                                                                          if(!(_loc7_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             addr034e:
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                if(!_loc7_)
                                                                                                                                                {
                                                                                                                                                   §§push(this);
                                                                                                                                                   §§push(§§findproperty(LoaderEvent));
                                                                                                                                                   §§push(LoaderEvent.FAIL);
                                                                                                                                                   §§push(this);
                                                                                                                                                   §§push("Did not complete LoaderMax because skipFailed was false and ");
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + _loc3_.toString());
                                                                                                                                                      if(_loc8_ || Boolean(param1))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + " failed.");
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§pop().super._failHandler(new §§pop().LoaderEvent(§§pop(),§§pop(),§§pop()),false);
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      addr0395:
                                                                                                                                                      return;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr045d);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr03a4:
                                                                                                                                                   addr03ae:
                                                                                                                                                   addr03a8:
                                                                                                                                                   if(_loc3_.status <= LoaderStatus.LOADING)
                                                                                                                                                   {
                                                                                                                                                      if(_loc8_ || Boolean(param1))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                         if(!_loc7_)
                                                                                                                                                         {
                                                                                                                                                            §§push(uint(§§pop() + 1));
                                                                                                                                                            if(_loc8_)
                                                                                                                                                            {
                                                                                                                                                               _loc5_ = §§pop();
                                                                                                                                                               if(_loc7_ && _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               addr03e0:
                                                                                                                                                               §§push(_loc3_ in _activeLoaders);
                                                                                                                                                               if(!(_loc7_ && Boolean(_loc3_)))
                                                                                                                                                               {
                                                                                                                                                                  addr03f3:
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc7_ && Boolean(param1)))
                                                                                                                                                                     {
                                                                                                                                                                        _activeLoaders[_loc3_] = true;
                                                                                                                                                                        if(!_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     _loc3_.addEventListener(LoaderEvent.COMPLETE,_loadNext,false,-100,true);
                                                                                                                                                                     if(!_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     _loc3_.addEventListener(LoaderEvent.CANCEL,_loadNext,false,-100,true);
                                                                                                                                                                     if(_loc8_ || Boolean(this))
                                                                                                                                                                     {
                                                                                                                                                                        addr0449:
                                                                                                                                                                        _loc3_.load(false);
                                                                                                                                                                        if(!(_loc7_ && Boolean(this)))
                                                                                                                                                                        {
                                                                                                                                                                           addr045d:
                                                                                                                                                                           §§push(_loc5_);
                                                                                                                                                                           if(!_loc7_)
                                                                                                                                                                           {
                                                                                                                                                                              addr0465:
                                                                                                                                                                              if(§§pop() == this.maxConnections)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc7_)
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 addr0477:
                                                                                                                                                                                 _loc6_++;
                                                                                                                                                                                 if(_loc8_ || _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr04c9);
                                                                                                                                                                           }
                                                                                                                                                                           addr049d:
                                                                                                                                                                           §§push(§§pop() == 0);
                                                                                                                                                                           if(_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              addr04a6:
                                                                                                                                                                              var _temp_24:* = §§pop();
                                                                                                                                                                              addr04a7:
                                                                                                                                                                              §§push(_temp_24);
                                                                                                                                                                              if(_temp_24)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop();
                                                                                                                                                                                    if(_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr04bf:
                                                                                                                                                                                       addr04b8:
                                                                                                                                                                                       if(_cachedBytesLoaded == _cachedBytesTotal)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc7_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr04c9:
                                                                                                                                                                                             _completeHandler(null);
                                                                                                                                                                                             §§goto(addr04d1);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr04d1);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr04bf);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr04d1);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr04c9);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr045d);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr04a6);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr049d);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0465);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr03e0);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr0477);
                                                                                                                                             }
                                                                                                                                             §§goto(addr03a4);
                                                                                                                                          }
                                                                                                                                          §§goto(addr04a6);
                                                                                                                                       }
                                                                                                                                       §§goto(addr03ae);
                                                                                                                                    }
                                                                                                                                    §§goto(addr03a8);
                                                                                                                                 }
                                                                                                                                 §§goto(addr045d);
                                                                                                                              }
                                                                                                                              §§goto(addr04bf);
                                                                                                                           }
                                                                                                                           §§goto(addr034e);
                                                                                                                        }
                                                                                                                        §§goto(addr04a7);
                                                                                                                     }
                                                                                                                     §§goto(addr034e);
                                                                                                                  }
                                                                                                                  §§goto(addr03f3);
                                                                                                               }
                                                                                                               §§goto(addr045d);
                                                                                                            }
                                                                                                            §§goto(addr034e);
                                                                                                         }
                                                                                                         §§goto(addr033f);
                                                                                                      }
                                                                                                      §§goto(addr03a8);
                                                                                                   }
                                                                                                   §§goto(addr04b8);
                                                                                                }
                                                                                                §§goto(addr04a6);
                                                                                             }
                                                                                             §§goto(addr0282);
                                                                                          }
                                                                                          §§goto(addr02f8);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr02e2);
                                                                                 }
                                                                                 §§goto(addr04d1);
                                                                              }
                                                                              §§goto(addr049d);
                                                                              §§push(_loc5_);
                                                                              addr0487:
                                                                           }
                                                                           §§goto(addr0206);
                                                                        }
                                                                        §§goto(addr0487);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(_loaders.length);
                                                                        if(_loc8_)
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           if(_loc8_ || Boolean(this))
                                                                           {
                                                                              §§goto(addr01ce);
                                                                           }
                                                                           §§goto(addr0204);
                                                                        }
                                                                     }
                                                                     §§goto(addr01df);
                                                                  }
                                                                  §§goto(addr0204);
                                                               }
                                                               §§goto(addr0182);
                                                            }
                                                            §§goto(addr0183);
                                                         }
                                                         §§goto(addr0169);
                                                      }
                                                      §§goto(addr0183);
                                                   }
                                                   §§goto(addr0170);
                                                }
                                                §§goto(addr014f);
                                             }
                                             §§goto(addr0156);
                                          }
                                          §§goto(addr013a);
                                       }
                                       §§goto(addr0148);
                                    }
                                    else
                                    {
                                       §§push(LoaderMax.defaultAuditSize);
                                       if(_loc8_)
                                       {
                                          §§goto(addr012b);
                                       }
                                    }
                                    §§goto(addr0183);
                                 }
                                 §§goto(addr0169);
                              }
                              §§goto(addr01ef);
                           }
                           addr04d1:
                           return;
                        }
                        §§goto(addr013a);
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr0157);
               }
               §§goto(addr0141);
            }
            §§goto(addr0169);
         }
         §§goto(addr0487);
      }
      
      public function append(param1:LoaderCore) : LoaderCore
      {
         return insert(param1,_loaders.length);
      }
      
      override protected function _progressHandler(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(!(_loc4_ && Boolean(_loc3_)))
         {
            §§push(_dispatchChildProgress);
            if(_loc5_)
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               §§push(_temp_3);
               if(!(_loc4_ && Boolean(_loc3_)))
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        §§pop();
                        if(_loc5_ || Boolean(_loc2_))
                        {
                           §§push(param1 == null);
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              §§push(!§§pop());
                              if(!(_loc4_ && Boolean(param1)))
                              {
                                 addr007f:
                                 if(§§pop())
                                 {
                                    if(!(_loc4_ && Boolean(this)))
                                    {
                                       addr0091:
                                       dispatchEvent(new LoaderEvent(LoaderEvent.CHILD_PROGRESS,param1.target));
                                       if(_loc5_)
                                       {
                                          addr00ad:
                                          §§push(_dispatchProgress);
                                          if(!(_loc4_ && Boolean(_loc3_)))
                                          {
                                             var _temp_10:* = §§pop();
                                             §§push(_temp_10);
                                             §§push(_temp_10);
                                             if(!(_loc4_ && Boolean(this)))
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc5_ || Boolean(_loc2_))
                                                   {
                                                      §§pop();
                                                      if(_loc5_ || Boolean(param1))
                                                      {
                                                         §§push(_status == LoaderStatus.DISPOSED);
                                                         if(!_loc4_)
                                                         {
                                                            §§push(!§§pop());
                                                            if(!_loc4_)
                                                            {
                                                               §§goto(addr0106);
                                                            }
                                                            §§goto(addr0277);
                                                         }
                                                         §§goto(addr01d9);
                                                      }
                                                      §§goto(addr01aa);
                                                   }
                                                   §§goto(addr0227);
                                                }
                                                addr0106:
                                                if(§§pop())
                                                {
                                                   if(_loc5_)
                                                   {
                                                      addr0110:
                                                      §§push(_cachedBytesLoaded);
                                                      if(_loc5_ || Boolean(_loc3_))
                                                      {
                                                         _loc2_ = §§pop();
                                                         if(_loc5_ || Boolean(param1))
                                                         {
                                                            addr0131:
                                                            §§push(_cachedBytesTotal);
                                                            if(!(_loc4_ && Boolean(param1)))
                                                            {
                                                               _loc3_ = §§pop();
                                                               if(_loc5_ || Boolean(param1))
                                                               {
                                                                  addr015d:
                                                                  _calculateProgress();
                                                                  if(_loc5_ || Boolean(param1))
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(_loc5_ || Boolean(_loc3_))
                                                                     {
                                                                        addr0181:
                                                                        §§push(§§pop() == 0);
                                                                        if(_loc5_)
                                                                        {
                                                                           addr018a:
                                                                           var _temp_20:* = §§pop();
                                                                           §§push(_temp_20);
                                                                           §§push(_temp_20);
                                                                           if(!(_loc4_ && Boolean(param1)))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§pop();
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       addr01aa:
                                                                                       §§push(_cachedBytesLoaded == 0);
                                                                                       if(!(_loc4_ && Boolean(_loc2_)))
                                                                                       {
                                                                                          addr01be:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                addr02bb:
                                                                                                dispatchEvent(new LoaderEvent(LoaderEvent.PROGRESS,this));
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(_cachedBytesLoaded == _cachedBytesTotal);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr01d9:
                                                                                                §§push(!§§pop());
                                                                                                if(_loc5_ || Boolean(_loc3_))
                                                                                                {
                                                                                                   addr01e8:
                                                                                                   var _temp_24:* = §§pop();
                                                                                                   §§push(_temp_24);
                                                                                                   §§push(_temp_24);
                                                                                                   if(_loc5_ || Boolean(this))
                                                                                                   {
                                                                                                      addr01f7:
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            §§goto(addr0201);
                                                                                                         }
                                                                                                         §§goto(addr0277);
                                                                                                      }
                                                                                                      §§goto(addr0227);
                                                                                                   }
                                                                                                   §§goto(addr0278);
                                                                                                }
                                                                                                §§goto(addr02b0);
                                                                                             }
                                                                                             addr0201:
                                                                                             §§pop();
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§push(_status == LoaderStatus.LOADING);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§push(!§§pop());
                                                                                                   if(_loc5_ || Boolean(param1))
                                                                                                   {
                                                                                                      addr0227:
                                                                                                      var _temp_27:* = §§pop();
                                                                                                      §§push(_temp_27);
                                                                                                      §§push(_temp_27);
                                                                                                      if(_loc5_ || Boolean(param1))
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               §§goto(addr0240);
                                                                                                            }
                                                                                                            §§goto(addr0268);
                                                                                                         }
                                                                                                         §§goto(addr02b1);
                                                                                                      }
                                                                                                      §§goto(addr0278);
                                                                                                   }
                                                                                                   §§goto(addr0282);
                                                                                                }
                                                                                                addr0240:
                                                                                                §§pop();
                                                                                                if(!(_loc4_ && Boolean(_loc3_)))
                                                                                                {
                                                                                                   §§push(_loc2_);
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      addr0256:
                                                                                                      §§push(§§pop() == _cachedBytesLoaded);
                                                                                                      if(!(_loc4_ && Boolean(this)))
                                                                                                      {
                                                                                                         addr0268:
                                                                                                         §§push(!§§pop());
                                                                                                         if(_loc5_ || Boolean(_loc2_))
                                                                                                         {
                                                                                                            addr0277:
                                                                                                            var _temp_32:* = §§pop();
                                                                                                            addr0278:
                                                                                                            §§push(_temp_32);
                                                                                                            if(!_temp_32)
                                                                                                            {
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  addr0282:
                                                                                                                  §§pop();
                                                                                                                  if(!(_loc4_ && Boolean(this)))
                                                                                                                  {
                                                                                                                     addr02b1:
                                                                                                                     addr0292:
                                                                                                                     addr0291:
                                                                                                                     §§push(_loc3_ == _cachedBytesTotal);
                                                                                                                     if(!(_loc4_ && Boolean(this)))
                                                                                                                     {
                                                                                                                        addr02b0:
                                                                                                                        §§push(!§§pop());
                                                                                                                     }
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           §§goto(addr02bb);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr02df);
                                                                                                               }
                                                                                                               §§goto(addr02b0);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr02b1);
                                                                                                      }
                                                                                                      §§goto(addr02b0);
                                                                                                   }
                                                                                                   §§goto(addr0292);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr02df);
                                                                                          }
                                                                                          §§goto(addr02df);
                                                                                       }
                                                                                       §§goto(addr01e8);
                                                                                    }
                                                                                    §§goto(addr02df);
                                                                                 }
                                                                                 §§goto(addr01e8);
                                                                              }
                                                                              §§goto(addr01be);
                                                                           }
                                                                           §§goto(addr01f7);
                                                                        }
                                                                        §§goto(addr0201);
                                                                     }
                                                                     §§goto(addr0292);
                                                                  }
                                                                  §§goto(addr02df);
                                                               }
                                                               §§goto(addr0291);
                                                            }
                                                            §§goto(addr0181);
                                                         }
                                                         §§goto(addr0291);
                                                      }
                                                      §§goto(addr0256);
                                                   }
                                                   §§goto(addr0131);
                                                }
                                                else
                                                {
                                                   _cacheIsDirty = true;
                                                }
                                                addr02df:
                                                return;
                                             }
                                             §§goto(addr0278);
                                          }
                                          §§goto(addr0277);
                                       }
                                       §§goto(addr0291);
                                    }
                                    §§goto(addr015d);
                                 }
                                 §§goto(addr00ad);
                              }
                              §§goto(addr0282);
                           }
                           §§goto(addr01d9);
                        }
                        §§goto(addr0110);
                     }
                     §§goto(addr018a);
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0278);
            }
            §§goto(addr01e8);
         }
         §§goto(addr0091);
      }
      
      protected function _prioritizeHandler(param1:Event) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = 0;
         var _loc2_:LoaderCore = param1.target as LoaderCore;
         if(!_loc5_)
         {
            §§push(_loaders);
            if(_loc4_)
            {
               §§pop().splice(getChildIndex(_loc2_),1);
               if(_loc4_)
               {
                  addr004b:
                  _loaders.unshift(_loc2_);
                  if(_loc4_ || Boolean(_loc3_))
                  {
                     addr005e:
                     §§push(_status == LoaderStatus.LOADING);
                     if(!(_loc5_ && Boolean(param1)))
                     {
                        var _temp_3:* = §§pop();
                        §§push(_temp_3);
                        §§push(_temp_3);
                        if(_loc4_)
                        {
                           if(§§pop())
                           {
                              if(_loc4_ || Boolean(_loc3_))
                              {
                                 §§pop();
                                 if(_loc4_ || Boolean(this))
                                 {
                                    addr00a8:
                                    §§push(_loc2_.status <= LoaderStatus.LOADING);
                                    if(!(_loc5_ && Boolean(_loc3_)))
                                    {
                                       §§goto(addr00c1);
                                    }
                                    §§goto(addr00d4);
                                 }
                                 §§goto(addr00f9);
                              }
                           }
                           addr00c1:
                           var _temp_7:* = §§pop();
                           §§goto(addr00c2);
                        }
                        addr00c2:
                        §§push(_temp_7);
                        if(_temp_7)
                        {
                           if(_loc4_ || Boolean(_loc3_))
                           {
                              addr00d4:
                              §§pop();
                              if(_loc4_)
                              {
                                 §§goto(addr00e7);
                              }
                              §§goto(addr0106);
                           }
                           §§goto(addr00e6);
                        }
                        addr00e7:
                        §§push(_loc2_ in _activeLoaders);
                        if(_loc4_)
                        {
                           addr00e6:
                           §§push(!§§pop());
                        }
                        if(§§pop())
                        {
                           if(!(_loc5_ && Boolean(this)))
                           {
                              addr00f9:
                              _cancelActiveLoaders();
                              if(!_loc5_)
                              {
                                 addr0106:
                                 §§push(this.maxConnections);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop());
                                 }
                                 _loc3_ = §§pop();
                                 if(!(_loc5_ && Boolean(_loc2_)))
                                 {
                                    addr012c:
                                    this.maxConnections = 1;
                                    if(_loc4_ || Boolean(_loc2_))
                                    {
                                       _loadNext(null);
                                       if(_loc4_ || Boolean(this))
                                       {
                                          addr0156:
                                          this.maxConnections = _loc3_;
                                       }
                                    }
                                    §§goto(addr015b);
                                 }
                                 §§goto(addr0156);
                              }
                              §§goto(addr015b);
                           }
                           §§goto(addr0106);
                        }
                        addr015b:
                        return;
                     }
                     §§goto(addr00d4);
                  }
                  §§goto(addr00a8);
               }
               §§goto(addr005e);
            }
            §§goto(addr004b);
         }
         §§goto(addr012c);
      }
      
      public function get numChildren() : uint
      {
         return _loaders.length;
      }
      
      override public function get content() : *
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:Array = [];
         var _loc2_:* = int(_loaders.length);
         do
         {
            §§push(_loc2_);
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               §§push(§§pop() - 1);
               if(_loc4_)
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  §§push(_temp_4);
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     §§push(§§pop());
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc2_ = §§pop();
                        addr0092:
                        §§push(-1);
                     }
                  }
                  if(§§pop() <= §§pop())
                  {
                     break;
                  }
                  continue;
               }
            }
            §§goto(addr0092);
         }
         while(_loc1_[_loc2_] = LoaderCore(_loaders[_loc2_]).content, !(_loc3_ && _loc3_));
         
         return _loc1_;
      }
      
      public function replaceURLText(param1:String, param2:String, param3:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc5_:LoaderItem = null;
         var _loc4_:Array = getChildren(param3,true);
         var _loc6_:* = int(_loc4_.length);
         while(true)
         {
            §§push(_loc6_);
            if(_loc8_ || Boolean(param1))
            {
               §§push(§§pop() - 1);
               if(_loc8_ || param3)
               {
                  var _temp_5:* = §§pop();
                  §§push(_temp_5);
                  §§push(_temp_5);
                  if(_loc8_ || Boolean(param1))
                  {
                     §§push(§§pop());
                     if(!_loc7_)
                     {
                        addr00dd:
                        _loc6_ = §§pop();
                        addr00df:
                        §§push(-1);
                     }
                     if(§§pop() <= §§pop())
                     {
                        break;
                     }
                     _loc5_ = _loc4_[_loc6_];
                     _loc5_.url = _loc5_.url.split(param1).join(param2);
                     if(_loc8_)
                     {
                        if(!("alternateURL" in _loc5_.vars))
                        {
                           continue;
                        }
                        if(_loc7_ && param3)
                        {
                           continue;
                        }
                     }
                     _loc5_.vars.alternateURL = _loc5_.vars.alternateURL.split(param1).join(param2);
                     continue;
                  }
                  §§goto(addr00dd);
               }
            }
            §§goto(addr00df);
         }
      }
      
      override public function get auditedSize() : Boolean
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && _loc2_))
         {
            if(this.skipPaused)
            {
               addr002a:
               §§push(LoaderStatus.COMPLETED);
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop());
                  if(!_loc3_)
                  {
                     §§goto(addr0052);
                  }
               }
            }
            else
            {
               §§push(LoaderStatus.PAUSED);
               if(_loc3_)
               {
                  addr0052:
                  §§push(§§pop());
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0061:
                     §§push(§§pop());
                  }
                  var _loc1_:* = §§pop();
                  var _loc2_:* = int(_loaders.length);
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!(_loc4_ && Boolean(_loc2_)))
                     {
                        §§push(§§pop() - 1);
                        if(!(_loc4_ && _loc3_))
                        {
                           addr0111:
                           var _temp_6:* = §§pop();
                           §§push(_temp_6);
                           §§push(_temp_6);
                           if(!_loc4_)
                           {
                              §§push(§§pop());
                              if(_loc3_ || _loc3_)
                              {
                                 _loc2_ = §§pop();
                                 addr0127:
                                 §§push(-1);
                              }
                           }
                           if(§§pop() <= §§pop())
                           {
                              §§push(true);
                              break;
                           }
                           §§push(!LoaderCore(_loaders[_loc2_]).auditedSize);
                           if(_loc3_)
                           {
                              var _temp_8:* = §§pop();
                              §§push(_temp_8);
                              if(_temp_8)
                              {
                                 if(_loc3_)
                                 {
                                    §§pop();
                                    if(!(_loc3_ || Boolean(_loc2_)))
                                    {
                                       continue;
                                    }
                                    §§push(LoaderCore(_loaders[_loc2_]).status <= _loc1_);
                                    if(_loc4_ && Boolean(this))
                                    {
                                       break;
                                    }
                                    addr00ca:
                                    if(!§§pop())
                                    {
                                       continue;
                                    }
                                    if(!_loc3_)
                                    {
                                       continue;
                                    }
                                    §§push(false);
                                    if(!(_loc3_ || _loc3_))
                                    {
                                       break;
                                    }
                                 }
                                 return §§pop();
                              }
                           }
                           §§goto(addr00ca);
                        }
                        §§goto(addr0127);
                     }
                     §§goto(addr0111);
                  }
                  return §§pop();
               }
            }
            §§goto(addr0061);
         }
         §§goto(addr002a);
      }
      
      override public function get status() : int
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc1_:Array = null;
         var _loc2_:* = 0;
         if(_loc6_ || Boolean(_loc1_))
         {
            if(_status == LoaderStatus.COMPLETED)
            {
               addr0037:
               _loc1_ = [0,0,0,0,0,0];
               if(_loc6_ || _loc3_)
               {
                  _loc2_ = int(_loaders.length);
               }
               var _loc3_:*;
               var _loc5_:*;
               var _loc4_:*;
               do
               {
                  §§push(_loc2_);
                  if(_loc6_)
                  {
                     §§push(§§pop() - 1);
                     if(!(_loc7_ && Boolean(_loc1_)))
                     {
                        addr00b3:
                        var _temp_7:* = §§pop();
                        §§push(_temp_7);
                        §§push(_temp_7);
                        if(_loc6_ || Boolean(_loc1_))
                        {
                           §§push(§§pop());
                           if(_loc6_ || Boolean(_loc3_))
                           {
                              addr00d1:
                              _loc2_ = §§pop();
                              addr00d2:
                              §§push(-1);
                           }
                           if(§§pop() > §§pop())
                           {
                              continue;
                           }
                           if(_loc6_ || Boolean(_loc1_))
                           {
                              §§push(this.skipFailed);
                              if(_loc6_)
                              {
                                 §§push(!§§pop());
                                 if(_loc6_ || Boolean(_loc3_))
                                 {
                                    var _temp_12:* = §§pop();
                                    §§push(_temp_12);
                                    §§push(_temp_12);
                                    if(_loc6_ || Boolean(_loc1_))
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc7_)
                                          {
                                             §§pop();
                                             if(!(_loc7_ && Boolean(_loc1_)))
                                             {
                                                §§push(_loc1_[4] == 0);
                                                if(_loc6_ || Boolean(_loc1_))
                                                {
                                                   addr014b:
                                                   §§push(!§§pop());
                                                   if(_loc6_ || Boolean(_loc1_))
                                                   {
                                                      addr015a:
                                                      var _temp_17:* = §§pop();
                                                      §§push(_temp_17);
                                                      §§push(_temp_17);
                                                      if(_loc6_)
                                                      {
                                                         addr0161:
                                                         if(!§§pop())
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               addr016b:
                                                               §§pop();
                                                               if(!_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               addr0172:
                                                               §§push(this.skipPaused);
                                                               if(!(_loc7_ && Boolean(_loc2_)))
                                                               {
                                                                  §§push(!§§pop());
                                                                  if(_loc6_)
                                                                  {
                                                                     var _temp_19:* = §§pop();
                                                                     addr018c:
                                                                     §§push(_temp_19);
                                                                     if(_temp_19)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           addr0196:
                                                                           §§pop();
                                                                           if(_loc6_)
                                                                           {
                                                                              addr01ad:
                                                                              §§push(_loc1_[3] == 0);
                                                                              if(_loc6_)
                                                                              {
                                                                                 addr01ac:
                                                                                 §§push(!§§pop());
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!(_loc6_ || Boolean(_loc3_)))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 _status = LoaderStatus.FAILED;
                                                                                 if(!(_loc7_ && Boolean(_loc3_)))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 addr020c:
                                                                                 _status = LoaderStatus.READY;
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 if(_loc1_[0] + _loc1_[1] == 0)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(_loc6_ || Boolean(this))
                                                                                 {
                                                                                    §§goto(addr020c);
                                                                                 }
                                                                              }
                                                                              _cacheIsDirty = true;
                                                                              break;
                                                                           }
                                                                           §§goto(addr020c);
                                                                        }
                                                                        §§goto(addr01ac);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr01ad);
                                                            }
                                                            §§goto(addr01ac);
                                                         }
                                                         §§goto(addr01ad);
                                                      }
                                                      §§goto(addr018c);
                                                   }
                                                }
                                                §§goto(addr0196);
                                             }
                                             §§goto(addr0172);
                                          }
                                          §§goto(addr014b);
                                       }
                                       §§goto(addr015a);
                                    }
                                    §§goto(addr0161);
                                 }
                                 §§goto(addr016b);
                              }
                              §§goto(addr0196);
                           }
                           §§goto(addr0172);
                        }
                        §§goto(addr00d1);
                     }
                     §§goto(addr00d2);
                  }
                  §§goto(addr00b3);
               }
               while(_loc3_ = _loc1_, _loc5_ = _loc3_[_loc4_ = LoaderCore(_loaders[_loc2_]).status] + 1, if(!(_loc7_ && Boolean(_loc1_)))
               {
                  _loc3_[_loc4_] = _loc5_;
               }, !_loc7_);
               
            }
            return _status;
         }
         §§goto(addr0037);
      }
      
      override protected function _calculateProgress() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:LoaderCore = null;
         var _loc3_:* = 0;
         if(_loc4_)
         {
            _cachedBytesLoaded = 0;
            if(_loc4_)
            {
               _cachedBytesTotal = 0;
            }
         }
         var _loc1_:* = int(_loaders.length);
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc5_ && Boolean(_loc3_)))
            {
               §§push(§§pop() - 1);
               if(!(_loc5_ && Boolean(this)))
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  §§push(_temp_3);
                  if(!(_loc5_ && Boolean(_loc2_)))
                  {
                     §§push(§§pop());
                     if(_loc4_ || Boolean(_loc1_))
                     {
                        addr0216:
                        _loc1_ = §§pop();
                        addr0217:
                        §§push(-1);
                     }
                     if(§§pop() <= §§pop())
                     {
                        break;
                     }
                     _loc2_ = _loaders[_loc1_];
                     if(_loc4_ || Boolean(_loc1_))
                     {
                        §§push(_loc2_.status);
                        if(_loc4_)
                        {
                           §§push(§§pop());
                           if(_loc4_ || Boolean(this))
                           {
                              _loc3_ = §§pop();
                              if(_loc4_ || Boolean(_loc3_))
                              {
                                 §§push(_loc3_);
                                 if(!(_loc5_ && Boolean(_loc2_)))
                                 {
                                    §§push(LoaderStatus.COMPLETED);
                                    if(_loc4_ || Boolean(_loc1_))
                                    {
                                       §§push(§§pop() <= §§pop());
                                       if(!_loc5_)
                                       {
                                          var _temp_11:* = §§pop();
                                          §§push(_temp_11);
                                          §§push(_temp_11);
                                          if(_loc4_)
                                          {
                                             if(!§§pop())
                                             {
                                                if(!_loc5_)
                                                {
                                                   §§pop();
                                                   if(!(_loc5_ && Boolean(this)))
                                                   {
                                                      §§push(this.skipPaused);
                                                      if(_loc4_)
                                                      {
                                                         §§push(!§§pop());
                                                         if(_loc4_)
                                                         {
                                                            var _temp_13:* = §§pop();
                                                            §§push(_temp_13);
                                                            §§push(_temp_13);
                                                            if(!_loc5_)
                                                            {
                                                               addr00e8:
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§pop();
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr00f9:
                                                                        §§push(_loc3_);
                                                                        if(!(_loc5_ && Boolean(_loc3_)))
                                                                        {
                                                                           addr0114:
                                                                           §§push(LoaderStatus.PAUSED);
                                                                           if(_loc4_)
                                                                           {
                                                                              addr0120:
                                                                              §§push(§§pop() == §§pop());
                                                                              if(!(_loc5_ && Boolean(_loc2_)))
                                                                              {
                                                                                 addr012f:
                                                                                 var _temp_16:* = §§pop();
                                                                                 §§push(_temp_16);
                                                                                 §§push(_temp_16);
                                                                                 if(!(_loc5_ && Boolean(_loc1_)))
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       if(_loc4_ || Boolean(_loc2_))
                                                                                       {
                                                                                          addr0150:
                                                                                          §§pop();
                                                                                          if(_loc4_ || Boolean(_loc1_))
                                                                                          {
                                                                                             addr015f:
                                                                                             §§push(this.skipFailed);
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                addr0169:
                                                                                                §§push(!§§pop());
                                                                                                if(_loc4_ || Boolean(this))
                                                                                                {
                                                                                                   addr0178:
                                                                                                   var _temp_21:* = §§pop();
                                                                                                   addr0179:
                                                                                                   §§push(_temp_21);
                                                                                                   if(_temp_21)
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(!(_loc4_ || Boolean(_loc3_)))
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         addr0199:
                                                                                                         addr0193:
                                                                                                         addr0192:
                                                                                                         §§push(_loc3_ == LoaderStatus.FAILED);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr019a:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!(_loc5_ && Boolean(_loc2_)))
                                                                                                {
                                                                                                   addr01ac:
                                                                                                   _cachedBytesLoaded += _loc2_.bytesLoaded;
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                }
                                                                                                _cachedBytesTotal += _loc2_.bytesTotal;
                                                                                             }
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr0169);
                                                                                    }
                                                                                    §§goto(addr019a);
                                                                                 }
                                                                                 §§goto(addr0179);
                                                                              }
                                                                              §§goto(addr0150);
                                                                           }
                                                                           §§goto(addr0199);
                                                                        }
                                                                        §§goto(addr0193);
                                                                     }
                                                                     §§goto(addr015f);
                                                                  }
                                                               }
                                                               §§goto(addr012f);
                                                            }
                                                            §§goto(addr0179);
                                                         }
                                                         §§goto(addr0178);
                                                      }
                                                      §§goto(addr019a);
                                                   }
                                                   §§goto(addr01ac);
                                                }
                                                §§goto(addr0150);
                                             }
                                             §§goto(addr012f);
                                          }
                                          §§goto(addr00e8);
                                       }
                                       §§goto(addr0150);
                                    }
                                    §§goto(addr0120);
                                 }
                                 §§goto(addr0114);
                              }
                              §§goto(addr00f9);
                           }
                           §§goto(addr0193);
                        }
                        §§goto(addr0114);
                     }
                     §§goto(addr0192);
                  }
                  §§goto(addr0216);
               }
            }
            §§goto(addr0217);
         }
         if(!(_loc5_ && Boolean(this)))
         {
            _cacheIsDirty = false;
         }
      }
      
      public function insert(param1:LoaderCore, param2:uint = 999999999) : LoaderCore
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:* = null;
         if(_loc6_)
         {
            §§push(param1 == null);
            if(!_loc7_)
            {
               var _temp_1:* = §§pop();
               §§push(_temp_1);
               §§push(_temp_1);
               if(_loc6_)
               {
                  if(!§§pop())
                  {
                     if(!_loc7_)
                     {
                        §§pop();
                        if(!_loc7_)
                        {
                           §§push(param1 == this);
                           if(!(_loc7_ && Boolean(_loc3_)))
                           {
                              addr0050:
                              var _temp_3:* = §§pop();
                              addr0051:
                              §§push(_temp_3);
                              if(!_temp_3)
                              {
                                 if(!(_loc7_ && Boolean(this)))
                                 {
                                    addr0063:
                                    §§pop();
                                    if(!(_loc7_ && Boolean(param1)))
                                    {
                                       addr007c:
                                       if(_status == LoaderStatus.DISPOSED)
                                       {
                                          if(!(_loc7_ && Boolean(this)))
                                          {
                                             return null;
                                          }
                                       }
                                       else
                                       {
                                          if(this != param1.rootLoader)
                                          {
                                             if(_loc6_)
                                             {
                                                _removeLoader(param1,false);
                                                if(_loc6_ || Boolean(param2))
                                                {
                                                   addr00bc:
                                                   §§push(param1.rootLoader);
                                                   if(_loc6_)
                                                   {
                                                      if(§§pop() == _globalRootLoader)
                                                      {
                                                         if(!(_loc7_ && Boolean(param2)))
                                                         {
                                                            addr00df:
                                                            param1.rootLoader.remove(param1);
                                                            if(_loc6_ || Boolean(this))
                                                            {
                                                               addr00f2:
                                                               §§push(param2);
                                                               if(!(_loc7_ && Boolean(param1)))
                                                               {
                                                                  if(§§pop() > _loaders.length)
                                                                  {
                                                                     if(_loc6_ || Boolean(param1))
                                                                     {
                                                                        addr0118:
                                                                        §§push(_loaders);
                                                                        if(_loc6_)
                                                                        {
                                                                           addr0124:
                                                                           param2 = uint(§§pop().length);
                                                                           if(_loc6_)
                                                                           {
                                                                              addr012e:
                                                                              _loaders.splice(param2,0,param1);
                                                                              addr012b:
                                                                              if(_loc6_ || Boolean(param2))
                                                                              {
                                                                                 addr0144:
                                                                                 if(this != _globalRootLoader)
                                                                                 {
                                                                                    addr014c:
                                                                                    var _loc4_:* = 0;
                                                                                    var _loc5_:* = _listenerTypes;
                                                                                    for(_loc4_ in _loc5_)
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       if(!(_loc7_ && Boolean(param2)))
                                                                                       {
                                                                                          _loc3_ = §§pop();
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§push(_loc3_);
                                                                                          if(_loc6_ || Boolean(param2))
                                                                                          {
                                                                                             addr0185:
                                                                                             §§push("onProgress");
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                §§push(§§pop() == §§pop());
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   §§push(!§§pop());
                                                                                                   if(_loc6_ || Boolean(_loc3_))
                                                                                                   {
                                                                                                      var _temp_16:* = §§pop();
                                                                                                      §§push(_temp_16);
                                                                                                      if(_temp_16)
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               addr01d7:
                                                                                                               addr01c7:
                                                                                                               addr01c4:
                                                                                                               §§push(_loc3_ == "onInit");
                                                                                                               if(_loc6_ || Boolean(this))
                                                                                                               {
                                                                                                                  addr01d6:
                                                                                                                  §§push(!§§pop());
                                                                                                               }
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               if(!(_loc6_ || Boolean(param2)))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                            }
                                                                                                            param1.addEventListener(_listenerTypes[_loc3_],_passThroughEvent,false,-100,true);
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§goto(addr01d6);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr01d7);
                                                                                             }
                                                                                             §§goto(addr01c7);
                                                                                          }
                                                                                          §§goto(addr01c4);
                                                                                       }
                                                                                       §§goto(addr0185);
                                                                                    }
                                                                                    if(_loc6_ || Boolean(_loc3_))
                                                                                    {
                                                                                       param1.addEventListener(LoaderEvent.PROGRESS,_progressHandler,false,-100,true);
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          param1.addEventListener("prioritize",_prioritizeHandler,false,-100,true);
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             addr023f:
                                                                                             param1.addEventListener("dispose",_disposeHandler,false,-100,true);
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                _cacheIsDirty = true;
                                                                                                if(_loc6_ || Boolean(_loc3_))
                                                                                                {
                                                                                                   if(_status == LoaderStatus.LOADING)
                                                                                                   {
                                                                                                      if(_loc7_ && Boolean(this))
                                                                                                      {
                                                                                                      }
                                                                                                   }
                                                                                                   else if(_status != LoaderStatus.PAUSED)
                                                                                                   {
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         _status = LoaderStatus.READY;
                                                                                                         if(!(_loc7_ && Boolean(param1)))
                                                                                                         {
                                                                                                            addr02e5:
                                                                                                            §§push(this.autoLoad);
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  var _temp_23:* = §§pop();
                                                                                                                  §§push(_temp_23);
                                                                                                                  if(_temp_23)
                                                                                                                  {
                                                                                                                     if(_loc6_ || Boolean(param1))
                                                                                                                     {
                                                                                                                        addr030a:
                                                                                                                        §§pop();
                                                                                                                        if(!(_loc7_ && Boolean(this)))
                                                                                                                        {
                                                                                                                           §§goto(addr0324);
                                                                                                                        }
                                                                                                                        §§goto(addr0356);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr0324:
                                                                                                                  addr0319:
                                                                                                                  if(param1.status == LoaderStatus.READY)
                                                                                                                  {
                                                                                                                     if(!_loc7_)
                                                                                                                     {
                                                                                                                        addr032e:
                                                                                                                        if(_status != LoaderStatus.LOADING)
                                                                                                                        {
                                                                                                                           if(_loc6_ || Boolean(param2))
                                                                                                                           {
                                                                                                                              addr0356:
                                                                                                                              this.load(false);
                                                                                                                              if(_loc7_ && Boolean(_loc3_))
                                                                                                                              {
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           _loadNext(null);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr0376);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr030a);
                                                                                                         }
                                                                                                         §§goto(addr0356);
                                                                                                      }
                                                                                                      §§goto(addr0376);
                                                                                                   }
                                                                                                   else if(_prePauseStatus == LoaderStatus.COMPLETED)
                                                                                                   {
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         addr02cb:
                                                                                                         _prePauseStatus = LoaderStatus.READY;
                                                                                                         if(_loc6_ || Boolean(_loc3_))
                                                                                                         {
                                                                                                            §§goto(addr02e5);
                                                                                                         }
                                                                                                         §§goto(addr0319);
                                                                                                      }
                                                                                                      addr0376:
                                                                                                      return param1;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr02e5);
                                                                                             }
                                                                                             §§goto(addr032e);
                                                                                          }
                                                                                          §§goto(addr02cb);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr0319);
                                                                                 }
                                                                                 §§goto(addr023f);
                                                                              }
                                                                              §§goto(addr014c);
                                                                           }
                                                                           §§goto(addr0144);
                                                                        }
                                                                        §§goto(addr012e);
                                                                     }
                                                                     §§goto(addr0144);
                                                                  }
                                                                  §§goto(addr012b);
                                                               }
                                                               §§goto(addr0124);
                                                            }
                                                            §§goto(addr012b);
                                                         }
                                                         §§goto(addr0144);
                                                      }
                                                      §§goto(addr00f2);
                                                   }
                                                   §§goto(addr00df);
                                                }
                                                §§goto(addr00f2);
                                             }
                                          }
                                          §§goto(addr00bc);
                                       }
                                       §§goto(addr012b);
                                    }
                                    §§goto(addr0144);
                                 }
                              }
                              §§goto(addr007c);
                           }
                           §§goto(addr0063);
                        }
                        §§goto(addr0118);
                     }
                     §§goto(addr0063);
                  }
                  §§goto(addr0050);
               }
               §§goto(addr0051);
            }
            §§goto(addr0050);
         }
         §§goto(addr0144);
      }
      
      public function getChildren(param1:Boolean = false, param2:Boolean = false) : Array
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:Array = [];
         var _loc4_:int = int(_loaders.length);
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            §§push(param2);
            if(_loc7_ || Boolean(this))
            {
               §§push(!§§pop());
               if(_loc7_ || Boolean(_loc3_))
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  §§push(_temp_4);
                  if(!_loc6_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc6_)
                        {
                           §§pop();
                           if(!(_loc6_ && Boolean(_loc3_)))
                           {
                              §§push(_loaders);
                              if(!(_loc6_ && param2))
                              {
                                 §§push(_loc5_);
                                 if(!(_loc6_ && param2))
                                 {
                                    §§push(§§pop()[§§pop()] is LoaderMax);
                                    if(!(_loc6_ && param1))
                                    {
                                       §§push(!§§pop());
                                       if(_loc7_ || Boolean(this))
                                       {
                                          addr00bd:
                                          if(§§pop())
                                          {
                                             if(_loc7_ || param1)
                                             {
                                                _loc3_.push(_loaders[_loc5_]);
                                                if(_loc6_)
                                                {
                                                   continue;
                                                }
                                                addr00e1:
                                                §§push(param1);
                                                if(_loc7_)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc6_)
                                                   {
                                                      var _temp_11:* = §§pop();
                                                      addr00f0:
                                                      §§push(_temp_11);
                                                      if(_temp_11)
                                                      {
                                                         if(_loc7_ || Boolean(_loc3_))
                                                         {
                                                            addr0102:
                                                            §§pop();
                                                            if(!(_loc7_ || param1))
                                                            {
                                                               continue;
                                                            }
                                                            addr0116:
                                                            addr0114:
                                                            addr0111:
                                                            §§push(Boolean(_loaders[_loc5_].hasOwnProperty("getChildren")));
                                                         }
                                                      }
                                                   }
                                                   addr0122:
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc7_ || Boolean(_loc3_)))
                                                      {
                                                         continue;
                                                      }
                                                      addr0142:
                                                      _loc3_ = _loc3_.concat(_loaders[_loc5_].getChildren(true,param2));
                                                   }
                                                   _loc5_++;
                                                   if(_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr0102);
                                             }
                                             §§goto(addr0142);
                                          }
                                          §§goto(addr00e1);
                                       }
                                       §§goto(addr0122);
                                    }
                                    §§goto(addr00bd);
                                 }
                                 §§goto(addr0116);
                              }
                              §§goto(addr0114);
                           }
                           §§goto(addr0111);
                        }
                     }
                     §§goto(addr00bd);
                  }
                  §§goto(addr00f0);
               }
            }
            §§goto(addr0102);
         }
         return _loc3_;
      }
      
      protected function _auditSize(param1:Event = null) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:LoaderCore = null;
         var _loc5_:Boolean = false;
         if(_loc7_)
         {
            if(param1 != null)
            {
               if(!(_loc8_ && Boolean(param1)))
               {
                  param1.target.removeEventListener("auditedSize",_auditSize);
                  if(!_loc8_)
                  {
                     addr004e:
                     param1.target.removeEventListener(LoaderEvent.FAIL,_auditSize);
                  }
                  addr0060:
                  var _loc2_:uint = _loaders.length;
                  if(_loc7_)
                  {
                     if(this.skipPaused)
                     {
                        addr0075:
                        §§push(LoaderStatus.COMPLETED);
                        if(!(_loc8_ && Boolean(param1)))
                        {
                           §§push(§§pop());
                           if(_loc8_ && Boolean(_loc2_))
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(LoaderStatus.PAUSED);
                        if(_loc7_ || _loc3_)
                        {
                           §§push(§§pop());
                           if(!_loc8_)
                           {
                              addr00b7:
                              §§push(§§pop());
                           }
                           var _loc3_:* = §§pop();
                           var _loc6_:int = 0;
                           while(_loc6_ < _loc2_)
                           {
                              _loc4_ = _loaders[_loc6_];
                              §§push(_loc4_.auditedSize);
                              if(!(_loc8_ && _loc3_))
                              {
                                 §§push(!§§pop());
                                 if(!(_loc8_ && Boolean(_loc2_)))
                                 {
                                    var _temp_8:* = §§pop();
                                    §§push(_temp_8);
                                    if(_temp_8)
                                    {
                                       if(!_loc8_)
                                       {
                                          addr0107:
                                          §§pop();
                                          if(!(_loc8_ && _loc3_))
                                          {
                                             §§push(_loc4_.status <= _loc3_);
                                             if(!(_loc8_ && Boolean(this)))
                                             {
                                                addr012b:
                                                if(§§pop())
                                                {
                                                   if(!(_loc8_ && _loc3_))
                                                   {
                                                      §§push(_loc5_);
                                                      if(_loc7_ || Boolean(this))
                                                      {
                                                         addr014d:
                                                         if(!§§pop())
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               addr0157:
                                                               _loc4_.addEventListener("auditedSize",_auditSize,false,-100,true);
                                                               if(!_loc8_)
                                                               {
                                                                  _loc4_.addEventListener(LoaderEvent.FAIL,_auditSize,false,-100,true);
                                                                  if(_loc8_ && Boolean(param1))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  addr018d:
                                                                  _loc5_ = true;
                                                                  addr018c:
                                                                  if(!(_loc7_ || Boolean(_loc2_)))
                                                                  {
                                                                     continue;
                                                                  }
                                                               }
                                                               _loc4_.auditSize();
                                                               if(!(_loc8_ && Boolean(this)))
                                                               {
                                                                  addr01b1:
                                                                  _loc6_++;
                                                               }
                                                               continue;
                                                            }
                                                         }
                                                         §§goto(addr018c);
                                                      }
                                                      §§goto(addr018d);
                                                   }
                                                }
                                                §§goto(addr01b1);
                                             }
                                             §§goto(addr014d);
                                          }
                                          §§goto(addr0157);
                                       }
                                       §§goto(addr014d);
                                    }
                                    §§goto(addr012b);
                                 }
                              }
                              §§goto(addr0107);
                           }
                           if(!(_loc8_ && Boolean(param1)))
                           {
                              if(!_loc5_)
                              {
                                 if(_loc7_)
                                 {
                                    if(_status == LoaderStatus.LOADING)
                                    {
                                       if(!_loc8_)
                                       {
                                          addr01f3:
                                          _loadNext(null);
                                          if(!(_loc8_ && Boolean(_loc2_)))
                                          {
                                             addr0209:
                                             dispatchEvent(new Event("auditedSize"));
                                          }
                                       }
                                       §§goto(addr0216);
                                    }
                                    §§goto(addr0209);
                                 }
                                 §§goto(addr01f3);
                              }
                              addr0216:
                              return;
                           }
                           §§goto(addr01f3);
                        }
                     }
                     §§goto(addr00b7);
                  }
                  §§goto(addr0075);
               }
               §§goto(addr004e);
            }
         }
         §§goto(addr0060);
      }
      
      public function getChildrenByStatus(param1:int, param2:Boolean = false) : Array
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc3_:Array = [];
         var _loc4_:Array = getChildren(param2,false);
         var _loc5_:int = int(_loc4_.length);
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            if(LoaderCore(_loc4_[_loc6_]).status == param1)
            {
               if(!(_loc7_ || param2))
               {
                  continue;
               }
               _loc3_.push(_loc4_[_loc6_]);
               if(_loc8_ && Boolean(param1))
               {
                  continue;
               }
            }
            _loc6_++;
            if(!(_loc7_ || param2))
            {
               break;
            }
         }
         return _loc3_;
      }
   }
}

