package com.greensock.loading.core
{
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.net.URLStream;
   import flash.net.URLVariables;
   
   public class LoaderItem extends LoaderCore
   {
      
      protected static var _cacheID:Number;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         _cacheID = new Date().getTime();
      }
      
      protected var _auditStream:URLStream;
      
      protected var _request:URLRequest;
      
      protected var _skipAlternateURL:Boolean;
      
      protected var _scriptAccessDenied:Boolean;
      
      protected var _url:String;
      
      protected var _preferEstimatedBytesInAudit:Boolean;
      
      protected var _httpStatus:int;
      
      public function LoaderItem(param1:*, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            super(param2);
            if(_loc3_ || Boolean(param2))
            {
               addr003e:
               §§push(§§findproperty(_request));
               if(!_loc4_)
               {
                  §§pop()._request = param1 is URLRequest ? param1 as URLRequest : new URLRequest(param1);
                  if(!_loc4_)
                  {
                     _url = _request.url;
                     if(_loc3_ || _loc3_)
                     {
                        addr0095:
                        _setRequestURL(_request,_url);
                     }
                     §§goto(addr00a2);
                  }
                  §§goto(addr0095);
               }
               §§goto(addr0050);
            }
            addr00a2:
            return;
         }
         §§goto(addr003e);
      }
      
      public function get scriptAccessDenied() : Boolean
      {
         return _scriptAccessDenied;
      }
      
      override protected function _failHandler(param1:Event, param2:Boolean = true) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.vars.alternateURL == undefined);
            if(_loc4_ || _loc3_)
            {
               §§push(!§§pop());
               if(!_loc3_)
               {
                  addr0040:
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  §§push(_temp_4);
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           §§pop();
                           if(_loc4_)
                           {
                              addr0057:
                              §§push(this.vars.alternateURL == "");
                              if(!(_loc3_ && param2))
                              {
                                 §§push(!§§pop());
                                 if(_loc4_ || Boolean(this))
                                 {
                                    addr008a:
                                    var _temp_7:* = §§pop();
                                    addr008b:
                                    §§push(_temp_7);
                                    if(_temp_7)
                                    {
                                       if(_loc4_)
                                       {
                                          §§goto(addr0095);
                                       }
                                    }
                                    §§goto(addr00a4);
                                 }
                                 addr0095:
                                 §§pop();
                                 if(!_loc3_)
                                 {
                                    addr00a4:
                                    §§push(_skipAlternateURL);
                                    if(!_loc3_)
                                    {
                                       addr00a3:
                                       §§push(!§§pop());
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          addr00ae:
                                          _skipAlternateURL = true;
                                          if(_loc4_)
                                          {
                                             addr00bb:
                                             §§push(§§findproperty(_url));
                                             §§push("temp");
                                             if(!(_loc3_ && Boolean(param1)))
                                             {
                                                §§push(§§pop() + Math.random());
                                             }
                                             §§pop()._url = §§pop();
                                             if(_loc4_)
                                             {
                                                this.url = this.vars.alternateURL;
                                                if(!_loc3_)
                                                {
                                                   _errorHandler(param1);
                                                   if(_loc4_)
                                                   {
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr0114);
                                       }
                                       §§goto(addr00bb);
                                    }
                                    else
                                    {
                                       super._failHandler(param1,param2);
                                    }
                                 }
                                 addr0114:
                                 return;
                              }
                              §§goto(addr00a4);
                           }
                           §§goto(addr00ae);
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr008b);
               }
               §§goto(addr00a3);
            }
            §§goto(addr0040);
         }
         §§goto(addr0057);
      }
      
      public function get request() : URLRequest
      {
         return _request;
      }
      
      protected function _httpStatusHandler(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            _httpStatus = (param1 as Object).status;
            if(!(_loc2_ && _loc3_))
            {
               addr0041:
               dispatchEvent(new LoaderEvent(LoaderEvent.HTTP_STATUS,this));
            }
            return;
         }
         §§goto(addr0041);
      }
      
      override protected function _dump(param1:int = 0, param2:int = 0, param3:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!(_loc4_ && Boolean(param1)))
         {
            _closeStream();
            if(_loc5_)
            {
               super._dump(param1,param2,param3);
            }
         }
      }
      
      protected function _closeStream() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && _loc2_))
         {
            if(_auditStream != null)
            {
               if(_loc4_ || _loc2_)
               {
                  _auditStream.removeEventListener(ProgressEvent.PROGRESS,_auditStreamHandler);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0065:
                     _auditStream.removeEventListener(Event.COMPLETE,_auditStreamHandler);
                     if(!_loc3_)
                     {
                        §§goto(addr0078);
                     }
                     §§goto(addr0089);
                  }
                  addr0078:
                  _auditStream.removeEventListener("ioError",_auditStreamHandler);
                  if(!_loc3_)
                  {
                     addr0089:
                     _auditStream.removeEventListener("securityError",_auditStreamHandler);
                  }
                  try
                  {
                     _auditStream.close();
                     if(_loc4_ || _loc2_)
                     {
                        addr00c9:
                        _auditStream = null;
                     }
                  }
                  catch(error:Error)
                  {
                     §§goto(addr00c9);
                  }
                  §§goto(addr00d0);
               }
               §§goto(addr0065);
            }
            addr00d0:
            return;
         }
         §§goto(addr0065);
      }
      
      public function set url(param1:String) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = false;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_url != param1)
            {
               if(_loc3_ || _loc3_)
               {
                  _url = param1;
                  if(!_loc4_)
                  {
                     addr004f:
                     _setRequestURL(_request,_url);
                     if(!_loc4_)
                     {
                        addr0062:
                        §§push(Boolean(_status == LoaderStatus.LOADING));
                        if(_loc3_ || Boolean(param1))
                        {
                           _loc2_ = §§pop();
                           if(_loc3_)
                           {
                              §§goto(addr0091);
                           }
                           §§goto(addr00b9);
                        }
                        §§goto(addr00af);
                     }
                     addr0091:
                     _dump(1,LoaderStatus.READY,true);
                     if(_loc3_ || Boolean(this))
                     {
                        addr00af:
                        addr00ae:
                        if(_loc2_)
                        {
                           if(!_loc4_)
                           {
                              addr00b9:
                              _load();
                           }
                        }
                     }
                     §§goto(addr00c0);
                  }
                  §§goto(addr0062);
               }
               §§goto(addr00ae);
            }
            addr00c0:
            return;
         }
         §§goto(addr004f);
      }
      
      public function get httpStatus() : int
      {
         return _httpStatus;
      }
      
      protected function _prepRequest() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || _loc2_)
         {
            _scriptAccessDenied = false;
            if(!_loc3_)
            {
               _httpStatus = 0;
               if(_loc4_)
               {
                  addr003b:
                  _closeStream();
                  if(_loc4_)
                  {
                     addr0048:
                     §§push(Boolean(this.vars.noCache));
                     if(_loc4_)
                     {
                        var _temp_3:* = §§pop();
                        §§push(_temp_3);
                        §§push(_temp_3);
                        if(!_loc3_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 §§pop();
                                 if(_loc4_)
                                 {
                                    §§push(!_isLocal);
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       §§goto(addr0092);
                                    }
                                    §§goto(addr00a5);
                                 }
                                 §§goto(addr00e1);
                              }
                              addr0092:
                              var _temp_6:* = §§pop();
                              addr0093:
                              §§push(_temp_6);
                              if(!_temp_6)
                              {
                                 if(_loc4_ || _loc1_)
                                 {
                                    addr00a5:
                                    §§pop();
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       §§goto(addr00c3);
                                    }
                                    §§goto(addr00e1);
                                 }
                              }
                              §§goto(addr00c3);
                           }
                           addr00c3:
                           if(_url.substr(0,4) == "http")
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr00e1:
                                 _setRequestURL(_request,_url,"gsCacheBusterID=" + _cacheID++);
                              }
                           }
                           return;
                        }
                        §§goto(addr0093);
                     }
                     §§goto(addr00a5);
                  }
                  §§goto(addr00e1);
               }
               §§goto(addr0048);
            }
            §§goto(addr003b);
         }
         §§goto(addr0048);
      }
      
      protected function _setRequestURL(param1:URLRequest, param2:String, param3:String = "") : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc8_:URLVariables = null;
         var _loc9_:Array = null;
         if(_loc10_)
         {
            if(this.vars.allowMalformedURL)
            {
               §§push(param2);
               var _loc4_:Array;
               var _loc5_:String = (_loc4_ = !_loc11_ ? null : §§pop().split("?"))[0];
               var _loc6_:* = "";
               var _loc7_:* = 0;
               addr0031:
               while(true)
               {
                  if(_loc7_ >= _loc5_.length)
                  {
                     if(_loc10_)
                     {
                        addr00b3:
                        param1.url = _loc6_;
                        if(!_loc11_)
                        {
                           if(_loc4_.length >= 2)
                           {
                              if(_loc10_ || Boolean(param3))
                              {
                                 §§push(param3);
                                 if(_loc11_)
                                 {
                                    break;
                                 }
                                 addr00df:
                                 if(param3 == "")
                                 {
                                    if(!_loc11_)
                                    {
                                       break;
                                    }
                                    addr013b:
                                    param3 = §§pop();
                                    if(_loc10_ || Boolean(param3))
                                    {
                                       §§goto(addr014b);
                                    }
                                    §§goto(addr016a);
                                 }
                                 else
                                 {
                                    §§push("&");
                                    if(_loc10_ || Boolean(param3))
                                    {
                                       §§push(§§pop() + _loc4_[1]);
                                       if(!(_loc11_ && Boolean(this)))
                                       {
                                          addr012a:
                                          addr012b:
                                          §§push(§§pop() + §§pop());
                                          if(_loc10_ || Boolean(param2))
                                          {
                                             §§goto(addr013b);
                                          }
                                          addr014b:
                                          §§goto(addr014d);
                                       }
                                       addr014d:
                                       §§goto(addr014a);
                                    }
                                    §§goto(addr012a);
                                 }
                              }
                              §§goto(addr016a);
                           }
                           addr014a:
                           if(param3 != "")
                           {
                              if(_loc10_ || Boolean(param1))
                              {
                                 _loc8_ = param1.data is URLVariables ? param1.data as URLVariables : new URLVariables();
                                 addr015f:
                                 _loc4_ = param3.split("&");
                                 §§push(int(_loc4_.length));
                                 if(!_loc11_)
                                 {
                                    _loc7_ = §§pop();
                                    if(!(_loc11_ && Boolean(param3)))
                                    {
                                       loop1:
                                       while(true)
                                       {
                                          §§push(_loc7_);
                                          if(_loc10_ || Boolean(param3))
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop() - 1);
                                                if(_loc10_ || Boolean(param2))
                                                {
                                                   var _temp_22:* = §§pop();
                                                   §§push(_temp_22);
                                                   §§push(_temp_22);
                                                   if(!_loc11_)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc10_)
                                                      {
                                                         addr021b:
                                                         _loc7_ = §§pop();
                                                         while(true)
                                                         {
                                                            §§push(-1);
                                                         }
                                                         addr021d:
                                                      }
                                                      while(§§pop() > §§pop())
                                                      {
                                                         _loc9_ = _loc4_[_loc7_].split("=");
                                                         if(_loc10_)
                                                         {
                                                            _loc8_[_loc9_.shift()] = _loc9_.join("=");
                                                         }
                                                         continue loop1;
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr021b);
                                                }
                                             }
                                             break;
                                             addr01f1:
                                          }
                                          §§goto(addr021d);
                                       }
                                       if(!(_loc11_ && Boolean(param2)))
                                       {
                                          param1.data = _loc8_;
                                       }
                                    }
                                    §§goto(addr0236);
                                 }
                                 §§goto(addr01f1);
                              }
                              §§goto(addr016a);
                           }
                           addr0236:
                           return;
                        }
                        §§goto(addr015f);
                     }
                     §§goto(addr016a);
                  }
                  else
                  {
                     §§push(_loc6_);
                     if(_loc11_ && Boolean(param1))
                     {
                        break;
                     }
                     §§push(_loc5_);
                     if(!_loc11_)
                     {
                        §§push(§§pop() + §§pop().charAt(_loc7_));
                        if(_loc11_)
                        {
                           break;
                        }
                        _loc6_ = §§pop();
                        if(_loc10_)
                        {
                           _loc7_++;
                           if(!(_loc11_ && Boolean(param1)))
                           {
                              continue;
                           }
                        }
                        §§goto(addr00b3);
                     }
                  }
                  §§goto(addr00df);
               }
               §§goto(addr012b);
               §§push(_loc4_[1]);
            }
            else
            {
               §§push(param2);
            }
            §§goto(addr0041);
         }
         §§goto(addr0031);
      }
      
      protected function _auditStreamHandler(param1:Event) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:URLRequest = null;
         if(!_loc6_)
         {
            §§push(param1 is ProgressEvent);
            if(_loc5_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc6_ && Boolean(param1)))
                  {
                     §§goto(addr0044);
                  }
                  §§goto(addr01a7);
               }
               else
               {
                  §§push(param1.type == "ioError");
                  if(_loc5_ || Boolean(_loc2_))
                  {
                     §§goto(addr010b);
                  }
               }
               §§goto(addr016b);
            }
            §§goto(addr0198);
         }
         addr0044:
         _cachedBytesTotal = (param1 as ProgressEvent).bytesTotal;
         if(_loc5_ || Boolean(this))
         {
            §§push(_preferEstimatedBytesInAudit);
            if(!_loc6_)
            {
               §§push(§§pop());
               if(_loc5_ || Boolean(param1))
               {
                  var _temp_5:* = §§pop();
                  §§push(_temp_5);
                  §§push(_temp_5);
                  if(!(_loc6_ && Boolean(param1)))
                  {
                     if(§§pop())
                     {
                        if(!_loc6_)
                        {
                           §§pop();
                           if(_loc5_ || Boolean(this))
                           {
                              §§push(uint(this.vars.estimatedBytes) > _cachedBytesTotal);
                              if(!(_loc6_ && Boolean(this)))
                              {
                                 addr00bf:
                                 if(§§pop())
                                 {
                                    if(_loc5_ || Boolean(param1))
                                    {
                                       _cachedBytesTotal = uint(this.vars.estimatedBytes);
                                       if(!(_loc6_ && Boolean(_loc2_)))
                                       {
                                          _auditedSize = true;
                                          addr02f7:
                                          if(_loc5_ || _loc3_)
                                          {
                                             _closeStream();
                                             if(_loc5_ || Boolean(_loc2_))
                                             {
                                                addr032d:
                                                dispatchEvent(new Event("auditedSize"));
                                             }
                                             §§goto(addr033a);
                                          }
                                       }
                                       §§goto(addr032d);
                                    }
                                    else
                                    {
                                       addr0152:
                                       §§push(this.vars.alternateURL == undefined);
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          addr016b:
                                          §§push(!§§pop());
                                          if(!_loc6_)
                                          {
                                             var _temp_14:* = §§pop();
                                             §§push(_temp_14);
                                             §§push(_temp_14);
                                             if(!(_loc6_ && Boolean(param1)))
                                             {
                                                addr018e:
                                                if(§§pop())
                                                {
                                                   if(_loc5_)
                                                   {
                                                      addr0198:
                                                      §§pop();
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         addr01a7:
                                                         §§push(this.vars.alternateURL == "");
                                                         if(_loc5_ || Boolean(this))
                                                         {
                                                            addr01bf:
                                                            §§push(!§§pop());
                                                            if(_loc5_ || Boolean(this))
                                                            {
                                                               addr01ce:
                                                               var _temp_19:* = §§pop();
                                                               addr01cf:
                                                               §§push(_temp_19);
                                                               if(_temp_19)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     addr01d9:
                                                                     §§pop();
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        §§goto(addr01fa);
                                                                     }
                                                                     §§goto(addr0204);
                                                                  }
                                                                  §§goto(addr01f9);
                                                               }
                                                               addr01fa:
                                                               §§push(this.vars.alternateURL == _url);
                                                               if(_loc5_)
                                                               {
                                                                  addr01f9:
                                                                  §§push(!§§pop());
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     addr0204:
                                                                     _url = this.vars.alternateURL;
                                                                     if(_loc5_)
                                                                     {
                                                                        _setRequestURL(_request,_url);
                                                                        if(_loc5_ || Boolean(this))
                                                                        {
                                                                           _loc2_ = new URLRequest();
                                                                           if(_loc5_ || Boolean(this))
                                                                           {
                                                                              _loc2_.data = _request.data;
                                                                              _loc2_.method = _request.method;
                                                                              if(_loc5_ || Boolean(param1))
                                                                              {
                                                                                 _setRequestURL(_loc2_,_url,!_isLocal || _url.substr(0,4) == "http" ? "gsCacheBusterID=" + _cacheID++ + "&purpose=audit" : "");
                                                                                 if(!(_loc6_ && _loc3_))
                                                                                 {
                                                                                    _auditStream.load(_loc2_);
                                                                                    if(!(_loc6_ && Boolean(param1)))
                                                                                    {
                                                                                       addr02de:
                                                                                       _errorHandler(param1);
                                                                                    }
                                                                                 }
                                                                                 return;
                                                                              }
                                                                           }
                                                                           §§goto(addr02de);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr02f7);
                                                                        }
                                                                     }
                                                                     §§goto(addr032d);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  super._failHandler(param1);
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§goto(addr02f7);
                                                                  }
                                                               }
                                                               §§goto(addr033a);
                                                            }
                                                            §§goto(addr01f9);
                                                         }
                                                         §§goto(addr01d9);
                                                      }
                                                      §§goto(addr033a);
                                                   }
                                                   §§goto(addr01bf);
                                                }
                                                §§goto(addr01ce);
                                             }
                                             §§goto(addr01cf);
                                          }
                                          §§goto(addr01ce);
                                       }
                                       §§goto(addr01bf);
                                    }
                                 }
                                 §§goto(addr02f7);
                              }
                              §§goto(addr01ce);
                           }
                           §§goto(addr0204);
                        }
                        else
                        {
                           addr010b:
                           var _temp_29:* = §§pop();
                           §§push(_temp_29);
                           §§push(_temp_29);
                           if(!(_loc6_ && Boolean(param1)))
                           {
                              if(!§§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    §§pop();
                                    if(_loc5_)
                                    {
                                       §§push(param1.type == "securityError");
                                       if(!(_loc6_ && Boolean(param1)))
                                       {
                                          addr0140:
                                          if(§§pop())
                                          {
                                             if(!(_loc6_ && Boolean(param1)))
                                             {
                                                §§goto(addr0152);
                                             }
                                             §§goto(addr032d);
                                          }
                                          §§goto(addr02f7);
                                       }
                                       §§goto(addr016b);
                                    }
                                    §§goto(addr01a7);
                                 }
                                 §§goto(addr01bf);
                              }
                              §§goto(addr0140);
                           }
                        }
                        §§goto(addr01cf);
                     }
                     §§goto(addr00bf);
                  }
                  §§goto(addr018e);
               }
               §§goto(addr01ce);
            }
            §§goto(addr01d9);
         }
         addr033a:
      }
      
      public function get url() : String
      {
         return _url;
      }
      
      override public function auditSize() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:URLRequest = null;
         if(_loc4_)
         {
            if(_auditStream == null)
            {
               if(!_loc5_)
               {
                  _auditStream = new URLStream();
                  if(_loc4_)
                  {
                     _auditStream.addEventListener(ProgressEvent.PROGRESS,_auditStreamHandler,false,0,true);
                     if(!_loc5_)
                     {
                        addr005b:
                        _auditStream.addEventListener(Event.COMPLETE,_auditStreamHandler,false,0,true);
                        if(_loc4_)
                        {
                           addr0073:
                           _auditStream.addEventListener("ioError",_auditStreamHandler,false,0,true);
                           if(!_loc5_)
                           {
                              _auditStream.addEventListener("securityError",_auditStreamHandler,false,0,true);
                           }
                        }
                     }
                     _loc1_ = new URLRequest();
                     if(!(_loc5_ && Boolean(this)))
                     {
                        _loc1_.data = _request.data;
                        if(_loc4_)
                        {
                           _loc1_.method = _request.method;
                           if(_loc4_ || _loc3_)
                           {
                              _setRequestURL(_loc1_,_url,!_isLocal || _url.substr(0,4) == "http" ? "gsCacheBusterID=" + _cacheID++ + "&purpose=audit" : "");
                              addr00e5:
                              if(!_loc5_)
                              {
                                 _auditStream.load(_loc1_);
                              }
                           }
                        }
                        §§goto(addr014c);
                     }
                     §§goto(addr00e5);
                  }
                  §§goto(addr0073);
               }
               §§goto(addr005b);
            }
            addr014c:
            return;
         }
         §§goto(addr005b);
      }
   }
}

