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
      
      private static const PRELOADER_WEIGHTS:Array = [0.25,0.2,0.25,0.3];
      
      private static const FLEX_PRELAODED_PROGRESS_COUNT:int = 4;
      
      private var _1732971785_risingIntroClip:Class = PreloaderView__risingIntroClip;
      
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
         super();
         if(SystemManager.rawStage.loaderInfo.parameters.path != null)
         {
         }
         this.createChildren();
      }
      
      public function get preloadState() : String
      {
         return this._preloadState;
      }
      
      public function set preloadState(param1:String) : void
      {
         this._preloadState = param1;
      }
      
      public function setProgress(param1:Number) : void
      {
      }
      
      public function setProgressCount(param1:Number, param2:uint) : void
      {
         this._currentProgressCount = param1;
         this._initProgressTotal = param2;
         this.preloadState = null;
         if(this._currentProgressCount == param2)
         {
            dispatchEvent(new Event(PreloaderConstants.FLEX_PRELOADING_COMPLETE,true));
         }
      }
      
      protected function createChildren() : void
      {
         var _loc1_:* = new this._risingIntroClip();
         this._preloaderAnimation = _loc1_.getChildAt(0);
         this._preloaderAnimation.stop();
         this._preloaderProgress = _loc1_.getChildAt(1);
         this._preloaderProgress.stop();
         this._preloaderAnimation.y = 0;
         this._preloaderAnimation.x = -1;
         addChild(this._preloaderAnimation);
         addChild(this._preloaderProgress);
         this.setupTimer();
      }
      
      private function onTimer(param1:TimerEvent) : void
      {
         ++this._currentFrame;
         if(this._currentFrame > this._preloaderAnimation.totalFrames)
         {
            this._currentFrame = 1;
            this._introPlayed = true;
         }
         var _loc2_:PreloaderProgressSingleton = PreloaderProgressSingleton.instance;
         if(this._preloaderProgress.currentFrame != _loc2_.state)
         {
            this._preloaderProgress.gotoAndStop(_loc2_.state + 2);
         }
         this._preloaderAnimation.gotoAndStop(this._currentFrame);
         if(this._introPlayed)
         {
            dispatchEvent(new Event(ApplicationNotificationConstants.PRELOADER_VIEW_ANIMATION_COMPLETE,true));
         }
      }
      
      private function setupTimer() : void
      {
         this._myTimer = new Timer(1000 / 50,0);
         this._myTimer.addEventListener(TimerEvent.TIMER,this.onTimer);
         this._myTimer.start();
      }
      
      [Bindable(event="propertyChange")]
      private function get _risingIntroClip() : Class
      {
         return this._1732971785_risingIntroClip;
      }
      
      private function set _risingIntroClip(param1:Class) : void
      {
         var _loc2_:Object = this._1732971785_risingIntroClip;
         if(_loc2_ !== param1)
         {
            this._1732971785_risingIntroClip = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_risingIntroClip",_loc2_,param1));
            }
         }
      }
   }
}

