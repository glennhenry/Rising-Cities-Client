package net.bigpoint.cityrama.model.server
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.init.preloader.PreloaderProgressSingleton;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.cityrama.model.server.vo.ServerVo;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class ServerConfigProxy extends Proxy
   {
      
      public static const NAME:String = "ServerConfigProxy";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         NAME = "ServerConfigProxy";
      }
      
      private var _urlLoader:URLLoader;
      
      private var _request:URLRequest;
      
      private var _gameServer:ServerVo;
      
      private var _urlConnection:String;
      
      private var _urlUserId:uint;
      
      private var _urlSessionId:String;
      
      private var _urlIgnoreHost:String;
      
      private var _connectionCounter:int = 0;
      
      private var _flashVarsProxy:FlashVarsProxy;
      
      public function ServerConfigProxy(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(param2))
         {
            super(param1,param2);
            if(_loc4_)
            {
               addr0039:
               this._flashVarsProxy = FlashVarsProxy(facade.retrieveProxy(FlashVarsProxy.NAME));
            }
            return;
         }
         §§goto(addr0039);
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            this._urlLoader = new URLLoader();
            if(!(_loc1_ && _loc2_))
            {
               this.configureListener(this._urlLoader);
               if(!_loc1_)
               {
                  this._urlConnection = this._flashVarsProxy.connectionUrl;
                  if(!(_loc1_ && _loc1_))
                  {
                     addr0068:
                     this._urlSessionId = this._flashVarsProxy.sid;
                     if(!(_loc1_ && _loc1_))
                     {
                        addr0080:
                        this._urlUserId = this._flashVarsProxy.userId;
                        if(_loc2_ || _loc2_)
                        {
                           §§goto(addr0098);
                        }
                     }
                     §§goto(addr00cc);
                  }
                  addr0098:
                  this._urlIgnoreHost = null;
                  if(_loc2_ || Boolean(this))
                  {
                     addr00b4:
                     this._request = new URLRequest();
                     if(_loc2_ || _loc1_)
                     {
                        addr00cc:
                        this._request.method = URLRequestMethod.GET;
                     }
                  }
                  return;
               }
               §§goto(addr0080);
            }
            §§goto(addr0068);
         }
         §§goto(addr00b4);
      }
      
      private function configureListener(param1:EventDispatcher) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            param1.addEventListener(Event.COMPLETE,this.onComplete);
            if(!_loc3_)
            {
               param1.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
               if(_loc2_ || _loc2_)
               {
                  addr0052:
                  param1.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onComplete);
               }
               return;
            }
         }
         §§goto(addr0052);
      }
      
      public function loadServer(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._request.url = this.requestURL;
            if(!(_loc2_ && Boolean(param1)))
            {
               this.connectionCounter += param1;
               if(_loc3_ || Boolean(param1))
               {
                  addr0067:
                  this._urlLoader.load(this._request);
               }
               return;
            }
         }
         §§goto(addr0067);
      }
      
      private function onError(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            sendNotification(ApplicationNotificationConstants.ERROR,"ServerConfigProxy ERROR");
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var event:Event;
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         event = param1;
         try
         {
            this._gameServer = new ServerVo(JSON.parse(String(this._urlLoader.data)));
            if(!(_loc5_ && _loc2_))
            {
               PreloaderProgressSingleton.instance.setProgress(PreloaderProgressSingleton.STATE_POINTER_CONNECT_PHP);
               if(_loc4_)
               {
                  addr00a0:
                  sendNotification(ServerNotificationConstants.SERVER_NEW);
               }
            }
         }
         catch(e:Error)
         {
            if(!(_loc5_ && Boolean(this)))
            {
               facade.sendNotification(ApplicationNotificationConstants.CONNECTION_LOST);
            }
            §§goto(addr00a0);
         }
      }
      
      public function get gameServer() : ServerVo
      {
         return this._gameServer;
      }
      
      public function get requestURL() : String
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(this._urlConnection);
         if(!(_loc3_ && _loc2_))
         {
            §§push(§§pop() + "?session=");
            if(!(_loc3_ && Boolean(this)))
            {
               §§push(§§pop() + this._urlSessionId);
            }
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc2_)
         {
            if(0 == this._urlSessionId.length)
            {
               if(!(_loc3_ && _loc1_))
               {
                  addr005a:
                  §§push(_loc1_);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push("&uid=");
                     if(_loc2_)
                     {
                        §§push(§§pop() + this._urlUserId);
                        if(_loc2_ || _loc1_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc2_ || Boolean(this))
                           {
                              §§push(§§pop());
                              if(!_loc3_)
                              {
                                 addr00a2:
                                 _loc1_ = §§pop();
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr00b0:
                                    if(null != this._urlIgnoreHost)
                                    {
                                       if(!_loc3_)
                                       {
                                          addr00be:
                                          §§push(_loc1_);
                                          if(_loc2_ || _loc2_)
                                          {
                                             §§goto(addr00f1);
                                          }
                                          §§goto(addr00f7);
                                       }
                                    }
                                    §§goto(addr00f8);
                                 }
                                 §§goto(addr00be);
                              }
                              §§goto(addr00f7);
                           }
                           addr00f1:
                           §§goto(addr00f0);
                        }
                        addr00f0:
                        §§push("&ignore=");
                        if(!(_loc3_ && _loc2_))
                        {
                           addr00eb:
                           §§push(§§pop() + this._urlIgnoreHost);
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc3_)
                        {
                           addr00f7:
                           _loc1_ = §§pop();
                           addr00f8:
                           return _loc1_;
                        }
                     }
                     §§goto(addr00eb);
                  }
                  §§goto(addr00a2);
               }
            }
            §§goto(addr00b0);
         }
         §§goto(addr005a);
      }
      
      public function set requestUrlSessionId(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._urlSessionId = param1;
         }
      }
      
      public function set requestUrlUserId(param1:uint) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._urlUserId = param1;
         }
      }
      
      public function set requestUrlIgnoreHost(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._urlIgnoreHost = param1;
         }
      }
      
      public function get connectionCounter() : int
      {
         return this._connectionCounter;
      }
      
      public function set connectionCounter(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._connectionCounter = param1;
         }
      }
      
      public function get urlUserId() : uint
      {
         return this._urlUserId;
      }
   }
}

