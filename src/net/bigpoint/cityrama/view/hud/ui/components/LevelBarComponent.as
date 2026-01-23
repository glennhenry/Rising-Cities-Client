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
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.FilterUtils;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class LevelBarComponent extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _1685398036leveLabel:LocaLabel;
      
      private var _1194071934levelProgressBar:HUDProgressBarComponent;
      
      private var _1981580913levelStarIcon:BriskImageDynaLib;
      
      private var _758945874progressGroup:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _progress:Number;
      
      private var _progressDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function LevelBarComponent()
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
         bindings = this._LevelBarComponent_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_hud_ui_components_LevelBarComponentWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return LevelBarComponent[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.percentWidth = 100;
         this.mxmlContent = [this._LevelBarComponent_Group2_c()];
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         LevelBarComponent._watcherSetupUtil = param1;
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
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._progressDirty)
         {
            this._progressDirty = false;
            this.levelProgressBar.progress = this._progress;
         }
      }
      
      public function set progress(param1:Number) : void
      {
         if(!RandomUtilities.isEqual(this._progress,param1))
         {
            this._progress = param1;
            this._progressDirty = true;
            invalidateProperties();
         }
      }
      
      public function get pixelBounds() : Rectangle
      {
         return this.levelProgressBar.pixelBounds;
      }
      
      private function _LevelBarComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.verticalCenter = 0;
         _loc1_.mxmlContent = [this._LevelBarComponent_Group3_c(),this._LevelBarComponent_BriskImageDynaLib7_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _LevelBarComponent_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.verticalCenter = 0;
         _loc1_.left = 10;
         _loc1_.mxmlContent = [this._LevelBarComponent_HGroup1_c(),this._LevelBarComponent_Group4_c(),this._LevelBarComponent_Group5_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _LevelBarComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.percentWidth = 100;
         _loc1_.verticalCenter = 0;
         _loc1_.mxmlContent = [this._LevelBarComponent_BriskImageDynaLib1_c(),this._LevelBarComponent_BriskImageDynaLib2_c(),this._LevelBarComponent_BriskImageDynaLib3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _LevelBarComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_main_hud";
         _loc1_.dynaBmpSourceName = "mainhud_outerbar_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _LevelBarComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_main_hud";
         _loc1_.dynaBmpSourceName = "mainhud_outerbar_middle";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _LevelBarComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_main_hud";
         _loc1_.dynaBmpSourceName = "mainhud_outerbar_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _LevelBarComponent_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 5;
         _loc1_.percentWidth = 23;
         _loc1_.verticalCenter = 0;
         _loc1_.mxmlContent = [this._LevelBarComponent_HGroup2_c(),this._LevelBarComponent_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _LevelBarComponent_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._LevelBarComponent_BriskImageDynaLib4_c(),this._LevelBarComponent_BriskImageDynaLib5_c(),this._LevelBarComponent_BriskImageDynaLib6_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _LevelBarComponent_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_main_hud";
         _loc1_.dynaBmpSourceName = "mainhud_innerbar_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _LevelBarComponent_BriskImageDynaLib5_c() : BriskImageDynaLib
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
      
      private function _LevelBarComponent_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_main_hud";
         _loc1_.dynaBmpSourceName = "mainhud_innerbar_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _LevelBarComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.height = 16;
         _loc1_.paddingRight = 0;
         _loc1_.paddingLeft = 22;
         _loc1_.paddingTop = 2;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._LevelBarComponent_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _LevelBarComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "progressBarLabel";
         _loc1_.maxDisplayedLines = 1;
         _loc1_.id = "leveLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.leveLabel = _loc1_;
         BindingManager.executeBindings(this,"leveLabel",this.leveLabel);
         return _loc1_;
      }
      
      private function _LevelBarComponent_Group5_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.right = 5;
         _loc1_.percentWidth = 74;
         _loc1_.verticalCenter = 0;
         _loc1_.mxmlContent = [this._LevelBarComponent_HUDProgressBarComponent1_i()];
         _loc1_.id = "progressGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.progressGroup = _loc1_;
         BindingManager.executeBindings(this,"progressGroup",this.progressGroup);
         return _loc1_;
      }
      
      private function _LevelBarComponent_HUDProgressBarComponent1_i() : HUDProgressBarComponent
      {
         var _loc1_:HUDProgressBarComponent = new HUDProgressBarComponent();
         _loc1_.dividerCount = 4;
         _loc1_.percentWidth = 100;
         _loc1_.id = "levelProgressBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.levelProgressBar = _loc1_;
         BindingManager.executeBindings(this,"levelProgressBar",this.levelProgressBar);
         return _loc1_;
      }
      
      private function _LevelBarComponent_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.left = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.dynaBmpSourceName = "mainhud_icon_level";
         _loc1_.dynaLibName = "gui_main_hud";
         _loc1_.visible = true;
         _loc1_.id = "levelStarIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.levelStarIcon = _loc1_;
         BindingManager.executeBindings(this,"levelStarIcon",this.levelStarIcon);
         return _loc1_;
      }
      
      private function _LevelBarComponent_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Array
         {
            var _loc1_:* = [FilterUtils.createOutlineFilter(0,1.2,false,0.6)];
            return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy ? _loc1_ : [_loc1_];
         },null,"leveLabel.filters");
         result[1] = new Binding(this,function():Array
         {
            var _loc1_:* = HUDProgressBarComponent.LEVEL_COLOURS;
            return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy ? _loc1_ : [_loc1_];
         },null,"levelProgressBar.gradientColours");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get leveLabel() : LocaLabel
      {
         return this._1685398036leveLabel;
      }
      
      public function set leveLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1685398036leveLabel;
         if(_loc2_ !== param1)
         {
            this._1685398036leveLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leveLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get levelProgressBar() : HUDProgressBarComponent
      {
         return this._1194071934levelProgressBar;
      }
      
      public function set levelProgressBar(param1:HUDProgressBarComponent) : void
      {
         var _loc2_:Object = this._1194071934levelProgressBar;
         if(_loc2_ !== param1)
         {
            this._1194071934levelProgressBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelProgressBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get levelStarIcon() : BriskImageDynaLib
      {
         return this._1981580913levelStarIcon;
      }
      
      public function set levelStarIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1981580913levelStarIcon;
         if(_loc2_ !== param1)
         {
            this._1981580913levelStarIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelStarIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get progressGroup() : Group
      {
         return this._758945874progressGroup;
      }
      
      public function set progressGroup(param1:Group) : void
      {
         var _loc2_:Object = this._758945874progressGroup;
         if(_loc2_ !== param1)
         {
            this._758945874progressGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressGroup",_loc2_,param1));
            }
         }
      }
   }
}

