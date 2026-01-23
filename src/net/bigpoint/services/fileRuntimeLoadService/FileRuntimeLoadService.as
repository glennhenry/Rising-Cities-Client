package net.bigpoint.services.fileRuntimeLoadService
{
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.ImageLoader;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.SWFLoader;
   import com.greensock.loading.XMLLoader;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class FileRuntimeLoadService extends EventDispatcher
   {
      
      private var _wrapperLoader:LoaderMax;
      
      private var _replacePathsDict:Dictionary;
      
      private var _instanceDictionary:Dictionary;
      
      private var _loaderDictionary:Dictionary;
      
      public function FileRuntimeLoadService(param1:IEventDispatcher = null)
      {
         super(param1);
         this._wrapperLoader = new LoaderMax({"integrateProgress":false});
         this._instanceDictionary = new Dictionary();
         this._loaderDictionary = new Dictionary();
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
         this._wrapperLoader.load();
      }
      
      private function onXmlLoaded(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc2_:XML = new XML((param1.target as URLLoader).data);
         XMLLoader.parseLoaders(_loc2_,this._wrapperLoader);
         this._wrapperLoader.addEventListener(LoaderEvent.COMPLETE,this.onComplete);
         this._wrapperLoader.addEventListener(LoaderEvent.CHILD_COMPLETE,this.onChildComplete);
         this._wrapperLoader.addEventListener(LoaderEvent.ERROR,this.onError);
         this._wrapperLoader.addEventListener(LoaderEvent.FAIL,this.onFail);
         for(_loc3_ in this._replacePathsDict)
         {
            this._wrapperLoader.replaceURLText(_loc3_,this._replacePathsDict[_loc3_],true);
         }
         this._wrapperLoader.load();
      }
      
      private function onFail(param1:LoaderEvent) : void
      {
         var _loc2_:FileRuntimeLoadServiceEvent = new FileRuntimeLoadServiceEvent(FileRuntimeLoadServiceEvent.FAIL);
         _loc2_.text = param1.text;
         dispatchEvent(_loc2_);
      }
      
      private function onError(param1:LoaderEvent) : void
      {
         var _loc2_:FileRuntimeLoadServiceEvent = new FileRuntimeLoadServiceEvent(FileRuntimeLoadServiceEvent.ERROR);
         _loc2_.text = param1.text;
         dispatchEvent(_loc2_);
      }
      
      private function onChildComplete(param1:LoaderEvent) : void
      {
      }
      
      private function onComplete(param1:LoaderEvent) : void
      {
         var _loc2_:FileRuntimeLoadServiceEvent = new FileRuntimeLoadServiceEvent(FileRuntimeLoadServiceEvent.COMPLETE);
         _loc2_.text = param1.text;
         dispatchEvent(_loc2_);
      }
      
      public function getLoaderForObjectInstance(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false) : FileRuntimeClassLoader
      {
         var _loc5_:FileRuntimeClassLoader = null;
         if(param4 && this.isLoaderAviable(param1))
         {
            _loc5_ = this._loaderDictionary[param1] as FileRuntimeClassLoader;
         }
         else if(param4 && !this.isLoaderAviable(param1))
         {
            _loc5_ = new FileRuntimeClassLoader(param1,param2,param3,this);
            _loc5_.addEventListener(FileRuntimeLoaderEvent.COMPLETE,this.onFileComplete,false,100);
            this._loaderDictionary[param1] = _loc5_;
         }
         else
         {
            _loc5_ = new FileRuntimeClassLoader(param1,param2,param3,this);
         }
         return _loc5_;
      }
      
      public function getLoaderForImage(param1:String, param2:Boolean = false, param3:Boolean = false) : FileRuntimeImageLoader
      {
         var _loc4_:FileRuntimeImageLoader = null;
         if(param3 && this.isLoaderAviable(param1))
         {
            _loc4_ = this._loaderDictionary[param1] as FileRuntimeImageLoader;
         }
         else if(param3 && !this.isLoaderAviable(param1))
         {
            _loc4_ = new FileRuntimeImageLoader(param1,param2,this);
            _loc4_.addEventListener(FileRuntimeLoaderEvent.COMPLETE,this.onFileComplete,false,100);
            this._loaderDictionary[param1] = _loc4_;
         }
         else
         {
            _loc4_ = new FileRuntimeImageLoader(param1,param2,this);
         }
         return _loc4_;
      }
      
      private function onFileComplete(param1:FileRuntimeLoaderEvent) : void
      {
         var _loc2_:FileRuntimeClassLoader = param1.target as FileRuntimeClassLoader;
         if(_loc2_.uniqueInstance)
         {
            this._instanceDictionary[_loc2_.resFileName + "_" + _loc2_.classname] = _loc2_.getInstance();
         }
      }
      
      public function replaceUrlText() : void
      {
         var _loc1_:String = null;
         for(_loc1_ in this._replacePathsDict)
         {
            this._wrapperLoader.replaceURLText(_loc1_,this._replacePathsDict[_loc1_],true);
         }
      }
      
      public function isInstanceAviable(param1:String, param2:String) : Boolean
      {
         if(this._instanceDictionary.hasOwnProperty(param1 + "_" + param2))
         {
            return true;
         }
         return false;
      }
      
      public function isImageInstanceAviable(param1:String) : Boolean
      {
         if(this._instanceDictionary.hasOwnProperty(param1))
         {
            return true;
         }
         return false;
      }
      
      public function isLoaderAviable(param1:String) : Boolean
      {
         if(this._instanceDictionary.hasOwnProperty(param1))
         {
            return true;
         }
         return false;
      }
      
      public function getUniqueInstance(param1:String, param2:String) : *
      {
         return this._instanceDictionary[param1 + "_" + param2];
      }
      
      public function getUniqueImageInstance(param1:String) : *
      {
         return this._instanceDictionary[param1];
      }
      
      public function getLoader(param1:String) : SWFLoader
      {
         return this._wrapperLoader.getLoader(param1) as SWFLoader;
      }
      
      public function getImageLoader(param1:String) : ImageLoader
      {
         return this._wrapperLoader.getLoader(param1) as ImageLoader;
      }
      
      public function addLoaderByXML(param1:XML) : void
      {
         if(this._wrapperLoader.status == LoaderStatus.READY)
         {
            XMLLoader.parseLoaders(param1,this._wrapperLoader);
            return;
         }
         throw new Error();
      }
   }
}

