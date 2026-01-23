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
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc1_))
      {
         NAME = "ServerCommunicationProxy";
      }
      
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
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            this._developerSettingsProxy = facade.retrieveProxy(DeveloperSettingsProxy.NAME) as DeveloperSettingsProxy;
            if(!_loc1_)
            {
               this._socket = new Socket();
               if(_loc2_ || _loc1_)
               {
                  this._socket.addEventListener(Event.CLOSE,this.closeHandler);
                  if(!_loc1_)
                  {
                     §§goto(addr006c);
                  }
                  §§goto(addr00ac);
               }
               addr006c:
               this._socket.addEventListener(IOErrorEvent.IO_ERROR,this.ioErrorHandler);
               if(_loc2_)
               {
                  this._socket.addEventListener(ProgressEvent.PROGRESS,this.progressHandler);
                  if(_loc2_ || _loc1_)
                  {
                     addr00ac:
                     this._socket.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.securityErrorHandler);
                     if(!_loc1_)
                     {
                        addr00c3:
                        this._socket.addEventListener(ProgressEvent.SOCKET_DATA,this.dataHandler);
                     }
                     §§goto(addr00d6);
                  }
                  §§goto(addr00c3);
               }
               §§goto(addr00d6);
            }
            §§goto(addr00ac);
         }
         addr00d6:
      }
      
      public function connect(param1:ServerVo, param2:int, param3:Boolean = true) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_ || param3)
         {
            this._socket.removeEventListener(Event.CONNECT,this.onReconnect);
            if(_loc4_ || Boolean(param2))
            {
               this._socket.addEventListener(Event.CONNECT,this.connectHandler);
               if(_loc4_ || Boolean(this))
               {
                  this._serverSpooledMessages = new Vector.<MessageVo>();
                  if(!(_loc5_ && Boolean(param1)))
                  {
                     addr0079:
                     this._clientSpooledMessages = new Vector.<MessageVo>();
                     if(_loc4_)
                     {
                        §§push(this._developerSettingsProxy);
                        if(_loc4_)
                        {
                           if(§§pop() != null)
                           {
                              if(_loc4_)
                              {
                                 §§push(this._developerSettingsProxy);
                                 if(_loc4_)
                                 {
                                    if(§§pop().devServer)
                                    {
                                       if(!(_loc5_ && Boolean(this)))
                                       {
                                          addr00cc:
                                          if(param1 == null)
                                          {
                                             if(!(_loc5_ && param3))
                                             {
                                                addr00e0:
                                                param1 = new ServerVo();
                                                addr00eb:
                                                param1.host = this._developerSettingsProxy.devServer;
                                                if(!_loc5_)
                                                {
                                                   §§goto(addr00fc);
                                                }
                                             }
                                             §§goto(addr013c);
                                          }
                                          §§goto(addr00eb);
                                       }
                                       §§goto(addr00e0);
                                    }
                                    addr00fc:
                                    §§goto(addr0100);
                                 }
                                 addr0100:
                                 if(this._developerSettingsProxy.devPort)
                                 {
                                    if(_loc4_ || Boolean(param1))
                                    {
                                       param1.port = this._developerSettingsProxy.devPort;
                                       if(!_loc5_)
                                       {
                                          §§goto(addr0131);
                                       }
                                       §§goto(addr0158);
                                    }
                                 }
                                 addr0131:
                                 this._developerSettingsProxy = null;
                                 if(!_loc5_)
                                 {
                                    addr013c:
                                    Security.loadPolicyFile("xmlsocket://" + param1.host + ":8080");
                                    if(!_loc5_)
                                    {
                                       addr0158:
                                       this._socket.connect(param1.host,param1.port);
                                    }
                                 }
                                 §§goto(addr0168);
                              }
                              addr0168:
                              return;
                           }
                           §§goto(addr0131);
                        }
                        §§goto(addr0100);
                     }
                     §§goto(addr00cc);
                  }
                  §§goto(addr013c);
               }
               §§goto(addr0158);
            }
            §§goto(addr00fc);
         }
         §§goto(addr0079);
      }
      
      public function disconnect() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            if(this._socket != null)
            {
               if(_loc1_)
               {
                  this._socket.removeEventListener(Event.CLOSE,this.closeHandler);
                  if(_loc1_)
                  {
                     if(this._socket.connected)
                     {
                        if(!(_loc2_ && _loc1_))
                        {
                           this._socket.close();
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function reconnect(param1:ServerVo, param2:int, param3:Function = null) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_ || Boolean(this))
         {
            this.disconnect();
            if(!(_loc5_ && Boolean(param2)))
            {
               this._reconnectCallback = param3;
               if(_loc4_ || Boolean(param3))
               {
                  this._socket.removeEventListener(Event.CONNECT,this.connectHandler);
                  if(_loc4_)
                  {
                     Security.loadPolicyFile("xmlsocket://" + param1.host + ":8080");
                     if(!_loc5_)
                     {
                        addr0086:
                        this._socket.addEventListener(Event.CLOSE,this.closeHandler);
                        if(!(_loc5_ && Boolean(this)))
                        {
                           §§goto(addr00af);
                        }
                        §§goto(addr00c5);
                     }
                  }
                  addr00af:
                  this._socket.addEventListener(Event.CONNECT,this.onReconnect);
                  if(_loc4_)
                  {
                     addr00c5:
                     this._socket.connect(param1.host,param1.port);
                  }
                  §§goto(addr00d5);
               }
               addr00d5:
               return;
            }
            §§goto(addr0086);
         }
         §§goto(addr00c5);
      }
      
      protected function onReconnect(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._socket.removeEventListener(Event.CONNECT,this.onReconnect);
            if(!_loc2_)
            {
               §§goto(addr0043);
            }
            §§goto(addr006e);
         }
         addr0043:
         this._socket.addEventListener(Event.CONNECT,this.connectHandler);
         if(_loc3_ || Boolean(this))
         {
            if(this._reconnectCallback != null)
            {
               if(!_loc2_)
               {
                  addr006e:
                  this._reconnectCallback();
               }
            }
         }
      }
      
      public function sendMessage(param1:MessageVo) : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc2_:MessageVo = param1.clone();
         if(!_loc10_)
         {
            if(this.clientSpool)
            {
               if(_loc11_)
               {
                  this._clientSpooledMessages.push(_loc2_);
                  if(_loc10_)
                  {
                     addr0099:
                     var _loc3_:ByteArray = new ByteArray();
                     if(!_loc10_)
                     {
                        _loc3_.writeUTFBytes(param1.header);
                     }
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
                     if(_loc11_)
                     {
                        _loc9_.writeBytes(_loc6_);
                        if(_loc11_)
                        {
                           _loc9_.writeBytes(_loc3_);
                           if(!_loc10_)
                           {
                              _loc9_.writeBytes(_loc4_);
                              if(_loc11_)
                              {
                                 if(this._socket.connected)
                                 {
                                    if(_loc11_ || Boolean(this))
                                    {
                                       addr0174:
                                       this._socket.writeBytes(_loc9_);
                                       if(_loc11_)
                                       {
                                          this._socket.flush();
                                          if(_loc10_)
                                          {
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    super.facade.sendNotification(ApplicationNotificationConstants.CONNECTION_LOST);
                                 }
                              }
                           }
                        }
                        return;
                     }
                     §§goto(addr0174);
                  }
               }
               return;
            }
            §§push(DebugLayer.instance);
            §§push("{\"header\":\"");
            if(!(_loc10_ && Boolean(_loc2_)))
            {
               §§push(§§pop() + _loc2_.header);
               if(!_loc10_)
               {
                  §§push("\",\"message\":");
                  if(_loc11_ || Boolean(_loc3_))
                  {
                     §§push(§§pop() + §§pop());
                     if(!_loc10_)
                     {
                        addr0093:
                        addr0084:
                        §§push(§§pop() + _loc2_.json);
                        if(_loc11_)
                        {
                           addr008f:
                           addr0092:
                           §§push(§§pop() + "}");
                        }
                        §§pop().track(§§pop(),0);
                        §§goto(addr0099);
                     }
                     §§goto(addr008f);
                  }
                  §§goto(addr0092);
               }
               §§goto(addr0093);
            }
            §§goto(addr0084);
         }
         §§goto(addr0099);
      }
      
      private function closeHandler(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            super.facade.sendNotification(ServerNotificationConstants.SERVER_CONNECTION_CLOSED);
         }
      }
      
      private function connectHandler(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            PreloaderProgressSingleton.instance.setProgress(PreloaderProgressSingleton.STATE_POINTER_SOCKET_CONNECTED);
            if(_loc3_ || Boolean(param1))
            {
               addr004c:
               super.facade.sendNotification(ServerNotificationConstants.SERVER_CONNECTED);
            }
            return;
         }
         §§goto(addr004c);
      }
      
      private function ioErrorHandler(param1:IOErrorEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            PreloaderProgressSingleton.instance.setProgress(PreloaderProgressSingleton.STATE_POINTER_SOCKET_ERROR);
            if(!(_loc3_ && Boolean(this)))
            {
               addr0043:
               super.facade.sendNotification(ApplicationNotificationConstants.CONNECTION_LOST);
            }
            return;
         }
         §§goto(addr0043);
      }
      
      private function progressHandler(param1:ProgressEvent) : void
      {
      }
      
      private function securityErrorHandler(param1:SecurityErrorEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            PreloaderProgressSingleton.instance.setProgress(PreloaderProgressSingleton.STATE_POINTER_SOCKET_ERROR);
            if(_loc3_)
            {
               addr0042:
               super.facade.sendNotification(ApplicationNotificationConstants.CONNECTION_LOST);
            }
            return;
         }
         §§goto(addr0042);
      }
      
      private function dataHandler(param1:ProgressEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(this._socket.connected);
            if(!_loc3_)
            {
               while(true)
               {
                  var _temp_1:* = §§pop();
                  §§push(_temp_1);
                  §§push(_temp_1);
                  addr0077:
                  while(§§pop())
                  {
                     if(!_loc3_)
                     {
                        §§pop();
                        if(!(_loc2_ || Boolean(this)))
                        {
                           break;
                        }
                        §§push(this._socket.bytesAvailable > 0);
                     }
                  }
               }
               break;
               addr0076:
            }
            while(true)
            {
               if(!§§pop())
               {
                  break loop0;
               }
               §§push(this.readMessage());
               if(!_loc3_)
               {
                  §§push(false);
                  if(_loc2_ || _loc2_)
                  {
                     break;
                  }
               }
               else
               {
                  §§goto(addr0076);
               }
               §§goto(addr0077);
            }
            if(§§pop() == §§pop())
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  return;
               }
            }
         }
      }
      
      private function readMessage() : Boolean
      {
         var message:String;
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!_loc3_)
         {
            §§push(null);
            if(!_loc3_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc3_)
               {
                  §§push(this._currentMessage);
                  if(!_loc3_)
                  {
                     if(§§pop() == null)
                     {
                        if(!_loc3_)
                        {
                           if(this._socket.bytesAvailable >= 6)
                           {
                              if(!_loc3_)
                              {
                                 this._currentMessage = new MessageVo();
                                 if(_loc4_)
                                 {
                                    addr0060:
                                    §§push(this._currentMessage);
                                    if(!_loc3_)
                                    {
                                       §§pop().messageLength = this._socket.readUnsignedInt();
                                       if(!_loc3_)
                                       {
                                          addr0079:
                                          §§push(this._currentMessage);
                                          if(!_loc3_)
                                          {
                                             §§pop().headerLength = this._socket.readUnsignedShort();
                                             if(_loc3_ && _loc2_)
                                             {
                                             }
                                             addr00b2:
                                             §§push(this._currentMessage);
                                             if(_loc4_)
                                             {
                                                addr00bc:
                                                if(§§pop().header == null)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(this._socket.bytesAvailable >= this._currentMessage.headerLength)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            addr00e5:
                                                            this._currentMessage.header = this._socket.readUTFBytes(this._currentMessage.headerLength);
                                                            if(!(_loc3_ && _loc1_))
                                                            {
                                                               addr0111:
                                                               if(this._socket.bytesAvailable >= this._currentMessage.messageLength)
                                                               {
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     addr014e:
                                                                     message = this._socket.readUTFBytes(this._currentMessage.messageLength);
                                                                     addr0130:
                                                                     addr0132:
                                                                  }
                                                                  try
                                                                  {
                                                                     addr0150:
                                                                     this._currentMessage.json = JSON.parse(message);
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§push(this._serverSpool);
                                                                        if(!(_loc3_ && _loc1_))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 this._serverSpooledMessages.push(this._currentMessage.clone());
                                                                                 if(_loc4_ || _loc1_)
                                                                                 {
                                                                                    addr01f1:
                                                                                    if(String(this._currentMessage).indexOf("_FAILED") != -1)
                                                                                    {
                                                                                       if(_loc4_ || _loc1_)
                                                                                       {
                                                                                          addr0216:
                                                                                          §§push(DebugLayer.instance);
                                                                                          if(!(_loc3_ && _loc3_))
                                                                                          {
                                                                                             §§pop().track(JSON.stringify({
                                                                                                "header":this._currentMessage.header,
                                                                                                "message":this._currentMessage.json
                                                                                             }),3);
                                                                                             if(_loc4_ || _loc2_)
                                                                                             {
                                                                                             }
                                                                                             §§goto(addr02a0);
                                                                                          }
                                                                                          §§pop().track(JSON.stringify({
                                                                                             "header":this._currentMessage.header,
                                                                                             "message":this._currentMessage.json
                                                                                          }),1);
                                                                                          addr0264:
                                                                                          if(!(_loc3_ && Boolean(this)))
                                                                                          {
                                                                                             §§goto(addr02a0);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr02ab);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(DebugLayer.instance);
                                                                                    }
                                                                                    §§goto(addr0264);
                                                                                 }
                                                                              }
                                                                              §§goto(addr02ab);
                                                                           }
                                                                           else
                                                                           {
                                                                              super.facade.sendNotification(ServerNotificationConstants.SERVER_NEW_MESSAGE,this._currentMessage.clone());
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§goto(addr01f1);
                                                                              }
                                                                           }
                                                                           addr02a0:
                                                                           this._currentMessage = null;
                                                                           if(_loc4_)
                                                                           {
                                                                              addr02ab:
                                                                              §§push(true);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 return §§pop();
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr02b2:
                                                                              §§push(false);
                                                                           }
                                                                           §§goto(addr02b3);
                                                                        }
                                                                        addr02b3:
                                                                        return §§pop();
                                                                     }
                                                                  }
                                                                  catch(e:*)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        super.facade.sendNotification(ApplicationNotificationConstants.CONNECTION_LOST);
                                                                     }
                                                                     throw RamaCityError("Unable to parse incoming message!");
                                                                  }
                                                                  §§goto(addr0216);
                                                               }
                                                               §§goto(addr02b2);
                                                            }
                                                         }
                                                         §§goto(addr0150);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr010a);
                                                      }
                                                   }
                                                }
                                                §§goto(addr0111);
                                             }
                                             §§goto(addr00e5);
                                          }
                                          §§goto(addr00bc);
                                       }
                                       §§goto(addr0130);
                                    }
                                    §§goto(addr00bc);
                                 }
                                 §§goto(addr0079);
                              }
                              §§goto(addr0060);
                           }
                           else
                           {
                              §§push(false);
                              if(!_loc3_)
                              {
                                 return §§pop();
                              }
                           }
                           addr010a:
                           return false;
                        }
                        §§goto(addr0111);
                     }
                     §§goto(addr00b2);
                  }
                  §§goto(addr00bc);
               }
               §§goto(addr0111);
            }
            §§goto(addr014e);
         }
         §§goto(addr0132);
      }
      
      public function set fulllog(param1:Boolean) : void
      {
      }
      
      public function createMessage(param1:Object, param2:String) : MessageVo
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:MessageVo = new MessageVo();
         if(!(_loc4_ && Boolean(_loc3_)))
         {
            _loc3_.json = JSON.stringify(param1);
            if(_loc5_ || Boolean(_loc3_))
            {
               addr004f:
               _loc3_.header = param2;
            }
            return _loc3_;
         }
         §§goto(addr004f);
      }
      
      public function startServerSpool() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            this._serverSpool = true;
         }
      }
      
      public function stopServerSpool() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            this._serverSpool = false;
            if(!(_loc2_ && Boolean(this)))
            {
               this.flushServerSpool();
            }
         }
      }
      
      private function flushServerSpool() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:* = 0;
         var _loc2_:Vector.<MessageVo> = new Vector.<MessageVo>();
         do
         {
            if(!this._serverSpooledMessages.length)
            {
               if(_loc4_ || Boolean(this))
               {
                  break;
               }
            }
            else
            {
               §§push(_loc1_);
               if(!(_loc3_ && Boolean(this)))
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  §§push(_temp_4);
                  if(_loc4_ || Boolean(_loc1_))
                  {
                     §§push(§§pop() + 1);
                     if(!_loc3_)
                     {
                        _loc1_ = §§pop();
                        addr004f:
                        §§push(this.MAX_SPOOL);
                     }
                  }
                  if(§§pop() > §§pop())
                  {
                     if(!_loc3_)
                     {
                        §§push(§§findproperty(RamaCityError));
                        §§push("MESSAGE SPOOL MAX SIZE EXCEED ");
                        if(!_loc3_)
                        {
                           §§push(§§pop() + this.MAX_SPOOL);
                        }
                        throw new §§pop().RamaCityError(§§pop());
                     }
                     addr00ed:
                     addr00ed:
                     return;
                  }
                  continue;
               }
               §§goto(addr004f);
            }
            §§goto(addr00ed);
         }
         while(_loc2_.push(this._serverSpooledMessages.pop()), _loc4_);
         
         while(_loc2_.length)
         {
            super.facade.sendNotification(ServerNotificationConstants.SERVER_NEW_MESSAGE,_loc2_.pop());
            if(!(_loc4_ || Boolean(_loc2_)))
            {
               break;
            }
         }
         §§goto(addr00ed);
      }
      
      private function flushClientSpool() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:* = 0;
         var _loc2_:Vector.<MessageVo> = new Vector.<MessageVo>();
         while(true)
         {
            if(!this._clientSpooledMessages.length)
            {
               if(_loc4_ || Boolean(this))
               {
               }
               while(_loc2_.length)
               {
                  this.sendMessage(_loc2_.pop());
                  if(!(_loc4_ || Boolean(_loc2_)))
                  {
                     break;
                  }
               }
               break;
            }
            §§push(_loc1_);
            if(!(_loc3_ && _loc3_))
            {
               var _temp_5:* = §§pop();
               §§push(_temp_5);
               §§push(_temp_5);
               if(_loc4_)
               {
                  §§push(§§pop() + 1);
                  if(_loc4_ || Boolean(this))
                  {
                     addr004c:
                     _loc1_ = §§pop();
                     addr004d:
                     §§push(this.MAX_SPOOL);
                  }
                  if(§§pop() > §§pop())
                  {
                     if(_loc4_)
                     {
                        §§push(§§findproperty(RamaCityError));
                        §§push("MESSAGE SPOOL MAX SIZE EXCEED ");
                        if(_loc4_)
                        {
                           §§push(§§pop() + this.MAX_SPOOL);
                        }
                        throw new §§pop().RamaCityError(§§pop());
                     }
                  }
                  else
                  {
                     _loc2_.push(this._clientSpooledMessages.pop());
                     if(!(_loc4_ || Boolean(_loc1_)))
                     {
                        break;
                     }
                  }
                  continue;
               }
               §§goto(addr004c);
            }
            §§goto(addr004d);
         }
      }
      
      public function get clientSpool() : Boolean
      {
         return this._clientSpool;
      }
      
      public function startClientSpool() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this._clientSpool = true;
         }
      }
      
      public function stopClientSpool() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            this._clientSpool = false;
            if(!(_loc1_ && Boolean(this)))
            {
               this.flushClientSpool();
            }
         }
      }
   }
}

