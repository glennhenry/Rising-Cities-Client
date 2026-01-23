package net.bigpoint.cityrama.view.common.components
{
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import mx.core.UIComponent;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.common.events.BriskImageDynaLibEvent;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadServiceDynamic;
   
   public class BriskImageDynaLib extends UIComponent
   {
      
      private var _preloadingDisplayDummy:DisplayObject = null;
      
      private var _displayDummyChanged:Boolean = false;
      
      private var _preloadDoneNotification:String;
      
      private var _bitmapSource:Bitmap;
      
      private var _maintainAspectRation:Boolean = false;
      
      private var _smoothing:Boolean = false;
      
      private var _dynaLibName:String;
      
      private var _dynaBmpSourceName:String;
      
      private var _dynaLibChanged:Boolean;
      
      private var _dynaBmpChanged:Boolean;
      
      private var _aspectRatioIsDirty:Boolean = true;
      
      private var _bitmapSourceIsDirty:Boolean = false;
      
      private var _dynaSwfFilename:String;
      
      private var _hasListenerForInit:Boolean;
      
      private var _traceableBMPid:String;
      
      public function BriskImageDynaLib()
      {
         super();
      }
      
      private function createDummy() : void
      {
         if(this._preloadingDisplayDummy == null)
         {
            this._preloadingDisplayDummy = new ImagePreloaderSmall();
         }
         this._preloadingDisplayDummy.x = width / 2 - this._preloadingDisplayDummy.width / 2;
         this._preloadingDisplayDummy.y = height / 2 - this._preloadingDisplayDummy.height / 2;
         addChild(this._preloadingDisplayDummy);
      }
      
      public function onLoadComplete(param1:Event) : void
      {
         var _loc2_:FileRuntimeLoadServiceDynamic = FileRuntimeLoadServiceDynamic.getInstance();
         if(param1 == null || param1.type == this._preloadDoneNotification)
         {
            if(this._dynaBmpSourceName == this._traceableBMPid)
            {
            }
            this._smoothing = OptionsGlobalVariables.getInstance().highQuality;
            this._bitmapSource = _loc2_.getBitmap(this._dynaLibName,this._dynaBmpSourceName,this._smoothing);
            if(this._preloadingDisplayDummy)
            {
               if(this._preloadingDisplayDummy.parent)
               {
                  removeChild(this._preloadingDisplayDummy);
               }
               _loc2_.removeEventListener(this._preloadDoneNotification,this.onLoadComplete);
            }
            while(this.numChildren)
            {
               removeChildAt(0);
            }
            addChild(this._bitmapSource);
            this._bitmapSourceIsDirty = true;
            invalidateSize();
            invalidateDisplayList();
            dispatchEvent(new BriskImageDynaLibEvent(BriskImageDynaLibEvent.LOAD_COMPLETE));
         }
         else
         {
            _loc2_.removeEventListener(param1.type,this.onLoadComplete);
         }
      }
      
      override protected function commitProperties() : void
      {
         var _loc2_:Boolean = false;
         super.commitProperties();
         var _loc1_:FileRuntimeLoadServiceDynamic = FileRuntimeLoadServiceDynamic.getInstance();
         if(_loc1_.isReady)
         {
            if(this._dynaBmpChanged || this._dynaLibChanged)
            {
               if(this._dynaBmpSourceName && this._dynaLibName && this._dynaBmpSourceName.length && Boolean(this._dynaLibName.length))
               {
                  if(this._dynaBmpSourceName == this._traceableBMPid)
                  {
                  }
                  this._dynaBmpChanged = false;
                  this._dynaLibChanged = false;
                  this._preloadDoneNotification = this._dynaLibName + this._dynaBmpSourceName + "_complete";
                  _loc2_ = false;
                  if(this._dynaSwfFilename != null)
                  {
                     _loc2_ = _loc1_.checkSWFArrayLoaded([this._dynaSwfFilename],this._preloadDoneNotification);
                  }
                  else
                  {
                     _loc2_ = _loc1_.checkSWFArrayLoaded([this._dynaLibName],this._preloadDoneNotification);
                  }
                  if(_loc2_)
                  {
                     _loc1_.addEventListener(this._preloadDoneNotification,this.onLoadComplete);
                     this.createDummy();
                     this._displayDummyChanged = true;
                  }
                  else
                  {
                     this.onLoadComplete(null);
                  }
               }
            }
         }
         else if(!this._hasListenerForInit)
         {
            _loc1_.addEventListener(Event.INIT,this.handleFRLSInit);
            this._hasListenerForInit = true;
         }
         invalidateDisplayList();
      }
      
      private function handleFRLSInit(param1:Event) : void
      {
         var _loc2_:FileRuntimeLoadServiceDynamic = FileRuntimeLoadServiceDynamic.getInstance();
         _loc2_.removeEventListener(Event.INIT,this.handleFRLSInit);
         this._dynaBmpChanged = true;
         this._dynaLibChanged = true;
         invalidateProperties();
      }
      
      public function set preloadingDisplayDummy(param1:DisplayObject) : void
      {
         if(param1 != this._preloadingDisplayDummy)
         {
            this._preloadingDisplayDummy = param1;
            this._displayDummyChanged = true;
            invalidateProperties();
         }
      }
      
      public function set briskDynaVo(param1:BriskDynaVo) : void
      {
         this.dynaSWFFileName = param1.dynaSwfName;
         this.dynaLibName = param1.dynaLibName;
         this.dynaBmpSourceName = param1.dynaBmpName;
      }
      
      public function set dynaSWFFileName(param1:String) : void
      {
         this._dynaSwfFilename = param1;
      }
      
      public function get dynaLibName() : String
      {
         return this._dynaLibName;
      }
      
      public function set dynaLibName(param1:String) : void
      {
         if(param1 != this._dynaLibName)
         {
            this._dynaLibChanged = true;
            this._dynaLibName = param1;
            invalidateProperties();
         }
      }
      
      public function get dynaBmpSourceName() : String
      {
         return this._dynaBmpSourceName;
      }
      
      public function set dynaBmpSourceName(param1:String) : void
      {
         if(param1 != this._dynaBmpSourceName)
         {
            this._dynaBmpChanged = true;
            this._dynaBmpSourceName = param1;
            invalidateProperties();
         }
      }
      
      public function get maintainAspectRation() : Boolean
      {
         return this._maintainAspectRation;
      }
      
      public function set maintainAspectRation(param1:Boolean) : void
      {
         if(this._maintainAspectRation != param1)
         {
            this._maintainAspectRation = param1;
            this._aspectRatioIsDirty = true;
            invalidateDisplayList();
         }
      }
      
      public function get smoothing() : Boolean
      {
         return this._smoothing;
      }
      
      public function set smoothing(param1:Boolean) : void
      {
         this._smoothing = param1;
      }
      
      public function get traceableBMPid() : String
      {
         return this._traceableBMPid;
      }
      
      public function set traceableBMPid(param1:String) : void
      {
         this._traceableBMPid = param1;
      }
      
      override protected function measure() : void
      {
         super.measure();
         if(this._bitmapSource)
         {
            if(this.measuredWidth == 0)
            {
               this.measuredWidth = this._bitmapSource.width;
            }
            if(this.measuredHeight == 0)
            {
               this.measuredHeight = this._bitmapSource.height;
            }
         }
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         super.updateDisplayList(param1,param2);
         if(this._bitmapSource)
         {
            if(this._maintainAspectRation)
            {
               this._bitmapSource.width = param1;
               this._bitmapSource.scaleY = this._bitmapSource.scaleX;
               if(this._bitmapSource.height > param2)
               {
                  this._bitmapSource.height = param2;
                  this._bitmapSource.scaleX = this._bitmapSource.scaleY;
               }
               this._bitmapSource.x = 0.5 * (param1 - this._bitmapSource.width);
               this._bitmapSource.y = 0.5 * (param2 - this._bitmapSource.height);
            }
            else
            {
               this._bitmapSource.width = param1;
               this._bitmapSource.height = param2;
            }
            dispatchEvent(new BriskImageDynaLibEvent(BriskImageDynaLibEvent.SIZE_CHANGED,false,true));
         }
      }
   }
}

