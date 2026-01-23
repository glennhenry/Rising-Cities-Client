package net.bigpoint.cityrama.view.common.components
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
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.schoolBook.ui.components.StatsProgressBarTraitThresholdsVo;
   import net.bigpoint.cityrama.view.schoolBook.ui.events.SchoolBookEvent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   
   use namespace mx_internal;
   
   public class StatsProgressbar extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _1232143642dividerGroup:HGroup;
      
      private var _3226745icon:BriskImageDynaLib;
      
      private var _563971436plusButton:MultistateButton;
      
      private var _1131540166progressbar:HGroup;
      
      private var _2131975515traitHGroup:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:Number = 1;
      
      private var _dataIsDirty:Boolean = false;
      
      private var _creationCompleted:Boolean = false;
      
      private var _type:String;
      
      private var _traitThresholds:Vector.<StatsProgressBarTraitThresholdsVo>;
      
      private var _thresholdsChanged:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function StatsProgressbar()
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
         bindings = this._StatsProgressbar_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_common_components_StatsProgressbarWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return StatsProgressbar[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._StatsProgressbar_HGroup1_c()];
         this.addEventListener("creationComplete",this.___StatsProgressbar_Group1_creationComplete);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      private static function getImageByTraitTier(param1:uint) : BriskDynaVo
      {
         switch(param1)
         {
            case StatsProgressBarTraitThresholdsVo.TIER_BRONZE:
               return new BriskDynaVo("gui_popups_schoolBook","bar_medal_bronze");
            case StatsProgressBarTraitThresholdsVo.TIER_GOLD:
               return new BriskDynaVo("gui_popups_schoolBook","bar_medal_gold");
            case StatsProgressBarTraitThresholdsVo.TIER_SILVER:
               return new BriskDynaVo("gui_popups_schoolBook","bar_medal_silver");
            default:
               return null;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         StatsProgressbar._watcherSetupUtil = param1;
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
      
      public function set enablePlusClick(param1:Boolean) : void
      {
         this.plusButton.visible = param1;
      }
      
      public function set enableDividerGroup(param1:Boolean) : void
      {
         this.dividerGroup.visible = param1;
         this.dividerGroup.includeInLayout = param1;
      }
      
      public function set progress(param1:Number) : void
      {
         if(!RandomUtilities.isEqual(this._data,param1))
         {
            this._data = param1;
            this._dataIsDirty = true;
            invalidateProperties();
         }
      }
      
      public function get progress() : Number
      {
         return this._data;
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataIsDirty)
         {
            this.progressbar.percentWidth = this._data * 100;
            this.progressbar.visible = this.progressbar.percentWidth >= 1;
            this._dataIsDirty = false;
            if(this._thresholdsChanged)
            {
               this.traitHGroup.includeInLayout = this.traitHGroup.visible = this._traitThresholds.length != 0;
               while(this.traitHGroup.numElements > 0)
               {
                  this.traitHGroup.removeElementAt(0);
               }
               for each(var _loc1_ in this._traitThresholds)
               {
                  var _loc2_:BriskImageDynaLib = new BriskImageDynaLib();
                  null.briskDynaVo = getImageByTraitTier(null.tier);
                  null.toolTip = LocaUtils.getString("rcl.tooltips.schoolBook",null.localeId);
                  null.left = this.traitHGroup.width * null.thresholdScalar - 13;
                  this.traitHGroup.addElement(null);
               }
            }
         }
      }
      
      private function handleCreationComplete(param1:Event) : void
      {
         this.toolTip = LocaUtils.getString("rcl.education.skills",getStyle("tooltipName"));
      }
      
      protected function handlePlusClick(param1:MouseEvent) : void
      {
         dispatchEvent(new SchoolBookEvent(SchoolBookEvent.SCHOOL_USE_STAT_POINT,true));
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      public function set traitThresholds(param1:Vector.<StatsProgressBarTraitThresholdsVo>) : void
      {
         this._traitThresholds = param1;
         this._thresholdsChanged = true;
      }
      
      private function _StatsProgressbar_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 5;
         _loc1_.mxmlContent = [this._StatsProgressbar_Group2_c(),this._StatsProgressbar_Group3_c(),this._StatsProgressbar_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StatsProgressbar_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 30;
         _loc1_.mxmlContent = [this._StatsProgressbar_BriskImageDynaLib1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StatsProgressbar_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.id = "icon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.icon = _loc1_;
         BindingManager.executeBindings(this,"icon",this.icon);
         return _loc1_;
      }
      
      private function _StatsProgressbar_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.verticalCenter = 0;
         _loc1_.mxmlContent = [this._StatsProgressbar_HGroup2_c(),this._StatsProgressbar_Group4_c(),this._StatsProgressbar_HGroup4_i(),this._StatsProgressbar_Group10_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StatsProgressbar_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.gap = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.mxmlContent = [this._StatsProgressbar_BriskImageDynaLib2_c(),this._StatsProgressbar_BriskImageDynaLib3_c(),this._StatsProgressbar_BriskImageDynaLib4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StatsProgressbar_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "mini_infrabar_bg_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StatsProgressbar_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.percentWidth = 100;
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "mini_infrabar_bg_middle";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StatsProgressbar_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "mini_infrabar_bg_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StatsProgressbar_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 3;
         _loc1_.right = 3;
         _loc1_.percentWidth = 100;
         _loc1_.verticalCenter = 0;
         _loc1_.mxmlContent = [this._StatsProgressbar_HGroup3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StatsProgressbar_HGroup3_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.gap = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.mxmlContent = [this._StatsProgressbar_BriskImageDynaLib5_c(),this._StatsProgressbar_BriskImageDynaLib6_c(),this._StatsProgressbar_BriskImageDynaLib7_c()];
         _loc1_.id = "progressbar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.progressbar = _loc1_;
         BindingManager.executeBindings(this,"progressbar",this.progressbar);
         return _loc1_;
      }
      
      private function _StatsProgressbar_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "mini_infrabar_orange_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StatsProgressbar_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.percentWidth = 100;
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "mini_infrabar_orange_middle";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StatsProgressbar_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "mini_infrabar_orange_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StatsProgressbar_HGroup4_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.gap = 0;
         _loc1_.verticalAlign = "middle";
         _loc1_.paddingLeft = 3;
         _loc1_.paddingRight = 3;
         _loc1_.left = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.mxmlContent = [this._StatsProgressbar_Group5_c(),this._StatsProgressbar_BriskImageDynaLib8_c(),this._StatsProgressbar_Group6_c(),this._StatsProgressbar_BriskImageDynaLib9_c(),this._StatsProgressbar_Group7_c(),this._StatsProgressbar_BriskImageDynaLib10_c(),this._StatsProgressbar_Group8_c(),this._StatsProgressbar_BriskImageDynaLib11_c(),this._StatsProgressbar_Group9_c()];
         _loc1_.id = "dividerGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.dividerGroup = _loc1_;
         BindingManager.executeBindings(this,"dividerGroup",this.dividerGroup);
         return _loc1_;
      }
      
      private function _StatsProgressbar_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StatsProgressbar_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "mini_infrabar_divider";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StatsProgressbar_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StatsProgressbar_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "mini_infrabar_divider";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StatsProgressbar_Group7_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StatsProgressbar_BriskImageDynaLib10_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "mini_infrabar_divider";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StatsProgressbar_Group8_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StatsProgressbar_BriskImageDynaLib11_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "mini_infrabar_divider";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StatsProgressbar_Group9_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StatsProgressbar_Group10_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 270;
         _loc1_.top = -3;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "traitHGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.traitHGroup = _loc1_;
         BindingManager.executeBindings(this,"traitHGroup",this.traitHGroup);
         return _loc1_;
      }
      
      private function _StatsProgressbar_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.useSmallSkin = true;
         _loc1_.width = 30;
         _loc1_.imageNameLeft = "button_icon_positive";
         _loc1_.libNameLeft = "gui_popups_shopBook";
         _loc1_.visible = false;
         _loc1_.addEventListener("click",this.__plusButton_click);
         _loc1_.id = "plusButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.plusButton = _loc1_;
         BindingManager.executeBindings(this,"plusButton",this.plusButton);
         return _loc1_;
      }
      
      public function __plusButton_click(param1:MouseEvent) : void
      {
         this.handlePlusClick(param1);
      }
      
      public function ___StatsProgressbar_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
      }
      
      private function _StatsProgressbar_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = getStyle("dynaLibName");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"icon.dynaLibName");
         result[1] = new Binding(this,function():String
         {
            var _loc1_:* = getStyle("imageName");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"icon.dynaBmpSourceName");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get dividerGroup() : HGroup
      {
         return this._1232143642dividerGroup;
      }
      
      public function set dividerGroup(param1:HGroup) : void
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
      public function get icon() : BriskImageDynaLib
      {
         return this._3226745icon;
      }
      
      public function set icon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._3226745icon;
         if(_loc2_ !== param1)
         {
            this._3226745icon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get plusButton() : MultistateButton
      {
         return this._563971436plusButton;
      }
      
      public function set plusButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._563971436plusButton;
         if(_loc2_ !== param1)
         {
            this._563971436plusButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"plusButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get progressbar() : HGroup
      {
         return this._1131540166progressbar;
      }
      
      public function set progressbar(param1:HGroup) : void
      {
         var _loc2_:Object = this._1131540166progressbar;
         if(_loc2_ !== param1)
         {
            this._1131540166progressbar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressbar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get traitHGroup() : Group
      {
         return this._2131975515traitHGroup;
      }
      
      public function set traitHGroup(param1:Group) : void
      {
         var _loc2_:Object = this._2131975515traitHGroup;
         if(_loc2_ !== param1)
         {
            this._2131975515traitHGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"traitHGroup",_loc2_,param1));
            }
         }
      }
   }
}

