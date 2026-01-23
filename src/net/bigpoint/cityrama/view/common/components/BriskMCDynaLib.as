package net.bigpoint.cityrama.view.common.components
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.system.ApplicationDomain;
   import mx.core.UIComponent;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.cityrama.view.common.events.BriskMCDynaLibEvent;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadServiceDynamic;
   
   public class BriskMCDynaLib extends UIComponent
   {
      
      private var _preloadingDisplayDummy:DisplayObject = null;
      
      private var _displayDummyChanged:Boolean = false;
      
      private var _preloadDoneNotification:String;
      
      private var _movieClip:MovieClip;
      
      private var _bitmapClip:BitmapClip;
      
      private var _bitmapClipFramerate:int = 25;
      
      private var _dynaLibName:String;
      
      private var _dynaMCSourceName:String;
      
      private var _dynaSWFName:String;
      
      private var _dynalibChaged:Boolean;
      
      private var _dynaBMPchanged:Boolean;
      
      private var _createBitmapClip:Boolean;
      
      public function BriskMCDynaLib()
      {
         super();
      }
      
      private function createDummy() : void
      {
         this._displayDummyChanged = true;
         if(this._preloadingDisplayDummy == null)
         {
            this._preloadingDisplayDummy = new ImagePreloaderSmall();
         }
         addChild(this._preloadingDisplayDummy);
         invalidateSize();
      }
      
      public function onLoadComplete(param1:Event) : void
      {
         var _loc2_:FileRuntimeLoadServiceDynamic = FileRuntimeLoadServiceDynamic.getInstance();
         var _loc3_:Class = ApplicationDomain.currentDomain.getDefinition(this.dynaMCSourceName) as Class;
         this._movieClip = new _loc3_();
         this._movieClip.name = "movieClip";
         if(this._preloadingDisplayDummy)
         {
            if(this._preloadingDisplayDummy.parent)
            {
               removeChild(this._preloadingDisplayDummy);
            }
            this._preloadingDisplayDummy = null;
            _loc2_.removeEventListener(this._preloadDoneNotification,this.onLoadComplete);
         }
         while(this.numChildren)
         {
            removeChildAt(0);
         }
         if(!this._createBitmapClip)
         {
            addChild(this._movieClip);
         }
         else
         {
            this._bitmapClip = new BitmapClip(this._movieClip,_loc3_.toString(),this._bitmapClipFramerate);
            addChild(this._bitmapClip);
         }
         invalidateSize();
         dispatchEvent(new BriskMCDynaLibEvent(BriskMCDynaLibEvent.LOAD_COMPLETE));
      }
      
      public function forceExternalCreation() : void
      {
         this.commitProperties();
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:FileRuntimeLoadServiceDynamic = null;
         var _loc2_:Boolean = false;
         super.commitProperties();
         if(this._dynaMCSourceName == null || this._dynaLibName == null)
         {
            return;
         }
         if(this._dynaBMPchanged || this._dynalibChaged)
         {
            this._dynaBMPchanged = false;
            this._dynalibChaged = false;
            this._preloadDoneNotification = this.dynaLibName + this.dynaMCSourceName + "_complete";
            _loc1_ = FileRuntimeLoadServiceDynamic.getInstance();
            if(this._dynaSWFName != null)
            {
               _loc2_ = _loc1_.checkSWFArrayLoaded([this._dynaSWFName],this._preloadDoneNotification);
            }
            else
            {
               _loc2_ = _loc1_.checkSWFArrayLoaded([this._dynaLibName],this._preloadDoneNotification);
            }
            if(_loc2_)
            {
               _loc1_.addEventListener(this._preloadDoneNotification,this.onLoadComplete);
               this.createDummy();
            }
            else
            {
               this.onLoadComplete(null);
            }
         }
         if(this._displayDummyChanged)
         {
            this._displayDummyChanged = false;
            invalidateSize();
         }
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
         this._movieClip = null;
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
      
      public function get movieClip() : MovieClip
      {
         return this._movieClip;
      }
      
      public function get dynaLibName() : String
      {
         return this._dynaLibName;
      }
      
      public function set dynaLibName(param1:String) : void
      {
         if(param1 != this._dynaLibName)
         {
            this._dynalibChaged = true;
            this._dynaLibName = param1;
            invalidateProperties();
         }
      }
      
      public function get dynaMCSourceName() : String
      {
         return this._dynaMCSourceName;
      }
      
      public function set dynaMCSourceName(param1:String) : void
      {
         if(param1 != this._dynaMCSourceName)
         {
            this._dynaBMPchanged = true;
            this._dynaMCSourceName = param1;
            this._movieClip = null;
            invalidateProperties();
         }
      }
      
      override protected function measure() : void
      {
         super.measure();
         if(this._preloadingDisplayDummy)
         {
            if(this.measuredWidth == 0)
            {
               this.measuredWidth = this._preloadingDisplayDummy.width;
            }
            if(this.measuredHeight == 0)
            {
               this.measuredHeight = this._preloadingDisplayDummy.height;
            }
            invalidateDisplayList();
         }
         if(this._movieClip)
         {
            if(this.measuredWidth == 0)
            {
               this.measuredWidth = this._movieClip.width;
            }
            if(this.measuredHeight == 0)
            {
               this.measuredHeight = this._movieClip.height;
            }
         }
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         super.updateDisplayList(param1,param2);
         if(this._preloadingDisplayDummy)
         {
            var _temp_1:* = this._preloadingDisplayDummy;
            this._preloadingDisplayDummy.scaleY = 1;
            _temp_1.scaleX = 1;
            this._preloadingDisplayDummy.x = 0.5 * (param1 - this._preloadingDisplayDummy.width);
            this._preloadingDisplayDummy.y = 0.5 * (param2 - this._preloadingDisplayDummy.height);
         }
         if(this._movieClip)
         {
            this._movieClip.width = param1;
            this._movieClip.height = param2;
         }
         if(this._bitmapClip)
         {
            this._bitmapClip.width = param1;
            this._bitmapClip.height = param2;
         }
      }
      
      public function get bitmapClip() : BitmapClip
      {
         return this._bitmapClip;
      }
      
      public function set createBitmapClip(param1:Boolean) : void
      {
         this._createBitmapClip = param1;
      }
      
      public function get dynaSWFName() : String
      {
         return this._dynaSWFName;
      }
      
      public function set dynaSWFName(param1:String) : void
      {
         this._dynaSWFName = param1;
      }
      
      public function set bitmapClipFramerate(param1:int) : void
      {
         if(param1 != this._bitmapClipFramerate)
         {
            this._dynalibChaged = true;
            this._bitmapClipFramerate = param1;
            invalidateProperties();
         }
      }
   }
}

