package net.bigpoint.cityrama.init.preloader
{
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.utils.getTimer;
   import mx.events.RSLEvent;
   
   public class PreloaderContainer extends AbstractPreloader
   {
      
      private var _displayStartCount:uint = 0;
      
      private var _initProgressCount:int = 0;
      
      private var _downloadComplete:Boolean = false;
      
      private var _showingDisplay:Boolean = false;
      
      private var _startTime:int;
      
      private var rslBaseText:String = "Loading app: ";
      
      private var numberRslTotal:Number = 1;
      
      private var numberRslCurrent:Number = 1;
      
      public var preloaderDisplay:PreloaderView;
      
      public function PreloaderContainer()
      {
         super();
      }
      
      override protected function initCompleteHandler(param1:Event) : void
      {
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      override protected function progressHandler(param1:ProgressEvent) : void
      {
         var _loc2_:Number = NaN;
         super.progressHandler(param1);
         if(this.preloaderDisplay)
         {
            _loc2_ = Math.round(param1.bytesLoaded / param1.bytesTotal * 100);
            this.preloaderDisplay.setProgress(_loc2_);
         }
         else
         {
            this.show();
         }
      }
      
      override protected function rslProgressHandler(param1:RSLEvent) : void
      {
         var _loc2_:Number = NaN;
         if(Boolean(param1.rslIndex) && Boolean(param1.rslTotal))
         {
            this.numberRslTotal = param1.rslTotal;
            this.numberRslCurrent = param1.rslIndex;
            this.rslBaseText = "loading RSLs (" + param1.rslIndex + " of " + param1.rslTotal + ") ";
            _loc2_ = Math.round(param1.bytesLoaded / param1.bytesTotal * 100);
            this.preloaderDisplay.setProgress(_loc2_);
         }
      }
      
      override protected function setDownloadProgress(param1:Number, param2:Number) : void
      {
         if(!this.preloaderDisplay)
         {
         }
      }
      
      override protected function setInitProgress(param1:Number, param2:Number) : void
      {
         if(this.preloaderDisplay)
         {
            this.preloaderDisplay.setProgress(Math.round(param1 / param2 * 100));
         }
      }
      
      override protected function initProgressHandler(param1:Event) : void
      {
         var _loc2_:int = getTimer() - this._startTime;
         ++this._initProgressCount;
         if(this._initProgressCount == 1)
         {
            PreloaderProgressSingleton.instance.setProgress(PreloaderProgressSingleton.STATE_POINTER_SWFLOADING_PROGRESS);
         }
         if(this._initProgressCount == 8)
         {
            PreloaderProgressSingleton.instance.setProgress(PreloaderProgressSingleton.STATE_POINTER_SWFLOADING_COMPLETE);
         }
         if(!this._showingDisplay && showDisplayForInit(_loc2_,this._initProgressCount))
         {
            this._displayStartCount = this._initProgressCount;
            this.show();
            this.setDownloadProgress(100,100);
         }
         if(this._showingDisplay)
         {
            this.preloaderDisplay.setProgressCount(this._initProgressCount,initProgressTotal);
            if(!this._downloadComplete)
            {
               this.setDownloadProgress(100,100);
            }
            this.setInitProgress(this._initProgressCount,initProgressTotal);
         }
      }
      
      private function show() : void
      {
         if(stageWidth == 0 && stageHeight == 0)
         {
            try
            {
               stageWidth = stage.stageWidth;
               stageHeight = stage.stageHeight;
            }
            catch(e:Error)
            {
               stageWidth = loaderInfo.width;
               stageHeight = loaderInfo.height;
            }
            if(stageWidth == 0 && stageHeight == 0)
            {
               return;
            }
         }
         this._showingDisplay = true;
         createChildren();
      }
   }
}

