package net.bigpoint.cityrama.model
{
   import net.bigpoint.cityrama.init.SystemManager;
   import net.bigpoint.eventstream.EventStreamClient;
   import net.bigpoint.util.CityramaLogger;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class EventStreamProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "EventStreamProxy";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc1_)
      {
         NAME = "EventStreamProxy";
      }
      
      private var _flashVars:FlashVarsProxy = null;
      
      private var _eventStream:EventStreamClient = null;
      
      private var _loginTimeStamp:Number = 0;
      
      public function EventStreamProxy(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param2))
         {
            super(param1,param2);
            if(_loc3_ || Boolean(param2))
            {
               §§goto(addr003e);
            }
            §§goto(addr0065);
         }
         addr003e:
         this._flashVars = FlashVarsProxy(facade.retrieveProxy(FlashVarsProxy.NAME));
         if(!_loc4_)
         {
            addr0065:
            this._eventStream = new EventStreamClient(this._flashVars.eventStreamContext,SystemManager.rawStage,true,CityramaLogger.logger.debug);
            if(_loc3_ || _loc3_)
            {
               this.onClientStart();
            }
         }
      }
      
      private function assignGenericAttributes(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(param1 == null)
            {
               if(_loc3_)
               {
                  return;
               }
            }
            else
            {
               param1.pid = this._flashVars.pid;
               if(_loc3_ || _loc2_)
               {
                  param1.uid = this._flashVars.userId;
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     param1.time = new Date().time;
                     if(!_loc2_)
                     {
                        param1.tid = "";
                        if(!_loc2_)
                        {
                           addr009c:
                           param1.iid = "";
                           if(!_loc2_)
                           {
                              addr00a8:
                              param1.ip = "";
                              if(_loc3_)
                              {
                                 addr00b4:
                                 param1.sid = "";
                              }
                           }
                        }
                        §§goto(addr00bb);
                     }
                     §§goto(addr009c);
                  }
                  §§goto(addr00a8);
               }
               §§goto(addr00b4);
            }
            addr00bb:
            return;
         }
         §§goto(addr009c);
      }
      
      public function onClientStart() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Object = new Object();
         if(!(_loc2_ && Boolean(this)))
         {
            this.assignGenericAttributes(_loc1_);
            if(_loc3_)
            {
               addr0040:
               EventStreamClient.track("client.loading.start",_loc1_);
            }
            return;
         }
         §§goto(addr0040);
      }
      
      public function onClientFinishedLoading() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Object = new Object();
         if(_loc3_)
         {
            this.assignGenericAttributes(_loc1_);
            if(_loc3_)
            {
               this._loginTimeStamp = new Date().time;
               if(_loc3_ || _loc3_)
               {
                  EventStreamClient.track("playtime.start",_loc1_);
               }
            }
         }
      }
      
      public function onClientLogout() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Object = new Object();
         if(!_loc3_)
         {
            this.assignGenericAttributes(_loc1_);
            if(!_loc3_)
            {
               _loc1_.type = "0";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.duration = new Date().time - this._loginTimeStamp;
                  if(!_loc3_)
                  {
                     this._loginTimeStamp = 0;
                     if(_loc2_)
                     {
                        addr007b:
                        EventStreamClient.track("user.logout",_loc1_);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr007b);
      }
   }
}

