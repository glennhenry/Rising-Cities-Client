package net.bigpoint.cityrama.model.server
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.system.Capabilities;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.init.preloader.PreloaderProgressSingleton;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.cityrama.model.server.vo.ServerVo;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class ServerConfigProxy extends Proxy
   {
      
      public static const NAME:String = "ServerConfigProxy";
      
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
         super(param1,param2);
         this._flashVarsProxy = FlashVarsProxy(facade.retrieveProxy(FlashVarsProxy.NAME));
      }
      
      override public function onRegister() : void
      {
         this._urlLoader = new URLLoader();
         this.configureListener(this._urlLoader);
         this._urlConnection = this._flashVarsProxy.connectionUrl;
         this._urlSessionId = this._flashVarsProxy.sid;
         this._urlUserId = this._flashVarsProxy.userId;
         this._urlIgnoreHost = null;
         this._request = new URLRequest();
         this._request.method = URLRequestMethod.GET;
      }
      
      private function configureListener(param1:EventDispatcher) : void
      {
         param1.addEventListener(Event.COMPLETE,this.onComplete);
         param1.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         param1.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onComplete);
      }
      
      public function loadServer(param1:int) : void
      {
         trace("[ServerConfigProxy] loadServer() called, counter delta =",param1);
         trace("[ServerConfigProxy] requestURL =",this.requestURL);
         this._request.url = resolveRequestURL();
         trace("[ServerConfigProxy] Resolved URL =",this._request.url);
         this.connectionCounter += param1;
         trace("[ServerConfigProxy] URLRequest =",JSON.stringify({
            "url":this._request.url,
            "method":this._request.method
         }));
         this._urlLoader.addEventListener(Event.COMPLETE,onComplete);
         this._urlLoader.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         this._urlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onSecurityError);
         this._urlLoader.addEventListener(ProgressEvent.PROGRESS,onProgress);
         this._urlLoader.addEventListener(HTTPStatusEvent.HTTP_STATUS,onHttpStatus);
         this._urlLoader.load(this._request);
         trace("[ServerConfigProxy] load() invoked");
      }
      
      private function resolveRequestURL() : String
      {
         if(Capabilities.playerType == "Desktop")
         {
            return "http://127.0.0.1:8080/RCApi?session=test";
         }
         return "RCApi?session=test";
      }
      
      private function onProgress(e:ProgressEvent) : void
      {
         trace("[ServerConfigProxy] PROGRESS",e.bytesLoaded,"/",e.bytesTotal);
      }
      
      internal function isAIR() : Boolean
      {
         return Capabilities.playerType == "Desktop";
      }
      
      private function onHttpStatus(e:HTTPStatusEvent) : void
      {
         trace("[ServerConfigProxy] HTTP STATUS =",e.status);
      }
      
      private function onIOError(e:IOErrorEvent) : void
      {
         trace("[ServerConfigProxy] IO ERROR =",e.text);
      }
      
      private function onSecurityError(e:SecurityErrorEvent) : void
      {
         trace("[ServerConfigProxy] SECURITY ERROR =",e.text);
      }
      
      private function onError(param1:Event) : void
      {
         sendNotification(ApplicationNotificationConstants.ERROR,"ServerConfigProxy ERROR");
      }
      
      private function onComplete(param1:Event) : void
      {
         var raw:String;
         var response:Object;
         trace("[ServerConfigProxy] onComplete fired");
         raw = String(this._urlLoader.data);
         trace("[ServerConfigProxy] raw response length =",raw.length);
         trace("[ServerConfigProxy] raw response preview =",raw.substr(0,300));
         try
         {
            response = JSON.parse(raw);
            trace("[ServerConfigProxy] parsed JSON OK");
            this._gameServer = new ServerVo(response);
            trace("[ServerConfigProxy] ServerVo created =",JSON.stringify(this._gameServer));
            PreloaderProgressSingleton.instance.setProgress(PreloaderProgressSingleton.STATE_POINTER_CONNECT_PHP);
         }
         catch(e:Error)
         {
            trace("[ServerConfigProxy] PARSE ERROR =",e.message);
            facade.sendNotification(ApplicationNotificationConstants.CONNECTION_LOST);
            return;
         }
         trace("[ServerConfigProxy] sending SERVER_NEW notification");
         sendNotification(ServerNotificationConstants.SERVER_NEW);
      }
      
      public function get gameServer() : ServerVo
      {
         return this._gameServer;
      }
      
      public function get requestURL() : String
      {
         var _loc1_:String = this._urlConnection + "?session=" + this._urlSessionId;
         if(0 == this._urlSessionId.length)
         {
            _loc1_ += "&uid=" + this._urlUserId;
         }
         if(null != this._urlIgnoreHost)
         {
            _loc1_ += "&ignore=" + this._urlIgnoreHost;
         }
         return _loc1_;
      }
      
      public function set requestUrlSessionId(param1:String) : void
      {
         this._urlSessionId = param1;
      }
      
      public function set requestUrlUserId(param1:uint) : void
      {
         this._urlUserId = param1;
      }
      
      public function set requestUrlIgnoreHost(param1:String) : void
      {
         this._urlIgnoreHost = param1;
      }
      
      public function get connectionCounter() : int
      {
         return this._connectionCounter;
      }
      
      public function set connectionCounter(param1:int) : void
      {
         this._connectionCounter = param1;
      }
      
      public function get urlUserId() : uint
      {
         return this._urlUserId;
      }
   }
}

