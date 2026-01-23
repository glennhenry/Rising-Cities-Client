package net.bigpoint.cityrama.view.fieldInfoLayer.ui.components
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
   import mx.core.IStateClient2;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.FieldInfoLayerExpansionVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class ExpansionComponent extends Group implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _ExpansionComponent_BriskImageDynaLib4:BriskImageDynaLib;
      
      public var _ExpansionComponent_BriskImageDynaLib5:BriskImageDynaLib;
      
      public var _ExpansionComponent_BriskImageDynaLib6:BriskImageDynaLib;
      
      private var _1585012474_ExpansionComponent_VGroup1:VGroup;
      
      private var _1585012472_ExpansionComponent_VGroup3:VGroup;
      
      private var _1398066261ccPriceLabel:LocaLabel;
      
      private var _1229032395ddPriceLabel:LocaLabel;
      
      private var _1094425547ddPriceLabelDiscounted:LocaLabel;
      
      private var _332136569lockedFlavour:LocaLabel;
      
      private var _1229408559orLabel:LocaLabel;
      
      private var _123184520saleGroup:VGroup;
      
      private var _119086355saleLabel:LocaLabel;
      
      private var _1244086221saleStrikeThroughGroup:HGroup;
      
      private var _1561827167saleTimerComponent:TimerBarComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:FieldInfoLayerExpansionVo;
      
      private var _dataIsDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ExpansionComponent()
      {
         var watchers:Array;
         var i:uint;
         var bindings:Array = null;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._ExpansionComponent_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_fieldInfoLayer_ui_components_ExpansionComponentWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return ExpansionComponent[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._ExpansionComponent_VGroup1_i(),this._ExpansionComponent_VGroup3_i()];
         this.currentState = "normal";
         states = [new State({
            "name":"normal",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_ExpansionComponent_VGroup1",
               "name":"visible",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"_ExpansionComponent_VGroup1",
               "name":"includeInLayout",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"_ExpansionComponent_VGroup3",
               "name":"visible",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"_ExpansionComponent_VGroup3",
               "name":"includeInLayout",
               "value":false
            })]
         }),new State({
            "name":"disabled",
            "overrides":[]
         }),new State({
            "name":"locked",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_ExpansionComponent_VGroup1",
               "name":"visible",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"_ExpansionComponent_VGroup1",
               "name":"includeInLayout",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"_ExpansionComponent_VGroup3",
               "name":"visible",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"_ExpansionComponent_VGroup3",
               "name":"includeInLayout",
               "value":true
            })]
         })];
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         ExpansionComponent._watcherSetupUtil = param1;
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
      
      public function set data(param1:FieldInfoLayerExpansionVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._dataIsDirty = true;
            this._data = param1;
            if(this._data != null && this._data.isLocked)
            {
               this.currentState = "locked";
            }
            else
            {
               this.currentState = "normal";
            }
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            this.ccPriceLabel.text = this._data.virtualCurrencyCost;
            this.ddPriceLabel.text = this._data.realCurrencyCost;
            this.saleGroup.visible = this.saleGroup.includeInLayout = this._data.onSale;
            this.saleStrikeThroughGroup.visible = this.saleStrikeThroughGroup.includeInLayout = this._data.onSale;
            if(this._data.onSale)
            {
               var _loc1_:TimerBarComponentVo = new TimerBarComponentVo();
               null.startTime = 0;
               null.currentTime = this._data.saleTimeTotal - this._data.saleTimeLeft;
               null.cycleLength = this._data.saleTimeTotal;
               null.targetTime = this._data.saleTimeTotal;
               null.waitingForStart = false;
               this.ddPriceLabel.text = " " + this.ddPriceLabel.text + " ";
               this.saleTimerComponent.data = null;
            }
            this.ddPriceLabelDiscounted.text = this._data.discountedRealCurrencyCost;
            this.orLabel.text = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.expansion.or");
            this.saleLabel.text = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.expansion.sale");
            this.lockedFlavour.text = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.expansion.levelLock",[this._data.unlockLevel]);
         }
      }
      
      private function _ExpansionComponent_VGroup1_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.verticalAlign = "top";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.gap = 10;
         _loc1_.paddingTop = 10;
         _loc1_.mxmlContent = [this._ExpansionComponent_VGroup2_i(),this._ExpansionComponent_HGroup3_c(),this._ExpansionComponent_HGroup4_c(),this._ExpansionComponent_HGroup5_c()];
         _loc1_.id = "_ExpansionComponent_VGroup1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ExpansionComponent_VGroup1 = _loc1_;
         BindingManager.executeBindings(this,"_ExpansionComponent_VGroup1",this._ExpansionComponent_VGroup1);
         return _loc1_;
      }
      
      private function _ExpansionComponent_VGroup2_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.mxmlContent = [this._ExpansionComponent_HGroup1_c(),this._ExpansionComponent_TimerBarComponent1_i(),this._ExpansionComponent_HGroup2_c()];
         _loc1_.id = "saleGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.saleGroup = _loc1_;
         BindingManager.executeBindings(this,"saleGroup",this.saleGroup);
         return _loc1_;
      }
      
      private function _ExpansionComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.width = 157;
         _loc1_.mxmlContent = [this._ExpansionComponent_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ExpansionComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.styleName = "expansionBlue";
         _loc1_.id = "saleLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.saleLabel = _loc1_;
         BindingManager.executeBindings(this,"saleLabel",this.saleLabel);
         return _loc1_;
      }
      
      private function _ExpansionComponent_TimerBarComponent1_i() : TimerBarComponent
      {
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         _loc1_.showBoostButton = false;
         _loc1_.width = 181;
         _loc1_.id = "saleTimerComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.saleTimerComponent = _loc1_;
         BindingManager.executeBindings(this,"saleTimerComponent",this.saleTimerComponent);
         return _loc1_;
      }
      
      private function _ExpansionComponent_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.height = 4;
         _loc1_.mxmlContent = [this._ExpansionComponent_BriskImageDynaLib1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ExpansionComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "infolayer_divider_new";
         _loc1_.width = 157;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ExpansionComponent_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 10;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.width = 157;
         _loc1_.mxmlContent = [this._ExpansionComponent_BriskImageDynaLib2_c(),this._ExpansionComponent_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ExpansionComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_resources_icons";
         _loc1_.dynaBmpSourceName = "layer_cc_icon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ExpansionComponent_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "expansionGrey";
         _loc1_.id = "ccPriceLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.ccPriceLabel = _loc1_;
         BindingManager.executeBindings(this,"ccPriceLabel",this.ccPriceLabel);
         return _loc1_;
      }
      
      private function _ExpansionComponent_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.width = 157;
         _loc1_.mxmlContent = [this._ExpansionComponent_LocaLabel3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ExpansionComponent_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "expansionBlue";
         _loc1_.id = "orLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.orLabel = _loc1_;
         BindingManager.executeBindings(this,"orLabel",this.orLabel);
         return _loc1_;
      }
      
      private function _ExpansionComponent_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 10;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.width = 157;
         _loc1_.mxmlContent = [this._ExpansionComponent_Group2_c(),this._ExpansionComponent_BriskImageDynaLib3_c(),this._ExpansionComponent_Group3_c(),this._ExpansionComponent_LocaLabel5_i(),this._ExpansionComponent_Group4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ExpansionComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 50;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ExpansionComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "infolayer_mm";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ExpansionComponent_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._ExpansionComponent_LocaLabel4_i(),this._ExpansionComponent_HGroup6_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ExpansionComponent_LocaLabel4_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "expansionGrey";
         _loc1_.id = "ddPriceLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.ddPriceLabel = _loc1_;
         BindingManager.executeBindings(this,"ddPriceLabel",this.ddPriceLabel);
         return _loc1_;
      }
      
      private function _ExpansionComponent_HGroup6_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 80;
         _loc1_.paddingTop = 2;
         _loc1_.percentHeight = 100;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._ExpansionComponent_BriskImageDynaLib4_i(),this._ExpansionComponent_BriskImageDynaLib5_i(),this._ExpansionComponent_BriskImageDynaLib6_i()];
         _loc1_.id = "saleStrikeThroughGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.saleStrikeThroughGroup = _loc1_;
         BindingManager.executeBindings(this,"saleStrikeThroughGroup",this.saleStrikeThroughGroup);
         return _loc1_;
      }
      
      private function _ExpansionComponent_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.height = 5;
         _loc1_.width = 5;
         _loc1_.id = "_ExpansionComponent_BriskImageDynaLib4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ExpansionComponent_BriskImageDynaLib4 = _loc1_;
         BindingManager.executeBindings(this,"_ExpansionComponent_BriskImageDynaLib4",this._ExpansionComponent_BriskImageDynaLib4);
         return _loc1_;
      }
      
      private function _ExpansionComponent_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.height = 5;
         _loc1_.percentWidth = 100;
         _loc1_.id = "_ExpansionComponent_BriskImageDynaLib5";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ExpansionComponent_BriskImageDynaLib5 = _loc1_;
         BindingManager.executeBindings(this,"_ExpansionComponent_BriskImageDynaLib5",this._ExpansionComponent_BriskImageDynaLib5);
         return _loc1_;
      }
      
      private function _ExpansionComponent_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.height = 5;
         _loc1_.width = 5;
         _loc1_.id = "_ExpansionComponent_BriskImageDynaLib6";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ExpansionComponent_BriskImageDynaLib6 = _loc1_;
         BindingManager.executeBindings(this,"_ExpansionComponent_BriskImageDynaLib6",this._ExpansionComponent_BriskImageDynaLib6);
         return _loc1_;
      }
      
      private function _ExpansionComponent_LocaLabel5_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "expansionGrey";
         _loc1_.id = "ddPriceLabelDiscounted";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.ddPriceLabelDiscounted = _loc1_;
         BindingManager.executeBindings(this,"ddPriceLabelDiscounted",this.ddPriceLabelDiscounted);
         return _loc1_;
      }
      
      private function _ExpansionComponent_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 50;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ExpansionComponent_VGroup3_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.gap = 10;
         _loc1_.paddingTop = 10;
         _loc1_.mxmlContent = [this._ExpansionComponent_LocaLabel6_i()];
         _loc1_.id = "_ExpansionComponent_VGroup3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ExpansionComponent_VGroup3 = _loc1_;
         BindingManager.executeBindings(this,"_ExpansionComponent_VGroup3",this._ExpansionComponent_VGroup3);
         return _loc1_;
      }
      
      private function _ExpansionComponent_LocaLabel6_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 3;
         _loc1_.maxWidth = 200;
         _loc1_.styleName = "infoLabel";
         _loc1_.id = "lockedFlavour";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.lockedFlavour = _loc1_;
         BindingManager.executeBindings(this,"lockedFlavour",this.lockedFlavour);
         return _loc1_;
      }
      
      private function _ExpansionComponent_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():BriskDynaVo
         {
            return new BriskDynaVo("gui_infield_gui_infolayer","infolayer_sale_fontline_left");
         },null,"_ExpansionComponent_BriskImageDynaLib4.briskDynaVo");
         result[1] = new Binding(this,function():BriskDynaVo
         {
            return new BriskDynaVo("gui_infield_gui_infolayer","infolayer_sale_fontline_middle");
         },null,"_ExpansionComponent_BriskImageDynaLib5.briskDynaVo");
         result[2] = new Binding(this,function():BriskDynaVo
         {
            return new BriskDynaVo("gui_infield_gui_infolayer","infolayer_sale_fontline_right");
         },null,"_ExpansionComponent_BriskImageDynaLib6.briskDynaVo");
         result[3] = new Binding(this,function():Boolean
         {
            return saleGroup.visible;
         },null,"ddPriceLabelDiscounted.visible");
         result[4] = new Binding(this,function():Boolean
         {
            return saleGroup.includeInLayout;
         },null,"ddPriceLabelDiscounted.includeInLayout");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get _ExpansionComponent_VGroup1() : VGroup
      {
         return this._1585012474_ExpansionComponent_VGroup1;
      }
      
      public function set _ExpansionComponent_VGroup1(param1:VGroup) : void
      {
         var _loc2_:Object = this._1585012474_ExpansionComponent_VGroup1;
         if(_loc2_ !== param1)
         {
            this._1585012474_ExpansionComponent_VGroup1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ExpansionComponent_VGroup1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _ExpansionComponent_VGroup3() : VGroup
      {
         return this._1585012472_ExpansionComponent_VGroup3;
      }
      
      public function set _ExpansionComponent_VGroup3(param1:VGroup) : void
      {
         var _loc2_:Object = this._1585012472_ExpansionComponent_VGroup3;
         if(_loc2_ !== param1)
         {
            this._1585012472_ExpansionComponent_VGroup3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ExpansionComponent_VGroup3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ccPriceLabel() : LocaLabel
      {
         return this._1398066261ccPriceLabel;
      }
      
      public function set ccPriceLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1398066261ccPriceLabel;
         if(_loc2_ !== param1)
         {
            this._1398066261ccPriceLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ccPriceLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ddPriceLabel() : LocaLabel
      {
         return this._1229032395ddPriceLabel;
      }
      
      public function set ddPriceLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1229032395ddPriceLabel;
         if(_loc2_ !== param1)
         {
            this._1229032395ddPriceLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ddPriceLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ddPriceLabelDiscounted() : LocaLabel
      {
         return this._1094425547ddPriceLabelDiscounted;
      }
      
      public function set ddPriceLabelDiscounted(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1094425547ddPriceLabelDiscounted;
         if(_loc2_ !== param1)
         {
            this._1094425547ddPriceLabelDiscounted = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ddPriceLabelDiscounted",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lockedFlavour() : LocaLabel
      {
         return this._332136569lockedFlavour;
      }
      
      public function set lockedFlavour(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._332136569lockedFlavour;
         if(_loc2_ !== param1)
         {
            this._332136569lockedFlavour = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lockedFlavour",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get orLabel() : LocaLabel
      {
         return this._1229408559orLabel;
      }
      
      public function set orLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1229408559orLabel;
         if(_loc2_ !== param1)
         {
            this._1229408559orLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"orLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get saleGroup() : VGroup
      {
         return this._123184520saleGroup;
      }
      
      public function set saleGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._123184520saleGroup;
         if(_loc2_ !== param1)
         {
            this._123184520saleGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"saleGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get saleLabel() : LocaLabel
      {
         return this._119086355saleLabel;
      }
      
      public function set saleLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._119086355saleLabel;
         if(_loc2_ !== param1)
         {
            this._119086355saleLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"saleLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get saleStrikeThroughGroup() : HGroup
      {
         return this._1244086221saleStrikeThroughGroup;
      }
      
      public function set saleStrikeThroughGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._1244086221saleStrikeThroughGroup;
         if(_loc2_ !== param1)
         {
            this._1244086221saleStrikeThroughGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"saleStrikeThroughGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get saleTimerComponent() : TimerBarComponent
      {
         return this._1561827167saleTimerComponent;
      }
      
      public function set saleTimerComponent(param1:TimerBarComponent) : void
      {
         var _loc2_:Object = this._1561827167saleTimerComponent;
         if(_loc2_ !== param1)
         {
            this._1561827167saleTimerComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"saleTimerComponent",_loc2_,param1));
            }
         }
      }
   }
}

