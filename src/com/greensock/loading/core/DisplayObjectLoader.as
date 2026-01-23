package com.greensock.loading.core
{
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.display.ContentDisplay;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.net.LocalConnection;
   import flash.system.ApplicationDomain;
   import flash.system.Capabilities;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   
   public class DisplayObjectLoader extends LoaderItem
   {
      
      protected static var _gcDispatcher:Sprite;
      
      protected static var _gcCycles:uint = 0;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         _gcCycles = 0;
      }
      
      protected var _initted:Boolean;
      
      protected var _stealthMode:Boolean;
      
      protected var _sprite:Sprite;
      
      protected var _context:LoaderContext;
      
      protected var _loader:Loader;
      
      public function DisplayObjectLoader(param1:*, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param2))
         {
            super(param1,param2);
            if(!(_loc4_ && _loc3_))
            {
               _refreshLoader(false);
               if(_loc3_)
               {
                  if(LoaderMax.contentDisplayClass is Class)
                  {
                     if(!(_loc4_ && param1))
                     {
                        _sprite = new LoaderMax.contentDisplayClass(this);
                        if(!_loc4_)
                        {
                           addr008c:
                           if(!_sprite.hasOwnProperty("rawContent"))
                           {
                              if(!_loc4_)
                              {
                                 §§goto(addr00a0);
                              }
                           }
                        }
                        §§goto(addr00c4);
                     }
                     §§goto(addr008c);
                  }
                  else
                  {
                     _sprite = new ContentDisplay(this);
                  }
                  §§goto(addr00c4);
               }
               addr00a0:
               throw new Error("LoaderMax.contentDisplayClass must be set to a class with a \'rawContent\' property, like com.greensock.loading.display.ContentDisplay");
            }
            addr00c4:
            return;
         }
         §§goto(addr008c);
      }
      
      protected static function _forceGCHandler(param1:Event) : void
      {
         var event:Event;
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         event = param1;
         if(_loc6_)
         {
            if(_gcCycles == 0)
            {
               if(_loc6_ || DisplayObjectLoader)
               {
                  _gcDispatcher.removeEventListener(Event.ENTER_FRAME,_forceGCHandler);
                  if(!(_loc5_ && _loc2_))
                  {
                     _gcDispatcher = null;
                     if(_loc6_ || DisplayObjectLoader)
                     {
                        try
                        {
                           new LocalConnection().connect("FORCE_GC");
                           addr00a3:
                           if(!_loc5_)
                           {
                              new LocalConnection().connect("FORCE_GC");
                           }
                        }
                        catch(error:Error)
                        {
                        }
                     }
                     §§goto(addr00e8);
                  }
               }
               §§goto(addr00a3);
            }
            else
            {
               var _loc3_:* = §§findproperty(_gcCycles);
               var _loc4_:* = _loc3_._gcCycles - 1;
               if(!(_loc5_ && Boolean(param1)))
               {
                  _loc3_._gcCycles = _loc4_;
               }
               if(!_loc5_)
               {
                  §§goto(addr00a3);
               }
            }
            addr00e8:
            return;
         }
         §§goto(addr00a3);
      }
      
      public static function forceGC(param1:uint = 1) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(_gcCycles < param1)
            {
               if(_loc3_ || _loc3_)
               {
                  _gcCycles = param1;
                  if(_loc3_ || DisplayObjectLoader)
                  {
                     if(_gcDispatcher == null)
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr006a:
                           _gcDispatcher = new Sprite();
                           if(_loc3_)
                           {
                              addr007a:
                              _gcDispatcher.addEventListener(Event.ENTER_FRAME,_forceGCHandler,false,0,true);
                           }
                        }
                     }
                  }
                  §§goto(addr008c);
               }
               §§goto(addr007a);
            }
            addr008c:
            return;
         }
         §§goto(addr006a);
      }
      
      protected function _securityErrorHandler(param1:ErrorEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(_context == null);
            if(_loc2_)
            {
               §§push(!§§pop());
               if(!_loc3_)
               {
                  var _temp_1:* = §§pop();
                  §§push(_temp_1);
                  §§push(_temp_1);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           §§goto(addr0038);
                        }
                        §§goto(addr0087);
                     }
                     §§goto(addr0053);
                  }
                  §§goto(addr0054);
               }
               addr0038:
               §§pop();
               if(_loc2_ || Boolean(param1))
               {
                  §§push(_context.checkPolicyFile);
                  if(!_loc3_)
                  {
                     addr0053:
                     var _temp_3:* = §§pop();
                     addr0054:
                     §§push(_temp_3);
                     if(_temp_3)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           §§goto(addr0065);
                        }
                     }
                     §§goto(addr0088);
                  }
                  addr0065:
                  §§pop();
                  if(!_loc3_)
                  {
                     addr0088:
                     §§push(this.vars.context is LoaderContext);
                     if(_loc2_)
                     {
                        addr0087:
                        §§push(!§§pop());
                     }
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           _context = new LoaderContext(false);
                           if(_loc2_)
                           {
                              _scriptAccessDenied = true;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr00b8:
                                 dispatchEvent(new LoaderEvent(LoaderEvent.SCRIPT_ACCESS_DENIED,this,param1.text));
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr00e8:
                                    _errorHandler(param1);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       _load();
                                       if(_loc2_)
                                       {
                                       }
                                    }
                                 }
                              }
                              §§goto(addr0115);
                           }
                           §§goto(addr00e8);
                        }
                        §§goto(addr00b8);
                     }
                     else
                     {
                        _failHandler(param1);
                     }
                  }
               }
               §§goto(addr0115);
            }
            §§goto(addr0087);
         }
         addr0115:
      }
      
      override protected function _dump(param1:int = 0, param2:int = 0, param3:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!_loc4_)
         {
            if(!_stealthMode)
            {
               if(_loc5_ || Boolean(param2))
               {
                  _refreshLoader(Boolean(param1 != 2));
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr004f:
                     §§push(param1);
                     if(!(_loc4_ && param3))
                     {
                        §§push(1);
                        if(!_loc4_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(!(_loc4_ && Boolean(param1)))
                              {
                                 (_sprite as Object).rawContent = null;
                                 if(_loc4_)
                                 {
                                    addr00c4:
                                    (_sprite as Object).loader = null;
                                    if(!(_loc5_ || Boolean(this)))
                                    {
                                       §§goto(addr00fb);
                                    }
                                 }
                              }
                           }
                           else
                           {
                              §§push(param1);
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 addr00aa:
                                 §§push(2);
                                 if(_loc5_ || Boolean(param2))
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          §§goto(addr00c4);
                                       }
                                       §§goto(addr00fb);
                                    }
                                    else
                                    {
                                       addr00f1:
                                       addr00ef:
                                       if(param1 == 3)
                                       {
                                          if(!_loc4_)
                                          {
                                             addr00fb:
                                             (_sprite as Object).dispose(false,false);
                                             if(_loc5_ || Boolean(this))
                                             {
                                                addr0116:
                                                super._dump(param1,param2,param3);
                                             }
                                             §§goto(addr011e);
                                          }
                                          addr011e:
                                          return;
                                       }
                                    }
                                    §§goto(addr0116);
                                 }
                                 §§goto(addr00f1);
                              }
                              §§goto(addr00ef);
                           }
                           §§goto(addr0116);
                        }
                        §§goto(addr00f1);
                     }
                     §§goto(addr00aa);
                  }
               }
               §§goto(addr0116);
            }
            §§goto(addr004f);
         }
         §§goto(addr00c4);
      }
      
      protected function _determineScriptAccess() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            if(!_scriptAccessDenied)
            {
               if(!(_loc2_ && _loc1_))
               {
                  if(!_loader.contentLoaderInfo.childAllowsParent)
                  {
                     if(_loc1_)
                     {
                        _scriptAccessDenied = true;
                        if(!(_loc2_ && _loc1_))
                        {
                           addr006c:
                           dispatchEvent(new LoaderEvent(LoaderEvent.SCRIPT_ACCESS_DENIED,this,"Error #2123: Security sandbox violation: " + this + ". No policy files granted access."));
                        }
                        §§goto(addr008a);
                     }
                     §§goto(addr006c);
                  }
                  §§goto(addr008a);
               }
               §§goto(addr006c);
            }
         }
         addr008a:
      }
      
      override protected function _load() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            _prepRequest();
            if(!_loc2_)
            {
               if(this.vars.context is LoaderContext)
               {
                  if(_loc1_)
                  {
                     _context = this.vars.context;
                     if(!_loc2_)
                     {
                        addr00ee:
                        if(Capabilities.playerType != "Desktop")
                        {
                           if(!_loc2_)
                           {
                              §§goto(addr0102);
                           }
                        }
                        §§goto(addr0112);
                     }
                     addr0102:
                     Security.allowDomain(_url);
                     if(_loc1_)
                     {
                        addr0112:
                        _loader.load(_request,_context);
                     }
                     §§goto(addr011f);
                  }
                  else
                  {
                     addr0060:
                     if(LoaderMax.defaultContext != null)
                     {
                        if(_loc1_)
                        {
                           addr007b:
                           _context = LoaderMax.defaultContext;
                           if(_loc1_ || _loc2_)
                           {
                              addr0095:
                              if(_isLocal)
                              {
                                 if(_loc1_)
                                 {
                                    _context.securityDomain = null;
                                    if(!_loc1_)
                                    {
                                       _context = new LoaderContext(true,new ApplicationDomain(ApplicationDomain.currentDomain),SecurityDomain.currentDomain);
                                       §§goto(addr00be);
                                    }
                                 }
                              }
                              §§goto(addr00ee);
                           }
                           §§goto(addr00be);
                        }
                        §§goto(addr0095);
                     }
                     else if(!_isLocal)
                     {
                        if(_loc1_)
                        {
                           addr00be:
                           if(_loc1_)
                           {
                              §§goto(addr00ee);
                           }
                           addr011f:
                           return;
                        }
                        §§goto(addr0112);
                     }
                  }
               }
               else if(_context == null)
               {
                  if(_loc1_ || Boolean(this))
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr007b);
               }
               §§goto(addr00ee);
            }
         }
         §§goto(addr0060);
      }
      
      public function get rawContent() : *
      {
         return _content;
      }
      
      protected function _refreshLoader(param1:Boolean = true) : void
      {
         var unloadContent:Boolean;
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         unloadContent = param1;
         if(!(_loc4_ && param1))
         {
            if(_loader != null)
            {
               if(_loc5_)
               {
                  if(_status == LoaderStatus.LOADING)
                  {
                     try
                     {
                        addr0046:
                        _loader.close();
                        if(_loc5_ || Boolean(this))
                        {
                           addr006f:
                           _loader.contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS,_progressHandler);
                           if(_loc5_)
                           {
                              _loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,_completeHandler);
                              if(_loc5_)
                              {
                                 _loader.contentLoaderInfo.removeEventListener("ioError",_failHandler);
                                 if(_loc5_)
                                 {
                                    _loader.contentLoaderInfo.removeEventListener("securityError",_securityErrorHandler);
                                    if(_loc5_ || param1)
                                    {
                                       _loader.contentLoaderInfo.removeEventListener("httpStatus",_httpStatusHandler);
                                       if(_loc5_)
                                       {
                                          _loader.contentLoaderInfo.removeEventListener(Event.INIT,_initHandler);
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             if(_loader.hasOwnProperty("uncaughtErrorEvents"))
                                             {
                                                if(!_loc4_)
                                                {
                                                   Object(_loader).uncaughtErrorEvents.removeEventListener("uncaughtError",_errorHandler);
                                                   if(_loc5_)
                                                   {
                                                      addr0135:
                                                      §§push(unloadContent);
                                                      if(!_loc4_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               try
                                                               {
                                                                  addr0149:
                                                                  §§push(_loader.parent == null);
                                                                  if(!_loc4_)
                                                                  {
                                                                     var _temp_6:* = §§pop();
                                                                     §§push(_temp_6);
                                                                     if(_temp_6)
                                                                     {
                                                                        if(_loc5_ || param1)
                                                                        {
                                                                           addr016a:
                                                                           §§pop();
                                                                           if(_loc5_ || _loc3_)
                                                                           {
                                                                              addr0185:
                                                                              §§push(_sprite == null);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr0184:
                                                                                 §§push(!§§pop());
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!(_loc4_ && _loc2_))
                                                                                 {
                                                                                    _sprite.addChild(_loader);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr01a7:
                                                                                       if(_loader.hasOwnProperty("unloadAndStop"))
                                                                                       {
                                                                                          if(!(_loc4_ && _loc2_))
                                                                                          {
                                                                                             (_loader as Object).unloadAndStop();
                                                                                             if(!(_loc4_ && Boolean(this)))
                                                                                             {
                                                                                                addr0216:
                                                                                                if(_loader.parent)
                                                                                                {
                                                                                                   if(_loc5_ || param1)
                                                                                                   {
                                                                                                      addr022e:
                                                                                                      _loader.parent.removeChild(_loader);
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         addr0241:
                                                                                                         §§push(§§findproperty(forceGC));
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            if(this.hasOwnProperty("getClass"))
                                                                                                            {
                                                                                                               addr0257:
                                                                                                               §§push(3);
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr026c:
                                                                                                                  §§push(§§pop());
                                                                                                               }
                                                                                                               §§pop().forceGC(§§pop());
                                                                                                               if(!(_loc4_ && _loc2_))
                                                                                                               {
                                                                                                                  addr0280:
                                                                                                                  _initted = false;
                                                                                                                  if(_loc5_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr0295:
                                                                                                                     _loader = new Loader();
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        addr02a8:
                                                                                                                        _loader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,_progressHandler,false,0,true);
                                                                                                                        if(_loc5_ || _loc2_)
                                                                                                                        {
                                                                                                                           addr02cc:
                                                                                                                           _loader.contentLoaderInfo.addEventListener(Event.COMPLETE,_completeHandler,false,0,true);
                                                                                                                           if(!(_loc4_ && param1))
                                                                                                                           {
                                                                                                                              _loader.contentLoaderInfo.addEventListener("ioError",_failHandler,false,0,true);
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 _loader.contentLoaderInfo.addEventListener("securityError",_securityErrorHandler,false,0,true);
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    addr0321:
                                                                                                                                    _loader.contentLoaderInfo.addEventListener("httpStatus",_httpStatusHandler,false,0,true);
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       addr033a:
                                                                                                                                       _loader.contentLoaderInfo.addEventListener(Event.INIT,_initHandler,false,0,true);
                                                                                                                                       if(!(_loc4_ && Boolean(this)))
                                                                                                                                       {
                                                                                                                                          §§goto(addr036b);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0387);
                                                                                                                                    }
                                                                                                                                    addr036b:
                                                                                                                                    if(_loader.hasOwnProperty("uncaughtErrorEvents"))
                                                                                                                                    {
                                                                                                                                       if(!(_loc4_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          addr0387:
                                                                                                                                          Object(_loader).uncaughtErrorEvents.addEventListener("uncaughtError",_errorHandler,false,0,true);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr03a2);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0387);
                                                                                                                              }
                                                                                                                              §§goto(addr03a2);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr036b);
                                                                                                                     }
                                                                                                                     §§goto(addr033a);
                                                                                                                  }
                                                                                                                  §§goto(addr02cc);
                                                                                                               }
                                                                                                               §§goto(addr0321);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(1);
                                                                                                            }
                                                                                                            §§goto(addr026c);
                                                                                                         }
                                                                                                         §§goto(addr0257);
                                                                                                      }
                                                                                                      §§goto(addr036b);
                                                                                                   }
                                                                                                   §§goto(addr02a8);
                                                                                                }
                                                                                                §§goto(addr0241);
                                                                                             }
                                                                                             §§goto(addr03a2);
                                                                                          }
                                                                                          §§goto(addr0321);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          _loader.unload();
                                                                                          if(_loc5_ || _loc2_)
                                                                                          {
                                                                                             §§goto(addr0216);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr022e);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr0280);
                                                                              }
                                                                              §§goto(addr01a7);
                                                                           }
                                                                           §§goto(addr02a8);
                                                                        }
                                                                        §§goto(addr0184);
                                                                     }
                                                                     §§goto(addr0185);
                                                                  }
                                                                  §§goto(addr0184);
                                                               }
                                                               catch(error:Error)
                                                               {
                                                                  var _loc3_:* = §§dup(error);
                                                                  §§goto(addr0216);
                                                               }
                                                               §§goto(addr03a2);
                                                            }
                                                            §§goto(addr02a8);
                                                         }
                                                         §§goto(addr0241);
                                                      }
                                                      §§goto(addr016a);
                                                   }
                                                   §§goto(addr0149);
                                                }
                                                §§goto(addr033a);
                                             }
                                             §§goto(addr0135);
                                          }
                                          §§goto(addr01a7);
                                       }
                                       §§goto(addr0295);
                                    }
                                    §§goto(addr0387);
                                 }
                                 §§goto(addr0216);
                              }
                              §§goto(addr036b);
                           }
                           §§goto(addr0321);
                        }
                        §§goto(addr02a8);
                     }
                     catch(error:Error)
                     {
                        _loc3_ = §§dup(error);
                     }
                     addr03a2:
                     return;
                  }
                  §§goto(addr006f);
               }
               §§goto(addr0046);
            }
            §§goto(addr0280);
         }
         §§goto(addr0046);
      }
      
      override public function get content() : *
      {
         return _sprite;
      }
      
      public function setContentDisplay(param1:Sprite) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            _sprite = param1;
         }
      }
      
      protected function _initHandler(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(!_initted)
            {
               if(_loc2_)
               {
                  _initted = true;
                  if(_loc2_)
                  {
                     addr0031:
                     if(_content == null)
                     {
                        if(_loc2_)
                        {
                           addr004a:
                           §§push(§§findproperty(_content));
                           if(_loc2_)
                           {
                              §§pop()._content = _scriptAccessDenied ? _loader : _loader.content;
                              if(!_loc3_)
                              {
                                 addr007c:
                                 (_sprite as Object).rawContent = _content as DisplayObject;
                                 if(_loc2_)
                                 {
                                    addr0091:
                                    dispatchEvent(new LoaderEvent(LoaderEvent.INIT,this));
                                 }
                                 §§goto(addr00a4);
                              }
                              §§goto(addr0091);
                           }
                           §§goto(addr0059);
                        }
                        §§goto(addr00a4);
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr0091);
               }
               §§goto(addr0031);
            }
            addr00a4:
            return;
         }
         §§goto(addr004a);
      }
   }
}

