package com.greensock.loading
{
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.DisplayObjectLoader;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.AVM1Movie;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.media.SoundTransform;
   import flash.utils.getQualifiedClassName;
   import flash.utils.getTimer;
   
   public class SWFLoader extends DisplayObjectLoader
   {
      
      private static var _classActivated:Boolean;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc1_))
      {
         _classActivated = _activateClass("SWFLoader",SWFLoader,"swf");
      }
      
      protected var _queue:LoaderMax;
      
      protected var _loaderFailed:Boolean;
      
      protected var _rslAddedCount:uint;
      
      protected var _loadOnExitStealth:Boolean;
      
      protected var _hasRSL:Boolean;
      
      protected var _loaderCompleted:Boolean;
      
      protected var _lastPTUncaughtError:Event;
      
      public function SWFLoader(param1:*, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(this)))
         {
            super(param1,param2);
            if(!_loc4_)
            {
               _preferEstimatedBytesInAudit = true;
               if(!(_loc4_ && Boolean(param2)))
               {
                  _type = "SWFLoader";
               }
            }
         }
      }
      
      override public function set url(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            if(_url != param1)
            {
               if(!_loc3_)
               {
                  §§push(_status == LoaderStatus.LOADING);
                  if(!(_loc3_ && _loc2_))
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     §§push(_temp_3);
                     if(_loc2_)
                     {
                        if(§§pop())
                        {
                           if(_loc2_ || _loc2_)
                           {
                              addr0066:
                              §§pop();
                              if(_loc2_)
                              {
                                 addr006c:
                                 §§push(!_initted);
                                 if(_loc2_)
                                 {
                                    addr0080:
                                    var _temp_5:* = §§pop();
                                    addr0081:
                                    §§push(_temp_5);
                                    if(_temp_5)
                                    {
                                       if(_loc2_)
                                       {
                                          §§pop();
                                          if(_loc2_)
                                          {
                                             addr0099:
                                             addr0090:
                                             §§push(_loaderFailed);
                                             if(!_loc3_)
                                             {
                                                addr0098:
                                                §§push(!§§pop());
                                             }
                                             if(§§pop())
                                             {
                                                if(!_loc3_)
                                                {
                                                   §§goto(addr00a2);
                                                }
                                             }
                                          }
                                          §§goto(addr00ae);
                                       }
                                    }
                                    §§goto(addr0099);
                                 }
                                 §§goto(addr0098);
                              }
                              §§goto(addr0090);
                           }
                        }
                        §§goto(addr0080);
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr0066);
               }
               addr00a2:
               _loadOnExitStealth = true;
               if(!_loc3_)
               {
                  addr00ae:
                  super.url = param1;
               }
               §§goto(addr00b3);
            }
            addr00b3:
            return;
         }
         §§goto(addr006c);
      }
      
      override protected function _errorHandler(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            if(!_suppressUncaughtError(param1))
            {
               if(!_loc2_)
               {
                  super._errorHandler(param1);
               }
            }
         }
      }
      
      override protected function _determineScriptAccess() : void
      {
         var mc:DisplayObject;
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         mc = null;
         try
         {
            mc = _loader.content;
            if(!_loc3_)
            {
               if(_loader.content is AVM1Movie)
               {
                  if(!(_loc3_ && _loc1_))
                  {
                     addr00a0:
                     _scriptAccessDenied = true;
                     if(!_loc3_)
                     {
                        dispatchEvent(new LoaderEvent(LoaderEvent.SCRIPT_ACCESS_DENIED,this,"AVM1Movie denies script access"));
                     }
                  }
               }
               return;
            }
         }
         catch(error:Error)
         {
            §§push(error);
            var _temp_3:* = error;
            error = §§pop();
            if(_loc4_)
            {
               _scriptAccessDenied = true;
            }
            dispatchEvent(new LoaderEvent(LoaderEvent.SCRIPT_ACCESS_DENIED,this,error.message));
            return;
         }
         §§goto(addr00a0);
      }
      
      override protected function _load() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            if(_stealthMode)
            {
               if(!_loc1_)
               {
                  _stealthMode = _loadOnExitStealth;
                  if(_loc1_)
                  {
                     addr0074:
                     super._load();
                     if(!_loc2_)
                     {
                        addr00be:
                        _queue.load(false);
                        addr00bb:
                     }
                  }
                  §§goto(addr00c3);
               }
               §§goto(addr00bb);
            }
            else if(!_initted)
            {
               if(!(_loc1_ && Boolean(this)))
               {
                  addr005a:
                  _loader.visible = false;
                  if(_loc2_)
                  {
                     _sprite.addChild(_loader);
                     if(_loc2_)
                     {
                        §§goto(addr0074);
                     }
                     else
                     {
                        addr00a6:
                        _changeQueueListeners(true);
                        if(!(_loc1_ && _loc2_))
                        {
                           §§goto(addr00bb);
                        }
                     }
                  }
                  §§goto(addr00c3);
               }
               §§goto(addr00bb);
            }
            else
            {
               §§push(_queue);
               if(!(_loc1_ && _loc1_))
               {
                  if(§§pop() != null)
                  {
                     if(_loc2_)
                     {
                        §§goto(addr00a6);
                     }
                  }
                  addr00c3:
                  return;
               }
            }
            §§goto(addr00be);
         }
         §§goto(addr005a);
      }
      
      public function getClass(param1:String) : Class
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:Object = null;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         if(!_loc6_)
         {
            §§push(_content == null);
            if(!(_loc6_ && Boolean(this)))
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(!_temp_2)
               {
                  if(!(_loc6_ && Boolean(this)))
                  {
                     §§goto(addr0050);
                  }
               }
               §§goto(addr005b);
            }
            addr0050:
            §§pop();
            if(_loc5_)
            {
               addr005b:
               if(_scriptAccessDenied)
               {
                  if(_loc5_ || Boolean(param1))
                  {
                     return null;
                  }
               }
               else
               {
                  if(_content.loaderInfo.applicationDomain.hasDefinition(param1))
                  {
                     if(_loc5_)
                     {
                        §§goto(addr0098);
                     }
                  }
                  addr00c3:
                  §§push(_queue);
                  if(!(_loc6_ && Boolean(_loc3_)))
                  {
                     if(§§pop() != null)
                     {
                        addr00dc:
                        _loc3_ = _queue.getChildren(true,true);
                        if(!_loc6_)
                        {
                           _loc4_ = int(_loc3_.length);
                        }
                        while(true)
                        {
                           §§push(_loc4_);
                           if(!_loc6_)
                           {
                              §§push(§§pop() - 1);
                              if(_loc5_ || Boolean(_loc2_))
                              {
                                 var _temp_7:* = §§pop();
                                 §§push(_temp_7);
                                 §§push(_temp_7);
                                 if(_loc5_ || Boolean(param1))
                                 {
                                    §§push(§§pop());
                                    if(!(_loc6_ && Boolean(_loc3_)))
                                    {
                                       _loc4_ = §§pop();
                                       addr0180:
                                       §§push(-1);
                                    }
                                 }
                                 if(§§pop() <= §§pop())
                                 {
                                    break;
                                 }
                                 if(_loc3_[_loc4_] is SWFLoader)
                                 {
                                    if(!(_loc5_ || Boolean(_loc3_)))
                                    {
                                       break;
                                    }
                                    _loc2_ = (_loc3_[_loc4_] as SWFLoader).getClass(param1);
                                    if(!_loc6_)
                                    {
                                       if(_loc2_ != null)
                                       {
                                          if(!_loc6_)
                                          {
                                             return _loc2_ as Class;
                                          }
                                       }
                                    }
                                 }
                                 continue;
                              }
                           }
                           §§goto(addr0180);
                        }
                     }
                     return null;
                  }
                  §§goto(addr00dc);
               }
            }
            addr0098:
            return _content.loaderInfo.applicationDomain.getDefinition(param1);
         }
         §§goto(addr00c3);
      }
      
      public function getContent(param1:String) : *
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            §§push(param1);
            if(!_loc4_)
            {
               §§push(§§pop() == this.name);
               if(!_loc4_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(!_temp_2)
                  {
                     if(_loc3_)
                     {
                        addr0048:
                        §§pop();
                        if(_loc3_)
                        {
                           addr0061:
                           addr004f:
                           if(param1 == _url)
                           {
                              if(!_loc4_)
                              {
                                 return this.content;
                              }
                           }
                        }
                        addr0070:
                        var _loc2_:LoaderCore = this.getLoader(param1);
                        if(!_loc4_)
                        {
                           return _loc2_ != null ? _loc2_.content : null;
                        }
                        §§goto(addr0086);
                     }
                  }
                  §§goto(addr0061);
               }
               §§goto(addr0048);
            }
            §§goto(addr004f);
         }
         §§goto(addr0070);
      }
      
      override protected function _failHandler(param1:Event, param2:Boolean = true) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            §§push(param1.type == "ioError");
            if(!(_loc3_ && Boolean(param1)))
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               §§push(_temp_3);
               if(_loc4_)
               {
                  if(!§§pop())
                  {
                     if(_loc4_)
                     {
                        §§pop();
                        if(!_loc3_)
                        {
                           §§push(param1.type == "securityError");
                           if(_loc4_)
                           {
                              addr0052:
                              var _temp_4:* = §§pop();
                              addr0053:
                              §§push(_temp_4);
                              if(_temp_4)
                              {
                                 if(_loc4_)
                                 {
                                    §§pop();
                                    if(!_loc3_)
                                    {
                                       §§push(param1.target == _loader.contentLoaderInfo);
                                       if(!_loc3_)
                                       {
                                          addr0073:
                                          if(§§pop())
                                          {
                                             if(!_loc3_)
                                             {
                                                addr007c:
                                                _loaderFailed = true;
                                                if(_loc4_)
                                                {
                                                   addr0089:
                                                   addr008c:
                                                   if(_loadOnExitStealth)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         _dump(1,_status,true);
                                                         if(!(_loc3_ && Boolean(param1)))
                                                         {
                                                            _load();
                                                            if(_loc4_)
                                                            {
                                                               return;
                                                            }
                                                            addr0120:
                                                            dispatchEvent(new LoaderEvent(LoaderEvent.CANCEL,this));
                                                            if(_loc4_)
                                                            {
                                                               dispatchEvent(new LoaderEvent(LoaderEvent.FAIL,this,this.toString() + " > " + (param1 as Object).text));
                                                               addr0139:
                                                               if(_loc4_)
                                                               {
                                                                  return;
                                                               }
                                                            }
                                                            addr0175:
                                                            super._failHandler(param1,param2);
                                                            §§goto(addr017c);
                                                         }
                                                         §§goto(addr0139);
                                                      }
                                                      addr017c:
                                                      return;
                                                   }
                                                   addr00d7:
                                                   if(param1.target == _queue)
                                                   {
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         addr00f0:
                                                         _status = LoaderStatus.FAILED;
                                                         if(_loc4_)
                                                         {
                                                            addr0102:
                                                            _time = getTimer() - _time;
                                                            if(!(_loc3_ && Boolean(param1)))
                                                            {
                                                               §§goto(addr0120);
                                                            }
                                                            §§goto(addr0175);
                                                         }
                                                         §§goto(addr0120);
                                                      }
                                                   }
                                                   §§goto(addr0175);
                                                }
                                                §§goto(addr0120);
                                             }
                                             §§goto(addr0089);
                                          }
                                          §§goto(addr00d7);
                                       }
                                       §§goto(addr008c);
                                    }
                                    §§goto(addr00f0);
                                 }
                                 §§goto(addr008c);
                              }
                           }
                           §§goto(addr0073);
                        }
                        §§goto(addr007c);
                     }
                  }
                  §§goto(addr0052);
               }
               §§goto(addr0053);
            }
            §§goto(addr0052);
         }
         §§goto(addr0102);
      }
      
      override protected function _refreshLoader(param1:Boolean = true) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && param1))
         {
            super._refreshLoader(param1);
            if(!_loc3_)
            {
               addr0029:
               _loaderCompleted = false;
            }
            return;
         }
         §§goto(addr0029);
      }
      
      public function getLoader(param1:String) : *
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §§push(_queue);
            if(_loc3_ || _loc3_)
            {
               return §§pop() != null ? _queue.getLoader(param1) : null;
            }
            §§goto(addr003d);
         }
         §§goto(addr003a);
      }
      
      override protected function _dump(param1:int = 0, param2:int = 0, param3:Boolean = false) : void
      {
         var newStatus:int;
         var scrubLevel:int;
         var content:*;
         var suppressEvents:Boolean;
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         §§push(§§newactivation());
         if(_loc6_)
         {
            §§pop().§§slot[4] = undefined;
            if(!(_loc7_ && param3))
            {
               §§push(§§newactivation());
               if(!_loc7_)
               {
                  §§push(param1);
                  if(!_loc7_)
                  {
                     §§pop().§§slot[1] = §§pop();
                     if(_loc6_ || Boolean(param2))
                     {
                        §§push(§§newactivation());
                        if(!(_loc7_ && Boolean(param1)))
                        {
                           addr0064:
                           §§pop().§§slot[2] = param2;
                           addr0063:
                           if(!(_loc7_ && param3))
                           {
                              addr0074:
                              §§push(§§newactivation());
                              if(!(_loc7_ && Boolean(this)))
                              {
                                 addr0084:
                                 §§pop().§§slot[3] = param3;
                                 if(!_loc7_)
                                 {
                                    addr008d:
                                    _loaderCompleted = false;
                                    if(!_loc7_)
                                    {
                                       §§push(_status == LoaderStatus.LOADING);
                                       if(_loc6_)
                                       {
                                          var _temp_6:* = §§pop();
                                          §§push(_temp_6);
                                          §§push(_temp_6);
                                          if(_loc6_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc6_ || Boolean(this))
                                                {
                                                   §§pop();
                                                   if(_loc6_)
                                                   {
                                                      §§push(!_initted);
                                                      if(_loc6_)
                                                      {
                                                         addr00d4:
                                                         var _temp_8:* = §§pop();
                                                         §§push(_temp_8);
                                                         §§push(_temp_8);
                                                         if(_loc6_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc7_ && Boolean(param1)))
                                                               {
                                                                  §§pop();
                                                                  if(!(_loc7_ && Boolean(this)))
                                                                  {
                                                                     §§push(_loaderFailed);
                                                                     if(_loc6_ || param3)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        if(_loc6_ || Boolean(param2))
                                                                        {
                                                                           addr011c:
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 addr0126:
                                                                                 _stealthMode = true;
                                                                                 if(!(_loc7_ && param3))
                                                                                 {
                                                                                    super._dump(scrubLevel,newStatus,suppressEvents);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§goto(addr0152);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr0276:
                                                                                       §§push(_queue);
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§pop().cancel();
                                                                                          if(_loc7_ && Boolean(param1))
                                                                                          {
                                                                                          }
                                                                                          addr02c2:
                                                                                          if(_stealthMode)
                                                                                          {
                                                                                             try
                                                                                             {
                                                                                                addr02c9:
                                                                                                _loader.close();
                                                                                                if(_loc6_ || Boolean(param2))
                                                                                                {
                                                                                                   addr02f4:
                                                                                                   _loadOnExitStealth = false;
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§push(§§findproperty(_stealthMode));
                                                                                                      §§push(§§findproperty(_hasRSL));
                                                                                                      var _loc5_:*;
                                                                                                      _loaderFailed = _loc5_ = false;
                                                                                                      §§push(_loc5_);
                                                                                                      if(_loc6_ || param3)
                                                                                                      {
                                                                                                         _loc5_ = §§pop();
                                                                                                         §§push(_loc5_);
                                                                                                      }
                                                                                                      §§pop()._hasRSL = §§pop();
                                                                                                      §§pop()._stealthMode = _loc5_;
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         _cacheIsDirty = true;
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            §§push(§§newactivation());
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               if(§§pop().§§slot[1] >= 1)
                                                                                                               {
                                                                                                                  if(!(_loc7_ && Boolean(param2)))
                                                                                                                  {
                                                                                                                     _queue = null;
                                                                                                                     if(!(_loc7_ && param3))
                                                                                                                     {
                                                                                                                        _initted = false;
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           super._dump(scrubLevel,newStatus,suppressEvents);
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                              addr03e0:
                                                                                                                              _content = content;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr03ea);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr03a0:
                                                                                                                  content = _content;
                                                                                                                  if(!(_loc7_ && Boolean(param2)))
                                                                                                                  {
                                                                                                                     addr03c1:
                                                                                                                     super._dump(scrubLevel,newStatus,suppressEvents);
                                                                                                                     if(_loc6_ || Boolean(this))
                                                                                                                     {
                                                                                                                        §§goto(addr03e0);
                                                                                                                     }
                                                                                                                     §§goto(addr03ea);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr03e0);
                                                                                                            }
                                                                                                            §§goto(addr03a0);
                                                                                                         }
                                                                                                         §§goto(addr03ea);
                                                                                                      }
                                                                                                      §§goto(addr03c1);
                                                                                                   }
                                                                                                   §§goto(addr03e0);
                                                                                                }
                                                                                                §§goto(addr03c1);
                                                                                             }
                                                                                             catch(error:Error)
                                                                                             {
                                                                                             }
                                                                                             addr03ea:
                                                                                             return;
                                                                                          }
                                                                                          §§goto(addr02f4);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr02ab:
                                                                                          §§pop().dispose(Boolean(scrubLevel != 2));
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             §§goto(addr02c2);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr02c9);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr018b:
                                                                                    §§push(!_scriptAccessDenied);
                                                                                    if(!(_loc7_ && param3))
                                                                                    {
                                                                                       addr019d:
                                                                                       var _temp_25:* = §§pop();
                                                                                       addr019e:
                                                                                       §§push(_temp_25);
                                                                                       if(_temp_25)
                                                                                       {
                                                                                          if(_loc6_ || param3)
                                                                                          {
                                                                                             §§pop();
                                                                                             if(!(_loc7_ && Boolean(param1)))
                                                                                             {
                                                                                                §§push(§§newactivation());
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   addr01d4:
                                                                                                   §§push(§§pop().§§slot[1]);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§push(2);
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            addr01eb:
                                                                                                            §§push(!§§pop());
                                                                                                            if(_loc6_ || param3)
                                                                                                            {
                                                                                                               addr01fa:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     addr0204:
                                                                                                                     _stopMovieClips(_loader.content);
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        §§push(_loader.content in _rootLookup);
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           addr0227:
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 addr0231:
                                                                                                                                 _queue = LoaderMax(_rootLookup[_loader.content]);
                                                                                                                                 if(!_loc7_)
                                                                                                                                 {
                                                                                                                                    addr0250:
                                                                                                                                    _changeQueueListeners(false);
                                                                                                                                    if(_loc6_ || Boolean(param2))
                                                                                                                                    {
                                                                                                                                       addr026c:
                                                                                                                                       addr026a:
                                                                                                                                       addr0268:
                                                                                                                                       if(scrubLevel == 0)
                                                                                                                                       {
                                                                                                                                          if(!_loc7_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr0276);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr02a1:
                                                                                                                                          delete _rootLookup[_loader.content];
                                                                                                                                          if(!_loc7_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr02ab);
                                                                                                                                             §§push(_queue);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr02c2);
                                                                                                                                    }
                                                                                                                                    §§goto(addr02c9);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr02c2);
                                                                                                                        }
                                                                                                                        §§goto(addr02a1);
                                                                                                                     }
                                                                                                                     §§goto(addr0231);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr02c2);
                                                                                                            }
                                                                                                            §§goto(addr0227);
                                                                                                         }
                                                                                                         §§goto(addr01fa);
                                                                                                      }
                                                                                                      §§goto(addr026c);
                                                                                                   }
                                                                                                   §§goto(addr026a);
                                                                                                }
                                                                                                §§goto(addr0268);
                                                                                             }
                                                                                             §§goto(addr0204);
                                                                                          }
                                                                                          §§goto(addr02a1);
                                                                                       }
                                                                                       §§goto(addr01fa);
                                                                                    }
                                                                                    §§goto(addr0227);
                                                                                 }
                                                                                 §§goto(addr02c2);
                                                                              }
                                                                              §§goto(addr0250);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr0161:
                                                                              §§push(_initted);
                                                                              if(!_loc7_)
                                                                              {
                                                                                 addr016b:
                                                                                 var _temp_30:* = §§pop();
                                                                                 §§push(_temp_30);
                                                                                 §§push(_temp_30);
                                                                                 if(!(_loc7_ && Boolean(param2)))
                                                                                 {
                                                                                    addr017a:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          addr0184:
                                                                                          §§pop();
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             §§goto(addr018b);
                                                                                          }
                                                                                          §§goto(addr0231);
                                                                                       }
                                                                                       §§goto(addr01eb);
                                                                                    }
                                                                                    §§goto(addr019d);
                                                                                 }
                                                                                 §§goto(addr019e);
                                                                              }
                                                                              §§goto(addr0184);
                                                                           }
                                                                        }
                                                                        §§goto(addr01fa);
                                                                     }
                                                                     §§goto(addr0227);
                                                                  }
                                                                  §§goto(addr0161);
                                                               }
                                                               §§goto(addr0184);
                                                            }
                                                            §§goto(addr011c);
                                                         }
                                                         §§goto(addr019e);
                                                      }
                                                      §§goto(addr011c);
                                                   }
                                                   addr0152:
                                                   return;
                                                }
                                                §§goto(addr011c);
                                             }
                                             §§goto(addr00d4);
                                          }
                                          §§goto(addr017a);
                                       }
                                       §§goto(addr016b);
                                    }
                                    §§goto(addr0231);
                                 }
                                 §§goto(addr0126);
                              }
                              §§goto(addr01d4);
                           }
                           §§goto(addr0231);
                        }
                        §§goto(addr0084);
                     }
                     §§goto(addr0074);
                  }
                  §§goto(addr0064);
               }
               §§goto(addr0084);
            }
            §§goto(addr008d);
         }
         §§goto(addr0063);
      }
      
      protected function _stopMovieClips(param1:DisplayObject) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:MovieClip = param1 as MovieClip;
         if(_loc4_)
         {
            if(_loc2_ == null)
            {
               if(!(_loc5_ && _loc3_))
               {
                  §§goto(addr0037);
               }
            }
            else
            {
               _loc2_.stop();
            }
            var _loc3_:* = _loc2_.numChildren;
            do
            {
               §§push(_loc3_);
               if(!(_loc5_ && Boolean(param1)))
               {
                  §§push(§§pop() - 1);
                  if(_loc4_)
                  {
                     addr00a1:
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     §§push(_temp_4);
                     if(!_loc5_)
                     {
                        §§push(§§pop());
                        if(!(_loc5_ && Boolean(_loc2_)))
                        {
                           addr00b7:
                           _loc3_ = §§pop();
                           addr00b8:
                           §§push(-1);
                        }
                        if(§§pop() <= §§pop())
                        {
                           break;
                        }
                        continue;
                     }
                     §§goto(addr00b7);
                  }
                  §§goto(addr00b8);
               }
               §§goto(addr00a1);
            }
            while(_stopMovieClips(_loc2_.getChildAt(_loc3_)), _loc4_ || Boolean(_loc2_));
            
            return;
         }
         addr0037:
      }
      
      protected function _checkRequiredLoaders() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            §§push(_queue);
            if(_loc2_ || _loc1_)
            {
               §§push(null);
               if(_loc2_ || _loc1_)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc1_)
                  {
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     §§push(_temp_5);
                     if(!_loc1_)
                     {
                        if(§§pop())
                        {
                           if(!_loc1_)
                           {
                              §§pop();
                              if(!_loc1_)
                              {
                                 §§push(this.vars.integrateProgress == false);
                                 if(!_loc1_)
                                 {
                                    §§push(!§§pop());
                                    if(_loc2_)
                                    {
                                       addr006c:
                                       var _temp_6:* = §§pop();
                                       §§push(_temp_6);
                                       §§push(_temp_6);
                                       if(!_loc1_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc1_ && _loc2_))
                                             {
                                                addr008d:
                                                §§pop();
                                                if(_loc2_)
                                                {
                                                   addr0093:
                                                   §§push(!_scriptAccessDenied);
                                                   if(_loc2_)
                                                   {
                                                      addr009c:
                                                      var _temp_8:* = §§pop();
                                                      addr009d:
                                                      §§push(_temp_8);
                                                      if(_temp_8)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            §§pop();
                                                            if(_loc2_)
                                                            {
                                                               addr00b7:
                                                               addr00ac:
                                                               §§push(_content == null);
                                                               if(!_loc1_)
                                                               {
                                                                  addr00b6:
                                                                  §§push(!§§pop());
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  if(_loc2_ || _loc2_)
                                                                  {
                                                                     _queue = _rootLookup[_content];
                                                                     if(_loc2_ || Boolean(this))
                                                                     {
                                                                        addr00ee:
                                                                        §§push(_queue);
                                                                        if(!_loc1_)
                                                                        {
                                                                           addr00f7:
                                                                           if(§§pop() != null)
                                                                           {
                                                                              if(!_loc1_)
                                                                              {
                                                                                 addr0100:
                                                                                 _changeQueueListeners(true);
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    addr0110:
                                                                                    _queue.load(false);
                                                                                    if(!_loc1_)
                                                                                    {
                                                                                       _cacheIsDirty = true;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr0121);
                                                                        }
                                                                        §§goto(addr0110);
                                                                     }
                                                                     §§goto(addr0121);
                                                                  }
                                                                  §§goto(addr0100);
                                                               }
                                                            }
                                                            addr0121:
                                                            return;
                                                         }
                                                         §§goto(addr00b6);
                                                      }
                                                   }
                                                   §§goto(addr00b7);
                                                }
                                                §§goto(addr00ac);
                                             }
                                          }
                                          §§goto(addr009c);
                                       }
                                       §§goto(addr009d);
                                    }
                                    §§goto(addr008d);
                                 }
                                 §§goto(addr006c);
                              }
                              §§goto(addr00ee);
                           }
                           §§goto(addr00b6);
                        }
                        §§goto(addr006c);
                     }
                     §§goto(addr009d);
                  }
                  §§goto(addr009c);
               }
               §§goto(addr00f7);
            }
            §§goto(addr0110);
         }
         §§goto(addr0093);
      }
      
      override protected function _completeHandler(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:SoundTransform = null;
         if(_loc4_)
         {
            _loaderCompleted = true;
            if(!_loc3_)
            {
               _checkRequiredLoaders();
               if(!_loc3_)
               {
                  _calculateProgress();
                  if(!_loc3_)
                  {
                     §§goto(addr0044);
                  }
                  §§goto(addr0117);
               }
               addr0044:
               if(this.progress == 1)
               {
                  if(!_loc3_)
                  {
                     §§push(!_scriptAccessDenied);
                     if(!_loc3_)
                     {
                        var _temp_2:* = §§pop();
                        §§push(_temp_2);
                        §§push(_temp_2);
                        if(_loc4_)
                        {
                           if(§§pop())
                           {
                              if(!_loc3_)
                              {
                                 addr006c:
                                 §§pop();
                                 if(_loc4_ || Boolean(param1))
                                 {
                                    addr0087:
                                    §§push(this.vars.autoPlay == false);
                                    if(_loc4_ || Boolean(param1))
                                    {
                                       addr009f:
                                       var _temp_5:* = §§pop();
                                       addr00a0:
                                       §§push(_temp_5);
                                       if(_temp_5)
                                       {
                                          if(_loc4_)
                                          {
                                             §§pop();
                                             if(_loc4_)
                                             {
                                                §§goto(addr00b8);
                                             }
                                             §§goto(addr0117);
                                          }
                                       }
                                    }
                                    §§goto(addr00b8);
                                 }
                                 §§goto(addr00c1);
                              }
                              addr00b8:
                              addr00b1:
                              if(_content is MovieClip)
                              {
                                 if(!_loc3_)
                                 {
                                    addr00c1:
                                    _loc2_ = _content.soundTransform;
                                    if(_loc4_ || Boolean(this))
                                    {
                                       _loc2_.volume = 1;
                                       if(_loc4_)
                                       {
                                          addr00f0:
                                          _content.soundTransform = _loc2_;
                                       }
                                       §§goto(addr00f7);
                                    }
                                    §§goto(addr00f0);
                                 }
                                 §§goto(addr010c);
                              }
                              addr00f7:
                              _changeQueueListeners(false);
                              if(!(_loc3_ && Boolean(param1)))
                              {
                                 addr010c:
                                 super._determineScriptAccess();
                                 if(_loc4_)
                                 {
                                    addr0117:
                                    super._completeHandler(param1);
                                 }
                              }
                              §§goto(addr011d);
                           }
                           §§goto(addr009f);
                        }
                        §§goto(addr00a0);
                     }
                     §§goto(addr006c);
                  }
                  §§goto(addr0087);
               }
               addr011d:
               return;
            }
            §§goto(addr00b1);
         }
         §§goto(addr0087);
      }
      
      protected function _changeQueueListeners(param1:Boolean) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:* = null;
         if(_loc5_)
         {
            if(_queue != null)
            {
               if(!_loc6_)
               {
                  §§push(param1);
                  if(_loc5_ || _loc3_)
                  {
                     §§push(§§pop());
                     if(!(_loc6_ && param1))
                     {
                        var _temp_3:* = §§pop();
                        §§push(_temp_3);
                        if(_temp_3)
                        {
                           if(!(_loc6_ && Boolean(this)))
                           {
                              §§pop();
                              if(!(_loc6_ && _loc3_))
                              {
                                 addr0084:
                                 addr006b:
                                 §§push(this.vars.integrateProgress == false);
                                 if(_loc5_ || _loc3_)
                                 {
                                    addr0083:
                                    §§push(!§§pop());
                                 }
                                 if(§§pop())
                                 {
                                    addr0088:
                                    var _loc3_:int = 0;
                                    var _loc4_:* = _listenerTypes;
                                    loop2:
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc4_,_loc3_));
                                       if(_loc6_ && Boolean(_loc3_))
                                       {
                                          break;
                                       }
                                       if(!§§pop())
                                       {
                                          if(!(_loc6_ && param1))
                                          {
                                             if(_loc5_)
                                             {
                                                if(_loc5_)
                                                {
                                                   §§push(_queue);
                                                   if(_loc5_ || param1)
                                                   {
                                                      §§push(LoaderEvent.COMPLETE);
                                                      if(!(_loc6_ && Boolean(_loc2_)))
                                                      {
                                                         §§pop().addEventListener(§§pop(),_completeHandler,false,-100,true);
                                                         if(!(_loc6_ && Boolean(this)))
                                                         {
                                                            §§push(_queue);
                                                            if(_loc5_)
                                                            {
                                                               §§push(LoaderEvent.PROGRESS);
                                                               if(!_loc6_)
                                                               {
                                                                  §§pop().addEventListener(§§pop(),_progressHandler,false,-100,true);
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(_queue);
                                                                     if(_loc5_ || param1)
                                                                     {
                                                                        §§push(LoaderEvent.FAIL);
                                                                        if(_loc5_ || Boolean(_loc2_))
                                                                        {
                                                                           addr01f9:
                                                                           §§pop().addEventListener(§§pop(),_failHandler,false,-100,true);
                                                                           if(_loc6_)
                                                                           {
                                                                              addr0237:
                                                                              §§push(_queue);
                                                                              if(!(_loc6_ && Boolean(_loc3_)))
                                                                              {
                                                                                 addr0248:
                                                                                 §§push(LoaderEvent.PROGRESS);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    addr0254:
                                                                                    §§pop().removeEventListener(§§pop(),_progressHandler);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       addr026a:
                                                                                       _queue.removeEventListener(LoaderEvent.FAIL,_failHandler);
                                                                                       addr0264:
                                                                                       if(!(_loc6_ && Boolean(_loc2_)))
                                                                                       {
                                                                                          addr027f:
                                                                                          _loc3_ = 0;
                                                                                          if(!(_loc6_ && param1))
                                                                                          {
                                                                                             _loc4_ = _listenerTypes;
                                                                                             if(!(_loc6_ && Boolean(this)))
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§hasnext(_loc4_,_loc3_));
                                                                                                   break loop2;
                                                                                                }
                                                                                                addr0350:
                                                                                                return;
                                                                                                addr0345:
                                                                                                addr034e:
                                                                                                addr034c:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                _queue.removeEventListener(_listenerTypes[_loc2_],_passThroughEvent);
                                                                                                §§goto(addr0345);
                                                                                             }
                                                                                             addr0334:
                                                                                          }
                                                                                          §§goto(addr034e);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr0350);
                                                                                 }
                                                                                 §§goto(addr026a);
                                                                              }
                                                                              §§goto(addr0264);
                                                                           }
                                                                           §§goto(addr0350);
                                                                        }
                                                                        §§goto(addr026a);
                                                                     }
                                                                     §§goto(addr0248);
                                                                  }
                                                                  §§goto(addr027f);
                                                               }
                                                               §§goto(addr0254);
                                                            }
                                                            §§goto(addr0264);
                                                         }
                                                         §§goto(addr027f);
                                                      }
                                                      §§goto(addr01f9);
                                                   }
                                                   §§goto(addr0248);
                                                }
                                                §§goto(addr0350);
                                             }
                                             §§goto(addr034e);
                                          }
                                          §§goto(addr034c);
                                       }
                                       else
                                       {
                                          §§push(§§nextname(_loc3_,_loc4_));
                                          if(_loc5_)
                                          {
                                             _loc2_ = §§pop();
                                             if(!(_loc5_ || Boolean(_loc3_)))
                                             {
                                                continue;
                                             }
                                             §§push(_loc2_);
                                             if(!(_loc6_ && Boolean(_loc3_)))
                                             {
                                                addr00bf:
                                                §§push("onProgress");
                                                if(_loc5_ || Boolean(this))
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc5_)
                                                   {
                                                      §§push(!§§pop());
                                                      if(!(_loc6_ && Boolean(this)))
                                                      {
                                                         var _temp_22:* = §§pop();
                                                         §§push(_temp_22);
                                                         if(_temp_22)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               §§pop();
                                                               if(!(_loc6_ && Boolean(this)))
                                                               {
                                                                  addr0114:
                                                                  addr0104:
                                                                  addr0101:
                                                                  §§push(_loc2_ == "onInit");
                                                                  if(_loc5_ || Boolean(_loc3_))
                                                                  {
                                                                     addr0113:
                                                                     §§push(!§§pop());
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        _queue.addEventListener(_listenerTypes[_loc2_],_passThroughEvent,false,-100,true);
                                                                     }
                                                                  }
                                                               }
                                                               continue;
                                                            }
                                                            §§goto(addr0113);
                                                         }
                                                         §§goto(addr0114);
                                                      }
                                                      §§goto(addr0113);
                                                   }
                                                   §§goto(addr0114);
                                                }
                                                §§goto(addr0104);
                                             }
                                             §§goto(addr0101);
                                          }
                                          §§goto(addr00bf);
                                       }
                                    }
                                    while(§§pop())
                                    {
                                       §§push(§§nextname(_loc3_,_loc4_));
                                       if(_loc5_)
                                       {
                                          _loc2_ = §§pop();
                                          if(_loc5_)
                                          {
                                             §§push(_loc2_);
                                             if(!(_loc6_ && Boolean(_loc3_)))
                                             {
                                                addr02ca:
                                                §§push("onProgress");
                                                if(_loc5_ || param1)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc5_ || Boolean(_loc3_))
                                                   {
                                                      §§push(!§§pop());
                                                      if(_loc5_)
                                                      {
                                                         var _temp_28:* = §§pop();
                                                         §§push(_temp_28);
                                                         if(_temp_28)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               §§pop();
                                                               if(_loc5_)
                                                               {
                                                                  addr0322:
                                                                  addr0307:
                                                                  addr0304:
                                                                  addr0303:
                                                                  §§push(_loc2_ == "onInit");
                                                                  if(_loc5_ || Boolean(this))
                                                                  {
                                                                     addr0321:
                                                                     §§push(!§§pop());
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc5_ || Boolean(this))
                                                                     {
                                                                        §§goto(addr0334);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr0345);
                                                            }
                                                            §§goto(addr0321);
                                                         }
                                                         §§goto(addr0322);
                                                      }
                                                      §§goto(addr0321);
                                                   }
                                                   §§goto(addr0322);
                                                }
                                                §§goto(addr0307);
                                             }
                                             §§goto(addr0304);
                                          }
                                          §§goto(addr0303);
                                       }
                                       §§goto(addr02ca);
                                    }
                                    §§goto(addr034c);
                                 }
                                 else
                                 {
                                    §§push(_queue);
                                    if(!_loc6_)
                                    {
                                       §§push(LoaderEvent.COMPLETE);
                                       if(!(_loc6_ && Boolean(_loc3_)))
                                       {
                                          §§pop().removeEventListener(§§pop(),_completeHandler);
                                          if(_loc5_)
                                          {
                                             §§goto(addr0237);
                                          }
                                          §§goto(addr027f);
                                       }
                                       §§goto(addr0254);
                                    }
                                 }
                                 §§goto(addr0264);
                              }
                              §§goto(addr0088);
                           }
                        }
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0088);
            }
            §§goto(addr0350);
         }
         §§goto(addr006b);
      }
      
      override protected function _initHandler(param1:Event) : void
      {
         var awaitingLoad:Boolean;
         var className:String;
         var tempContent:DisplayObject;
         var event:Event;
         var rslPreloader:Object;
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(§§newactivation());
         if(!(_loc5_ && _loc2_))
         {
            §§push(false);
            if(_loc4_)
            {
               §§pop().§§slot[2] = §§pop();
               if(_loc4_)
               {
                  §§push(§§newactivation());
                  if(_loc4_ || Boolean(param1))
                  {
                     §§push(null);
                     if(_loc4_)
                     {
                        §§pop().§§slot[3] = §§pop();
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(§§newactivation());
                           if(!_loc5_)
                           {
                              addr0068:
                              §§push(null);
                              if(!(_loc5_ && _loc3_))
                              {
                                 addr0077:
                                 §§pop().§§slot[4] = §§pop();
                                 if(!_loc5_)
                                 {
                                    addr0080:
                                    §§push(§§newactivation());
                                    if(_loc4_ || Boolean(param1))
                                    {
                                       addr0091:
                                       §§pop().§§slot[5] = null;
                                       addr0090:
                                       if(_loc4_ || Boolean(this))
                                       {
                                          §§push(§§newactivation());
                                          if(_loc4_ || Boolean(this))
                                          {
                                             §§pop().§§slot[1] = param1;
                                             if(!_loc5_)
                                             {
                                                §§goto(addr00bc);
                                             }
                                             §§goto(addr0160);
                                          }
                                          §§goto(addr0154);
                                       }
                                       §§goto(addr00de);
                                    }
                                    §§goto(addr00ee);
                                 }
                                 §§goto(addr0110);
                              }
                              §§goto(addr0091);
                           }
                           §§goto(addr0090);
                        }
                        §§goto(addr0080);
                     }
                     §§goto(addr0077);
                  }
                  §§goto(addr0068);
               }
               addr00bc:
               if(_stealthMode)
               {
                  if(!_loc5_)
                  {
                     _initted = true;
                     if(_loc4_ || Boolean(this))
                     {
                        addr00de:
                        §§push(§§newactivation());
                        if(!(_loc5_ && _loc2_))
                        {
                           addr00ee:
                           addr0100:
                           §§push(_loadOnExitStealth);
                           if(_loc4_ || Boolean(this))
                           {
                              §§push(§§pop());
                           }
                           §§pop().§§slot[2] = §§pop();
                           if(!(_loc5_ && _loc3_))
                           {
                              addr0110:
                              §§push(§§findproperty(_dump));
                              if(_loc4_ || Boolean(param1))
                              {
                                 if(_status == LoaderStatus.DISPOSED)
                                 {
                                    addr012e:
                                    §§push(3);
                                    if(_loc4_ || Boolean(param1))
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§push(1);
                                 }
                                 §§pop()._dump(§§pop(),_status,true);
                                 if(_loc4_)
                                 {
                                    §§goto(addr0154);
                                 }
                                 §§goto(addr0181);
                              }
                              §§goto(addr012e);
                           }
                           §§goto(addr0188);
                        }
                        addr0154:
                        if(awaitingLoad)
                        {
                           if(!_loc5_)
                           {
                              addr0160:
                              _load();
                              if(_loc5_)
                              {
                                 §§goto(addr0181);
                              }
                           }
                        }
                        §§goto(addr017a);
                     }
                     addr017a:
                     return;
                  }
                  §§goto(addr0160);
               }
               addr0181:
               _hasRSL = false;
               try
               {
                  addr0188:
                  §§push(§§newactivation());
                  if(!(_loc5_ && _loc3_))
                  {
                     §§pop().§§slot[3] = _loader.content;
                     if(!(_loc5_ && _loc2_))
                     {
                        §§push(§§newactivation());
                        if(_loc4_ || _loc2_)
                        {
                           §§push(getQualifiedClassName(tempContent));
                           if(_loc4_ || Boolean(this))
                           {
                              §§pop().§§slot[4] = §§pop();
                              if(!_loc5_)
                              {
                                 §§push(§§newactivation());
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop().§§slot[4]);
                                    if(!(_loc5_ && Boolean(param1)))
                                    {
                                       if(§§pop().substr(-13) == "__Preloader__")
                                       {
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             §§push(§§newactivation());
                                             if(!(_loc5_ && Boolean(this)))
                                             {
                                                §§pop().§§slot[5] = tempContent["__rslPreloader"];
                                                if(!_loc5_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc4_)
                                                   {
                                                      addr0243:
                                                      if(§§pop().§§slot[5] != null)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            §§push(§§newactivation());
                                                            if(!(_loc5_ && Boolean(this)))
                                                            {
                                                               addr026c:
                                                               §§pop().§§slot[4] = getQualifiedClassName(rslPreloader);
                                                               addr0260:
                                                               if(_loc4_)
                                                               {
                                                                  addr0274:
                                                                  §§push(§§newactivation());
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr027e:
                                                                     if(§§pop().§§slot[4] == "fl.rsl::RSLPreloader")
                                                                     {
                                                                        if(_loc4_ || Boolean(this))
                                                                        {
                                                                           _hasRSL = true;
                                                                           if(_loc4_ || Boolean(this))
                                                                           {
                                                                              §§goto(addr02a9);
                                                                           }
                                                                           §§goto(addr02fe);
                                                                        }
                                                                        addr02a9:
                                                                        _rslAddedCount = 0;
                                                                        if(_loc4_ || Boolean(this))
                                                                        {
                                                                           addr02c1:
                                                                           tempContent.addEventListener(Event.ADDED,_rslAddedHandler);
                                                                           addr02bf:
                                                                           if(_loc4_ || _loc3_)
                                                                           {
                                                                              addr02fe:
                                                                              if(!_hasRSL)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr030b:
                                                                                    _init();
                                                                                 }
                                                                              }
                                                                              §§goto(addr0312);
                                                                           }
                                                                           §§goto(addr030b);
                                                                        }
                                                                        §§goto(addr0312);
                                                                     }
                                                                     §§goto(addr02fe);
                                                                  }
                                                                  §§goto(addr02c1);
                                                               }
                                                               §§goto(addr030b);
                                                            }
                                                            §§goto(addr02c1);
                                                         }
                                                         §§goto(addr0274);
                                                      }
                                                      §§goto(addr02fe);
                                                   }
                                                   §§goto(addr0260);
                                                }
                                                §§goto(addr0312);
                                             }
                                             §§goto(addr02c1);
                                          }
                                          §§goto(addr030b);
                                       }
                                       §§goto(addr02fe);
                                    }
                                    §§goto(addr027e);
                                 }
                                 §§goto(addr0260);
                              }
                              §§goto(addr030b);
                           }
                           §§goto(addr026c);
                        }
                        §§goto(addr0260);
                     }
                     §§goto(addr02bf);
                  }
                  §§goto(addr0243);
               }
               catch(error:Error)
               {
                  §§goto(addr02fe);
               }
               addr0312:
               return;
            }
            §§goto(addr0100);
         }
         §§goto(addr0068);
      }
      
      protected function _rslAddedHandler(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_ || Boolean(this))
         {
            §§push(param1.target is DisplayObject);
            if(!_loc4_)
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               §§push(_temp_3);
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        §§pop();
                        if(_loc5_ || _loc2_)
                        {
                           §§push(param1.currentTarget is DisplayObjectContainer);
                           if(_loc5_ || Boolean(this))
                           {
                              addr0067:
                              var _temp_6:* = §§pop();
                              addr0068:
                              §§push(_temp_6);
                              if(_temp_6)
                              {
                                 if(!_loc4_)
                                 {
                                    §§pop();
                                    if(!_loc4_)
                                    {
                                       addr0086:
                                       if(param1.target.parent == param1.currentTarget)
                                       {
                                          if(_loc5_)
                                          {
                                             var _loc2_:* = §§findproperty(_rslAddedCount);
                                             var _loc3_:* = _loc2_._rslAddedCount + 1;
                                             if(_loc5_)
                                             {
                                                _loc2_._rslAddedCount = _loc3_;
                                             }
                                             if(_loc5_)
                                             {
                                                §§goto(addr00ba);
                                             }
                                             §§goto(addr00c9);
                                          }
                                          §§goto(addr00e1);
                                       }
                                       addr00ba:
                                       if(_rslAddedCount > 1)
                                       {
                                          if(!_loc4_)
                                          {
                                             addr00c9:
                                             param1.currentTarget.removeEventListener(Event.ADDED,_rslAddedHandler);
                                             if(!_loc4_)
                                             {
                                                addr00e1:
                                                if(_status == LoaderStatus.LOADING)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      addr00f4:
                                                      _content = param1.target;
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         _init();
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            addr012d:
                                                            _calculateProgress();
                                                            if(!_loc4_)
                                                            {
                                                               §§goto(addr013a);
                                                            }
                                                            §§goto(addr015b);
                                                         }
                                                      }
                                                      addr013a:
                                                      dispatchEvent(new LoaderEvent(LoaderEvent.PROGRESS,this));
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         addr015b:
                                                         _completeHandler(null);
                                                      }
                                                      §§goto(addr0163);
                                                   }
                                                   §§goto(addr012d);
                                                }
                                                §§goto(addr0163);
                                             }
                                             §§goto(addr013a);
                                          }
                                       }
                                       §§goto(addr0163);
                                    }
                                    addr0163:
                                    return;
                                 }
                              }
                           }
                           §§goto(addr0086);
                        }
                        §§goto(addr00e1);
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr0067);
               }
               §§goto(addr0068);
            }
            §§goto(addr0067);
         }
         §§goto(addr00f4);
      }
      
      override protected function _passThroughEvent(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §§push(param1.type == "uncaughtError");
            if(!_loc2_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               §§push(_temp_2);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        §§pop();
                        if(!(_loc2_ && _loc3_))
                        {
                           §§push(_suppressUncaughtError(param1));
                           if(_loc3_)
                           {
                              §§push(§§pop());
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr0072:
                                 §§push(!§§pop());
                                 if(!_loc2_)
                                 {
                                    var _temp_6:* = §§pop();
                                    addr0079:
                                    §§push(_temp_6);
                                    if(_temp_6)
                                    {
                                       if(!(_loc2_ && Boolean(param1)))
                                       {
                                          §§pop();
                                          if(!_loc2_)
                                          {
                                             addr00ab:
                                             addr009d:
                                             §§push(param1.target == _queue);
                                             if(!_loc2_)
                                             {
                                                addr00aa:
                                                §§push(!§§pop());
                                             }
                                             if(§§pop())
                                             {
                                                if(!(_loc2_ && Boolean(this)))
                                                {
                                                   super._passThroughEvent(param1);
                                                }
                                             }
                                          }
                                          return;
                                       }
                                       §§goto(addr00aa);
                                    }
                                    §§goto(addr00ab);
                                 }
                              }
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr009d);
                     }
                  }
                  §§goto(addr0072);
               }
               §§goto(addr0079);
            }
            §§goto(addr00aa);
         }
         §§goto(addr009d);
      }
      
      override protected function _progressHandler(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_status == LoaderStatus.LOADING)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  §§push(_queue == null);
                  if(!_loc4_)
                  {
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     §§push(_temp_4);
                     if(!(_loc4_ && Boolean(_loc2_)))
                     {
                        if(§§pop())
                        {
                           if(!(_loc4_ && Boolean(_loc2_)))
                           {
                              §§pop();
                              if(!(_loc4_ && Boolean(_loc3_)))
                              {
                                 addr0081:
                                 §§push(_initted);
                                 if(_loc5_)
                                 {
                                    §§goto(addr008b);
                                 }
                                 §§goto(addr0170);
                              }
                              §§goto(addr00fe);
                           }
                           §§goto(addr0127);
                        }
                        §§goto(addr008b);
                     }
                     §§goto(addr012e);
                  }
                  addr008b:
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        _checkRequiredLoaders();
                        if(!_loc4_)
                        {
                           §§goto(addr00a2);
                        }
                        §§goto(addr00b7);
                     }
                  }
                  addr00a2:
                  if(_dispatchProgress)
                  {
                     if(_loc5_ || Boolean(_loc2_))
                     {
                        addr00b7:
                        §§push(_cachedBytesLoaded);
                        if(_loc5_ || Boolean(_loc3_))
                        {
                           _loc2_ = §§pop();
                           if(_loc5_)
                           {
                              §§push(_cachedBytesTotal);
                              if(_loc5_ || Boolean(_loc2_))
                              {
                                 _loc3_ = §§pop();
                                 if(!(_loc4_ && Boolean(param1)))
                                 {
                                    addr00fe:
                                    _calculateProgress();
                                    if(_loc5_)
                                    {
                                       §§push(_cachedBytesLoaded == _cachedBytesTotal);
                                       if(_loc5_)
                                       {
                                          §§push(!§§pop());
                                          if(!(_loc4_ && Boolean(this)))
                                          {
                                             addr0127:
                                             var _temp_13:* = §§pop();
                                             §§push(_temp_13);
                                             §§push(_temp_13);
                                             if(_loc5_)
                                             {
                                                addr012e:
                                                if(§§pop())
                                                {
                                                   if(_loc5_ || Boolean(_loc3_))
                                                   {
                                                      §§pop();
                                                      if(_loc5_ || Boolean(this))
                                                      {
                                                         addr014f:
                                                         §§push(_loc2_);
                                                         if(_loc5_ || Boolean(this))
                                                         {
                                                            addr015e:
                                                            §§push(§§pop() == _cachedBytesLoaded);
                                                            if(!(_loc4_ && Boolean(this)))
                                                            {
                                                               addr0170:
                                                               §§push(!§§pop());
                                                               if(!_loc4_)
                                                               {
                                                                  addr0177:
                                                                  var _temp_18:* = §§pop();
                                                                  addr0178:
                                                                  §§push(_temp_18);
                                                                  if(!_temp_18)
                                                                  {
                                                                     if(!(_loc4_ && Boolean(_loc3_)))
                                                                     {
                                                                        §§goto(addr018a);
                                                                     }
                                                                     §§goto(addr01af);
                                                                  }
                                                                  §§goto(addr01b0);
                                                               }
                                                               addr018a:
                                                               §§pop();
                                                               if(!(_loc4_ && Boolean(_loc3_)))
                                                               {
                                                                  addr01b0:
                                                                  addr019a:
                                                                  addr0199:
                                                                  §§push(_loc3_ == _cachedBytesTotal);
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr01af:
                                                                     §§push(!§§pop());
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc4_ && Boolean(_loc2_)))
                                                                     {
                                                                        addr01c2:
                                                                        dispatchEvent(new LoaderEvent(LoaderEvent.PROGRESS,this));
                                                                        if(_loc4_)
                                                                        {
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr01e6);
                                                            }
                                                            §§goto(addr01b0);
                                                         }
                                                         §§goto(addr019a);
                                                      }
                                                      §§goto(addr01e6);
                                                   }
                                                   §§goto(addr0177);
                                                }
                                                §§goto(addr01b0);
                                             }
                                             §§goto(addr0178);
                                          }
                                          §§goto(addr0170);
                                       }
                                       §§goto(addr0127);
                                    }
                                    §§goto(addr014f);
                                 }
                                 §§goto(addr0199);
                              }
                              §§goto(addr015e);
                           }
                           §§goto(addr01e6);
                        }
                        §§goto(addr019a);
                     }
                     §§goto(addr0199);
                  }
                  else
                  {
                     _cacheIsDirty = true;
                  }
                  §§goto(addr01e6);
               }
               §§goto(addr01c2);
            }
            addr01e6:
            return;
         }
         §§goto(addr0081);
      }
      
      protected function _init() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SoundTransform = null;
         if(_loc3_)
         {
            _determineScriptAccess();
            if(!_loc2_)
            {
               addr002a:
               if(!_scriptAccessDenied)
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§push(_hasRSL);
                     if(_loc3_ || Boolean(this))
                     {
                        if(!§§pop())
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              _content = _loader.content;
                              if(_loc3_)
                              {
                                 addr0070:
                                 if(_content != null)
                                 {
                                    if(!_loc2_)
                                    {
                                       addr007d:
                                       §§push(this.vars.autoPlay == false);
                                       if(_loc3_ || Boolean(_loc1_))
                                       {
                                          var _temp_6:* = §§pop();
                                          §§push(_temp_6);
                                          §§push(_temp_6);
                                          if(_loc3_ || _loc3_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   §§pop();
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      §§push(_content is MovieClip);
                                                      if(_loc3_)
                                                      {
                                                         addr00cd:
                                                         if(§§pop())
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               addr00d6:
                                                               _loc1_ = _content.soundTransform;
                                                               if(_loc3_ || Boolean(this))
                                                               {
                                                                  _loc1_.volume = 0;
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     _content.soundTransform = _loc1_;
                                                                     if(_loc3_)
                                                                     {
                                                                        addr0118:
                                                                        _content.stop();
                                                                     }
                                                                     addr0120:
                                                                     _checkRequiredLoaders();
                                                                     if(!_loc2_)
                                                                     {
                                                                        addr012c:
                                                                        if(_loader.parent == _sprite)
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              §§push(_sprite.stage == null);
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§push(!§§pop());
                                                                                 if(_loc3_ || _loc2_)
                                                                                 {
                                                                                    var _temp_13:* = §§pop();
                                                                                    addr015a:
                                                                                    §§push(_temp_13);
                                                                                    if(_temp_13)
                                                                                    {
                                                                                       if(!(_loc2_ && Boolean(this)))
                                                                                       {
                                                                                          addr016b:
                                                                                          §§pop();
                                                                                          if(!(_loc2_ && Boolean(_loc1_)))
                                                                                          {
                                                                                             addr0183:
                                                                                             if(this.vars.suppressInitReparentEvents == true)
                                                                                             {
                                                                                                if(!(_loc2_ && _loc3_))
                                                                                                {
                                                                                                   _sprite.addEventListener(Event.ADDED_TO_STAGE,_captureFirstEvent,true,1000,true);
                                                                                                   if(_loc3_ || _loc2_)
                                                                                                   {
                                                                                                      addr01b4:
                                                                                                      _loader.addEventListener(Event.REMOVED_FROM_STAGE,_captureFirstEvent,true,1000,true);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         addr01cc:
                                                                                                         _sprite.removeChild(_loader);
                                                                                                         if(_loc3_ || Boolean(_loc1_))
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                      addr021a:
                                                                                                      super._initHandler(null);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr0207:
                                                                                                      _loader.visible = true;
                                                                                                      if(!(_loc2_ && Boolean(_loc1_)))
                                                                                                      {
                                                                                                         §§goto(addr021a);
                                                                                                      }
                                                                                                   }
                                                                                                   return;
                                                                                                }
                                                                                                §§goto(addr021a);
                                                                                             }
                                                                                             §§goto(addr01cc);
                                                                                          }
                                                                                          §§goto(addr021a);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr0183);
                                                                           }
                                                                           §§goto(addr01cc);
                                                                        }
                                                                        §§goto(addr021a);
                                                                     }
                                                                     §§goto(addr01b4);
                                                                  }
                                                                  §§goto(addr0118);
                                                               }
                                                               §§goto(addr0120);
                                                            }
                                                            §§goto(addr0207);
                                                         }
                                                         §§goto(addr0120);
                                                      }
                                                      §§goto(addr016b);
                                                   }
                                                   §§goto(addr0207);
                                                }
                                                §§goto(addr016b);
                                             }
                                             §§goto(addr00cd);
                                          }
                                          §§goto(addr015a);
                                       }
                                       §§goto(addr00cd);
                                    }
                                    §§goto(addr00d6);
                                 }
                                 §§goto(addr012c);
                              }
                              §§goto(addr007d);
                           }
                           §§goto(addr021a);
                        }
                        §§goto(addr0070);
                     }
                     §§goto(addr0183);
                  }
                  §§goto(addr0207);
               }
               else
               {
                  _content = _loader;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§goto(addr0207);
                  }
               }
               §§goto(addr021a);
            }
            §§goto(addr01b4);
         }
         §§goto(addr002a);
      }
      
      protected function _captureFirstEvent(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            param1.stopImmediatePropagation();
            if(_loc2_ || Boolean(this))
            {
               addr0029:
               param1.currentTarget.removeEventListener(param1.type,_captureFirstEvent);
            }
            return;
         }
         §§goto(addr0029);
      }
      
      override protected function _calculateProgress() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(§§findproperty(_cachedBytesLoaded));
            if(_loc1_)
            {
               if(_stealthMode)
               {
                  addr0024:
                  §§push(0);
                  if(_loc1_)
                  {
                  }
               }
               else
               {
                  §§push(_loader.contentLoaderInfo.bytesLoaded);
               }
               §§pop()._cachedBytesLoaded = §§pop();
               if(_loc1_)
               {
                  if(_loader.contentLoaderInfo.bytesTotal != 0)
                  {
                     if(_loc1_)
                     {
                        _cachedBytesTotal = _loader.contentLoaderInfo.bytesTotal;
                        if(_loc1_ || _loc2_)
                        {
                           addr0072:
                           §§push(_cachedBytesTotal < _cachedBytesLoaded);
                           if(_loc1_)
                           {
                              var _temp_2:* = §§pop();
                              §§push(_temp_2);
                              §§push(_temp_2);
                              if(!_loc2_)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc1_)
                                    {
                                       §§pop();
                                       if(!_loc2_)
                                       {
                                          §§push(_loaderCompleted);
                                          if(!_loc2_)
                                          {
                                             §§push(§§pop());
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                addr00a9:
                                                if(§§pop())
                                                {
                                                   if(!(_loc2_ && Boolean(this)))
                                                   {
                                                      addr00ba:
                                                      _cachedBytesTotal = _cachedBytesLoaded;
                                                      if(!(_loc2_ && _loc1_))
                                                      {
                                                         addr00d0:
                                                         if(this.vars.integrateProgress == false)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               addr01e7:
                                                               _cachedBytesTotal += _queue.bytesTotal;
                                                               if(!_loc1_)
                                                               {
                                                                  addr02f8:
                                                                  addr02fb:
                                                                  §§push(_queue.auditedSize);
                                                                  if(!(_loc2_ && Boolean(this)))
                                                                  {
                                                                     §§push(!§§pop());
                                                                     if(_loc1_ || Boolean(this))
                                                                     {
                                                                        addr0319:
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc2_ && Boolean(this)))
                                                                           {
                                                                              addr032a:
                                                                              _cachedBytesTotal = uint(this.vars.estimatedBytes);
                                                                              if(!_loc2_)
                                                                              {
                                                                                 addr0341:
                                                                                 §§push(_hasRSL);
                                                                                 if(!(_loc2_ && _loc2_))
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       var _temp_10:* = §§pop();
                                                                                       §§push(_temp_10);
                                                                                       §§push(_temp_10);
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          addr035d:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!(_loc2_ && Boolean(this)))
                                                                                             {
                                                                                                addr036e:
                                                                                                §§pop();
                                                                                                if(_loc1_ || Boolean(this))
                                                                                                {
                                                                                                   addr037c:
                                                                                                   §§push(_content == null);
                                                                                                   if(_loc1_)
                                                                                                   {
                                                                                                      addr0386:
                                                                                                      var _temp_13:* = §§pop();
                                                                                                      §§push(_temp_13);
                                                                                                      §§push(_temp_13);
                                                                                                      if(!(_loc2_ && Boolean(this)))
                                                                                                      {
                                                                                                         addr0394:
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            if(_loc1_ || _loc1_)
                                                                                                            {
                                                                                                               addr03a5:
                                                                                                               §§pop();
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  addr03ab:
                                                                                                                  §§push(!_initted);
                                                                                                                  if(!(_loc2_ && Boolean(this)))
                                                                                                                  {
                                                                                                                     addr03bc:
                                                                                                                     var _temp_17:* = §§pop();
                                                                                                                     addr03bd:
                                                                                                                     §§push(_temp_17);
                                                                                                                     if(_temp_17)
                                                                                                                     {
                                                                                                                        if(_loc1_)
                                                                                                                        {
                                                                                                                           §§goto(addr03c6);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr03d3);
                                                                                                               }
                                                                                                               §§goto(addr03ee);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr03d3);
                                                                                                      }
                                                                                                      §§goto(addr03bd);
                                                                                                   }
                                                                                                   §§goto(addr03d3);
                                                                                                }
                                                                                                §§goto(addr040c);
                                                                                             }
                                                                                             addr03c6:
                                                                                             §§pop();
                                                                                             if(_loc1_)
                                                                                             {
                                                                                                addr03d3:
                                                                                                if(_cachedBytesLoaded == _cachedBytesTotal)
                                                                                                {
                                                                                                   if(_loc1_ || _loc1_)
                                                                                                   {
                                                                                                      addr03ee:
                                                                                                      _cachedBytesLoaded = int(_cachedBytesLoaded * 0.99);
                                                                                                      if(_loc1_ || _loc2_)
                                                                                                      {
                                                                                                         addr040c:
                                                                                                         _cacheIsDirty = false;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr0413);
                                                                                                }
                                                                                                §§goto(addr040c);
                                                                                             }
                                                                                             §§goto(addr0413);
                                                                                          }
                                                                                          §§goto(addr0386);
                                                                                       }
                                                                                       §§goto(addr0394);
                                                                                    }
                                                                                    §§goto(addr036e);
                                                                                 }
                                                                                 §§goto(addr03d3);
                                                                              }
                                                                              §§goto(addr040c);
                                                                           }
                                                                           §§goto(addr03ab);
                                                                        }
                                                                        §§goto(addr0341);
                                                                     }
                                                                     §§goto(addr036e);
                                                                  }
                                                                  §§goto(addr0386);
                                                               }
                                                            }
                                                            §§goto(addr0341);
                                                         }
                                                         else
                                                         {
                                                            §§push(_queue);
                                                            if(_loc1_)
                                                            {
                                                               §§push(null);
                                                               if(!_loc2_)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(!(_loc2_ && _loc2_))
                                                                  {
                                                                     §§push(!§§pop());
                                                                     if(_loc1_)
                                                                     {
                                                                        var _temp_21:* = §§pop();
                                                                        §§push(_temp_21);
                                                                        §§push(_temp_21);
                                                                        if(!_loc2_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc1_ || _loc1_)
                                                                              {
                                                                                 §§pop();
                                                                                 if(!(_loc2_ && _loc1_))
                                                                                 {
                                                                                    §§push(uint(this.vars.estimatedBytes) < _cachedBytesLoaded);
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       var _temp_24:* = §§pop();
                                                                                       §§push(_temp_24);
                                                                                       §§push(_temp_24);
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                §§pop();
                                                                                                if(_loc1_ || _loc2_)
                                                                                                {
                                                                                                   addr015f:
                                                                                                   §§push(_queue);
                                                                                                   if(_loc1_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(§§pop().auditedSize);
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         addr0177:
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc1_)
                                                                                                         {
                                                                                                            addr017d:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc1_ || _loc1_)
                                                                                                               {
                                                                                                                  §§push(_queue);
                                                                                                                  if(_loc1_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().status);
                                                                                                                     if(!(_loc2_ && Boolean(this)))
                                                                                                                     {
                                                                                                                        §§push(LoaderStatus.COMPLETED);
                                                                                                                        if(!(_loc2_ && _loc2_))
                                                                                                                        {
                                                                                                                           if(§§pop() <= §§pop())
                                                                                                                           {
                                                                                                                              if(!(_loc2_ && _loc2_))
                                                                                                                              {
                                                                                                                                 _cachedBytesLoaded += _queue.bytesLoaded;
                                                                                                                                 if(!(_loc2_ && _loc1_))
                                                                                                                                 {
                                                                                                                                    §§goto(addr01e7);
                                                                                                                                 }
                                                                                                                                 §§goto(addr032a);
                                                                                                                              }
                                                                                                                              §§goto(addr040c);
                                                                                                                           }
                                                                                                                           §§goto(addr0341);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr02cd:
                                                                                                                           §§push(§§pop() <= §§pop());
                                                                                                                           if(!(_loc2_ && _loc2_))
                                                                                                                           {
                                                                                                                              addr02db:
                                                                                                                              var _temp_33:* = §§pop();
                                                                                                                              §§push(_temp_33);
                                                                                                                              §§push(_temp_33);
                                                                                                                              if(!_loc2_)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(!_loc2_)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       if(_loc1_ || Boolean(this))
                                                                                                                                       {
                                                                                                                                          §§goto(addr02f8);
                                                                                                                                       }
                                                                                                                                       addr0413:
                                                                                                                                       return;
                                                                                                                                    }
                                                                                                                                    §§goto(addr0386);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0319);
                                                                                                                              }
                                                                                                                              §§goto(addr03bd);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr03d3);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr02c7:
                                                                                                                        §§push(LoaderStatus.COMPLETED);
                                                                                                                     }
                                                                                                                     §§goto(addr02cd);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr02c4:
                                                                                                                     §§push(§§pop().status);
                                                                                                                  }
                                                                                                                  §§goto(addr02c7);
                                                                                                               }
                                                                                                               §§goto(addr032a);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(uint(this.vars.estimatedBytes) > _cachedBytesLoaded);
                                                                                                               if(!(_loc2_ && _loc1_))
                                                                                                               {
                                                                                                                  addr0227:
                                                                                                                  var _temp_36:* = §§pop();
                                                                                                                  §§push(_temp_36);
                                                                                                                  §§push(_temp_36);
                                                                                                                  if(!(_loc2_ && _loc1_))
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(_loc1_)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           if(_loc1_ || Boolean(this))
                                                                                                                           {
                                                                                                                              §§push(!_initted);
                                                                                                                              if(_loc1_ || _loc2_)
                                                                                                                              {
                                                                                                                                 addr025d:
                                                                                                                                 var _temp_40:* = §§pop();
                                                                                                                                 §§push(_temp_40);
                                                                                                                                 §§push(_temp_40);
                                                                                                                                 if(_loc1_ || Boolean(this))
                                                                                                                                 {
                                                                                                                                    addr026b:
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc1_)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          if(!_loc2_)
                                                                                                                                          {
                                                                                                                                             addr027a:
                                                                                                                                             §§push(_queue);
                                                                                                                                             if(!_loc2_)
                                                                                                                                             {
                                                                                                                                                addr0283:
                                                                                                                                                addr0282:
                                                                                                                                                §§push(§§pop() == null);
                                                                                                                                                if(!_loc2_)
                                                                                                                                                {
                                                                                                                                                   addr0289:
                                                                                                                                                   §§push(!§§pop());
                                                                                                                                                   if(!(_loc2_ && _loc1_))
                                                                                                                                                   {
                                                                                                                                                      addr0297:
                                                                                                                                                      var _temp_43:* = §§pop();
                                                                                                                                                      §§push(_temp_43);
                                                                                                                                                      §§push(_temp_43);
                                                                                                                                                      if(!(_loc2_ && _loc1_))
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            if(_loc1_)
                                                                                                                                                            {
                                                                                                                                                               addr02ae:
                                                                                                                                                               §§pop();
                                                                                                                                                               if(!(_loc2_ && _loc1_))
                                                                                                                                                               {
                                                                                                                                                                  addr02bc:
                                                                                                                                                                  §§push(_queue);
                                                                                                                                                                  if(_loc1_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr02c4);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr02fb);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0341);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr03a5);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr02db);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr035d);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0386);
                                                                                                                                                }
                                                                                                                                                §§goto(addr02db);
                                                                                                                                             }
                                                                                                                                             §§goto(addr02fb);
                                                                                                                                          }
                                                                                                                                          §§goto(addr02f8);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0289);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0319);
                                                                                                                                 }
                                                                                                                                 §§goto(addr03bd);
                                                                                                                              }
                                                                                                                              §§goto(addr0297);
                                                                                                                           }
                                                                                                                           §§goto(addr032a);
                                                                                                                        }
                                                                                                                        §§goto(addr02ae);
                                                                                                                     }
                                                                                                                     §§goto(addr0319);
                                                                                                                  }
                                                                                                                  §§goto(addr0394);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr03a5);
                                                                                                         }
                                                                                                         §§goto(addr0289);
                                                                                                      }
                                                                                                      §§goto(addr03bc);
                                                                                                   }
                                                                                                   §§goto(addr02fb);
                                                                                                }
                                                                                                §§goto(addr02bc);
                                                                                             }
                                                                                             §§goto(addr025d);
                                                                                          }
                                                                                          §§goto(addr017d);
                                                                                       }
                                                                                       §§goto(addr03bd);
                                                                                    }
                                                                                    §§goto(addr03bc);
                                                                                 }
                                                                                 §§goto(addr032a);
                                                                              }
                                                                              §§goto(addr03c6);
                                                                           }
                                                                           §§goto(addr017d);
                                                                        }
                                                                        §§goto(addr0394);
                                                                     }
                                                                  }
                                                                  §§goto(addr0319);
                                                               }
                                                               §§goto(addr0283);
                                                            }
                                                            §§goto(addr0282);
                                                         }
                                                      }
                                                      §§goto(addr0341);
                                                   }
                                                   §§goto(addr015f);
                                                }
                                                §§goto(addr00d0);
                                             }
                                             §§goto(addr0227);
                                          }
                                          §§goto(addr0177);
                                       }
                                       §§goto(addr00ba);
                                    }
                                    §§goto(addr0386);
                                 }
                                 §§goto(addr00a9);
                              }
                              §§goto(addr026b);
                           }
                           §§goto(addr0386);
                        }
                        §§goto(addr027a);
                     }
                     §§goto(addr0341);
                  }
                  §§goto(addr0072);
               }
               §§goto(addr027a);
            }
            §§goto(addr0024);
         }
         §§goto(addr037c);
      }
      
      public function getChildren(param1:Boolean = false, param2:Boolean = false) : Array
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_queue);
            if(_loc3_ || param2)
            {
               return §§pop() != null ? _queue.getChildren(param1,param2) : [];
            }
            §§goto(addr003e);
         }
         §§goto(addr003b);
      }
      
      public function getSWFChild(param1:String) : DisplayObject
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(!_scriptAccessDenied);
            if(!(_loc2_ && _loc3_))
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(_temp_3)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0053:
                     §§pop();
                     if(!_loc2_)
                     {
                        return _content is DisplayObjectContainer ? DisplayObjectContainer(_content).getChildByName(param1) : null;
                        addr005f:
                     }
                     §§goto(addr0063);
                  }
               }
               §§goto(addr005f);
            }
            §§goto(addr0053);
         }
         §§goto(addr0063);
      }
      
      protected function _suppressUncaughtError(param1:Event) : Boolean
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || _loc2_)
         {
            §§push(param1 is LoaderEvent);
            if(!_loc3_)
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(_temp_3)
               {
                  if(_loc4_)
                  {
                     addr0035:
                     §§pop();
                     if(_loc4_ || _loc2_)
                     {
                        §§push(LoaderEvent(param1).data is Event);
                        if(!_loc3_)
                        {
                           addr0056:
                           if(§§pop())
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 param1 = LoaderEvent(param1).data as Event;
                                 addr0084:
                                 if(param1.type == "uncaughtError")
                                 {
                                    if(_loc4_ || Boolean(this))
                                    {
                                       if(_lastPTUncaughtError == (_lastPTUncaughtError = param1))
                                       {
                                          if(!(_loc3_ && Boolean(param1)))
                                          {
                                             §§push(true);
                                             if(!_loc3_)
                                             {
                                                §§goto(addr00c2);
                                             }
                                          }
                                          else
                                          {
                                             addr00f2:
                                             param1.stopImmediatePropagation();
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                addr0104:
                                                §§push(true);
                                                if(_loc4_ || Boolean(this))
                                                {
                                                   return §§pop();
                                                }
                                             }
                                             else
                                             {
                                                addr0114:
                                                §§push(false);
                                             }
                                          }
                                          §§goto(addr0115);
                                       }
                                       else
                                       {
                                          addr00c9:
                                          if(this.vars.suppressUncaughtErrors == true)
                                          {
                                             if(_loc4_)
                                             {
                                                param1.preventDefault();
                                                if(_loc4_)
                                                {
                                                   §§goto(addr00f2);
                                                }
                                                §§goto(addr0104);
                                             }
                                          }
                                       }
                                       §§goto(addr0114);
                                    }
                                    §§goto(addr00c9);
                                 }
                                 §§goto(addr0114);
                              }
                              §§goto(addr00f2);
                           }
                           §§goto(addr0084);
                        }
                        addr0115:
                        return §§pop();
                     }
                     §§goto(addr00c9);
                  }
                  addr00c2:
                  return §§pop();
               }
               §§goto(addr0056);
            }
            §§goto(addr0035);
         }
         §§goto(addr00f2);
      }
   }
}

