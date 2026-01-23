package net.bigpoint.cityrama.view.emergencyTV.components
{
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.cityrama.model.emergencyTV.vo.TVShowVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.events.BriskMCDynaLibEvent;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadServiceDynamic;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   
   public class NewsComponent extends Group
   {
      
      private var _3141bg:BriskMCDynaLib;
      
      private var _427039519reporter:BriskMCDynaLib;
      
      private var _125094546screen_on:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _newsData:TVShowVo;
      
      private var _dataDirty:Boolean;
      
      private var _reporterLoaded:Boolean;
      
      private var _bgLoaded:Boolean;
      
      private var _professionalLoaded:Boolean;
      
      public function NewsComponent()
      {
         super();
         mx_internal::_document = this;
         this.height = 168;
         this.width = 257;
         this.mxmlContent = [this._NewsComponent_Group2_c()];
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private function loadLibs(param1:Array) : void
      {
         var _loc2_:FileRuntimeLoadServiceDynamic = FileRuntimeLoadServiceDynamic.getInstance();
         _loc2_.checkSWFArrayLoaded(param1,param1[0].toString());
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataDirty)
         {
            this._dataDirty = false;
            if(this._newsData)
            {
               this.loadLibs([this._newsData.backGroundlibName,this._newsData.backGroundlibName]);
               this.loadLibs([this._newsData.reporterLib,this._newsData.reporterLib]);
               if(!this._reporterLoaded)
               {
                  this.reporter.dynaSWFName = this._newsData.reporterSwfName;
                  this.reporter.dynaLibName = this._newsData.reporterLib;
                  this.reporter.dynaMCSourceName = this._newsData.reporterMC;
                  this.reporter.addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.onPersonLoadComplete);
               }
               else if(Boolean(this.reporter.bitmapClip) && Boolean(this.visible))
               {
                  this.reporter.bitmapClip.stop();
                  this.reporter.bitmapClip.fps = this._newsData.reporterFrameRate;
                  this.reporter.bitmapClip.playbackMode = BitmapClip.PLAYBACK_YOYO;
                  this.reporter.bitmapClip.play();
               }
               if(!this._bgLoaded)
               {
                  this.bg.dynaSWFName = this._newsData.swfName;
                  this.bg.dynaLibName = this._newsData.backGroundlibName;
                  this.bg.dynaMCSourceName = this._newsData.backGroundMC;
                  this.bg.addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.onBGLoadComplete);
               }
               else if(Boolean(this.bg.bitmapClip) && Boolean(this.visible))
               {
                  this.bg.bitmapClip.stop();
                  this.bg.bitmapClip.fps = this._newsData.backGroundFrameRate;
                  this.bg.bitmapClip.playbackMode = BitmapClip.PLAYBACK_YOYO;
               }
            }
         }
      }
      
      private function onPersonLoadComplete(param1:Event) : void
      {
         this._reporterLoaded = true;
         this.reporter.removeEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.onPersonLoadComplete);
         this.reporter.bitmapClip.stop();
         this.reporter.bitmapClip.fps = this._newsData.reporterFrameRate;
         this.reporter.bitmapClip.playbackMode = BitmapClip.PLAYBACK_YOYO;
         this.reporter.bitmapClip.play();
         this.checkAllLoaded();
      }
      
      private function checkAllLoaded() : void
      {
         if(this._reporterLoaded && this._bgLoaded)
         {
            this.reporter.visible = this.bg.visible = this.screen_on.visible = true;
         }
      }
      
      private function onBGLoadComplete(param1:Event) : void
      {
         this._bgLoaded = true;
         this.bg.removeEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.onPersonLoadComplete);
         this.bg.bitmapClip.stop();
         this.bg.bitmapClip.fps = this._newsData.backGroundFrameRate;
         this.bg.bitmapClip.playbackMode = BitmapClip.PLAYBACK_YOYO;
         this.checkAllLoaded();
      }
      
      public function set newsData(param1:TVShowVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._newsData))
         {
            this._dataDirty = true;
            if(!RandomUtilities.isEqual(param1.backGroundMC,this.bg.dynaMCSourceName))
            {
               this.bg.dynaLibName = this.bg.dynaMCSourceName = this.bg.dynaSWFName = null;
               this._bgLoaded = false;
            }
            if(!RandomUtilities.isEqual(param1.reporterMC,this.reporter.dynaMCSourceName))
            {
               this.reporter.dynaLibName = this.reporter.dynaMCSourceName = this.reporter.dynaSWFName = null;
               this._reporterLoaded = false;
            }
            this._newsData = param1;
            invalidateProperties();
         }
      }
      
      public function stopClips(param1:Boolean = true) : void
      {
         if(Boolean(this.bg.bitmapClip) && Boolean(this.reporter.bitmapClip))
         {
            if(param1)
            {
               this.bg.bitmapClip.stop();
               this.reporter.bitmapClip.stop();
            }
            else
            {
               this.bg.bitmapClip.stop();
               this.bg.bitmapClip.fps = this._newsData.backGroundFrameRate;
               this.bg.bitmapClip.playbackMode = BitmapClip.PLAYBACK_YOYO;
               this.reporter.bitmapClip.stop();
               this.reporter.bitmapClip.fps = this._newsData.reporterFrameRate;
               this.reporter.bitmapClip.playbackMode = BitmapClip.PLAYBACK_YOYO;
               this.reporter.bitmapClip.play();
            }
         }
      }
      
      private function _NewsComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._NewsComponent_BriskImageDynaLib1_c(),this._NewsComponent_BriskImageDynaLib2_c(),this._NewsComponent_BriskMCDynaLib1_i(),this._NewsComponent_Group3_c(),this._NewsComponent_BriskImageDynaLib3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NewsComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_emergency";
         _loc1_.dynaBmpSourceName = "news_frame_bottom";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NewsComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_emergency";
         _loc1_.dynaBmpSourceName = "news_screen";
         _loc1_.left = 8;
         _loc1_.bottom = 20;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NewsComponent_BriskMCDynaLib1_i() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.left = 8;
         _loc1_.visible = false;
         _loc1_.bottom = 20;
         _loc1_.createBitmapClip = true;
         _loc1_.id = "bg";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bg = _loc1_;
         BindingManager.executeBindings(this,"bg",this.bg);
         return _loc1_;
      }
      
      private function _NewsComponent_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.bottom = 20;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._NewsComponent_BriskMCDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NewsComponent_BriskMCDynaLib2_i() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.left = 8;
         _loc1_.visible = false;
         _loc1_.createBitmapClip = true;
         _loc1_.id = "reporter";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.reporter = _loc1_;
         BindingManager.executeBindings(this,"reporter",this.reporter);
         return _loc1_;
      }
      
      private function _NewsComponent_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_emergency";
         _loc1_.dynaBmpSourceName = "news_screen_lines";
         _loc1_.left = 8;
         _loc1_.visible = false;
         _loc1_.bottom = 20;
         _loc1_.id = "screen_on";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.screen_on = _loc1_;
         BindingManager.executeBindings(this,"screen_on",this.screen_on);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get bg() : BriskMCDynaLib
      {
         return this._3141bg;
      }
      
      public function set bg(param1:BriskMCDynaLib) : void
      {
         var _loc2_:Object = this._3141bg;
         if(_loc2_ !== param1)
         {
            this._3141bg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get reporter() : BriskMCDynaLib
      {
         return this._427039519reporter;
      }
      
      public function set reporter(param1:BriskMCDynaLib) : void
      {
         var _loc2_:Object = this._427039519reporter;
         if(_loc2_ !== param1)
         {
            this._427039519reporter = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reporter",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get screen_on() : BriskImageDynaLib
      {
         return this._125094546screen_on;
      }
      
      public function set screen_on(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._125094546screen_on;
         if(_loc2_ !== param1)
         {
            this._125094546screen_on = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"screen_on",_loc2_,param1));
            }
         }
      }
   }
}

