package net.bigpoint.cityrama.init.preloader
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.init.PreloaderConstants;
   import net.bigpoint.cityrama.init.SystemManager;
   
   public class PreloaderView extends MovieClip
   {
      
      public static const STATE_PRELOAD_ASSETS:String = "STATE_PRELOAD_ASSETS";
      
      public static const STATE_LOAD_SERVER_MESSAGE:String = "STATE_LOAD_SERVER_MESSAGE";
      
      private static const PRELOADER_WEIGHTS:Array;
      
      private static const FLEX_PRELAODED_PROGRESS_COUNT:int = 4;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         STATE_PRELOAD_ASSETS = "STATE_PRELOAD_ASSETS";
         if(_loc1_ || PreloaderView)
         {
            STATE_LOAD_SERVER_MESSAGE = "STATE_LOAD_SERVER_MESSAGE";
            if(_loc1_)
            {
               PRELOADER_WEIGHTS = [0.25,0.2,0.25,0.3];
               if(_loc1_ || _loc1_)
               {
                  addr006a:
                  FLEX_PRELAODED_PROGRESS_COUNT = 4;
               }
               return;
            }
         }
      }
      §§goto(addr006a);
      
      private var _1732971785_risingIntroClip:Class;
      
      private var _currentProgress:Number = 0;
      
      private var _currentProgressCount:Number = 0;
      
      private var _initProgressTotal:uint = 6;
      
      private var _preloaderBar:MovieClip;
      
      private var _preloaderAnimation:*;
      
      private var _preloaderProgress:MovieClip;
      
      private var _preloadState:String;
      
      private var _progressStepHelper:int = 0;
      
      public var _textInfo:TextField;
      
      private var _introPlayed:Boolean;
      
      private var _currentFrame:int = 1;
      
      private var _myTimer:Timer;
      
      public function PreloaderView()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            this._1732971785_risingIntroClip = PreloaderView__risingIntroClip;
            if(!_loc1_)
            {
               super();
               if(_loc2_ || Boolean(this))
               {
                  if(SystemManager.rawStage.loaderInfo.parameters.path != null)
                  {
                     if(_loc2_ || _loc1_)
                     {
                        addr006c:
                        this.createChildren();
                     }
                     §§goto(addr0071);
                  }
                  §§goto(addr006c);
               }
               §§goto(addr0071);
            }
            §§goto(addr006c);
         }
         addr0071:
      }
      
      public function get preloadState() : String
      {
         return this._preloadState;
      }
      
      public function set preloadState(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this._preloadState = param1;
         }
      }
      
      public function setProgress(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
      }
      
      public function setProgressCount(param1:Number, param2:uint) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            this._currentProgressCount = param1;
            if(!(_loc4_ && Boolean(param1)))
            {
               this._initProgressTotal = param2;
               if(!_loc4_)
               {
                  addr0042:
                  this.preloadState = null;
                  if(!(_loc4_ && Boolean(param2)))
                  {
                     if(this._currentProgressCount == param2)
                     {
                        if(!(_loc4_ && Boolean(param2)))
                        {
                           addr0079:
                           dispatchEvent(new Event(PreloaderConstants.FLEX_PRELOADING_COMPLETE,true));
                        }
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr0079);
               }
               §§goto(addr008a);
            }
            §§goto(addr0042);
         }
         addr008a:
      }
      
      protected function createChildren() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = new this._risingIntroClip();
         if(_loc3_ || _loc1_)
         {
            this._preloaderAnimation = _loc1_.getChildAt(0);
            if(_loc3_)
            {
               this._preloaderAnimation.stop();
               if(!_loc2_)
               {
                  this._preloaderProgress = _loc1_.getChildAt(1);
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0065:
                     this._preloaderProgress.stop();
                     if(!(_loc2_ && Boolean(this)))
                     {
                        this._preloaderAnimation.y = 0;
                        if(_loc3_)
                        {
                           addr0088:
                           this._preloaderAnimation.x = -1;
                           if(_loc3_ || _loc2_)
                           {
                              addChild(this._preloaderAnimation);
                              if(_loc3_ || Boolean(this))
                              {
                                 addr00c0:
                                 addChild(this._preloaderProgress);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    this.setupTimer();
                                 }
                              }
                              §§goto(addr00db);
                           }
                           §§goto(addr00c0);
                        }
                        addr00db:
                        return;
                     }
                     §§goto(addr0088);
                  }
               }
               §§goto(addr00c0);
            }
         }
         §§goto(addr0065);
      }
      
      private function onTimer(param1:TimerEvent) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(!(_loc6_ && Boolean(param1)))
         {
            var _loc3_:* = this;
            §§push(_loc3_._currentFrame);
            if(!(_loc6_ && Boolean(_loc3_)))
            {
               §§push(§§pop() + 1);
            }
            var _loc4_:* = §§pop();
            if(_loc5_ || Boolean(this))
            {
               _loc3_._currentFrame = _loc4_;
            }
            if(!_loc6_)
            {
               if(this._currentFrame > this._preloaderAnimation.totalFrames)
               {
                  if(!_loc6_)
                  {
                     addr006e:
                     this._currentFrame = 1;
                     if(_loc5_)
                     {
                        addr0086:
                        this._introPlayed = true;
                     }
                     §§goto(addr008b);
                  }
                  §§goto(addr0086);
               }
               addr008b:
               var _loc2_:PreloaderProgressSingleton = PreloaderProgressSingleton.instance;
               if(_loc5_ || Boolean(_loc3_))
               {
                  if(this._preloaderProgress.currentFrame != _loc2_.state)
                  {
                     if(_loc5_ || Boolean(param1))
                     {
                        this._preloaderProgress.gotoAndStop(_loc2_.state + 2);
                        if(!_loc6_)
                        {
                           addr00d5:
                           this._preloaderAnimation.gotoAndStop(this._currentFrame);
                           if(_loc5_ || Boolean(_loc2_))
                           {
                              §§goto(addr00fa);
                           }
                           §§goto(addr0110);
                        }
                        addr00fa:
                        if(this._introPlayed)
                        {
                           if(!(_loc6_ && Boolean(this)))
                           {
                              addr0110:
                              dispatchEvent(new Event(ApplicationNotificationConstants.PRELOADER_VIEW_ANIMATION_COMPLETE,true));
                           }
                        }
                     }
                     §§goto(addr0121);
                  }
                  §§goto(addr00d5);
               }
               addr0121:
               return;
            }
            §§goto(addr0086);
         }
         §§goto(addr006e);
      }
      
      private function setupTimer() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this._myTimer = new Timer(1000 / 50,0);
            if(!(_loc2_ && Boolean(this)))
            {
               addr0047:
               this._myTimer.addEventListener(TimerEvent.TIMER,this.onTimer);
               if(!(_loc2_ && Boolean(this)))
               {
                  this._myTimer.start();
               }
            }
            return;
         }
         §§goto(addr0047);
      }
      
      [Bindable(event="propertyChange")]
      private function get _risingIntroClip() : Class
      {
         return this._1732971785_risingIntroClip;
      }
      
      private function set _risingIntroClip(param1:Class) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1732971785_risingIntroClip;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1732971785_risingIntroClip = param1;
                  if(!_loc4_)
                  {
                     addr0046:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0056:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_risingIntroClip",_loc2_,param1));
                        }
                     }
                     §§goto(addr0067);
                  }
                  §§goto(addr0056);
               }
            }
            addr0067:
            return;
         }
         §§goto(addr0046);
      }
   }
}

