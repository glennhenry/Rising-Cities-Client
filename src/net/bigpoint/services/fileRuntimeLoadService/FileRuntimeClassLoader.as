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
   
   public class FileRuntimeClassLoader extends EventDispatcher
   {
      
      public var resFileName:String;
      
      public var classname:String;
      
      public var uniqueInstance:Boolean;
      
      public var service:FileRuntimeLoadService;
      
      private var _instance:*;
      
      private var _swfLoader:SWFLoader;
      
      private var _hasInit:Boolean = false;
      
      private var _hasComplete:Boolean = false;
      
      public function FileRuntimeClassLoader(param1:String, param2:String, param3:Boolean, param4:FileRuntimeLoadService)
      {
         super();
         this.resFileName = param1;
         this.classname = param2;
         this.uniqueInstance = param3;
         this.service = param4;
         LoaderMax.activate([ImageLoader]);
         LoaderMax.activate([CSSLoader]);
         LoaderMax.activate([SWFLoader]);
         LoaderMax.activate([XMLLoader]);
      }
      
      public function load() : void
      {
         var _loc1_:FileRuntimeLoaderEvent = null;
         var _loc2_:FileRuntimeLoaderEvent = null;
         this._swfLoader = this.service.getLoader(this.resFileName);
         if(this._swfLoader == null)
         {
            _loc1_ = new FileRuntimeLoaderEvent(FileRuntimeLoaderEvent.ERROR);
            _loc1_.text = "Der SWF-Loader mit dem Namen " + this.resFileName + " wurde nicht gefunden.";
            dispatchEvent(_loc1_);
         }
         else if(this._swfLoader.status == LoaderStatus.COMPLETED)
         {
            _loc2_ = new FileRuntimeLoaderEvent(FileRuntimeLoaderEvent.COMPLETE);
            this.generateInstance();
            _loc2_.instance = this._instance;
            dispatchEvent(_loc2_);
         }
         else if(this._swfLoader.status == LoaderStatus.LOADING)
         {
            this._swfLoader.addEventListener(LoaderEvent.INIT,this.onInit);
            this._swfLoader.addEventListener(LoaderEvent.COMPLETE,this.onComplete);
            this._swfLoader.addEventListener(LoaderEvent.CANCEL,this.onCancel);
            this._swfLoader.addEventListener(LoaderEvent.FAIL,this.onFail);
            this._swfLoader.addEventListener(LoaderEvent.ERROR,this.onError);
            this._swfLoader.addEventListener(LoaderEvent.PROGRESS,this.onProgress);
         }
         else if(this._swfLoader.status == LoaderStatus.READY)
         {
            this._swfLoader.addEventListener(LoaderEvent.INIT,this.onInit);
            this._swfLoader.addEventListener(LoaderEvent.COMPLETE,this.onComplete);
            this._swfLoader.addEventListener(LoaderEvent.CANCEL,this.onCancel);
            this._swfLoader.addEventListener(LoaderEvent.FAIL,this.onFail);
            this._swfLoader.addEventListener(LoaderEvent.ERROR,this.onError);
            this._swfLoader.addEventListener(LoaderEvent.PROGRESS,this.onProgress);
            this._swfLoader.load();
         }
      }
      
      private function onProgress(param1:LoaderEvent) : void
      {
      }
      
      private function onError(param1:LoaderEvent) : void
      {
         var _loc2_:FileRuntimeLoaderEvent = new FileRuntimeLoaderEvent(FileRuntimeLoaderEvent.COMPLETE);
         _loc2_.text = param1.text;
         CityramaLogger.logger.log(LogEventLevel.FATAL,"FileRuntimeClassLoader:onError(), loader for Object " + param1.text);
         dispatchEvent(_loc2_);
      }
      
      private function onFail(param1:LoaderEvent) : void
      {
         var _loc2_:FileRuntimeLoaderEvent = new FileRuntimeLoaderEvent(FileRuntimeLoaderEvent.FAIL);
         _loc2_.text = param1.text;
         CityramaLogger.logger.log(LogEventLevel.FATAL,"FileRuntimeClassLoader:onFail(), loader for Object " + param1.text);
         dispatchEvent(_loc2_);
      }
      
      private function onCancel(param1:LoaderEvent) : void
      {
         CityramaLogger.logger.log(LogEventLevel.FATAL,"FileRuntimeClassLoader:onCancel(), loader for Object " + param1.text);
         var _loc2_:FileRuntimeLoaderEvent = new FileRuntimeLoaderEvent(FileRuntimeLoaderEvent.CANCEL);
         _loc2_.text = param1.text;
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
         var _loc1_:Class = null;
         if(this.uniqueInstance && this.service.isInstanceAviable(this.resFileName,this.classname))
         {
            this._instance = this.service.getUniqueInstance(this.resFileName,this.classname);
         }
         else
         {
            _loc1_ = this._swfLoader.getClass(this.classname);
            this._instance = new _loc1_();
         }
      }
      
      public function getInstance() : *
      {
         return this._instance;
      }
      
      public function dispose() : void
      {
         if(this._swfLoader != null)
         {
            this._swfLoader.removeEventListener(LoaderEvent.COMPLETE,this.onComplete);
            this._swfLoader.removeEventListener(LoaderEvent.CANCEL,this.onCancel);
            this._swfLoader.removeEventListener(LoaderEvent.FAIL,this.onFail);
            this._swfLoader.removeEventListener(LoaderEvent.ERROR,this.onError);
            this._swfLoader.removeEventListener(LoaderEvent.PROGRESS,this.onProgress);
            this._swfLoader = null;
         }
         if(this._instance != null)
         {
            this._instance = null;
         }
      }
   }
}

