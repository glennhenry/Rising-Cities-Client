package net.bigpoint.cityrama.model.server
{
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.Socket;
   import flash.system.Security;
   import flash.utils.ByteArray;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.init.preloader.PreloaderProgressSingleton;
   import net.bigpoint.cityrama.model.developertools.DeveloperSettingsProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.ServerVo;
   import net.bigpoint.util.DebugLayer;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class ServerCommunicationProxy extends Proxy
   {
      
      public static const NAME:String = "ServerCommunicationProxy";
      
      private const MAX_SPOOL:int = 1500;
      
      private var _socket:Socket;
      
      private var _currentMessage:MessageVo;
      
      private var _reconnectCallback:Function;
      
      private var _fulllog:Boolean;
      
      private var _developerSettingsProxy:DeveloperSettingsProxy;
      
      private var _serverSpool:Boolean;
      
      private var _clientSpool:Boolean;
      
      private var _serverSpooledMessages:Vector.<MessageVo>;
      
      private var _clientSpooledMessages:Vector.<MessageVo>;
      
      public function ServerCommunicationProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         this._developerSettingsProxy = facade.retrieveProxy(DeveloperSettingsProxy.NAME) as DeveloperSettingsProxy;
         this._socket = new Socket();
         this._socket.addEventListener(Event.CLOSE,this.closeHandler);
         this._socket.addEventListener(IOErrorEvent.IO_ERROR,this.ioErrorHandler);
         this._socket.addEventListener(ProgressEvent.PROGRESS,this.progressHandler);
         this._socket.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.securityErrorHandler);
         this._socket.addEventListener(ProgressEvent.SOCKET_DATA,this.dataHandler);
      }
      
      public function connect(param1:ServerVo, param2:int, param3:Boolean = true) : void
      {
         this._socket.removeEventListener(Event.CONNECT,this.onReconnect);
         this._socket.addEventListener(Event.CONNECT,this.connectHandler);
         this._serverSpooledMessages = new Vector.<MessageVo>();
         this._clientSpooledMessages = new Vector.<MessageVo>();
         if(this._developerSettingsProxy != null)
         {
            if(this._developerSettingsProxy.devServer)
            {
               if(param1 == null)
               {
                  param1 = new ServerVo();
               }
               param1.host = this._developerSettingsProxy.devServer;
            }
            if(this._developerSettingsProxy.devPort)
            {
               param1.port = this._developerSettingsProxy.devPort;
            }
         }
         this._developerSettingsProxy = null;
         Security.loadPolicyFile("xmlsocket://" + param1.host + ":7777");
         this._socket.connect(param1.host,param1.port);
      }
      
      public function disconnect() : void
      {
         if(this._socket != null)
         {
            this._socket.removeEventListener(Event.CLOSE,this.closeHandler);
            if(this._socket.connected)
            {
               this._socket.close();
            }
         }
      }
      
      public function reconnect(param1:ServerVo, param2:int, param3:Function = null) : void
      {
         this.disconnect();
         this._reconnectCallback = param3;
         this._socket.removeEventListener(Event.CONNECT,this.connectHandler);
         Security.loadPolicyFile("xmlsocket://" + param1.host + ":7777");
         this._socket.addEventListener(Event.CLOSE,this.closeHandler);
         this._socket.addEventListener(Event.CONNECT,this.onReconnect);
         this._socket.connect(param1.host,param1.port);
      }
      
      protected function onReconnect(param1:Event) : void
      {
         this._socket.removeEventListener(Event.CONNECT,this.onReconnect);
         this._socket.addEventListener(Event.CONNECT,this.connectHandler);
         if(this._reconnectCallback != null)
         {
            this._reconnectCallback();
         }
      }
      
      public function sendMessage(param1:MessageVo) : void
      {
         var _loc2_:MessageVo = param1.clone();
         if(this.clientSpool)
         {
            this._clientSpooledMessages.push(_loc2_);
            return;
         }
         DebugLayer.instance.track("{\"header\":\"" + _loc2_.header + "\",\"message\":" + _loc2_.json + "}",0);
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeUTFBytes(param1.header);
         var _loc4_:ByteArray = new ByteArray();
         _loc4_.writeUTFBytes(param1.json);
         var _loc5_:uint = _loc3_.length;
         var _loc6_:ByteArray = new ByteArray();
         _loc6_.writeShort(_loc5_);
         var _loc7_:uint = _loc4_.length;
         var _loc8_:ByteArray = new ByteArray();
         _loc8_.writeInt(_loc7_);
         var _loc9_:ByteArray = new ByteArray();
         _loc9_.writeBytes(_loc8_);
         _loc9_.writeBytes(_loc6_);
         _loc9_.writeBytes(_loc3_);
         _loc9_.writeBytes(_loc4_);
         if(this._socket.connected)
         {
            this._socket.writeBytes(_loc9_);
            this._socket.flush();
         }
         else
         {
            super.facade.sendNotification(ApplicationNotificationConstants.CONNECTION_LOST);
         }
      }
      
      private function closeHandler(param1:Event) : void
      {
         super.facade.sendNotification(ServerNotificationConstants.SERVER_CONNECTION_CLOSED);
      }
      
      private function connectHandler(param1:Event) : void
      {
         PreloaderProgressSingleton.instance.setProgress(PreloaderProgressSingleton.STATE_POINTER_SOCKET_CONNECTED);
         super.facade.sendNotification(ServerNotificationConstants.SERVER_CONNECTED);
      }
      
      private function ioErrorHandler(param1:IOErrorEvent) : void
      {
         PreloaderProgressSingleton.instance.setProgress(PreloaderProgressSingleton.STATE_POINTER_SOCKET_ERROR);
         super.facade.sendNotification(ApplicationNotificationConstants.CONNECTION_LOST);
      }
      
      private function progressHandler(param1:ProgressEvent) : void
      {
      }
      
      private function securityErrorHandler(param1:SecurityErrorEvent) : void
      {
         PreloaderProgressSingleton.instance.setProgress(PreloaderProgressSingleton.STATE_POINTER_SOCKET_ERROR);
         super.facade.sendNotification(ApplicationNotificationConstants.CONNECTION_LOST);
      }
      
      private function dataHandler(param1:ProgressEvent) : void
      {
         while(this._socket.connected && this._socket.bytesAvailable > 0)
         {
            if(this.readMessage() == false)
            {
               return;
            }
         }
      }
      
      private function readMessage() : Boolean
      {
         var message:String = null;
         if(this._currentMessage == null)
         {
            if(this._socket.bytesAvailable < 6)
            {
               return false;
            }
            this._currentMessage = new MessageVo();
            this._currentMessage.messageLength = this._socket.readUnsignedInt();
            this._currentMessage.headerLength = this._socket.readUnsignedShort();
         }
         if(this._currentMessage.header == null)
         {
            if(this._socket.bytesAvailable < this._currentMessage.headerLength)
            {
               return false;
            }
            this._currentMessage.header = this._socket.readUTFBytes(this._currentMessage.headerLength);
         }
         if(this._socket.bytesAvailable >= this._currentMessage.messageLength)
         {
            message = this._socket.readUTFBytes(this._currentMessage.messageLength);
            try
            {
               this._currentMessage.json = JSON.parse(message);
            }
            catch(e:*)
            {
               super.facade.sendNotification(ApplicationNotificationConstants.CONNECTION_LOST);
               throw RamaCityError("Unable to parse incoming message!");
            }
            if(this._serverSpool)
            {
               this._serverSpooledMessages.push(this._currentMessage.clone());
            }
            else
            {
               super.facade.sendNotification(ServerNotificationConstants.SERVER_NEW_MESSAGE,this._currentMessage.clone());
            }
            if(String(this._currentMessage).indexOf("_FAILED") != -1)
            {
               DebugLayer.instance.track(JSON.stringify({
                  "header":this._currentMessage.header,
                  "message":this._currentMessage.json
               }),3);
            }
            else
            {
               DebugLayer.instance.track(JSON.stringify({
                  "header":this._currentMessage.header,
                  "message":this._currentMessage.json
               }),1);
            }
            this._currentMessage = null;
            return true;
         }
         return false;
      }
      
      public function set fulllog(param1:Boolean) : void
      {
      }
      
      public function createMessage(param1:Object, param2:String) : MessageVo
      {
         var _loc3_:MessageVo = new MessageVo();
         _loc3_.json = JSON.stringify(param1);
         _loc3_.header = param2;
         return _loc3_;
      }
      
      public function startServerSpool() : void
      {
         this._serverSpool = true;
      }
      
      public function stopServerSpool() : void
      {
         this._serverSpool = false;
         this.flushServerSpool();
      }
      
      private function flushServerSpool() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Vector.<MessageVo> = new Vector.<MessageVo>();
         while(this._serverSpooledMessages.length)
         {
            if(_loc1_++ > this.MAX_SPOOL)
            {
               throw new RamaCityError("MESSAGE SPOOL MAX SIZE EXCEED " + this.MAX_SPOOL);
            }
            _loc2_.push(this._serverSpooledMessages.pop());
         }
         while(_loc2_.length)
         {
            super.facade.sendNotification(ServerNotificationConstants.SERVER_NEW_MESSAGE,_loc2_.pop());
         }
      }
      
      private function flushClientSpool() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Vector.<MessageVo> = new Vector.<MessageVo>();
         while(this._clientSpooledMessages.length)
         {
            if(_loc1_++ > this.MAX_SPOOL)
            {
               throw new RamaCityError("MESSAGE SPOOL MAX SIZE EXCEED " + this.MAX_SPOOL);
            }
            _loc2_.push(this._clientSpooledMessages.pop());
         }
         while(_loc2_.length)
         {
            this.sendMessage(_loc2_.pop());
         }
      }
      
      public function get clientSpool() : Boolean
      {
         return this._clientSpool;
      }
      
      public function startClientSpool() : void
      {
         this._clientSpool = true;
      }
      
      public function stopClientSpool() : void
      {
         this._clientSpool = false;
         this.flushClientSpool();
      }
   }
}

