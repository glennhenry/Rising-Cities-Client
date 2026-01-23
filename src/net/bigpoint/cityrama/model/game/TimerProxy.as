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
      
      public static const NAME:String = "TimerProxy";
      
      private static const TIMER_INTERVALL:int = 1000;
      
      private static const TIMER_RENDER_INTERVALL:int = 66;
      
      private static const TIMER_KEEPALIVE_INTERVALL:Number = 300000;
      
      private static var instance:TimerProxy;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || TimerProxy)
      {
         NAME = "TimerProxy";
         if(_loc1_)
         {
            TIMER_INTERVALL = 1000;
            if(!(_loc2_ && _loc1_))
            {
               TIMER_RENDER_INTERVALL = 1000 / 15;
               if(!(_loc2_ && _loc1_))
               {
                  addr006c:
                  TIMER_KEEPALIVE_INTERVALL = 300000;
               }
               §§goto(addr0075);
            }
         }
         §§goto(addr006c);
      }
      addr0075:
      
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
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param1))
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this._timer = new Timer(TimerProxy.TIMER_INTERVALL,0);
            if(!(_loc1_ && Boolean(this)))
            {
               this._timer.addEventListener(TimerEvent.TIMER,this.onTick);
               if(!(_loc1_ && _loc2_))
               {
                  this._timer.start();
                  if(!_loc1_)
                  {
                     this._renderTimer = new Timer(TimerProxy.TIMER_RENDER_INTERVALL,0);
                     if(_loc2_)
                     {
                        addr0084:
                        this._renderTimer.addEventListener(TimerEvent.TIMER,this.onRenderTick);
                        if(_loc2_)
                        {
                           addr009b:
                           this._renderTimer.start();
                           if(_loc2_ || Boolean(this))
                           {
                              this._keepAliveTimer = new Timer(TimerProxy.TIMER_KEEPALIVE_INTERVALL,0);
                              §§goto(addr00b0);
                           }
                        }
                        §§goto(addr00d2);
                     }
                     §§goto(addr00b0);
                  }
                  §§goto(addr0084);
               }
               §§goto(addr009b);
            }
            addr00b0:
            if(!_loc1_)
            {
               addr00d2:
               this._keepAliveTimer.addEventListener(TimerEvent.TIMER,this.onKeepaliveTick);
               if(_loc2_ || _loc1_)
               {
                  this._keepAliveTimer.start();
               }
            }
            §§goto(addr00f9);
         }
         addr00f9:
      }
      
      private function onKeepaliveTick(param1:TimerEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            facade.sendNotification(ApplicationNotificationConstants.SESSION_KEEPALIVE);
         }
      }
      
      private function onRenderTick(param1:TimerEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(this._render)
            {
               if(!_loc2_)
               {
                  facade.sendNotification(ApplicationNotificationConstants.RENDER_TICK);
               }
            }
         }
      }
      
      private function onTick(param1:TimerEvent) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:ITimerInterest = null;
         if(!(_loc6_ && Boolean(this)))
         {
            var _loc3_:* = this;
            §§push(_loc3_._eventTimer);
            if(_loc5_ || Boolean(param1))
            {
               §§push(§§pop() + 1);
            }
            var _loc4_:* = §§pop();
            if(!_loc6_)
            {
               _loc3_._eventTimer = _loc4_;
            }
            if(!_loc6_)
            {
               §§push(this._playfieldObjetcsProxy);
               if(!(_loc6_ && Boolean(_loc3_)))
               {
                  §§push(null);
                  if(!(_loc6_ && Boolean(_loc3_)))
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!_loc6_)
                        {
                           this._playfieldObjetcsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
                           if(!(_loc6_ && Boolean(param1)))
                           {
                              §§goto(addr00aa);
                           }
                        }
                        §§goto(addr00b3);
                     }
                     addr00aa:
                     §§goto(addr00af);
                  }
                  addr00af:
                  §§goto(addr00ae);
               }
               addr00ae:
               if(this._playfieldObjetcsProxy != null)
               {
                  addr00b3:
                  for each(_loc2_ in this._playfieldObjetcsProxy.timerList)
                  {
                     if(!(_loc6_ && Boolean(_loc2_)))
                     {
                        _loc2_.tick(this.currentTimeStamp);
                     }
                  }
                  if(!_loc6_)
                  {
                     §§goto(addr0102);
                  }
                  §§goto(addr0110);
               }
               addr0102:
               if(this._render)
               {
                  if(!_loc6_)
                  {
                     addr0110:
                     facade.sendNotification(ApplicationNotificationConstants.TIMER_TICK,this.currentTimeStamp);
                  }
               }
               return;
            }
            §§goto(addr00aa);
         }
         §§goto(addr00b3);
      }
      
      public function set currentTimeStamp(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._serverUpdateTime = getTimer();
            if(!(_loc2_ && _loc2_))
            {
               this._serverTimeStamp = param1;
               if(!(_loc2_ && _loc3_))
               {
                  addr004d:
                  sendNotification(ApplicationNotificationConstants.TIMESTAMP_SET);
               }
               §§goto(addr0057);
            }
            §§goto(addr004d);
         }
         addr0057:
      }
      
      public function get currentTimeStamp() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this._serverTimeStamp);
            if(!_loc1_)
            {
               §§push(§§pop());
               if(!_loc1_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(!(_loc1_ && _loc2_))
                     {
                        §§pop();
                        if(!(_loc1_ && _loc1_))
                        {
                           §§push(this._serverUpdateTime);
                           if(!_loc1_)
                           {
                              §§goto(addr006b);
                           }
                           §§goto(addr0085);
                        }
                        §§goto(addr0074);
                     }
                  }
               }
               addr006b:
               §§goto(addr006a);
            }
            addr006a:
            if(§§pop())
            {
               if(_loc2_)
               {
                  §§goto(addr0074);
               }
            }
            return 0;
         }
         addr0074:
         §§push(this._serverTimeStamp);
         if(_loc2_ || Boolean(this))
         {
            addr0085:
            return §§pop() + (getTimer() - this._serverUpdateTime);
         }
      }
      
      public function get userTimeStamp() : Number
      {
         var _loc1_:Date = new Date();
         return _loc1_.time;
      }
      
      public function get eventTimer() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._eventProxy);
            if(_loc2_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     this._eventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
                     if(_loc2_ || _loc2_)
                     {
                        addr005a:
                        addr005e:
                        if(this._eventProxy.runningEventQuest != null)
                        {
                           if(_loc2_ || Boolean(this))
                           {
                              §§goto(addr007d);
                           }
                        }
                        §§goto(addr00a6);
                     }
                     §§goto(addr007d);
                  }
                  addr00a6:
                  return this._eventTimer;
               }
               §§goto(addr005a);
            }
            §§goto(addr005e);
         }
         addr007d:
         return Math.floor((this._eventProxy.runningEventQuest.quests[0].config.runtimeFull - this._eventProxy.runningEventQuestTimeLeft) / 1000);
      }
      
      public function set eventTimer(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._eventTimer = param1;
         }
      }
      
      public function get render() : Boolean
      {
         return this._render;
      }
      
      public function set render(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._render = param1;
         }
      }
      
      public function set stopRenderTimer(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._stopRenderTimer = param1;
            if(_loc3_)
            {
               if(this._stopRenderTimer)
               {
                  if(!_loc2_)
                  {
                     this._renderTimer.stop();
                     if(_loc3_ || _loc3_)
                     {
                        addr005e:
                        this._render = false;
                        if(_loc2_ && _loc3_)
                        {
                           addr0081:
                           this._render = true;
                        }
                     }
                  }
               }
               else
               {
                  this._renderTimer.start();
                  if(!_loc2_)
                  {
                     §§goto(addr0081);
                  }
               }
               return;
            }
            §§goto(addr005e);
         }
         §§goto(addr0081);
      }
      
      public function get stopRenderTimer() : Boolean
      {
         return this._stopRenderTimer;
      }
   }
}

