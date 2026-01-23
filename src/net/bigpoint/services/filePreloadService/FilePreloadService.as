package net.bigpoint.services.filePreloadService
{
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.CSSLoader;
   import com.greensock.loading.ImageLoader;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.SWFLoader;
   import com.greensock.loading.XMLLoader;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.LoaderInfo;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.text.StyleSheet;
   import flash.utils.Dictionary;
   import net.bigpoint.util.CityramaLogger;
   
   public class FilePreloadService extends EventDispatcher
   {
      
      private var _initialLoader:LoaderMax;
      
      private var _dictionary:Dictionary;
      
      private var _replacePathsDict:Dictionary;
      
      public function FilePreloadService()
      {
         super();
         LoaderMax.activate([ImageLoader]);
         LoaderMax.activate([CSSLoader]);
         LoaderMax.activate([SWFLoader]);
         LoaderMax.activate([XMLLoader]);
         this._dictionary = new Dictionary();
         this._initialLoader = new LoaderMax();
         this.configureListener();
      }
      
      private function configureListener() : void
      {
         this._initialLoader.addEventListener(LoaderEvent.COMPLETE,this.onComplete);
         this._initialLoader.addEventListener(LoaderEvent.ERROR,this.onError);
         this._initialLoader.addEventListener(LoaderEvent.FAIL,this.onFail);
         this._initialLoader.addEventListener(LoaderEvent.CHILD_CANCEL,this.onChildCancel);
         this._initialLoader.addEventListener(LoaderEvent.CHILD_COMPLETE,this.onChildComplete);
         this._initialLoader.addEventListener(LoaderEvent.CHILD_FAIL,this.onChildFail);
         this._initialLoader.addEventListener(LoaderEvent.PROGRESS,this.onProgress);
      }
      
      public function initLoadWithXml(param1:String, param2:Dictionary = null) : void
      {
         this._replacePathsDict = param2 == null ? new Dictionary() : param2;
         var _loc3_:URLLoader = new URLLoader();
         _loc3_.load(new URLRequest(param1));
         _loc3_.addEventListener(Event.COMPLETE,this.onXmlLoaded);
      }
      
      public function initLoad(param1:Dictionary = null) : void
      {
         this._replacePathsDict = param1 == null ? new Dictionary() : param1;
         this.replaceUrlText();
         this._initialLoader.load();
      }
      
      private function onXmlLoaded(param1:Event) : void
      {
         var _loc2_:XML = new XML((param1.target as URLLoader).data);
         XMLLoader.parseLoaders(_loc2_,this._initialLoader);
         this.replaceUrlText();
         this._initialLoader.load();
      }
      
      private function replaceUrlText() : void
      {
         var _loc1_:String = null;
         for(_loc1_ in this._replacePathsDict)
         {
            this._initialLoader.replaceURLText(_loc1_,this._replacePathsDict[_loc1_],true);
         }
      }
      
      private function onChildComplete(param1:LoaderEvent) : void
      {
         var _loc2_:FilePreloadServiceEvent = new FilePreloadServiceEvent(FilePreloadServiceEvent.CHILD_COMPLETE);
         _loc2_.text = param1.target.toString();
         dispatchEvent(_loc2_);
      }
      
      private function onProgress(param1:LoaderEvent) : void
      {
         var _loc2_:FilePreloadServiceEvent = new FilePreloadServiceEvent(FilePreloadServiceEvent.PROGRESS);
         _loc2_.progress = this._initialLoader.progress;
         dispatchEvent(_loc2_);
      }
      
      private function onChildFail(param1:LoaderEvent) : void
      {
         var _loc2_:FilePreloadServiceEvent = new FilePreloadServiceEvent(FilePreloadServiceEvent.FAIL);
         _loc2_.text = param1.text;
         dispatchEvent(_loc2_);
      }
      
      private function onChildCancel(param1:LoaderEvent) : void
      {
         var _loc2_:FilePreloadServiceEvent = new FilePreloadServiceEvent(FilePreloadServiceEvent.CHILD_CANCEL);
         _loc2_.text = param1.text;
         dispatchEvent(_loc2_);
      }
      
      private function onFail(param1:LoaderEvent) : void
      {
         var _loc2_:FilePreloadServiceEvent = new FilePreloadServiceEvent(FilePreloadServiceEvent.FAIL);
         _loc2_.text = param1.text;
         dispatchEvent(_loc2_);
      }
      
      private function onError(param1:LoaderEvent) : void
      {
         var _loc2_:FilePreloadServiceEvent = new FilePreloadServiceEvent(FilePreloadServiceEvent.ERROR);
         _loc2_.text = param1.text;
         dispatchEvent(_loc2_);
      }
      
      private function onComplete(param1:LoaderEvent) : void
      {
         dispatchEvent(new FilePreloadServiceEvent(FilePreloadServiceEvent.COMPLETE));
      }
      
      public function get percentLoaded() : Number
      {
         return this._initialLoader.progress;
      }
      
      public function isLoaded(param1:String) : Boolean
      {
         if(LoaderMax.getContent(param1).rawContent != null)
         {
            return true;
         }
         return false;
      }
      
      public function hasObjectDefinition(param1:String, param2:String) : Boolean
      {
         var _loc3_:SWFLoader = null;
         var _loc4_:LoaderInfo = null;
         if(this._dictionary.hasOwnProperty(param1 + "_" + param2))
         {
            return true;
         }
         _loc3_ = LoaderMax.getLoader(param1) as SWFLoader;
         _loc4_ = _loc3_.rawContent.loaderInfo as LoaderInfo;
         return _loc4_.applicationDomain.hasDefinition(param2);
      }
      
      public function getObjectInstance(param1:String, param2:String, param3:Boolean = false) : Object
      {
         var _loc5_:* = undefined;
         var _loc6_:Class = null;
         var _loc7_:SWFLoader = null;
         if(param3 && Boolean(this._dictionary.hasOwnProperty(param1 + "_" + param2)))
         {
            _loc5_ = this._dictionary[param1 + "_" + param2];
         }
         else if(param3 && !this._dictionary.hasOwnProperty(param1 + "_" + param2))
         {
            _loc7_ = LoaderMax.getLoader(param1) as SWFLoader;
            _loc6_ = _loc7_.getClass(param2);
            _loc5_ = this._dictionary[param1 + "_" + param2] = new _loc6_();
         }
         else
         {
            _loc7_ = LoaderMax.getLoader(param1) as SWFLoader;
            if(_loc7_ == null)
            {
               CityramaLogger.logger.error("unvalid resFileName: " + param1 + ", with arguments: " + arguments);
               return null;
            }
            _loc6_ = _loc7_.getClass(param2);
            if(_loc7_ == null)
            {
               CityramaLogger.logger.error("unvalid defName: " + param2 + ", with arguments: " + arguments);
               return null;
            }
            _loc5_ = new _loc6_();
         }
         return _loc5_;
      }
      
      public function getXML(param1:String) : Object
      {
         return LoaderMax.getContent(param1);
      }
      
      public function getCss(param1:String) : StyleSheet
      {
         return LoaderMax.getContent(param1) as StyleSheet;
      }
      
      public function getImage(param1:String, param2:Boolean = false) : DisplayObject
      {
         if(param2)
         {
            return new Bitmap(LoaderMax.getLoader(param1).rawContent.bitmapData);
         }
         return LoaderMax.getContent(param1) as DisplayObject;
      }
      
      public function getMovieClip(param1:String) : MovieClip
      {
         return LoaderMax.getContent(param1) as MovieClip;
      }
      
      public function getContentAsArray(param1:String) : Array
      {
         return LoaderMax.getContent(param1);
      }
      
      public function addLoaderByXML(param1:XML) : void
      {
         if(this._initialLoader.status == LoaderStatus.READY)
         {
            XMLLoader.parseLoaders(param1,this._initialLoader);
         }
         else
         {
            CityramaLogger.logger.error("Loader is still not ready");
         }
      }
   }
}

