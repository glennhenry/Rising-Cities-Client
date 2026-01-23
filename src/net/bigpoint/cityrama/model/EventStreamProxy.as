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
      
      private var _flashVars:FlashVarsProxy = null;
      
      private var _eventStream:EventStreamClient = null;
      
      private var _loginTimeStamp:Number = 0;
      
      public function EventStreamProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         this._flashVars = FlashVarsProxy(facade.retrieveProxy(FlashVarsProxy.NAME));
         this._eventStream = new EventStreamClient(this._flashVars.eventStreamContext,SystemManager.rawStage,true,CityramaLogger.logger.debug);
         this.onClientStart();
      }
      
      private function assignGenericAttributes(param1:Object) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.pid = this._flashVars.pid;
         param1.uid = this._flashVars.userId;
         param1.time = new Date().time;
         param1.tid = "";
         param1.iid = "";
         param1.ip = "";
         param1.sid = "";
      }
      
      public function onClientStart() : void
      {
         var _loc1_:Object = new Object();
         this.assignGenericAttributes(_loc1_);
         EventStreamClient.track("client.loading.start",_loc1_);
      }
      
      public function onClientFinishedLoading() : void
      {
         var _loc1_:Object = new Object();
         this.assignGenericAttributes(_loc1_);
         this._loginTimeStamp = new Date().time;
         EventStreamClient.track("playtime.start",_loc1_);
      }
      
      public function onClientLogout() : void
      {
         var _loc1_:Object = new Object();
         this.assignGenericAttributes(_loc1_);
         _loc1_.type = "0";
         _loc1_.duration = new Date().time - this._loginTimeStamp;
         this._loginTimeStamp = 0;
         EventStreamClient.track("user.logout",_loc1_);
      }
   }
}

