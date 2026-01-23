package net.bigpoint.eventstream
{
   import com.adobe.serialization.json.JSON;
   import com.adobe.utils.StringUtil;
   import flash.display.Stage;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   import net.bigpoint.eventstream.vo.ESCRequestVo;
   
   public class EventStreamClient
   {
      
      public static var VERSION:Number = 91;
      
      private static var _instance:EventStreamClient = null;
      
      private static var _allowInstantiation:Boolean = false;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         VERSION = 91;
         if(!_loc2_)
         {
            _instance = null;
            if(!_loc2_)
            {
               addr002e:
               _allowInstantiation = false;
            }
            return;
         }
      }
      §§goto(addr002e);
      
      public const FLUSH_INTERVAL:uint = 10;
      
      public var debug:Boolean = false;
      
      private var _byteArray:ByteArray;
      
      private var _logFunction:Function;
      
      private var _startTime:Number = 0;
      
      private var _queue:Array;
      
      public var _context:Object = null;
      
      private var _stage:Stage = null;
      
      private var _frameCounter:Number = 0;
      
      private var _frameTime:Number = 0;
      
      private var _fpsMin:Number = Infinity;
      
      private var _fpsSum:Number = 0;
      
      private var _fpsCount:Number = 0;
      
      private var _totalMemMax:Number = 0;
      
      private var _totalMemSum:Number = 0;
      
      private var _totalMemCount:Number = 0;
      
      private var _usedMemDelta:Number = 0;
      
      private var _usedMemLast:Number = -1;
      
      private var _usedMemDeltaTime:Number = 0;
      
      private var _urlRequest:URLRequest;
      
      private var _loader:URLLoader;
      
      private var _attempt:Number = 0;
      
      private var _contentType:String = "application/x-compressed-json";
      
      private var _autoEnterFrame:Boolean;
      
      private var _lastFlush:int;
      
      private var _statisticsTime:Number = 0;
      
      public function EventStreamClient(param1:String, param2:Stage, param3:Boolean = true, param4:Function = null)
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(!(_loc5_ && Boolean(param1)))
         {
            this._queue = [];
            if(_loc6_)
            {
               this._urlRequest = new URLRequest();
               if(!(_loc5_ && param3))
               {
                  super();
                  if(!_loc5_)
                  {
                     if(_instance != null)
                     {
                        throw new Error("EventStreamClient() error: Respect the singleton!");
                     }
                     if(_loc6_ || Boolean(param1))
                     {
                        _instance = this;
                        if(!(_loc5_ && Boolean(param1)))
                        {
                           this._autoEnterFrame = param3;
                           if(!(_loc5_ && Boolean(param1)))
                           {
                              this.setClientContext(param1);
                              if(!_loc5_)
                              {
                                 this.setStage(param2);
                                 if(_loc6_)
                                 {
                                    this.setLogger(param4);
                                    if(_loc6_)
                                    {
                                       this._byteArray = new ByteArray();
                                       if(!(_loc5_ && Boolean(this)))
                                       {
                                          addr00e2:
                                          this._urlRequest = new URLRequest();
                                          if(_loc6_ || Boolean(this))
                                          {
                                             addr00fb:
                                             this._urlRequest.method = URLRequestMethod.POST;
                                             if(!(_loc5_ && Boolean(this)))
                                             {
                                                addr0117:
                                                this._urlRequest.contentType = "application/x-compressed-json";
                                                if(_loc6_ || Boolean(param2))
                                                {
                                                   addr013d:
                                                   this._startTime = getTimer();
                                                   if(_loc6_)
                                                   {
                                                      addr014e:
                                                      this._lastFlush = getTimer();
                                                      if(_loc6_)
                                                      {
                                                      }
                                                   }
                                                   §§goto(addr016f);
                                                }
                                             }
                                             §§goto(addr014e);
                                          }
                                          §§goto(addr016f);
                                       }
                                       §§goto(addr00fb);
                                    }
                                    §§goto(addr0117);
                                 }
                                 §§goto(addr016f);
                              }
                              §§goto(addr013d);
                           }
                           §§goto(addr016f);
                        }
                     }
                     §§goto(addr013d);
                  }
                  §§goto(addr016f);
               }
            }
            §§goto(addr00e2);
         }
         addr016f:
      }
      
      public static function track(param1:String, param2:Object = null) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            _instance.doTrack(param1,param2);
         }
      }
      
      public function enterFrame() : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc1_:Number = getTimer();
         if(_loc7_)
         {
            §§push(_loc1_);
            if(_loc7_ || Boolean(_loc1_))
            {
               §§push(§§pop() - this._lastFlush);
               if(!_loc6_)
               {
                  §§push(this.FLUSH_INTERVAL * 1000);
                  if(_loc7_ || Boolean(this))
                  {
                     if(§§pop() > §§pop())
                     {
                        if(!_loc6_)
                        {
                           this._lastFlush = _loc1_;
                           if(!(_loc6_ && _loc3_))
                           {
                              this.flush();
                              if(_loc7_)
                              {
                                 addr007d:
                                 §§push(_loc1_);
                                 if(_loc7_)
                                 {
                                    addr009a:
                                    addr0084:
                                    §§push(this._frameTime);
                                    if(_loc7_ || _loc3_)
                                    {
                                       §§push(§§pop() + 1000);
                                    }
                                    if(§§pop() > §§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          §§push(this);
                                          §§push(this._frameTime);
                                          if(!(_loc6_ && Boolean(this)))
                                          {
                                             §§push(§§pop() + 1000);
                                          }
                                          §§pop()._frameTime = §§pop();
                                          if(_loc7_ || Boolean(this))
                                          {
                                             addr00cc:
                                             this._fpsMin = Math.min(this._fpsMin,this._frameCounter);
                                             if(!_loc6_)
                                             {
                                                addr00e4:
                                                §§push(this);
                                                §§push(this._fpsSum);
                                                if(_loc7_)
                                                {
                                                   §§push(§§pop() + this._frameCounter);
                                                }
                                                §§pop()._fpsSum = §§pop();
                                                if(!(_loc6_ && Boolean(this)))
                                                {
                                                   addr0105:
                                                   var _loc4_:* = this;
                                                   §§push(_loc4_._fpsCount);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop() + 1);
                                                   }
                                                   var _loc5_:* = §§pop();
                                                   if(!(_loc6_ && Boolean(_loc1_)))
                                                   {
                                                      _loc4_._fpsCount = _loc5_;
                                                   }
                                                   if(!_loc6_)
                                                   {
                                                      addr0134:
                                                      this._frameCounter = 0;
                                                      if(!(_loc6_ && Boolean(_loc1_)))
                                                      {
                                                         addr0148:
                                                         _loc4_ = this;
                                                         §§push(_loc4_._frameCounter);
                                                         if(!_loc6_)
                                                         {
                                                            §§push(§§pop() + 1);
                                                         }
                                                         _loc5_ = §§pop();
                                                         if(_loc7_ || _loc2_)
                                                         {
                                                            _loc4_._frameCounter = _loc5_;
                                                         }
                                                      }
                                                   }
                                                   addr0179:
                                                   var _loc2_:Number = System.totalMemory;
                                                   addr0171:
                                                   if(_loc7_ || Boolean(_loc1_))
                                                   {
                                                      this._totalMemMax = Math.max(this._totalMemMax,_loc2_);
                                                      if(!_loc6_)
                                                      {
                                                         addr019d:
                                                         §§push(this);
                                                         §§push(this._totalMemSum);
                                                         if(_loc7_)
                                                         {
                                                            §§push(§§pop() + _loc2_);
                                                         }
                                                         §§pop()._totalMemSum = §§pop();
                                                         if(_loc7_)
                                                         {
                                                            _loc4_ = this;
                                                            §§push(_loc4_._totalMemCount);
                                                            if(_loc7_)
                                                            {
                                                               §§push(§§pop() + 1);
                                                            }
                                                            _loc5_ = §§pop();
                                                            if(_loc7_ || _loc3_)
                                                            {
                                                               _loc4_._totalMemCount = _loc5_;
                                                            }
                                                         }
                                                      }
                                                      §§push(_loc2_);
                                                      if(!_loc6_)
                                                      {
                                                         §§push(§§pop() - System.freeMemory);
                                                         if(_loc7_ || Boolean(_loc1_))
                                                         {
                                                            addr0204:
                                                            §§push(§§pop());
                                                         }
                                                         var _loc3_:* = §§pop();
                                                         if(!(_loc6_ && Boolean(_loc2_)))
                                                         {
                                                            §§push(this._usedMemLast);
                                                            if(_loc7_)
                                                            {
                                                               §§push(-1);
                                                               if(!_loc6_)
                                                               {
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        §§goto(addr0230);
                                                                     }
                                                                  }
                                                                  §§goto(addr0243);
                                                               }
                                                               §§goto(addr03ad);
                                                            }
                                                            §§goto(addr0270);
                                                         }
                                                         addr0230:
                                                         this._usedMemLast = _loc3_;
                                                         if(_loc7_ || Boolean(_loc2_))
                                                         {
                                                            addr0243:
                                                            this._usedMemDelta += Math.abs(this._usedMemLast - _loc3_);
                                                            if(!_loc6_)
                                                            {
                                                               this._usedMemLast = _loc3_;
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(_loc1_);
                                                                  if(_loc7_)
                                                                  {
                                                                     addr0270:
                                                                     §§push(this._statisticsTime);
                                                                     if(!(_loc6_ && Boolean(this)))
                                                                     {
                                                                        if(§§pop() > §§pop())
                                                                        {
                                                                           if(_loc7_ || Boolean(_loc2_))
                                                                           {
                                                                              this.doTrack("flash.metrics",{
                                                                                 "fpsMin":this._fpsMin,
                                                                                 "fpsAvg":Math.round(this._fpsSum / this._fpsCount),
                                                                                 "totalMemMax":this._totalMemMax,
                                                                                 "totalMemAvg":Math.round(this._totalMemSum / this._totalMemCount),
                                                                                 "usedMemDelta":Math.round(this._usedMemDelta / ((_loc1_ - this._usedMemDeltaTime) / 1000)),
                                                                                 "playTime":Math.round((_loc1_ - this._startTime) / 1000)
                                                                              });
                                                                              if(_loc7_ || Boolean(_loc1_))
                                                                              {
                                                                                 this._fpsMin = Infinity;
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    this._fpsSum = 0;
                                                                                    if(_loc7_ || Boolean(_loc2_))
                                                                                    {
                                                                                       this._fpsCount = 0;
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          addr033e:
                                                                                          this._totalMemMax = 0;
                                                                                          if(_loc7_ || Boolean(_loc1_))
                                                                                          {
                                                                                             addr0352:
                                                                                             this._totalMemSum = 0;
                                                                                             if(!(_loc6_ && _loc3_))
                                                                                             {
                                                                                                this._totalMemCount = 0;
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   addr0372:
                                                                                                   this._usedMemDelta = 0;
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      addr037e:
                                                                                                      this._usedMemDeltaTime = _loc1_;
                                                                                                      if(_loc7_ || _loc3_)
                                                                                                      {
                                                                                                         addr0391:
                                                                                                         §§push(_loc1_);
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            addr03b1:
                                                                                                            addr0398:
                                                                                                            §§push(this._startTime);
                                                                                                            if(_loc7_ || _loc3_)
                                                                                                            {
                                                                                                               addr03ab:
                                                                                                               addr03ad:
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               §§push(60 * 1000);
                                                                                                            }
                                                                                                            if(§§pop() < §§pop())
                                                                                                            {
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  addr03bb:
                                                                                                                  §§push(this);
                                                                                                                  §§push(this._statisticsTime);
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + 5 * 1000);
                                                                                                                  }
                                                                                                                  §§pop()._statisticsTime = §§pop();
                                                                                                                  if(_loc7_ || Boolean(_loc1_))
                                                                                                                  {
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(this);
                                                                                                               §§push(this._statisticsTime);
                                                                                                               if(!(_loc6_ && Boolean(this)))
                                                                                                               {
                                                                                                                  §§push(§§pop() + 30 * 1000);
                                                                                                               }
                                                                                                               §§pop()._statisticsTime = §§pop();
                                                                                                            }
                                                                                                            §§goto(addr040f);
                                                                                                         }
                                                                                                         §§goto(addr03ab);
                                                                                                      }
                                                                                                      §§goto(addr040f);
                                                                                                   }
                                                                                                   §§goto(addr0391);
                                                                                                }
                                                                                                §§goto(addr040f);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr037e);
                                                                                       }
                                                                                       §§goto(addr0372);
                                                                                    }
                                                                                    §§goto(addr0352);
                                                                                 }
                                                                                 §§goto(addr037e);
                                                                              }
                                                                              §§goto(addr03bb);
                                                                           }
                                                                           §§goto(addr0391);
                                                                        }
                                                                        §§goto(addr040f);
                                                                     }
                                                                     §§goto(addr03b1);
                                                                  }
                                                                  §§goto(addr0398);
                                                               }
                                                               §§goto(addr037e);
                                                            }
                                                            §§goto(addr033e);
                                                         }
                                                         addr040f:
                                                         return;
                                                      }
                                                      §§goto(addr0204);
                                                   }
                                                   §§goto(addr019d);
                                                }
                                                §§goto(addr0148);
                                             }
                                             §§goto(addr0105);
                                          }
                                          §§goto(addr0134);
                                       }
                                    }
                                    §§goto(addr0148);
                                 }
                                 §§goto(addr0179);
                              }
                              §§goto(addr0105);
                           }
                           §§goto(addr00cc);
                        }
                        §§goto(addr0171);
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr009a);
               }
               §§goto(addr0084);
            }
            §§goto(addr0179);
         }
         §§goto(addr00e4);
      }
      
      private function doTrack(param1:String, param2:Object = null) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_ || Boolean(param1))
         {
            var _loc3_:Object = param2 || {};
            if(!(_loc4_ && Boolean(_loc3_)))
            {
               _loc3_["event"] = param1;
               if(!(_loc4_ && Boolean(this)))
               {
                  _loc3_["time"] = new Date().getTime();
                  if(_loc5_)
                  {
                     §§push("generator" in _loc3_);
                     if(!_loc4_)
                     {
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              _loc3_["generator"] = "as:" + VERSION + " " + _loc3_["generator"];
                              if(!(_loc4_ && Boolean(param2)))
                              {
                                 addr00dc:
                                 addr00e0:
                                 if(this.debug)
                                 {
                                    if(_loc5_ || Boolean(param2))
                                    {
                                       addr00f2:
                                       §§push(this);
                                       §§push("EventStreamClient: ");
                                       if(_loc5_ || Boolean(param1))
                                       {
                                          §§push(§§pop() + com.adobe.serialization.json.JSON.encode(_loc3_));
                                       }
                                       §§pop().log(§§pop());
                                       if(_loc5_ || Boolean(_loc3_))
                                       {
                                          addr012d:
                                          this._queue.push(_loc3_);
                                       }
                                    }
                                    §§goto(addr0135);
                                 }
                                 §§goto(addr012d);
                              }
                              §§goto(addr00f2);
                           }
                           §§goto(addr0135);
                        }
                        else
                        {
                           _loc3_["generator"] = "as:" + VERSION;
                           if(_loc5_ || Boolean(this))
                           {
                              §§goto(addr00dc);
                           }
                        }
                        §§goto(addr012d);
                     }
                     §§goto(addr00e0);
                  }
                  §§goto(addr00dc);
               }
            }
            addr0135:
            return;
         }
         §§goto(addr002c);
      }
      
      private function flush() : void
      {
         var request:ESCRequestVo;
         var url:String;
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(§§newactivation());
         if(!(_loc4_ && _loc2_))
         {
            §§push(null);
            if(_loc3_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc4_)
               {
                  addr0039:
                  url = null;
                  addr0038:
               }
               try
               {
                  if(this._loader != null)
                  {
                     if(!(_loc4_ && Boolean(this)))
                     {
                        return;
                     }
                  }
                  §§push(this._queue);
                  if(_loc3_)
                  {
                     if(§§pop().length == 0)
                     {
                        if(!(_loc4_ && _loc2_))
                        {
                           return;
                        }
                        addr01db:
                        this._urlRequest.data = this._byteArray;
                        if(!_loc4_)
                        {
                           addr01eb:
                           this._urlRequest.url = url;
                           if(_loc3_)
                           {
                              this._loader = new URLLoader();
                              if(!(_loc4_ && _loc1_))
                              {
                                 addr0214:
                                 this._loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.handleSecurityError,false,0,true);
                                 if(_loc3_)
                                 {
                                    addr022e:
                                    this._loader.addEventListener(IOErrorEvent.IO_ERROR,this.handleIOError,false,0,true);
                                    if(!(_loc4_ && _loc1_))
                                    {
                                       §§goto(addr0252);
                                    }
                                    §§goto(addr028e);
                                 }
                              }
                              §§goto(addr0252);
                           }
                           §§goto(addr022e);
                        }
                        §§goto(addr028e);
                     }
                     else if(this._context == null)
                     {
                        if(_loc3_)
                        {
                           §§push(this._queue);
                           if(!_loc4_)
                           {
                              if(§§pop().length > 1000)
                              {
                                 if(_loc3_ || Boolean(this))
                                 {
                                    §§push(this._queue);
                                    if(!_loc4_)
                                    {
                                       §§push(0);
                                       if(!_loc4_)
                                       {
                                          §§pop().length = §§pop();
                                          if(_loc3_)
                                          {
                                             §§goto(addr00d5);
                                          }
                                          §§goto(addr01eb);
                                       }
                                       §§goto(addr02a2);
                                    }
                                    §§goto(addr02a0);
                                 }
                                 §§goto(addr028e);
                              }
                              addr00d5:
                              return;
                           }
                           §§goto(addr02a0);
                        }
                        §§goto(addr028e);
                     }
                     else
                     {
                        §§push(§§newactivation());
                        if(_loc3_)
                        {
                           §§pop().§§slot[1] = new ESCRequestVo(new Date().getTime(),this._context,this._queue);
                           if(!(_loc4_ && _loc2_))
                           {
                              addr0111:
                              §§push(§§newactivation());
                              §§push("https://eventstream-829-weblog-0");
                              if(!_loc4_)
                              {
                                 §§push(this._startTime);
                                 if(_loc3_ || _loc1_)
                                 {
                                    §§push(8);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop() % §§pop());
                                       if(!(_loc4_ && _loc1_))
                                       {
                                          addr0145:
                                          addr0143:
                                          §§push(§§pop() + 1);
                                       }
                                       §§push(§§pop() + §§pop().toString());
                                       if(!_loc4_)
                                       {
                                          addr015c:
                                          §§push(§§pop() + ".bigpoint.net/json.php");
                                       }
                                       §§pop().§§slot[2] = §§pop();
                                       if(!(_loc4_ && _loc1_))
                                       {
                                          this._byteArray.clear();
                                          if(!_loc4_)
                                          {
                                             this._byteArray.writeUTFBytes(com.adobe.serialization.json.JSON.encode(request));
                                             if(_loc3_)
                                             {
                                                addr0197:
                                                this._byteArray.compress();
                                                if(!(_loc4_ && _loc1_))
                                                {
                                                   this._urlRequest.method = URLRequestMethod.POST;
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      addr01c9:
                                                      this._urlRequest.contentType = this._contentType;
                                                      if(!_loc4_)
                                                      {
                                                         §§goto(addr01db);
                                                      }
                                                      §§goto(addr0252);
                                                   }
                                                   §§goto(addr01db);
                                                }
                                                §§goto(addr0214);
                                             }
                                             §§goto(addr0252);
                                          }
                                          §§goto(addr0197);
                                       }
                                       §§goto(addr01c9);
                                    }
                                    §§goto(addr0145);
                                 }
                                 §§goto(addr0143);
                              }
                              §§goto(addr015c);
                           }
                           §§goto(addr0252);
                        }
                        §§goto(addr0111);
                     }
                     addr0252:
                     this._loader.addEventListener(Event.COMPLETE,this.handleComplete,false,0,true);
                     if(!(_loc4_ && Boolean(this)))
                     {
                        this._loader.load(this._urlRequest);
                        if(_loc3_ || _loc1_)
                        {
                           addr02a2:
                           this._queue.length = 0;
                           addr028e:
                           addr02a0:
                        }
                     }
                     §§goto(addr02c8);
                  }
                  §§goto(addr02a0);
               }
               catch(error:Error)
               {
                  log("EventStreamClient.flushEvents: " + error);
               }
               addr02c8:
               return;
            }
            §§goto(addr0039);
         }
         §§goto(addr0038);
      }
      
      private function handleComplete(param1:Event) : void
      {
         var event:Event;
         var response:Object;
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§pop().§§slot[2] = null;
            if(_loc4_ || _loc3_)
            {
               addr0034:
               event = param1;
            }
            try
            {
               §§push(§§newactivation());
               if(_loc4_)
               {
                  §§pop().§§slot[2] = com.adobe.serialization.json.JSON.decode(this._loader.data);
                  if(!_loc5_)
                  {
                     addr0065:
                     if(!response.success)
                     {
                        if(!(_loc5_ && _loc2_))
                        {
                           addr007d:
                           §§push(this);
                           §§push("EventStreamClient.flushEvents.NOSUCCESS: ");
                           if(!(_loc5_ && _loc2_))
                           {
                              §§push(§§pop() + response.message);
                           }
                           §§pop().log(§§pop());
                           if(!(_loc5_ && _loc2_))
                           {
                              addr00dd:
                              this.removeListeners();
                           }
                        }
                        §§goto(addr00e2);
                     }
                     §§goto(addr00dd);
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0065);
            }
            catch(error:Error)
            {
               log("EventStreamClient.flushEvents.COMPLETE: " + error);
               §§goto(addr00dd);
            }
            addr00e2:
            return;
         }
         §§goto(addr0034);
      }
      
      private function handleSecurityError(param1:SecurityErrorEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            §§push(this);
            §§push("EventStreamClient.flushEvents.SECURITY_ERROR: ");
            if(!_loc3_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().log(§§pop());
            if(_loc2_ || Boolean(this))
            {
               this.removeListeners();
            }
         }
      }
      
      private function handleIOError(param1:IOErrorEvent) : void
      {
         var event:IOErrorEvent;
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         event = param1;
         if(_loc6_ || _loc2_)
         {
            §§push(this);
            §§push("EventStreamClient.flushEvents.IO_ERROR: ");
            if(_loc6_)
            {
               §§push(§§pop() + event);
            }
            §§pop().log(§§pop());
            if(_loc6_ || Boolean(param1))
            {
               if(this._attempt == 0)
               {
                  if(!_loc5_)
                  {
                     §§goto(addr006e);
                  }
                  §§goto(addr00cf);
               }
            }
            §§goto(addr00e3);
         }
         addr006e:
         this.log("EventStreamClient.flushEvents.IO_ERROR: retrying");
         if(!(_loc5_ && Boolean(this)))
         {
            var _loc3_:* = this;
            §§push(_loc3_._attempt);
            if(!(_loc5_ && Boolean(param1)))
            {
               §§push(§§pop() + 1);
            }
            var _loc4_:* = §§pop();
            if(_loc6_ || Boolean(param1))
            {
               _loc3_._attempt = _loc4_;
            }
            if(!(_loc5_ && _loc2_))
            {
               addr00cf:
               setTimeout(function():void
               {
                  _loader.load(_urlRequest);
               },1000);
               if(_loc6_)
               {
                  addr00e3:
                  this.removeListeners();
               }
               §§goto(addr00e8);
            }
            §§goto(addr00e3);
         }
         addr00e8:
      }
      
      private function removeListeners() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            if(this._loader != null)
            {
               if(_loc1_)
               {
                  addr0023:
                  this._loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.handleSecurityError,false,0,true);
                  if(_loc1_ || _loc2_)
                  {
                     this._loader.addEventListener(IOErrorEvent.IO_ERROR,this.handleIOError,false,0,true);
                     if(_loc1_ || Boolean(this))
                     {
                        addr007c:
                        this._loader.addEventListener(Event.COMPLETE,this.handleComplete,false,0,true);
                        if(!(_loc2_ && _loc1_))
                        {
                           this._loader = null;
                        }
                     }
                     §§goto(addr00a3);
                  }
               }
               §§goto(addr007c);
            }
            addr00a3:
            return;
         }
         §§goto(addr0023);
      }
      
      private function log(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            if(this._logFunction != null)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0041:
                  this._logFunction(param1);
               }
            }
            return;
         }
         §§goto(addr0041);
      }
      
      private function handleCaughtError(param1:Event) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc3_:Error = null;
         var _loc4_:ErrorEvent = null;
         var _loc2_:Object = param1["error"];
         if(_loc5_ || Boolean(_loc3_))
         {
            §§push(_loc2_ is Error);
            if(_loc5_)
            {
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     _loc3_ = _loc2_ as Error;
                     addr004e:
                     if(_loc5_ || Boolean(_loc3_))
                     {
                        this.doTrack("flash.error",{
                           "id":_loc3_.name,
                           "message":_loc3_.toString(),
                           "x-stacktrace":_loc3_.getStackTrace()
                        });
                     }
                  }
                  else
                  {
                     addr00ae:
                     _loc4_ = _loc2_ as ErrorEvent;
                     if(_loc5_ || Boolean(param1))
                     {
                        this.doTrack("flash.error",{
                           "id":_loc4_.errorID,
                           "message":_loc4_.toString()
                        });
                     }
                  }
               }
               else
               {
                  addr00aa:
                  if(_loc2_ is ErrorEvent)
                  {
                     §§goto(addr00ae);
                  }
               }
               return;
            }
            §§goto(addr00aa);
         }
         §§goto(addr004e);
      }
      
      private function setLogger(param1:Function) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._logFunction = param1;
         }
      }
      
      private function setClientContext(param1:String) : void
      {
         var contextStr:String;
         var rest:uint;
         var i:int;
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(§§newactivation());
         if(_loc4_ || Boolean(param1))
         {
            §§push(0);
            if(_loc4_)
            {
               §§pop().§§slot[2] = §§pop();
               if(_loc4_ || _loc3_)
               {
                  §§push(§§newactivation());
                  if(_loc4_ || Boolean(this))
                  {
                     §§goto(addr0053);
                  }
                  §§goto(addr005d);
               }
               §§goto(addr0060);
            }
            addr0053:
            §§pop().§§slot[3] = 0;
            if(!_loc5_)
            {
               addr005d:
               contextStr = param1;
            }
            try
            {
               addr0060:
               §§push(§§newactivation());
               if(!(_loc5_ && Boolean(this)))
               {
                  §§push(StringUtil.replace(contextStr,"-","+"));
                  if(!(_loc5_ && Boolean(this)))
                  {
                     §§push(§§pop());
                     if(!(_loc5_ && _loc2_))
                     {
                        §§pop().§§slot[1] = §§pop();
                        if(!(_loc5_ && Boolean(this)))
                        {
                           §§push(§§newactivation());
                           if(!_loc5_)
                           {
                              §§push(StringUtil.replace(contextStr,"_","/"));
                              if(_loc4_ || _loc2_)
                              {
                                 §§push(§§pop());
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    §§pop().§§slot[1] = §§pop();
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       §§push(§§newactivation());
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§push(§§newactivation());
                                          if(!(_loc5_ && Boolean(this)))
                                          {
                                             §§push(§§pop().§§slot[1]);
                                             if(_loc4_)
                                             {
                                                addr0129:
                                                §§pop().§§slot[2] = uint(§§pop().length % 4);
                                                if(_loc4_ || _loc3_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(!_loc5_)
                                                   {
                                                      if(§§pop().§§slot[2] > 0)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            §§push(§§newactivation());
                                                            if(!_loc5_)
                                                            {
                                                               §§pop().§§slot[3] = 0;
                                                               if(!(_loc5_ && _loc2_))
                                                               {
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§newactivation());
                                                                     if(_loc5_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     loop1:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().§§slot[3]);
                                                                        loop7:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() >= 4 - rest)
                                                                           {
                                                                              addr020c:
                                                                              if(!_loc5_)
                                                                              {
                                                                                 addr01e0:
                                                                                 §§push(§§newactivation());
                                                                                 break loop5;
                                                                              }
                                                                              this._context = com.adobe.serialization.json.JSON.decode(contextStr);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(§§newactivation());
                                                                              if(_loc5_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§newactivation());
                                                                                 addr017e:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().§§slot[1]);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().§§slot[1] = §§pop() + "=";
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§newactivation());
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   break loop5;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().§§slot[3]);
                                                                                                   if(!(_loc5_ && Boolean(param1)))
                                                                                                   {
                                                                                                      §§push(§§pop() + 1);
                                                                                                      if(_loc5_ && _loc2_)
                                                                                                      {
                                                                                                         continue loop7;
                                                                                                      }
                                                                                                   }
                                                                                                   i = §§pop();
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   break loop1;
                                                                                                }
                                                                                                §§goto(addr01e0);
                                                                                             }
                                                                                             break loop5;
                                                                                             addr0193:
                                                                                          }
                                                                                          break loop1;
                                                                                       }
                                                                                       break loop5;
                                                                                       addr0186:
                                                                                    }
                                                                                    addr01fb:
                                                                                    §§pop().§§slot[1] = §§pop();
                                                                                    if(!(_loc5_ && _loc3_))
                                                                                    {
                                                                                       §§goto(addr020c);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr024b);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§push(Base64.decode(contextStr));
                                                                  if(_loc5_ && Boolean(this))
                                                                  {
                                                                  }
                                                                  §§goto(addr01fb);
                                                                  addr01c5:
                                                               }
                                                               §§goto(addr0193);
                                                            }
                                                            §§goto(addr019b);
                                                         }
                                                         §§goto(addr0193);
                                                      }
                                                      §§goto(addr01e0);
                                                   }
                                                   §§goto(addr017c);
                                                }
                                                §§goto(addr01c5);
                                             }
                                             §§goto(addr0186);
                                          }
                                          §§goto(addr017e);
                                       }
                                       §§goto(addr019b);
                                    }
                                    §§goto(addr024b);
                                 }
                              }
                              §§goto(addr01fb);
                           }
                           §§goto(addr019b);
                        }
                        §§goto(addr024b);
                     }
                     §§goto(addr0129);
                  }
                  §§goto(addr01fb);
               }
               §§goto(addr019b);
            }
            catch(error:Error)
            {
               log("EventStreamClient.setClientContext: " + error);
            }
            addr024b:
            return;
         }
         §§goto(addr005d);
      }
      
      private function setStage(param1:Stage) : void
      {
         var stageRef:Stage;
         var caps:Object;
         var time:Number;
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§pop().§§slot[2] = null;
            if(_loc4_)
            {
               §§push(§§newactivation());
               if(!(_loc5_ && _loc3_))
               {
                  §§goto(addr0039);
               }
               §§goto(addr0044);
            }
            §§goto(addr0042);
         }
         addr0039:
         §§pop().§§slot[3] = NaN;
         if(!_loc5_)
         {
            addr0044:
            stageRef = param1;
            addr0042:
            if(!_loc5_)
            {
               this._stage = stageRef;
            }
         }
         try
         {
            if(this._stage.loaderInfo.hasOwnProperty("uncaughtErrorEvents"))
            {
               if(!(_loc5_ && _loc2_))
               {
                  IEventDispatcher(this._stage.loaderInfo["uncaughtErrorEvents"]).addEventListener("uncaughtError",this.handleCaughtError,false,0,true);
                  if(!_loc5_)
                  {
                     try
                     {
                        addr00c3:
                        §§push(§§newactivation());
                        if(_loc4_ || _loc3_)
                        {
                           §§pop().§§slot[2] = {
                              "vmVersion":System.vmVersion,
                              "avHardwareDisable":Capabilities.avHardwareDisable,
                              "cpuArchitecture":Capabilities["cpuArchitecture"],
                              "hasAccessibility":Capabilities.hasAccessibility,
                              "hasAudio":Capabilities.hasAudio,
                              "hasAudioEncoder":Capabilities.hasAudioEncoder,
                              "hasEmbeddedVideo":Capabilities.hasEmbeddedVideo,
                              "hasIME":Capabilities.hasIME,
                              "hasMP3":Capabilities.hasMP3,
                              "hasPrinting":Capabilities.hasPrinting,
                              "hasScreenBroadcast":Capabilities.hasScreenBroadcast,
                              "hasScreenPlayback":Capabilities.hasScreenPlayback,
                              "hasStreamingAudio":Capabilities.hasStreamingAudio,
                              "hasStreamingVideo":Capabilities.hasStreamingVideo,
                              "hasTLS":Capabilities.hasTLS,
                              "hasVideoEncoder":Capabilities.hasVideoEncoder,
                              "isDebugger":Capabilities.isDebugger,
                              "isEmbeddedInAcrobat":Capabilities.isEmbeddedInAcrobat,
                              "language":Capabilities.language,
                              "localFileReadDisable":Capabilities.localFileReadDisable,
                              "manufacturer":Capabilities.manufacturer,
                              "maxLevelIDC":Capabilities.maxLevelIDC,
                              "os":Capabilities.os,
                              "pixelAspectRatio":Capabilities.pixelAspectRatio,
                              "playerType":Capabilities.playerType,
                              "screenColor":Capabilities.screenColor,
                              "screenDPI":Capabilities.screenDPI,
                              "screenResolutionX":Capabilities.screenResolutionX,
                              "screenResolutionY":Capabilities.screenResolutionY,
                              "supports32BitProcesses":Capabilities["supports32BitProcesses"],
                              "supports64BitProcesses":Capabilities["supports64BitProcesses"],
                              "touchscreenType":Capabilities["touchscreenType"],
                              "version":Capabilities.version,
                              "frameRate":this._stage.frameRate,
                              "displayState":this._stage.displayState,
                              "quality":this._stage.quality,
                              "scaleMode":this._stage.scaleMode,
                              "wmodeGPU":this._stage.wmodeGPU,
                              "width":this._stage.width,
                              "height":this._stage.height,
                              "stageWidth":this._stage.stageWidth,
                              "stageHeight":this._stage.stageHeight,
                              "parameters":this._stage.loaderInfo.parameters
                           };
                           if(_loc4_)
                           {
                              this.doTrack("flash.capabilities",caps);
                              if(!_loc5_)
                              {
                                 try
                                 {
                                    addr02fc:
                                    time = getTimer();
                                    addr02fa:
                                    if(!_loc5_)
                                    {
                                       this._frameCounter = 0;
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          addr0320:
                                          this._frameTime = time;
                                          if(!(_loc5_ && Boolean(param1)))
                                          {
                                             §§push(this);
                                             §§push(time);
                                             if(_loc4_ || _loc3_)
                                             {
                                                §§push(§§pop() + 5 * 1000);
                                             }
                                             §§pop()._statisticsTime = §§pop();
                                             if(_loc4_)
                                             {
                                                this._usedMemDeltaTime = time;
                                                if(!(_loc5_ && Boolean(this)))
                                                {
                                                   if(this._autoEnterFrame)
                                                   {
                                                      if(!(_loc5_ && Boolean(param1)))
                                                      {
                                                         this._stage.addEventListener(Event.ENTER_FRAME,this.handleEnterFrame,false,0,true);
                                                         addr0386:
                                                      }
                                                   }
                                                   §§goto(addr03cb);
                                                }
                                                §§goto(addr0386);
                                             }
                                          }
                                       }
                                       §§goto(addr03cb);
                                    }
                                    §§goto(addr0320);
                                 }
                                 catch(error:Error)
                                 {
                                    log("EventStreamClient.setStage: enterFrame " + error);
                                 }
                              }
                              §§goto(addr03cb);
                           }
                           §§goto(addr0386);
                        }
                        §§goto(addr02fc);
                     }
                     catch(error:Error)
                     {
                        var _loc3_:* = §§dup(error);
                        log("EventStreamClient.setStage: systemInfo " + error);
                        §§goto(addr02fa);
                     }
                     §§goto(addr03cb);
                  }
                  §§goto(addr0320);
               }
               §§goto(addr03cb);
            }
            §§goto(addr00c3);
         }
         catch(error:Error)
         {
            _loc3_ = §§dup(error);
            log("EventStreamClient.setStage: uncaughtErrorEvents " + error);
            §§goto(addr00c3);
         }
         addr03cb:
      }
      
      private function handleEnterFrame(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this.enterFrame();
         }
      }
   }
}

