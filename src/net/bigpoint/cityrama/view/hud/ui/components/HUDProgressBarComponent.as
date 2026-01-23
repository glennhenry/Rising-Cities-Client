package net.bigpoint.cityrama.view.hud.ui.components
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
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.graphics.GradientEntry;
   import mx.graphics.LinearGradient;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class HUDProgressBarComponent extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public static const ENERGY_COLOURS:Array = [10218751,51699,1103359];
      
      public static const HAPPINESS_COLOURS:Array = [14152339,9492739,10478869];
      
      public static const LEVEL_COLOURS:Array = [16638862,16626434,16760328];
      
      public var _HUDProgressBarComponent_HGroup2:HGroup;
      
      private var _1766862153bottomGradientEntry:GradientEntry;
      
      private var _1232143642dividerGroup:Group;
      
      private var _1856344179middleGradientEntry:GradientEntry;
      
      private var _717533617progressRect:Rect;
      
      private var _1318318899staticBG:HGroup;
      
      private var _1193926707topGradientEntry:GradientEntry;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public var revertProgress:Boolean;
      
      private var _progress:Number;
      
      private var _dividerAsset:BriskDynaVo;
      
      private var _dividerCount:uint = 0;
      
      private var _gradientColours:Array;
      
      private var _dividerBuilt:Boolean;
      
      private var _progressDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function HUDProgressBarComponent()
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._HUDProgressBarComponent_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_hud_ui_components_HUDProgressBarComponentWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return HUDProgressBarComponent[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.percentWidth = 100;
         this.minWidth = 0;
         this.mxmlContent = [this._HUDProgressBarComponent_HGroup1_i(),this._HUDProgressBarComponent_Group2_c(),this._HUDProgressBarComponent_HGroup2_i()];
         this.addEventListener("creationComplete",this.___HUDProgressBarComponent_Group1_creationComplete);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         HUDProgressBarComponent._watcherSetupUtil = param1;
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
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
         if(!this._gradientColours)
         {
            this._gradientColours = [8421504,10526880,2105376];
         }
         this.setGradientColours();
         this.dividerGroup.percentWidth = 100;
      }
      
      public function get progress() : Number
      {
         return this._progress;
      }
      
      public function set progress(param1:Number) : void
      {
         if(param1 != this.progress)
         {
            this._progressDirty = true;
            this._progress = param1;
            if(this.revertProgress)
            {
               this._progress = 1 - this._progress;
            }
            invalidateProperties();
         }
      }
      
      public function set dividerCount(param1:uint) : void
      {
         this._dividerCount = param1;
         invalidateProperties();
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(!this._dividerBuilt && this._dividerCount > 0)
         {
            this.setDivider();
         }
         if(this._progressDirty)
         {
            this._progressDirty = false;
            this.progressRect.percentWidth = this._progress * 100;
         }
      }
      
      public function get pixelBounds() : Rectangle
      {
         return this.progressRect.transform.pixelBounds;
      }
      
      private function setDivider() : void
      {
         var _loc1_:BriskImageDynaLib = null;
         var _loc2_:int = 0;
         if(this.dividerGroup.width > 0)
         {
            this.dividerGroup.removeAllElements();
            if(!this._dividerAsset)
            {
               this._dividerAsset = new BriskDynaVo("gui_main_hud","mainhud_divider");
            }
            _loc2_ = 1;
            while(_loc2_ <= this._dividerCount)
            {
               _loc1_ = new BriskImageDynaLib();
               _loc1_.briskDynaVo = this._dividerAsset;
               this.dividerGroup.addElement(_loc1_);
               _loc1_.left = _loc2_ * (this.dividerGroup.width / (this._dividerCount + 1));
               _loc2_++;
            }
            this._dividerBuilt = true;
         }
         else
         {
            this.dividerGroup.addEventListener(FlexEvent.CREATION_COMPLETE,this.onDividerGroupCreated);
         }
      }
      
      private function onDividerGroupCreated(param1:FlexEvent) : void
      {
         this.dividerGroup.removeEventListener(FlexEvent.CREATION_COMPLETE,this.onDividerGroupCreated);
         this.setDivider();
      }
      
      public function set gradientColours(param1:Array) : void
      {
         if(param1 != this._gradientColours)
         {
            this._gradientColours = param1;
            this.setGradientColours();
         }
      }
      
      private function setGradientColours() : void
      {
         if(this._gradientColours.length > 2)
         {
            this.topGradientEntry.color = this._gradientColours[0];
            this.middleGradientEntry.color = this._gradientColours[1];
            this.bottomGradientEntry.color = this._gradientColours[2];
         }
      }
      
      private function _HUDProgressBarComponent_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._HUDProgressBarComponent_BriskImageDynaLib1_c(),this._HUDProgressBarComponent_BriskImageDynaLib2_c(),this._HUDProgressBarComponent_BriskImageDynaLib3_c()];
         _loc1_.id = "staticBG";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.staticBG = _loc1_;
         BindingManager.executeBindings(this,"staticBG",this.staticBG);
         return _loc1_;
      }
      
      private function _HUDProgressBarComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_main_hud";
         _loc1_.dynaBmpSourceName = "mainhud_innerbar_left";
         _loc1_.width = 5;
         _loc1_.height = 16;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _HUDProgressBarComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_main_hud";
         _loc1_.dynaBmpSourceName = "mainhud_innerbar_middle";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _HUDProgressBarComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_main_hud";
         _loc1_.dynaBmpSourceName = "mainhud_innerbar_right";
         _loc1_.width = 5;
         _loc1_.height = 16;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _HUDProgressBarComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 1;
         _loc1_.top = 1;
         _loc1_.right = 1;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._HUDProgressBarComponent_Rect1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _HUDProgressBarComponent_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.percentWidth = 100;
         _loc1_.height = 14;
         _loc1_.bottomLeftRadiusX = 3;
         _loc1_.bottomLeftRadiusY = 3;
         _loc1_.bottomRightRadiusX = 1;
         _loc1_.bottomRightRadiusY = 3;
         _loc1_.topLeftRadiusX = 1;
         _loc1_.topLeftRadiusY = 3;
         _loc1_.topRightRadiusX = 1;
         _loc1_.topRightRadiusY = 3;
         _loc1_.fill = this._HUDProgressBarComponent_LinearGradient1_c();
         _loc1_.initialized(this,"progressRect");
         this.progressRect = _loc1_;
         BindingManager.executeBindings(this,"progressRect",this.progressRect);
         return _loc1_;
      }
      
      private function _HUDProgressBarComponent_LinearGradient1_c() : LinearGradient
      {
         var _loc1_:LinearGradient = new LinearGradient();
         _loc1_.rotation = 90;
         _loc1_.entries = [this._HUDProgressBarComponent_GradientEntry1_i(),this._HUDProgressBarComponent_GradientEntry2_i(),this._HUDProgressBarComponent_GradientEntry3_i()];
         return _loc1_;
      }
      
      private function _HUDProgressBarComponent_GradientEntry1_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 8421504;
         _loc1_.ratio = 0.25;
         this.topGradientEntry = _loc1_;
         BindingManager.executeBindings(this,"topGradientEntry",this.topGradientEntry);
         return _loc1_;
      }
      
      private function _HUDProgressBarComponent_GradientEntry2_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 10526880;
         this.middleGradientEntry = _loc1_;
         BindingManager.executeBindings(this,"middleGradientEntry",this.middleGradientEntry);
         return _loc1_;
      }
      
      private function _HUDProgressBarComponent_GradientEntry3_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 2105376;
         this.bottomGradientEntry = _loc1_;
         BindingManager.executeBindings(this,"bottomGradientEntry",this.bottomGradientEntry);
         return _loc1_;
      }
      
      private function _HUDProgressBarComponent_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._HUDProgressBarComponent_Group3_i()];
         _loc1_.id = "_HUDProgressBarComponent_HGroup2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._HUDProgressBarComponent_HGroup2 = _loc1_;
         BindingManager.executeBindings(this,"_HUDProgressBarComponent_HGroup2",this._HUDProgressBarComponent_HGroup2);
         return _loc1_;
      }
      
      private function _HUDProgressBarComponent_Group3_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.id = "dividerGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.dividerGroup = _loc1_;
         BindingManager.executeBindings(this,"dividerGroup",this.dividerGroup);
         return _loc1_;
      }
      
      public function ___HUDProgressBarComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
      }
      
      private function _HUDProgressBarComponent_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Number
         {
            return this.staticBG.width;
         },null,"_HUDProgressBarComponent_HGroup2.width");
         result[1] = new Binding(this,function():Number
         {
            return this.staticBG.width - 3;
         },null,"dividerGroup.width");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get bottomGradientEntry() : GradientEntry
      {
         return this._1766862153bottomGradientEntry;
      }
      
      public function set bottomGradientEntry(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._1766862153bottomGradientEntry;
         if(_loc2_ !== param1)
         {
            this._1766862153bottomGradientEntry = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomGradientEntry",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dividerGroup() : Group
      {
         return this._1232143642dividerGroup;
      }
      
      public function set dividerGroup(param1:Group) : void
      {
         var _loc2_:Object = this._1232143642dividerGroup;
         if(_loc2_ !== param1)
         {
            this._1232143642dividerGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dividerGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get middleGradientEntry() : GradientEntry
      {
         return this._1856344179middleGradientEntry;
      }
      
      public function set middleGradientEntry(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._1856344179middleGradientEntry;
         if(_loc2_ !== param1)
         {
            this._1856344179middleGradientEntry = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"middleGradientEntry",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get progressRect() : Rect
      {
         return this._717533617progressRect;
      }
      
      public function set progressRect(param1:Rect) : void
      {
         var _loc2_:Object = this._717533617progressRect;
         if(_loc2_ !== param1)
         {
            this._717533617progressRect = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressRect",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get staticBG() : HGroup
      {
         return this._1318318899staticBG;
      }
      
      public function set staticBG(param1:HGroup) : void
      {
         var _loc2_:Object = this._1318318899staticBG;
         if(_loc2_ !== param1)
         {
            this._1318318899staticBG = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"staticBG",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get topGradientEntry() : GradientEntry
      {
         return this._1193926707topGradientEntry;
      }
      
      public function set topGradientEntry(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._1193926707topGradientEntry;
         if(_loc2_ !== param1)
         {
            this._1193926707topGradientEntry = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topGradientEntry",_loc2_,param1));
            }
         }
      }
   }
}

