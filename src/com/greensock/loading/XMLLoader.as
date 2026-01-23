package com.greensock.loading
{
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.LoaderCore;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.utils.getTimer;
   
   public class XMLLoader extends DataLoader
   {
      
      private static var _classActivated:Boolean;
      
      protected static var _varTypes:Object;
      
      public static var RAW_LOAD:String = "rawLoad";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         _classActivated = _activateClass("XMLLoader",XMLLoader,"xml,php,jsp,asp,cfm,cfml,aspx");
         if(!(_loc1_ && XMLLoader))
         {
            _varTypes = {
               "skipFailed":true,
               "skipPaused":true,
               "autoLoad":false,
               "paused":false,
               "load":false,
               "noCache":false,
               "maxConnections":2,
               "autoPlay":false,
               "autoDispose":false,
               "smoothing":false,
               "estimatedBytes":1,
               "x":1,
               "y":1,
               "z":1,
               "rotationX":1,
               "rotationY":1,
               "rotationZ":1,
               "width":1,
               "height":1,
               "scaleX":1,
               "scaleY":1,
               "rotation":1,
               "alpha":1,
               "visible":true,
               "bgColor":0,
               "bgAlpha":0,
               "deblocking":1,
               "repeat":1,
               "checkPolicyFile":false,
               "centerRegistration":false,
               "bufferTime":5,
               "volume":1,
               "bufferMode":false,
               "estimatedDuration":200,
               "crop":false,
               "autoAdjustBuffer":true,
               "suppressInitReparentEvents":true
            };
            if(!(_loc1_ && XMLLoader))
            {
               addr0112:
               RAW_LOAD = "rawLoad";
            }
            return;
         }
      }
      §§goto(addr0112);
      
      protected var _loadingQueue:LoaderMax;
      
      protected var _parsed:LoaderMax;
      
      protected var _initted:Boolean;
      
      public function XMLLoader(param1:*, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || param1)
         {
            super(param1,param2);
            if(!(_loc3_ && Boolean(param2)))
            {
               _preferEstimatedBytesInAudit = true;
               if(_loc4_)
               {
                  §§goto(addr0058);
               }
            }
            §§goto(addr006f);
         }
         addr0058:
         _type = "XMLLoader";
         if(_loc4_ || _loc3_)
         {
            addr006f:
            _loader.dataFormat = "text";
         }
      }
      
      protected static function _parseVars(param1:XML) : Object
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:ApplicationDomain = null;
         var _loc8_:XML = null;
         var _loc2_:Object = {"rawXML":param1};
         var _loc7_:XMLList = param1.attributes();
         for each(_loc8_ in _loc7_)
         {
            §§push(_loc8_.name());
            if(!(_loc12_ && Boolean(_loc3_)))
            {
               _loc3_ = §§pop();
               if(_loc11_ || Boolean(param1))
               {
                  §§push(_loc8_.toString());
                  if(_loc11_ || Boolean(_loc2_))
                  {
                     _loc5_ = §§pop();
                     if(!(_loc11_ || Boolean(_loc2_)))
                     {
                        continue;
                     }
                     addr00a2:
                     §§push(_loc3_);
                     if(_loc11_)
                     {
                        §§push("url");
                        if(!(_loc12_ && Boolean(_loc2_)))
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc11_)
                              {
                                 continue;
                              }
                           }
                           else
                           {
                              §§push(_loc3_);
                              if(_loc11_ || Boolean(param1))
                              {
                                 addr00db:
                                 §§push("context");
                                 if(_loc11_)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(_loc11_)
                                       {
                                          _loc2_.context = new LoaderContext(true,_loc5_ == "own" ? ApplicationDomain.currentDomain : (_loc5_ == "separate" ? new ApplicationDomain() : new ApplicationDomain(ApplicationDomain.currentDomain)),!_isLocal ? SecurityDomain.currentDomain : null);
                                          if(_loc12_ && Boolean(_loc3_))
                                          {
                                          }
                                       }
                                       continue;
                                    }
                                    §§push(typeof _varTypes[_loc3_]);
                                    if(_loc11_ || Boolean(param1))
                                    {
                                       var _temp_10:* = §§pop();
                                       §§push(_temp_10);
                                       §§push(_temp_10);
                                       if(!(_loc12_ && XMLLoader))
                                       {
                                          _loc4_ = §§pop();
                                          addr0197:
                                          §§push("boolean");
                                       }
                                       if(§§pop() == §§pop())
                                       {
                                          if(!(_loc11_ || XMLLoader))
                                          {
                                             continue;
                                          }
                                          _loc2_[_loc3_] = Boolean(_loc5_ == "true" || _loc5_ == "1");
                                          if(_loc11_ || Boolean(param1))
                                          {
                                             continue;
                                          }
                                       }
                                       else
                                       {
                                          addr01e2:
                                          addr01df:
                                          if(_loc4_ != "number")
                                          {
                                             _loc2_[_loc3_] = _loc5_;
                                             continue;
                                          }
                                          if(_loc12_)
                                          {
                                             continue;
                                          }
                                       }
                                       addr01f8:
                                       _loc2_[_loc3_] = Number(_loc5_);
                                       if(_loc11_ || XMLLoader)
                                       {
                                       }
                                       continue;
                                    }
                                    §§goto(addr0197);
                                 }
                                 §§goto(addr01e2);
                              }
                              §§goto(addr01df);
                           }
                           §§goto(addr01f8);
                        }
                        §§goto(addr01e2);
                     }
                     §§goto(addr00db);
                  }
                  §§goto(addr01df);
               }
               §§goto(addr00a2);
            }
            §§goto(addr01df);
         }
         return _loc2_;
      }
      
      public static function parseLoaders(param1:XML, param2:LoaderMax, param3:LoaderMax = null) : void
      {
         var _temp_1:* = true;
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = _temp_1;
         var _loc4_:XML = null;
         var _loc6_:LoaderMax = null;
         var _loc7_:Array = null;
         var _loc8_:* = 0;
         var _loc9_:Class = null;
         var _loc10_:Object = null;
         var _loc11_:LoaderCore = null;
         var _loc12_:* = null;
         var _loc5_:String = String(param1.name()).toLowerCase();
         if(_loc5_ == "loadermax")
         {
            _loc6_ = param2.append(new LoaderMax(_parseVars(param1))) as LoaderMax;
            if(_loc16_ || Boolean(param2))
            {
               §§push(param3 == null);
               if(!(_loc15_ && Boolean(param1)))
               {
                  §§push(!§§pop());
                  if(!(_loc15_ && Boolean(param3)))
                  {
                     var _temp_6:* = §§pop();
                     §§push(_temp_6);
                     §§push(_temp_6);
                     if(!(_loc15_ && XMLLoader))
                     {
                        if(§§pop())
                        {
                           if(_loc16_)
                           {
                              addr00bf:
                              §§pop();
                              if(!(_loc15_ && Boolean(param2)))
                              {
                                 §§push(Boolean(_loc6_.vars.load));
                                 if(!_loc15_)
                                 {
                                    addr00de:
                                    if(§§pop())
                                    {
                                       if(!(_loc15_ && Boolean(param3)))
                                       {
                                          param3.append(_loc6_);
                                          if(_loc16_)
                                          {
                                             addr00fd:
                                             §§push(_loc6_.vars.childrenVars == null);
                                             if(!_loc15_)
                                             {
                                                §§push(!§§pop());
                                                if(_loc16_ || XMLLoader)
                                                {
                                                   var _temp_11:* = §§pop();
                                                   addr011d:
                                                   §§push(_temp_11);
                                                   if(_temp_11)
                                                   {
                                                      if(!(_loc15_ && Boolean(param3)))
                                                      {
                                                         §§pop();
                                                         if(!_loc15_)
                                                         {
                                                            addr0158:
                                                            §§push(_loc6_.vars.childrenVars.indexOf(":") == -1);
                                                            if(!(_loc15_ && Boolean(param2)))
                                                            {
                                                               addr0157:
                                                               §§push(!§§pop());
                                                            }
                                                            if(§§pop())
                                                            {
                                                               if(_loc16_ || XMLLoader)
                                                               {
                                                                  addr016a:
                                                                  _loc6_.vars.childrenVars = _parseVars(new XML("<childrenVars " + _loc6_.vars.childrenVars.split(",").join("\" ").split(":").join("=\"") + "\" />"));
                                                               }
                                                            }
                                                         }
                                                         addr01b1:
                                                         for each(_loc4_ in param1.children())
                                                         {
                                                            if(_loc16_)
                                                            {
                                                               parseLoaders(new XML(_loc4_.toXMLString()),_loc6_,param3);
                                                            }
                                                         }
                                                         if(_loc16_ || Boolean(param1))
                                                         {
                                                            §§push("replaceURLText");
                                                            if(!_loc15_)
                                                            {
                                                               §§push(§§pop() in _loc6_.vars);
                                                               if(!(_loc15_ && Boolean(param1)))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc15_ && XMLLoader))
                                                                     {
                                                                        _loc7_ = _loc6_.vars.replaceURLText.split(",");
                                                                        if(_loc16_)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc16_)
                                                                           {
                                                                              _loc8_ = §§pop();
                                                                              if(_loc16_ || Boolean(param2))
                                                                              {
                                                                                 loop3:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc8_);
                                                                                    loop4:
                                                                                    while(§§pop() < _loc7_.length)
                                                                                    {
                                                                                       _loc6_.replaceURLText(_loc7_[_loc8_],_loc7_[_loc8_ + 1],false);
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                       loop7:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc8_);
                                                                                          if(_loc16_ || Boolean(param1))
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(int(§§pop() + 2));
                                                                                                if(_loc15_)
                                                                                                {
                                                                                                   break loop7;
                                                                                                }
                                                                                             }
                                                                                             break loop4;
                                                                                             addr02a6:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             _loc8_ = §§pop();
                                                                                             if(!(_loc16_ || Boolean(param2)))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop3;
                                                                                          }
                                                                                          break loop4;
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                              }
                                                                              §§goto(addr02ca);
                                                                           }
                                                                           §§goto(addr02a6);
                                                                        }
                                                                        §§goto(addr0296);
                                                                     }
                                                                     §§goto(addr02dd);
                                                                  }
                                                                  addr02ca:
                                                                  §§goto(addr02d3);
                                                               }
                                                               addr02d3:
                                                               §§goto(addr02cd);
                                                            }
                                                            addr02cd:
                                                            if("prependURLs" in _loc6_.vars)
                                                            {
                                                               if(!_loc15_)
                                                               {
                                                                  addr02dd:
                                                                  _loc6_.prependURLs(_loc6_.vars.prependURLs,false);
                                                               }
                                                            }
                                                            §§goto(addr048d);
                                                         }
                                                         §§goto(addr02dd);
                                                      }
                                                      §§goto(addr0157);
                                                   }
                                                   §§goto(addr0158);
                                                }
                                                §§goto(addr0157);
                                             }
                                             §§goto(addr0158);
                                          }
                                          §§goto(addr01b1);
                                       }
                                       §§goto(addr016a);
                                    }
                                    §§goto(addr00fd);
                                 }
                                 §§goto(addr0158);
                              }
                              §§goto(addr016a);
                           }
                           §§goto(addr0157);
                        }
                        §§goto(addr00de);
                     }
                     §§goto(addr011d);
                  }
               }
               §§goto(addr00bf);
            }
            §§goto(addr016a);
         }
         else
         {
            if(_loc5_ in _types)
            {
               if(_loc16_)
               {
                  _loc9_ = _types[_loc5_];
                  _loc10_ = _parseVars(param1);
                  if(_loc16_ || XMLLoader)
                  {
                     if(typeof param2.vars.childrenVars == "object")
                     {
                        if(!(_loc15_ && Boolean(param3)))
                        {
                           var _loc13_:* = 0;
                           if(!(_loc15_ && Boolean(param1)))
                           {
                              var _loc14_:* = param2.vars.childrenVars;
                              if(_loc16_ || Boolean(param2))
                              {
                              }
                              for(_loc13_ in _loc14_)
                              {
                                 §§push(_loc13_);
                                 if(!(_loc15_ && Boolean(param2)))
                                 {
                                    _loc12_ = §§pop();
                                    §§push(_loc12_);
                                 }
                                 if(!(§§pop() in _loc10_))
                                 {
                                    if(_loc16_ || XMLLoader)
                                    {
                                       _loc10_[_loc12_] = param2.vars.childrenVars[_loc12_];
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  _loc11_ = param2.append(new _loc9_(param1.@url,_loc10_));
                  if(!_loc15_)
                  {
                     §§push(param3 == null);
                     if(!_loc15_)
                     {
                        §§push(!§§pop());
                        if(_loc16_)
                        {
                           var _temp_28:* = §§pop();
                           §§push(_temp_28);
                           if(_temp_28)
                           {
                              if(_loc16_ || XMLLoader)
                              {
                                 addr03fd:
                                 §§pop();
                                 if(!(_loc15_ && Boolean(param2)))
                                 {
                                    §§goto(addr0416);
                                 }
                                 §§goto(addr0428);
                              }
                           }
                           addr0416:
                           if(Boolean(_loc11_.vars.load))
                           {
                              if(!(_loc15_ && Boolean(param3)))
                              {
                                 addr0428:
                                 param3.append(_loc11_);
                              }
                           }
                           §§goto(addr042f);
                        }
                     }
                     §§goto(addr03fd);
                  }
                  addr042f:
                  _loc13_ = 0;
                  if(!_loc15_)
                  {
                     for each(_loc4_ in param1.children())
                     {
                        if(_loc16_ || Boolean(param1))
                        {
                           parseLoaders(new XML(_loc4_.toXMLString()),param2,param3);
                        }
                     }
                  }
               }
               §§goto(addr048d);
            }
            §§goto(addr042f);
         }
      }
      
      override protected function _load() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(!this._initted)
            {
               if(!_loc1_)
               {
                  _prepRequest();
                  if(_loc2_)
                  {
                     _loader.load(_request);
                     if(!_loc2_)
                     {
                        addr0079:
                        this._changeQueueListeners(true);
                        if(_loc2_)
                        {
                           addr0088:
                           this._loadingQueue.load(false);
                           addr0084:
                        }
                     }
                     §§goto(addr008d);
                  }
                  §§goto(addr0079);
               }
               §§goto(addr008d);
            }
            else
            {
               §§push(this._loadingQueue);
               if(_loc2_ || _loc1_)
               {
                  if(§§pop() != null)
                  {
                     if(_loc2_ || _loc1_)
                     {
                        §§goto(addr0079);
                     }
                  }
                  addr008d:
                  return;
               }
            }
            §§goto(addr0088);
         }
         §§goto(addr0084);
      }
      
      protected function _changeQueueListeners(param1:Boolean) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:* = null;
         if(_loc5_ || _loc3_)
         {
            if(this._loadingQueue != null)
            {
               if(_loc5_)
               {
                  §§push(param1);
                  if(!_loc6_)
                  {
                     §§push(§§pop());
                     if(!(_loc6_ && param1))
                     {
                        var _temp_3:* = §§pop();
                        §§push(_temp_3);
                        if(_temp_3)
                        {
                           if(_loc5_ || param1)
                           {
                              addr005d:
                              §§pop();
                              if(!_loc6_)
                              {
                                 addr007d:
                                 addr0064:
                                 §§push(this.vars.integrateProgress == false);
                                 if(_loc5_ || Boolean(this))
                                 {
                                    addr007c:
                                    §§push(!§§pop());
                                 }
                                 if(§§pop())
                                 {
                                    addr0081:
                                    var _loc3_:int = 0;
                                    var _loc4_:* = _listenerTypes;
                                    loop1:
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc4_,_loc3_));
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       if(!§§pop())
                                       {
                                          if(!(_loc6_ && Boolean(_loc2_)))
                                          {
                                             if(!_loc6_)
                                             {
                                                if(_loc5_)
                                                {
                                                   §§push(this._loadingQueue);
                                                   if(_loc5_)
                                                   {
                                                      §§push(LoaderEvent.COMPLETE);
                                                      if(_loc5_ || Boolean(_loc2_))
                                                      {
                                                         §§pop().addEventListener(§§pop(),this._completeHandler,false,-100,true);
                                                         if(!_loc6_)
                                                         {
                                                            §§push(this._loadingQueue);
                                                            if(!(_loc6_ && Boolean(_loc3_)))
                                                            {
                                                               §§push(LoaderEvent.PROGRESS);
                                                               if(_loc5_ || param1)
                                                               {
                                                                  §§pop().addEventListener(§§pop(),this._progressHandler,false,-100,true);
                                                                  if(!(_loc6_ && param1))
                                                                  {
                                                                     §§push(this._loadingQueue);
                                                                     if(!(_loc6_ && param1))
                                                                     {
                                                                        addr01c7:
                                                                        §§push(LoaderEvent.FAIL);
                                                                        if(_loc5_ || Boolean(this))
                                                                        {
                                                                           §§goto(addr01db);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr0239:
                                                                        }
                                                                        addr0239:
                                                                        §§pop().removeEventListener(§§pop(),this._progressHandler);
                                                                        if(!(_loc6_ && Boolean(_loc2_)))
                                                                        {
                                                                           §§goto(addr024e);
                                                                        }
                                                                        §§goto(addr0265);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr021b:
                                                                     §§push(this._loadingQueue);
                                                                     if(_loc5_ || param1)
                                                                     {
                                                                        addr022d:
                                                                        §§push(LoaderEvent.PROGRESS);
                                                                        if(_loc5_)
                                                                        {
                                                                           §§goto(addr0239);
                                                                        }
                                                                        §§goto(addr0258);
                                                                     }
                                                                  }
                                                                  §§goto(addr0252);
                                                               }
                                                               addr01db:
                                                               §§pop().addEventListener(§§pop(),this._failHandler,false,-100,true);
                                                               if(_loc6_ && Boolean(_loc2_))
                                                               {
                                                                  addr0258:
                                                                  this._loadingQueue.removeEventListener(LoaderEvent.FAIL,this._failHandler);
                                                                  addr024e:
                                                                  addr0252:
                                                                  if(_loc5_)
                                                                  {
                                                                     addr0265:
                                                                     _loc3_ = 0;
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr026e:
                                                                        _loc4_ = _listenerTypes;
                                                                        if(_loc5_)
                                                                        {
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(§§hasnext(_loc4_,_loc3_));
                                                                           break loop1;
                                                                        }
                                                                        addr031d:
                                                                        addr0316:
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr0321);
                                                            }
                                                            §§goto(addr022d);
                                                         }
                                                         §§goto(addr024e);
                                                      }
                                                      else
                                                      {
                                                         addr020e:
                                                         §§pop().removeEventListener(§§pop(),this._completeHandler);
                                                         if(_loc5_)
                                                         {
                                                            §§goto(addr021b);
                                                         }
                                                      }
                                                      §§goto(addr0321);
                                                   }
                                                   §§goto(addr01c7);
                                                }
                                                §§goto(addr0321);
                                             }
                                             §§goto(addr026e);
                                          }
                                          §§goto(addr031d);
                                       }
                                       else
                                       {
                                          §§push(§§nextname(_loc3_,_loc4_));
                                          if(!_loc6_)
                                          {
                                             _loc2_ = §§pop();
                                             if(!_loc6_)
                                             {
                                                §§push(_loc2_);
                                                if(_loc5_)
                                                {
                                                   §§push("onProgress");
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(!_loc6_)
                                                      {
                                                         §§push(!§§pop());
                                                         if(!_loc6_)
                                                         {
                                                            var _temp_16:* = §§pop();
                                                            §§push(_temp_16);
                                                            if(_temp_16)
                                                            {
                                                               if(!(_loc6_ && Boolean(this)))
                                                               {
                                                                  addr00d2:
                                                                  §§pop();
                                                                  if(_loc5_)
                                                                  {
                                                                     addr00e5:
                                                                     addr00dd:
                                                                     addr00da:
                                                                     §§push(_loc2_ == "onInit");
                                                                     if(_loc5_)
                                                                     {
                                                                        addr00e4:
                                                                        §§push(!§§pop());
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc5_ || Boolean(_loc2_))
                                                                        {
                                                                           addr00f7:
                                                                           this._loadingQueue.addEventListener(_listenerTypes[_loc2_],this._passThroughEvent,false,-100,true);
                                                                        }
                                                                     }
                                                                  }
                                                                  continue;
                                                               }
                                                               §§goto(addr00e4);
                                                            }
                                                            §§goto(addr00e5);
                                                         }
                                                         §§goto(addr00e4);
                                                      }
                                                      §§goto(addr00d2);
                                                   }
                                                   §§goto(addr00dd);
                                                }
                                                §§goto(addr00da);
                                             }
                                             §§goto(addr00f7);
                                          }
                                          §§goto(addr00da);
                                       }
                                    }
                                    while(§§pop())
                                    {
                                       §§push(§§nextname(_loc3_,_loc4_));
                                       if(!_loc6_)
                                       {
                                          _loc2_ = §§pop();
                                          if(!_loc6_)
                                          {
                                             §§push(_loc2_);
                                             if(!(_loc6_ && Boolean(_loc3_)))
                                             {
                                                §§push("onProgress");
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc5_ || Boolean(this))
                                                   {
                                                      §§push(!§§pop());
                                                      if(_loc5_)
                                                      {
                                                         var _temp_21:* = §§pop();
                                                         §§push(_temp_21);
                                                         if(_temp_21)
                                                         {
                                                            if(_loc5_ || Boolean(_loc3_))
                                                            {
                                                               addr02d2:
                                                               §§pop();
                                                               if(!_loc6_)
                                                               {
                                                                  addr02f9:
                                                                  addr02dd:
                                                                  addr02da:
                                                                  §§push(_loc2_ == "onInit");
                                                                  if(_loc5_ || Boolean(this))
                                                                  {
                                                                     addr02f8:
                                                                     §§push(!§§pop());
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        addr0303:
                                                                        this._loadingQueue.removeEventListener(_listenerTypes[_loc2_],this._passThroughEvent);
                                                                     }
                                                                  }
                                                                  §§goto(addr0316);
                                                               }
                                                               §§goto(addr0303);
                                                            }
                                                            §§goto(addr02f8);
                                                         }
                                                         §§goto(addr02f9);
                                                      }
                                                      §§goto(addr02d2);
                                                   }
                                                   §§goto(addr02f9);
                                                }
                                                §§goto(addr02dd);
                                             }
                                             §§goto(addr02da);
                                          }
                                          §§goto(addr0316);
                                       }
                                       §§goto(addr02da);
                                    }
                                    §§goto(addr031d);
                                 }
                                 else
                                 {
                                    §§push(this._loadingQueue);
                                    if(_loc5_)
                                    {
                                       §§push(LoaderEvent.COMPLETE);
                                       if(!_loc6_)
                                       {
                                          §§goto(addr020e);
                                       }
                                       §§goto(addr0239);
                                    }
                                 }
                                 §§goto(addr0252);
                              }
                              §§goto(addr0081);
                           }
                           §§goto(addr007c);
                        }
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr005d);
               }
               §§goto(addr0064);
            }
            addr0321:
            return;
         }
         §§goto(addr0081);
      }
      
      override protected function _dump(param1:int = 0, param2:int = 0, param3:Boolean = false) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(!_loc6_)
         {
            §§push(this._loadingQueue);
            if(_loc5_ || Boolean(param2))
            {
               if(§§pop() != null)
               {
                  if(!(_loc6_ && Boolean(param1)))
                  {
                     this._changeQueueListeners(false);
                     if(!_loc6_)
                     {
                        §§push(param1);
                        if(!(_loc6_ && param3))
                        {
                           §§push(0);
                           if(_loc5_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(!(_loc6_ && Boolean(param1)))
                                 {
                                    §§push(this._loadingQueue);
                                    if(_loc5_ || Boolean(param1))
                                    {
                                       addr0086:
                                       §§pop().cancel();
                                       if(_loc5_)
                                       {
                                          addr00c8:
                                          addr00cb:
                                          addr00c9:
                                          if(param1 >= 1)
                                          {
                                             if(_loc5_ || Boolean(param2))
                                             {
                                                addr00dd:
                                                §§push(this._parsed);
                                                if(_loc5_)
                                                {
                                                   if(§§pop() != null)
                                                   {
                                                      if(_loc5_ || Boolean(param1))
                                                      {
                                                         §§goto(addr00fe);
                                                      }
                                                      §§goto(addr012f);
                                                   }
                                                   §§goto(addr0124);
                                                }
                                                addr00fe:
                                                this._parsed.dispose(Boolean(param1 == 3));
                                                §§goto(addr00fa);
                                             }
                                             addr00fa:
                                             if(_loc5_)
                                             {
                                                this._parsed = null;
                                                if(_loc5_ || Boolean(param1))
                                                {
                                                   addr0124:
                                                   this._initted = false;
                                                   if(!_loc6_)
                                                   {
                                                      addr012f:
                                                      _cacheIsDirty = true;
                                                   }
                                                   var _loc4_:* = _content;
                                                   §§goto(addr0136);
                                                }
                                                §§goto(addr012f);
                                             }
                                             addr0136:
                                             if(_loc5_)
                                             {
                                                super._dump(param1,param2,param3);
                                                if(!(_loc6_ && Boolean(this)))
                                                {
                                                   if(param1 == 0)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         addr0174:
                                                         _content = _loc4_;
                                                      }
                                                   }
                                                   §§goto(addr017c);
                                                }
                                                §§goto(addr0174);
                                             }
                                             addr017c:
                                             return;
                                          }
                                       }
                                       §§goto(addr012f);
                                    }
                                    else
                                    {
                                       addr0098:
                                       §§pop().dispose(Boolean(param1 == 3));
                                       if(!(_loc6_ && Boolean(param2)))
                                       {
                                          this._loadingQueue = null;
                                          if(!_loc6_)
                                          {
                                             §§goto(addr00c8);
                                          }
                                          §§goto(addr00dd);
                                       }
                                    }
                                    §§goto(addr0124);
                                 }
                                 §§goto(addr00c8);
                              }
                              else
                              {
                                 §§push(this._loadingQueue);
                              }
                              §§goto(addr0098);
                           }
                           §§goto(addr00cb);
                        }
                        §§goto(addr00c9);
                     }
                     §§goto(addr0124);
                  }
                  §§goto(addr012f);
               }
               §§goto(addr00c8);
            }
            §§goto(addr0086);
         }
         §§goto(addr0124);
      }
      
      override protected function _calculateProgress() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            _cachedBytesLoaded = _loader.bytesLoaded;
            if(!(_loc3_ && _loc1_))
            {
               if(_loader.bytesTotal != 0)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     _cachedBytesTotal = _loader.bytesTotal;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0062:
                        §§push(_cachedBytesTotal < _cachedBytesLoaded);
                        if(!_loc3_)
                        {
                           var _temp_4:* = §§pop();
                           §§push(_temp_4);
                           if(!_temp_4)
                           {
                              if(!(_loc3_ && _loc1_))
                              {
                                 addr0080:
                                 §§pop();
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr00a0:
                                    §§push(this._initted);
                                    if(_loc2_ || Boolean(this))
                                    {
                                       addr009f:
                                       §§push(§§pop());
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc2_)
                                       {
                                          addr00a9:
                                          _cachedBytesTotal = _cachedBytesLoaded;
                                       }
                                    }
                                    addr00b2:
                                    var _loc1_:uint = uint(this.vars.estimatedBytes);
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(this.vars.integrateProgress == false)
                                       {
                                          if(_loc2_)
                                          {
                                          }
                                          addr0346:
                                          §§push(this._initted);
                                          if(_loc2_ || Boolean(_loc1_))
                                          {
                                             addr0357:
                                             §§push(!§§pop());
                                             if(!(_loc3_ && Boolean(this)))
                                             {
                                                addr0365:
                                                var _temp_11:* = §§pop();
                                                addr0366:
                                                §§push(_temp_11);
                                                if(_temp_11)
                                                {
                                                   if(_loc2_ || _loc3_)
                                                   {
                                                      §§goto(addr0377);
                                                   }
                                                }
                                                §§goto(addr0398);
                                             }
                                             addr0377:
                                             §§pop();
                                             if(_loc2_ || _loc3_)
                                             {
                                                addr0398:
                                                addr0391:
                                                if(_cachedBytesLoaded == _cachedBytesTotal)
                                                {
                                                   if(_loc2_ || Boolean(_loc1_))
                                                   {
                                                      addr03a9:
                                                      _cachedBytesLoaded = int(_cachedBytesLoaded * 0.99);
                                                      if(_loc2_)
                                                      {
                                                         addr03bf:
                                                         _cacheIsDirty = false;
                                                      }
                                                   }
                                                   §§goto(addr03c6);
                                                }
                                                §§goto(addr03bf);
                                             }
                                             §§goto(addr03c6);
                                          }
                                          §§goto(addr0398);
                                       }
                                       else
                                       {
                                          §§push(this._loadingQueue);
                                          if(_loc2_ || _loc2_)
                                          {
                                             §§push(null);
                                             if(_loc2_)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(_loc2_)
                                                {
                                                   §§push(!§§pop());
                                                   if(!(_loc3_ && Boolean(this)))
                                                   {
                                                      var _temp_17:* = §§pop();
                                                      §§push(_temp_17);
                                                      §§push(_temp_17);
                                                      if(_loc2_ || Boolean(this))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               addr0125:
                                                               §§pop();
                                                               if(_loc2_ || Boolean(this))
                                                               {
                                                                  §§push(uint(this.vars.estimatedBytes) < _cachedBytesLoaded);
                                                                  if(_loc2_ || _loc3_)
                                                                  {
                                                                     var _temp_21:* = §§pop();
                                                                     §§push(_temp_21);
                                                                     §§push(_temp_21);
                                                                     if(_loc2_)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§pop();
                                                                              if(!(_loc3_ && _loc3_))
                                                                              {
                                                                                 §§push(this._loadingQueue);
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    §§push(§§pop().auditedSize);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr0184:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                §§push(this._loadingQueue);
                                                                                                if(!(_loc3_ && _loc3_))
                                                                                                {
                                                                                                   addr019e:
                                                                                                   §§push(§§pop().status);
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      §§push(LoaderStatus.COMPLETED);
                                                                                                      if(!(_loc3_ && _loc2_))
                                                                                                      {
                                                                                                         if(§§pop() <= §§pop())
                                                                                                         {
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               _cachedBytesLoaded += this._loadingQueue.bytesLoaded;
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  _cachedBytesTotal += this._loadingQueue.bytesTotal;
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     §§goto(addr0346);
                                                                                                                  }
                                                                                                                  §§goto(addr03c6);
                                                                                                               }
                                                                                                               §§goto(addr0346);
                                                                                                            }
                                                                                                            §§goto(addr0391);
                                                                                                         }
                                                                                                         §§goto(addr0346);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr02c9:
                                                                                                         §§push(§§pop() <= §§pop());
                                                                                                         if(!(_loc3_ && Boolean(this)))
                                                                                                         {
                                                                                                            addr02d7:
                                                                                                            var _temp_26:* = §§pop();
                                                                                                            §§push(_temp_26);
                                                                                                            §§push(_temp_26);
                                                                                                            if(!(_loc3_ && Boolean(this)))
                                                                                                            {
                                                                                                               addr02e5:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(_loc2_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        addr0300:
                                                                                                                        §§push(this._loadingQueue.auditedSize);
                                                                                                                        if(_loc2_ || Boolean(_loc1_))
                                                                                                                        {
                                                                                                                           addr0310:
                                                                                                                           §§push(!§§pop());
                                                                                                                           if(_loc2_ || Boolean(_loc1_))
                                                                                                                           {
                                                                                                                              addr031e:
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc2_ || Boolean(this))
                                                                                                                                 {
                                                                                                                                    _cachedBytesTotal = uint(this.vars.estimatedBytes);
                                                                                                                                    if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr0346);
                                                                                                                                    }
                                                                                                                                    §§goto(addr03bf);
                                                                                                                                 }
                                                                                                                                 addr03c6:
                                                                                                                                 return;
                                                                                                                              }
                                                                                                                              §§goto(addr0346);
                                                                                                                           }
                                                                                                                           §§goto(addr0357);
                                                                                                                        }
                                                                                                                        §§goto(addr0365);
                                                                                                                     }
                                                                                                                     §§goto(addr03a9);
                                                                                                                  }
                                                                                                                  §§goto(addr0377);
                                                                                                               }
                                                                                                               §§goto(addr031e);
                                                                                                            }
                                                                                                            §§goto(addr0366);
                                                                                                         }
                                                                                                         §§goto(addr0310);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr02c3:
                                                                                                      §§push(LoaderStatus.COMPLETED);
                                                                                                   }
                                                                                                   §§goto(addr02c9);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr02c0:
                                                                                                   §§push(§§pop().status);
                                                                                                }
                                                                                                §§goto(addr02c3);
                                                                                             }
                                                                                             §§goto(addr0346);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(uint(this.vars.estimatedBytes) > _cachedBytesLoaded);
                                                                                             if(_loc2_ || Boolean(this))
                                                                                             {
                                                                                                var _temp_33:* = §§pop();
                                                                                                §§push(_temp_33);
                                                                                                §§push(_temp_33);
                                                                                                if(!(_loc3_ && _loc3_))
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!(_loc3_ && _loc2_))
                                                                                                      {
                                                                                                         addr023a:
                                                                                                         §§pop();
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            §§push(this._initted);
                                                                                                            if(!(_loc3_ && _loc3_))
                                                                                                            {
                                                                                                               §§push(!§§pop());
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  var _temp_37:* = §§pop();
                                                                                                                  §§push(_temp_37);
                                                                                                                  §§push(_temp_37);
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     addr025d:
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           if(!(_loc3_ && _loc2_))
                                                                                                                           {
                                                                                                                              addr0274:
                                                                                                                              §§push(this._loadingQueue);
                                                                                                                              if(_loc2_ || _loc2_)
                                                                                                                              {
                                                                                                                                 addr0286:
                                                                                                                                 §§push(§§pop() == null);
                                                                                                                                 if(_loc2_)
                                                                                                                                 {
                                                                                                                                    §§push(!§§pop());
                                                                                                                                    if(!(_loc3_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       var _temp_41:* = §§pop();
                                                                                                                                       §§push(_temp_41);
                                                                                                                                       §§push(_temp_41);
                                                                                                                                       if(!_loc3_)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             if(_loc2_)
                                                                                                                                             {
                                                                                                                                                addr02a9:
                                                                                                                                                §§pop();
                                                                                                                                                if(_loc2_)
                                                                                                                                                {
                                                                                                                                                   addr02af:
                                                                                                                                                   §§push(this._loadingQueue);
                                                                                                                                                   if(!(_loc3_ && Boolean(_loc1_)))
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr02c0);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0300);
                                                                                                                                                }
                                                                                                                                                §§goto(addr03bf);
                                                                                                                                             }
                                                                                                                                             §§goto(addr031e);
                                                                                                                                          }
                                                                                                                                          §§goto(addr02d7);
                                                                                                                                       }
                                                                                                                                       §§goto(addr02e5);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0310);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0377);
                                                                                                                              }
                                                                                                                              §§goto(addr0300);
                                                                                                                           }
                                                                                                                           §§goto(addr02af);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr031e);
                                                                                                                  }
                                                                                                                  §§goto(addr02e5);
                                                                                                               }
                                                                                                               §§goto(addr02d7);
                                                                                                            }
                                                                                                            §§goto(addr031e);
                                                                                                         }
                                                                                                         §§goto(addr0391);
                                                                                                      }
                                                                                                      §§goto(addr0377);
                                                                                                   }
                                                                                                   §§goto(addr031e);
                                                                                                }
                                                                                                §§goto(addr0366);
                                                                                             }
                                                                                             §§goto(addr02a9);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr0357);
                                                                                    }
                                                                                    §§goto(addr023a);
                                                                                 }
                                                                                 §§goto(addr0300);
                                                                              }
                                                                              §§goto(addr0346);
                                                                           }
                                                                           §§goto(addr0310);
                                                                        }
                                                                        §§goto(addr0184);
                                                                     }
                                                                     §§goto(addr02e5);
                                                                  }
                                                                  §§goto(addr031e);
                                                               }
                                                               §§goto(addr0274);
                                                            }
                                                            §§goto(addr0357);
                                                         }
                                                         §§goto(addr0184);
                                                      }
                                                      §§goto(addr025d);
                                                   }
                                                   §§goto(addr0125);
                                                }
                                                §§goto(addr023a);
                                             }
                                             §§goto(addr0286);
                                          }
                                          §§goto(addr019e);
                                       }
                                    }
                                    §§goto(addr0274);
                                 }
                                 §§goto(addr00a9);
                              }
                              §§goto(addr009f);
                           }
                           §§goto(addr00a0);
                        }
                        §§goto(addr0080);
                     }
                     §§goto(addr00a9);
                  }
               }
               §§goto(addr0062);
            }
            §§goto(addr00b2);
         }
         §§goto(addr00a9);
      }
      
      public function getLoader(param1:String) : *
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(this._parsed);
            if(_loc3_)
            {
               return §§pop() != null ? this._parsed.getLoader(param1) : null;
            }
            §§goto(addr0041);
         }
         §§goto(addr003d);
      }
      
      public function getContent(param1:String) : *
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(§§pop() == this.name);
               if(!(_loc3_ && _loc2_))
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(!_temp_3)
                  {
                     if(_loc4_)
                     {
                        §§goto(addr0049);
                     }
                  }
                  §§goto(addr0055);
               }
               addr0049:
               §§pop();
               if(_loc4_)
               {
                  addr0055:
                  addr0051:
                  if(param1 == _url)
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr0068);
                     }
                  }
                  var _loc2_:LoaderCore = this.getLoader(param1);
                  if(!(_loc3_ && _loc3_))
                  {
                     return _loc2_ != null ? _loc2_.content : null;
                  }
                  §§goto(addr0089);
               }
               §§goto(addr0068);
            }
            §§goto(addr0051);
         }
         addr0068:
         return _content;
      }
      
      public function getChildren(param1:Boolean = false, param2:Boolean = false) : Array
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(this)))
         {
            §§push(this._parsed);
            if(!(_loc4_ && param2))
            {
               return §§pop() != null ? this._parsed.getChildren(param1,param2) : [];
            }
            §§goto(addr0047);
         }
         §§goto(addr0043);
      }
      
      override protected function _progressHandler(param1:Event) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(!_loc5_)
         {
            if(_dispatchProgress)
            {
               if(!_loc5_)
               {
                  §§push(_cachedBytesLoaded);
                  if(!(_loc5_ && Boolean(this)))
                  {
                     _loc2_ = §§pop();
                     if(_loc4_)
                     {
                        §§push(_cachedBytesTotal);
                        if(!_loc5_)
                        {
                           _loc3_ = §§pop();
                           if(_loc4_)
                           {
                              this._calculateProgress();
                              if(!_loc5_)
                              {
                                 addr0063:
                                 §§push(_cachedBytesLoaded == _cachedBytesTotal);
                                 if(_loc4_)
                                 {
                                    §§push(!§§pop());
                                    if(_loc4_ || Boolean(_loc2_))
                                    {
                                       var _temp_3:* = §§pop();
                                       §§push(_temp_3);
                                       §§push(_temp_3);
                                       if(!(_loc5_ && Boolean(this)))
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc5_ && Boolean(this)))
                                             {
                                                §§pop();
                                                if(_loc4_ || Boolean(_loc2_))
                                                {
                                                   §§goto(addr00bc);
                                                }
                                                §§goto(addr0119);
                                             }
                                          }
                                          §§goto(addr010f);
                                       }
                                       §§goto(addr00e5);
                                    }
                                    §§goto(addr010f);
                                 }
                                 §§goto(addr00d5);
                              }
                              addr00bc:
                              §§push(_loc2_);
                              if(_loc4_ || Boolean(param1))
                              {
                                 addr00cb:
                                 §§push(§§pop() == _cachedBytesLoaded);
                                 if(_loc4_)
                                 {
                                    addr00d5:
                                    §§push(!§§pop());
                                    if(!(_loc5_ && Boolean(this)))
                                    {
                                       var _temp_9:* = §§pop();
                                       addr00e5:
                                       §§push(_temp_9);
                                       if(!_temp_9)
                                       {
                                          if(!_loc5_)
                                          {
                                             addr00ef:
                                             §§pop();
                                             if(!_loc5_)
                                             {
                                                §§goto(addr010f);
                                             }
                                             §§goto(addr0119);
                                          }
                                          §§goto(addr010e);
                                       }
                                       addr010f:
                                       §§goto(addr00f7);
                                    }
                                 }
                                 §§goto(addr00ef);
                              }
                              §§goto(addr00f7);
                           }
                           §§goto(addr0119);
                        }
                        §§goto(addr00cb);
                     }
                     §§goto(addr0063);
                  }
                  addr00f7:
                  addr00f6:
                  §§push(_loc3_ == _cachedBytesTotal);
                  if(_loc4_)
                  {
                     addr010e:
                     §§push(!§§pop());
                  }
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        addr0119:
                        dispatchEvent(new LoaderEvent(LoaderEvent.PROGRESS,this));
                        if(_loc4_ || Boolean(param1))
                        {
                        }
                     }
                  }
                  §§goto(addr0145);
               }
            }
            else
            {
               _cacheIsDirty = true;
            }
            addr0145:
            return;
         }
         §§goto(addr00f6);
      }
      
      override protected function _passThroughEvent(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(param1.target != this._loadingQueue)
            {
               if(_loc3_ || Boolean(this))
               {
                  addr0030:
                  super._passThroughEvent(param1);
               }
            }
            return;
         }
         §§goto(addr0030);
      }
      
      override protected function _receiveDataHandler(param1:Event) : void
      {
         var event:Event;
         var loaders:Array;
         var i:int;
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!(_loc4_ && Boolean(this)))
         {
            §§pop().§§slot[2] = null;
            if(_loc5_ || _loc3_)
            {
               §§push(§§newactivation());
               if(!(_loc4_ && _loc3_))
               {
                  addr004d:
                  §§pop().§§slot[3] = 0;
                  if(_loc5_)
                  {
                     addr0059:
                     event = param1;
                  }
                  try
                  {
                     addr005c:
                     _content = new XML(_loader.data);
                     if(_loc5_)
                     {
                        dispatchEvent(new LoaderEvent(RAW_LOAD,this,"",_content));
                        if(_loc5_ || _loc2_)
                        {
                           this._initted = true;
                           if(_loc5_ || Boolean(param1))
                           {
                              §§push(this);
                              §§push(§§findproperty(LoaderMax));
                              §§push("name");
                              §§push(this.name + "_Queue");
                              §§push("maxConnections");
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§pop()._loadingQueue = new §§pop().LoaderMax(null);
                                 if(_loc5_ || _loc2_)
                                 {
                                    this._parsed = new LoaderMax({
                                       "name":this.name + "_ParsedLoaders",
                                       "paused":true
                                    });
                                    if(!_loc4_)
                                    {
                                       parseLoaders(_content as XML,this._parsed,this._loadingQueue);
                                       if(_loc5_ || _loc2_)
                                       {
                                          §§push(this._parsed);
                                          if(!(_loc4_ && Boolean(this)))
                                          {
                                             if(§§pop().numChildren == 0)
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§push(this._parsed);
                                                   if(!_loc4_)
                                                   {
                                                      addr01d1:
                                                      §§pop().dispose(false);
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         addr01e4:
                                                         this._parsed = null;
                                                         if(!_loc4_)
                                                         {
                                                            addr03a7:
                                                            §§push(this._loadingQueue);
                                                            if(!_loc4_)
                                                            {
                                                               §§push(true);
                                                               if(_loc5_ || Boolean(this))
                                                               {
                                                                  addr03c5:
                                                                  if(§§pop().getChildren(§§pop(),true).length == 0)
                                                                  {
                                                                     if(_loc5_ || Boolean(param1))
                                                                     {
                                                                        §§push(this._loadingQueue);
                                                                        if(_loc5_ || Boolean(this))
                                                                        {
                                                                           §§push(false);
                                                                           if(!(_loc4_ && _loc2_))
                                                                           {
                                                                              addr03fc:
                                                                              §§pop().empty(§§pop());
                                                                              if(_loc5_)
                                                                              {
                                                                                 addr0406:
                                                                                 §§push(this._loadingQueue);
                                                                                 if(_loc5_ || _loc2_)
                                                                                 {
                                                                                    §§push(false);
                                                                                    if(_loc5_ || Boolean(param1))
                                                                                    {
                                                                                       addr0427:
                                                                                       §§pop().dispose(§§pop());
                                                                                       if(_loc5_ || _loc3_)
                                                                                       {
                                                                                          §§goto(addr0439);
                                                                                       }
                                                                                       §§goto(addr0503);
                                                                                    }
                                                                                    §§goto(addr04c0);
                                                                                 }
                                                                                 §§goto(addr04ce);
                                                                              }
                                                                              §§goto(addr0503);
                                                                           }
                                                                           §§goto(addr0427);
                                                                        }
                                                                        §§goto(addr04bf);
                                                                     }
                                                                     §§goto(addr04ca);
                                                                  }
                                                                  else
                                                                  {
                                                                     _cacheIsDirty = true;
                                                                     if(!(_loc4_ && Boolean(this)))
                                                                     {
                                                                        addr048b:
                                                                        this._changeQueueListeners(true);
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§goto(addr0497);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr0503);
                                                               }
                                                               §§goto(addr03fc);
                                                            }
                                                            §§goto(addr04ce);
                                                         }
                                                         §§goto(addr048b);
                                                      }
                                                      §§goto(addr0406);
                                                   }
                                                   else
                                                   {
                                                      addr022b:
                                                      §§pop().prependURLs(this.vars.recursivePrependURLs,true);
                                                      if(!_loc4_)
                                                      {
                                                         addr023e:
                                                         §§push(§§newactivation());
                                                         if(!(_loc4_ && Boolean(this)))
                                                         {
                                                            §§push(this._parsed.getChildren(true,true));
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               §§pop().§§slot[2] = §§pop();
                                                               if(_loc5_)
                                                               {
                                                                  addr0270:
                                                                  §§push(§§newactivation());
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr0288:
                                                                     §§pop().§§slot[3] = int(loaders.length);
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        loop5:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           addr031e:
                                                                           addr02a8:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().§§slot[3]);
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 §§push(§§pop() - 1);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    addr0335:
                                                                                    var _temp_31:* = §§pop();
                                                                                    §§push(_temp_31);
                                                                                    §§push(_temp_31);
                                                                                    if(!(_loc4_ && Boolean(this)))
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc5_ || Boolean(param1))
                                                                                       {
                                                                                          i = §§pop();
                                                                                          addr0358:
                                                                                          §§push(-1);
                                                                                       }
                                                                                    }
                                                                                    if(§§pop() <= §§pop())
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§goto(addr03a7);
                                                                                       }
                                                                                       addr0439:
                                                                                       this._loadingQueue = null;
                                                                                       if(!(_loc4_ && _loc3_))
                                                                                       {
                                                                                          addr044c:
                                                                                          dispatchEvent(new LoaderEvent(LoaderEvent.INIT,this,"",_content));
                                                                                          if(_loc4_ && Boolean(this))
                                                                                          {
                                                                                             addr0497:
                                                                                             dispatchEvent(new LoaderEvent(LoaderEvent.INIT,this,"",_content));
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                addr04b5:
                                                                                                §§push(this._loadingQueue);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   addr04c0:
                                                                                                   §§pop().load(false);
                                                                                                   addr04bf:
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      addr04ce:
                                                                                                      addr04ca:
                                                                                                      §§push(this._loadingQueue == null);
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         addr04d6:
                                                                                                         var _temp_22:* = §§pop();
                                                                                                         §§push(_temp_22);
                                                                                                         if(!_temp_22)
                                                                                                         {
                                                                                                            if(_loc5_ || Boolean(param1))
                                                                                                            {
                                                                                                               addr04e9:
                                                                                                               §§pop();
                                                                                                               if(_loc5_ || Boolean(param1))
                                                                                                               {
                                                                                                                  §§goto(addr050d);
                                                                                                               }
                                                                                                               §§goto(addr051f);
                                                                                                            }
                                                                                                         }
                                                                                                         addr050d:
                                                                                                         §§goto(addr0503);
                                                                                                      }
                                                                                                      §§goto(addr04e9);
                                                                                                   }
                                                                                                   §§goto(addr051f);
                                                                                                }
                                                                                                §§goto(addr04ce);
                                                                                             }
                                                                                             addr0503:
                                                                                             if(this.vars.integrateProgress == false)
                                                                                             {
                                                                                                if(_loc5_ || _loc3_)
                                                                                                {
                                                                                                   addr051f:
                                                                                                   this._completeHandler(event);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr0528);
                                                                                          }
                                                                                          §§goto(addr04ca);
                                                                                       }
                                                                                       addr0528:
                                                                                       return;
                                                                                    }
                                                                                    §§push(§§newactivation());
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().§§slot[2]);
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(§§newactivation());
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().§§slot[3]);
                                                                                          addr02fb:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop()[§§pop()].vars.recursivePrependURLs = this.vars.recursivePrependURLs;
                                                                                             if(_loc5_ || _loc3_)
                                                                                             {
                                                                                                continue loop5;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr03c5);
                                                                                    addr02ef:
                                                                                    §§goto(addr04ca);
                                                                                 }
                                                                                 §§goto(addr0358);
                                                                              }
                                                                              §§goto(addr0335);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().§§slot[2]);
                                                                              if(_loc4_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(§§newactivation());
                                                                              if(!(_loc4_ && Boolean(param1)))
                                                                              {
                                                                                 §§push(§§pop().§§slot[3]);
                                                                                 if(_loc5_ || Boolean(this))
                                                                                 {
                                                                                    §§push(§§pop()[§§pop()] is XMLLoader);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          continue loop5;
                                                                                       }
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§push(§§newactivation());
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             §§goto(addr031e);
                                                                                          }
                                                                                          §§goto(addr02ef);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr037e:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             addr038c:
                                                                                             this._parsed.prependURLs(this.vars.prependURLs,true);
                                                                                             if(_loc5_ || _loc2_)
                                                                                             {
                                                                                                §§goto(addr03a7);
                                                                                             }
                                                                                             §§goto(addr044c);
                                                                                          }
                                                                                          §§goto(addr04b5);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr03a7);
                                                                                 }
                                                                                 §§goto(addr02fb);
                                                                              }
                                                                              §§goto(addr02f9);
                                                                           }
                                                                           §§goto(addr03c5);
                                                                        }
                                                                        addr031c:
                                                                     }
                                                                     §§goto(addr03a7);
                                                                  }
                                                                  §§goto(addr02a8);
                                                               }
                                                               §§goto(addr04ca);
                                                            }
                                                            §§goto(addr0288);
                                                         }
                                                         §§goto(addr02a8);
                                                      }
                                                      §§goto(addr0270);
                                                   }
                                                }
                                                §§goto(addr044c);
                                             }
                                             else
                                             {
                                                §§push("recursivePrependURLs");
                                                if(_loc5_ || Boolean(this))
                                                {
                                                   §§push(§§pop() in this.vars);
                                                   if(!_loc4_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            addr0219:
                                                            §§push(this._parsed);
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               §§goto(addr022b);
                                                            }
                                                            §§goto(addr038c);
                                                         }
                                                         §§goto(addr023e);
                                                      }
                                                      else
                                                      {
                                                         addr036b:
                                                         §§push("prependURLs" in this.vars);
                                                         if(_loc5_ || Boolean(this))
                                                         {
                                                            §§goto(addr037e);
                                                         }
                                                      }
                                                      §§goto(addr04d6);
                                                   }
                                                   §§goto(addr037e);
                                                }
                                                §§goto(addr036b);
                                             }
                                          }
                                          §§goto(addr01d1);
                                       }
                                       §§goto(addr04b5);
                                    }
                                    §§goto(addr031c);
                                 }
                                 §§goto(addr01e4);
                              }
                              §§goto(addr0120);
                           }
                        }
                        §§goto(addr0219);
                     }
                  }
                  catch(error:Error)
                  {
                     if(!_loc4_)
                     {
                        _content = _loader.data;
                     }
                     _failHandler(new LoaderEvent(LoaderEvent.ERROR,this,error.message));
                     return;
                  }
                  §§goto(addr031c);
               }
               §§goto(addr0059);
            }
            §§goto(addr005c);
         }
         §§goto(addr004d);
      }
      
      override protected function _failHandler(param1:Event, param2:Boolean = true) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            if(param1.target == this._loadingQueue)
            {
               if(_loc3_)
               {
                  _status = LoaderStatus.FAILED;
                  if(_loc3_)
                  {
                     _time = getTimer() - _time;
                     if(!_loc4_)
                     {
                        dispatchEvent(new LoaderEvent(LoaderEvent.CANCEL,this));
                        if(!_loc4_)
                        {
                           dispatchEvent(new LoaderEvent(LoaderEvent.FAIL,this,this.toString() + " > " + (param1 as Object).text));
                           addr0078:
                           if(_loc4_ && Boolean(param1))
                           {
                           }
                        }
                     }
                     §§goto(addr00c2);
                  }
                  §§goto(addr0078);
               }
            }
            else
            {
               super._failHandler(param1,param2);
            }
            addr00c2:
            return;
         }
         §§goto(addr0078);
      }
      
      override protected function _completeHandler(param1:Event = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._calculateProgress();
            if(!(_loc3_ && _loc2_))
            {
               if(this.progress == 1)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     addr0063:
                     this._changeQueueListeners(false);
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0076:
                        super._completeHandler(param1);
                     }
                  }
               }
               return;
            }
            §§goto(addr0076);
         }
         §§goto(addr0063);
      }
      
      override public function get progress() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            if(this.bytesTotal != 0)
            {
               if(_loc1_)
               {
                  addr002c:
                  §§push(_cachedBytesLoaded / _cachedBytesTotal);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(§§pop());
                     if(_loc2_)
                     {
                     }
                  }
               }
               else
               {
                  addr0083:
                  addr009f:
                  §§push(this._initted);
                  if(!(_loc2_ && _loc1_))
                  {
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     addr00a3:
                     §§push(1);
                     if(!_loc2_)
                     {
                        §§push(§§pop());
                        if(_loc2_ && _loc2_)
                        {
                        }
                     }
                     else
                     {
                        addr00be:
                        §§push(§§pop());
                     }
                     §§goto(addr00bf);
                  }
                  else
                  {
                     §§push(0);
                  }
                  §§goto(addr00be);
               }
               addr00bf:
               return §§pop();
            }
            §§push(_status == LoaderStatus.COMPLETED);
            if(_loc1_ || Boolean(this))
            {
               var _temp_6:* = §§pop();
               §§push(_temp_6);
               if(!_temp_6)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§pop();
                     if(_loc1_)
                     {
                        §§goto(addr0083);
                     }
                     §§goto(addr00a3);
                  }
               }
            }
            §§goto(addr009f);
         }
         §§goto(addr002c);
      }
   }
}

