package net.bigpoint.cityrama.model.game
{
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.interfaces.ITimerInterest;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class TimerProxy extends Proxy
   {
      
      private static var instance:TimerProxy;
      
      public static const NAME:String = "TimerProxy";
      
      private static const TIMER_INTERVALL:int = 1000;
      
      private static const TIMER_RENDER_INTERVALL:int = 1000 / 15;
      
      private static const TIMER_KEEPALIVE_INTERVALL:Number = 300000;
      
      private var _serverTimeStamp:Number = 0;
      
      private var _timer:Timer;
      
      private var _playfieldObjetcsProxy:PlayfieldObjectsProxy;
      
      private var _eventProxy:EventProxy;
      
      private var _serverUpdateTime:Number;
      
      private var _renderTimer:Timer;
      
      private var _keepAliveTimer:Timer;
      
      private var _eventTimer:Number = 0;
      
      private var _render:Boolean = true;
      
      private var _stopRenderTimer:Boolean;
      
      public function TimerProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         this._timer = new Timer(TimerProxy.TIMER_INTERVALL,0);
         this._timer.addEventListener(TimerEvent.TIMER,this.onTick);
         this._timer.start();
         this._renderTimer = new Timer(TimerProxy.TIMER_RENDER_INTERVALL,0);
         this._renderTimer.addEventListener(TimerEvent.TIMER,this.onRenderTick);
         this._renderTimer.start();
         this._keepAliveTimer = new Timer(TimerProxy.TIMER_KEEPALIVE_INTERVALL,0);
         this._keepAliveTimer.addEventListener(TimerEvent.TIMER,this.onKeepaliveTick);
         this._keepAliveTimer.start();
      }
      
      private function onKeepaliveTick(param1:TimerEvent) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.SESSION_KEEPALIVE);
      }
      
      private function onRenderTick(param1:TimerEvent) : void
      {
         if(this._render)
         {
            facade.sendNotification(ApplicationNotificationConstants.RENDER_TICK);
         }
      }
      
      private function onTick(param1:TimerEvent) : void
      {
         var _loc2_:ITimerInterest = null;
         ++this._eventTimer;
         if(this._playfieldObjetcsProxy == null)
         {
            this._playfieldObjetcsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         }
         if(this._playfieldObjetcsProxy != null)
         {
            for each(_loc2_ in this._playfieldObjetcsProxy.timerList)
            {
               _loc2_.tick(this.currentTimeStamp);
            }
         }
         if(this._render)
         {
            facade.sendNotification(ApplicationNotificationConstants.TIMER_TICK,this.currentTimeStamp);
         }
      }
      
      public function set currentTimeStamp(param1:Number) : void
      {
         this._serverUpdateTime = getTimer();
         this._serverTimeStamp = param1;
         sendNotification(ApplicationNotificationConstants.TIMESTAMP_SET);
      }
      
      public function get currentTimeStamp() : Number
      {
         if(Boolean(this._serverTimeStamp) && Boolean(this._serverUpdateTime))
         {
            return this._serverTimeStamp + (getTimer() - this._serverUpdateTime);
         }
         return 0;
      }
      
      public function get userTimeStamp() : Number
      {
         var _loc1_:Date = new Date();
         return _loc1_.time;
      }
      
      public function get eventTimer() : Number
      {
         if(this._eventProxy == null)
         {
            this._eventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         }
         if(this._eventProxy.runningEventQuest != null)
         {
            return Math.floor((this._eventProxy.runningEventQuest.quests[0].config.runtimeFull - this._eventProxy.runningEventQuestTimeLeft) / 1000);
         }
         return this._eventTimer;
      }
      
      public function set eventTimer(param1:Number) : void
      {
         this._eventTimer = param1;
      }
      
      public function get render() : Boolean
      {
         return this._render;
      }
      
      public function set render(param1:Boolean) : void
      {
         this._render = param1;
      }
      
      public function set stopRenderTimer(param1:Boolean) : void
      {
         this._stopRenderTimer = param1;
         if(this._stopRenderTimer)
         {
            this._renderTimer.stop();
            this._render = false;
         }
         else
         {
            this._renderTimer.start();
            this._render = true;
         }
      }
      
      public function get stopRenderTimer() : Boolean
      {
         return this._stopRenderTimer;
      }
   }
}

