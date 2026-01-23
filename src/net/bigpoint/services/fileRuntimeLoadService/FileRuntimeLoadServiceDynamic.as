package net.bigpoint.services.fileRuntimeLoadService
{
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.SWFLoader;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import org.bytearray.explorer.SWFExplo;
   import org.bytearray.explorer.events.SWFExplorerEvent;
   
   public class FileRuntimeLoadServiceDynamic extends EventDispatcher
   {
      
      private static var instance:FileRuntimeLoadServiceDynamic;
      
      private var _loadedSWFNames:Vector.<String>;
      
      private var _requestedSWFNames:Vector.<String>;
      
      private var _optionSmoothing:Boolean;
      
      private var _queueMax:LoaderMax;
      
      private var _loaderIsIdle:Boolean;
      
      private var _knownUnloadedFiles:Dictionary;
      
      private var _isReady:Boolean = false;
      
      private var _availableDefinitions:Vector.<String>;
      
      private var _libAvailableDefinitions:Dictionary;
      
      private var _requestedLibPerNotificationID:Dictionary;
      
      private var _swfNamesInProgress:Vector.<String>;
      
      private var _pathFromFlashVars:String;
      
      private var _bmpDataMovieCache:Dictionary;
      
      private var _dynamicApplication:Dictionary;
      
      public function FileRuntimeLoadServiceDynamic(param1:IEventDispatcher = null)
      {
         super(param1);
         this._queueMax = new LoaderMax({
            "onComplete":this.finalCompleteHandler,
            "name":"DynamicMaxLoader",
            "domain":"own",
            "context":new LoaderContext(false,ApplicationDomain.currentDomain)
         });
         this._queueMax.maxConnections = 2;
         this._loaderIsIdle = true;
         this._knownUnloadedFiles = new Dictionary();
         this._loadedSWFNames = new Vector.<String>();
         this._requestedSWFNames = new Vector.<String>();
         this._availableDefinitions = new Vector.<String>();
         this._libAvailableDefinitions = new Dictionary();
         this._requestedLibPerNotificationID = new Dictionary();
         this._swfNamesInProgress = new Vector.<String>();
         this._bmpDataMovieCache = new Dictionary();
         this._optionSmoothing = OptionsGlobalVariables.getInstance().highQuality;
      }
      
      public static function getInstance() : FileRuntimeLoadServiceDynamic
      {
         if(instance == null)
         {
            instance = new FileRuntimeLoadServiceDynamic();
         }
         return instance;
      }
      
      public function init(param1:Dictionary, param2:String) : void
      {
         this._pathFromFlashVars = param2;
         this._knownUnloadedFiles = param1;
         this.isReady = true;
      }
      
      public function getFileAsMovieClip(param1:String) : MovieClip
      {
         var _loc2_:Class = ApplicationDomain.currentDomain.getDefinition(param1) as Class;
         return new _loc2_();
      }
      
      public function getBitmap(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false) : Bitmap
      {
         var found:Boolean;
         var bData:BitmapData;
         var bmp:Bitmap;
         var mc:MovieClip = null;
         var rawDSP:DisplayObject = null;
         var label:FrameLabel = null;
         var loaderName:String = param1;
         var itemName:String = param2;
         var smoothing:Boolean = param3;
         var force:Boolean = param4;
         this.notReadyCheck();
         mc = this.getCachedBmpMC(loaderName);
         found = false;
         try
         {
            for each(label in mc.currentLabels)
            {
               if(label.name == itemName)
               {
                  found = true;
                  mc.gotoAndStop(label.frame);
                  break;
               }
            }
            if(found)
            {
            }
         }
         catch(e:Error)
         {
         }
         if(mc == null || mc.numChildren < 1)
         {
            throw new RamaCityError(this + " Error mc invalid");
         }
         rawDSP = mc.getChildAt(0) as DisplayObject;
         bData = new BitmapData(rawDSP.width,rawDSP.height,true,0);
         smoothing = this._optionSmoothing;
         bData.draw(rawDSP,null,null,null,null,smoothing);
         bmp = new Bitmap(bData);
         return bmp;
      }
      
      public function getBitmapData(param1:String, param2:String) : BitmapData
      {
         var _loc6_:FrameLabel = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:BitmapData = null;
         this.notReadyCheck();
         var _loc3_:Boolean = this._libAvailableDefinitions.hasOwnProperty(param1) ? true : false;
         if(!_loc3_)
         {
            return null;
         }
         var _loc4_:Class = ApplicationDomain.currentDomain.getDefinition(param1) as Class;
         var _loc5_:MovieClip = new _loc4_();
         for each(_loc6_ in _loc5_.currentLabels)
         {
            if(_loc6_.name == param2)
            {
               _loc5_.gotoAndStop(_loc6_.frame);
               break;
            }
         }
         _loc7_ = _loc5_.getChildAt(0) as DisplayObject;
         _loc8_ = new BitmapData(_loc7_.width,_loc7_.height,true,0);
         _loc8_.draw(_loc7_);
         return _loc8_;
      }
      
      public function getFileAsBitmap(param1:String, param2:String, param3:Bitmap) : void
      {
         this.notReadyCheck();
         this._requestedSWFNames.push(param1);
      }
      
      private function initHandler(param1:LoaderEvent) : void
      {
         var test:Class = null;
         var event:LoaderEvent = param1;
         try
         {
            test = ApplicationDomain.currentDomain.getDefinition(event.currentTarget.name) as Class;
         }
         catch(e:Error)
         {
         }
      }
      
      private function completeHandler(param1:LoaderEvent) : void
      {
         var _loc2_:ByteArray = param1.currentTarget.rawContent.loaderInfo.bytes;
         var _loc3_:String = param1.currentTarget.name;
         var _loc4_:SWFExplo = new SWFExplo();
         _loc4_.addEventListener(SWFExplorerEvent.COMPLETE,this.addDefinitions);
         _loc4_.parse(_loc2_,"classes",_loc3_);
         this._loadedSWFNames.push(_loc3_);
      }
      
      private function addSWFtoLoad(param1:String, param2:String, param3:Boolean = false) : void
      {
         var _loc4_:SWFLoader = null;
         this.notReadyCheck();
         if(param3)
         {
            this._queueMax.prepend(new SWFLoader(this._pathFromFlashVars + param2,{
               "name":param1,
               "container":this,
               "onError":this.onSWFError,
               "onIOError":this.onSWFIOError,
               "onComplete":this.completeHandler,
               "domain":"own",
               "context":new LoaderContext(false,ApplicationDomain.currentDomain)
            }));
         }
         else
         {
            _loc4_ = new SWFLoader(this._pathFromFlashVars + param2,{
               "name":param1,
               "container":this,
               "onError":this.onSWFError,
               "onIOError":this.onSWFIOError,
               "onComplete":this.completeHandler,
               "domain":"own",
               "context":new LoaderContext(false,ApplicationDomain.currentDomain)
            });
            this._queueMax.append(_loc4_);
         }
         this._queueMax.load();
         this._loaderIsIdle = false;
         this._swfNamesInProgress.push(param1);
      }
      
      public function checkSWFArrayLoaded(param1:Array, param2:String = null) : Boolean
      {
         var _loc6_:String = null;
         var _loc3_:Array = [];
         var _loc4_:Boolean = false;
         for each(_loc6_ in param1)
         {
            _loc4_ = this._libAvailableDefinitions[_loc6_] != null ? true : false;
            if(!_loc4_)
            {
               _loc3_.push(_loc6_);
            }
         }
         if(_loc3_.length <= 0)
         {
            return false;
         }
         if(param2)
         {
            this.requestLibsCompleteNotification(param2,_loc3_);
            this.queueMissingLibs(_loc3_);
         }
         return true;
      }
      
      private function requestLibsCompleteNotification(param1:String, param2:Array) : void
      {
         if(this._requestedLibPerNotificationID.hasOwnProperty(param1))
         {
            return;
         }
         this._requestedLibPerNotificationID[param1] = param2;
      }
      
      private function finalCompleteHandler(param1:LoaderEvent) : void
      {
         this._loaderIsIdle = true;
      }
      
      private function onFail(param1:LoaderEvent) : void
      {
         var _loc2_:FileRuntimeLoadServiceEvent = new FileRuntimeLoadServiceEvent(FileRuntimeLoadServiceEvent.FAIL);
         _loc2_.text = param1.text;
         dispatchEvent(_loc2_);
      }
      
      private function onSWFError(param1:LoaderEvent) : void
      {
      }
      
      private function onSWFIOError(param1:LoaderEvent) : void
      {
      }
      
      private function notReadyCheck() : void
      {
      }
      
      private function addDefinitions(param1:SWFExplorerEvent) : void
      {
         var _loc3_:String = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in param1.definitions)
         {
            this._availableDefinitions.push(_loc3_);
            _loc2_.push(_loc3_);
         }
         this._libAvailableDefinitions[param1.libName] = _loc2_;
         param1.pSWFExploInstance.removeEventListener(SWFExplorerEvent.COMPLETE,this.addDefinitions);
         param1.pSWFExploInstance = null;
         dispatchEvent(new Event(param1.libName));
         this.checkRequestedLibrariesForDispatch();
      }
      
      public function classAllReadyLoaded(param1:String) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this._availableDefinitions.length)
         {
            if(param1 == this._availableDefinitions[_loc2_])
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function libAllReadyLoaded(param1:String) : Boolean
      {
         return this._libAvailableDefinitions[param1] != null ? true : false;
      }
      
      private function checkRequestedLibrariesForDispatch() : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         if(this.isEmptyDictionary(this._requestedLibPerNotificationID))
         {
            return;
         }
         var _loc1_:Array = [];
         var _loc2_:Boolean = false;
         for(_loc3_ in this._requestedLibPerNotificationID)
         {
            _loc2_ = true;
            for each(_loc4_ in this._requestedLibPerNotificationID[_loc3_])
            {
               if(!this._libAvailableDefinitions.hasOwnProperty(_loc4_))
               {
                  _loc2_ = false;
                  break;
               }
            }
            if(_loc2_)
            {
               dispatchEvent(new Event(_loc3_));
               _loc1_.push(_loc3_);
            }
         }
         this.deleteKeysOfDict(this._requestedLibPerNotificationID,_loc1_);
      }
      
      public function loadAll() : void
      {
         var _loc2_:String = null;
         var _loc1_:Array = [];
         for(_loc2_ in this._knownUnloadedFiles)
         {
            this.addSWFtoLoad(_loc2_,this._knownUnloadedFiles[_loc2_]);
            _loc1_.push(_loc2_);
         }
         this.deleteKeysOfDict(this._knownUnloadedFiles,_loc1_);
      }
      
      private function queueMissingLibs(param1:Array) : void
      {
         var _loc4_:String = null;
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = param1[_loc3_];
            if(this._knownUnloadedFiles.hasOwnProperty(_loc4_))
            {
               this.addSWFtoLoad(_loc4_,this._knownUnloadedFiles[_loc4_]);
               _loc2_.push(_loc4_);
            }
            _loc3_++;
         }
         this.deleteKeysOfDict(this._knownUnloadedFiles,_loc2_);
      }
      
      private function getCachedBmpMC(param1:String) : MovieClip
      {
         if(this._bmpDataMovieCache)
         {
            if(this._bmpDataMovieCache[param1])
            {
               return this._bmpDataMovieCache[param1];
            }
         }
         if(ApplicationDomain.currentDomain.hasDefinition(param1))
         {
            var _loc2_:Class = ApplicationDomain.currentDomain.getDefinition(param1) as Class;
            var _loc3_:MovieClip = new null();
            this._bmpDataMovieCache[param1] = null;
            return null;
         }
         return new MovieClip();
      }
      
      private function deleteKeysOfDict(param1:Dictionary, param2:Array) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < param2.length)
         {
            delete param1[param2[_loc3_]];
            _loc3_++;
         }
      }
      
      private function isEmptyDictionary(param1:Dictionary) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_ != null)
            {
               return false;
            }
         }
         return true;
      }
      
      public function set optionSmoothing(param1:Boolean) : void
      {
         this._optionSmoothing = param1;
      }
      
      public function get isReady() : Boolean
      {
         return this._isReady;
      }
      
      public function set isReady(param1:Boolean) : void
      {
         this._isReady = param1;
         dispatchEvent(new Event(Event.INIT));
      }
   }
}

