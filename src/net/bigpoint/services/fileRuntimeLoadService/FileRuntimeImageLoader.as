package net.bigpoint.services.fileRuntimeLoadService
{
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.CSSLoader;
   import com.greensock.loading.ImageLoader;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.SWFLoader;
   import com.greensock.loading.XMLLoader;
   import flash.events.EventDispatcher;
   import mx.logging.LogEventLevel;
   import net.bigpoint.util.CityramaLogger;
   
   public class FileRuntimeImageLoader extends EventDispatcher
   {
      
      public var uniqueInstance:Boolean;
      
      public var service:FileRuntimeLoadService;
      
      private var _instance:*;
      
      private var _imageLoader:ImageLoader;
      
      private var _hasInit:Boolean = false;
      
      private var _hasComplete:Boolean = false;
      
      private var resFileName:String;
      
      public function FileRuntimeImageLoader(param1:String, param2:Boolean, param3:FileRuntimeLoadService)
      {
         super();
         this.resFileName = param1;
         this.uniqueInstance = param2;
         this.service = param3;
         LoaderMax.activate([ImageLoader]);
         LoaderMax.activate([CSSLoader]);
         LoaderMax.activate([SWFLoader]);
         LoaderMax.activate([XMLLoader]);
      }
      
      public function load() : void
      {
         var _loc1_:FileRuntimeLoaderEvent = null;
         var _loc2_:FileRuntimeLoaderEvent = null;
         this._imageLoader = this.service.getImageLoader(this.resFileName);
         if(this._imageLoader == null)
         {
            _loc1_ = new FileRuntimeLoaderEvent(FileRuntimeLoaderEvent.ERROR);
            _loc1_.text = "Der SWF-Loader mit dem Namen " + this.resFileName + " wurde nicht gefunden.";
            dispatchEvent(_loc1_);
         }
         else if(this._imageLoader.status == LoaderStatus.COMPLETED)
         {
            _loc2_ = new FileRuntimeLoaderEvent(FileRuntimeLoaderEvent.COMPLETE);
            this.generateInstance();
            _loc2_.instance = this._instance;
            dispatchEvent(_loc2_);
         }
         else if(this._imageLoader.status == LoaderStatus.LOADING)
         {
            this._imageLoader.addEventListener(LoaderEvent.INIT,this.onInit);
            this._imageLoader.addEventListener(LoaderEvent.COMPLETE,this.onComplete);
            this._imageLoader.addEventListener(LoaderEvent.CANCEL,this.onCancel);
            this._imageLoader.addEventListener(LoaderEvent.FAIL,this.onFail);
            this._imageLoader.addEventListener(LoaderEvent.ERROR,this.onError);
            this._imageLoader.addEventListener(LoaderEvent.PROGRESS,this.onProgress);
         }
         else if(this._imageLoader.status == LoaderStatus.READY)
         {
            this._imageLoader.addEventListener(LoaderEvent.INIT,this.onInit);
            this._imageLoader.addEventListener(LoaderEvent.COMPLETE,this.onComplete);
            this._imageLoader.addEventListener(LoaderEvent.CANCEL,this.onCancel);
            this._imageLoader.addEventListener(LoaderEvent.FAIL,this.onFail);
            this._imageLoader.addEventListener(LoaderEvent.ERROR,this.onError);
            this._imageLoader.addEventListener(LoaderEvent.PROGRESS,this.onProgress);
            this._imageLoader.load();
         }
      }
      
      private function onProgress(param1:LoaderEvent) : void
      {
      }
      
      private function onError(param1:LoaderEvent) : void
      {
         var _loc2_:FileRuntimeLoaderEvent = new FileRuntimeLoaderEvent(FileRuntimeLoaderEvent.COMPLETE);
         _loc2_.text = param1.text;
         CityramaLogger.logger.log(LogEventLevel.WARN,"FileRuntimeImageLoader:onError(), loader for Object " + param1.text);
         dispatchEvent(_loc2_);
      }
      
      private function onFail(param1:LoaderEvent) : void
      {
         var _loc2_:FileRuntimeLoaderEvent = new FileRuntimeLoaderEvent(FileRuntimeLoaderEvent.FAIL);
         CityramaLogger.logger.log(LogEventLevel.WARN,"FileRuntimeImageLoader:onComplete(), loader for Object " + param1.text);
         _loc2_.text = param1.text;
         dispatchEvent(_loc2_);
      }
      
      private function onCancel(param1:LoaderEvent) : void
      {
         var _loc2_:FileRuntimeLoaderEvent = new FileRuntimeLoaderEvent(FileRuntimeLoaderEvent.CANCEL);
         _loc2_.text = param1.text;
         CityramaLogger.logger.log(LogEventLevel.WARN,"FileRuntimeImageLoader:onCancel(), loader for Object " + param1.text);
         dispatchEvent(_loc2_);
      }
      
      private function onFullComplete(param1:LoaderEvent) : void
      {
         var _loc2_:FileRuntimeLoaderEvent = new FileRuntimeLoaderEvent(FileRuntimeLoaderEvent.COMPLETE);
         this.generateInstance();
         _loc2_.instance = this._instance;
         _loc2_.text = this.resFileName;
         dispatchEvent(_loc2_);
      }
      
      private function onComplete(param1:LoaderEvent) : void
      {
         this._hasComplete = true;
         if(this._hasComplete && this._hasInit)
         {
            this.onFullComplete(param1);
         }
      }
      
      private function onInit(param1:LoaderEvent) : void
      {
         this._hasInit = true;
         if(this._hasComplete && this._hasInit)
         {
            this.onFullComplete(param1);
         }
      }
      
      private function generateInstance() : void
      {
         if(this.uniqueInstance && this.service.isImageInstanceAviable(this.resFileName))
         {
            this._instance = this.service.getUniqueImageInstance(this.resFileName);
         }
         else
         {
            this._instance = this._imageLoader.content;
         }
      }
      
      public function getInstance() : *
      {
         return this._instance;
      }
      
      public function dispose() : void
      {
         if(this._imageLoader != null)
         {
            this._imageLoader.removeEventListener(LoaderEvent.COMPLETE,this.onComplete);
            this._imageLoader.removeEventListener(LoaderEvent.CANCEL,this.onCancel);
            this._imageLoader.removeEventListener(LoaderEvent.FAIL,this.onFail);
            this._imageLoader.removeEventListener(LoaderEvent.ERROR,this.onError);
            this._imageLoader.removeEventListener(LoaderEvent.PROGRESS,this.onProgress);
            this._imageLoader = null;
         }
         if(this._instance != null)
         {
            this._instance = null;
         }
      }
   }
}

