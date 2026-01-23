package net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.skin
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
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.HeaderComponent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.AbstractUIInfolayerComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class AbstractUIInfolayerComponentSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private static const briskOuterMiddle:BriskDynaVo = new BriskDynaVo("gui_infolayer_bg","ui_infolayer_outermiddle","gui_popups_paperPopup");
      
      private static const briskCorner:BriskDynaVo = new BriskDynaVo("gui_infolayer_bg","ui_infolayer_corner","gui_popups_paperPopup");
      
      private static const briskIndicator:BriskDynaVo = new BriskDynaVo("gui_infolayer_bg","ui_infolayer_fixpoint","gui_popups_paperPopup");
      
      private static const briskMiddle:BriskDynaVo = new BriskDynaVo("gui_infolayer_bg","ui_infolayer_middle","gui_popups_paperPopup");
      
      public var _AbstractUIInfolayerComponentSkin_BriskImageDynaLib1:BriskImageDynaLib;
      
      public var _AbstractUIInfolayerComponentSkin_BriskImageDynaLib10:BriskImageDynaLib;
      
      private var _1115019872_AbstractUIInfolayerComponentSkin_BriskImageDynaLib11:BriskImageDynaLib;
      
      public var _AbstractUIInfolayerComponentSkin_BriskImageDynaLib12:BriskImageDynaLib;
      
      public var _AbstractUIInfolayerComponentSkin_BriskImageDynaLib13:BriskImageDynaLib;
      
      public var _AbstractUIInfolayerComponentSkin_BriskImageDynaLib14:BriskImageDynaLib;
      
      private var _1115019868_AbstractUIInfolayerComponentSkin_BriskImageDynaLib15:BriskImageDynaLib;
      
      public var _AbstractUIInfolayerComponentSkin_BriskImageDynaLib16:BriskImageDynaLib;
      
      public var _AbstractUIInfolayerComponentSkin_BriskImageDynaLib17:BriskImageDynaLib;
      
      public var _AbstractUIInfolayerComponentSkin_BriskImageDynaLib2:BriskImageDynaLib;
      
      private var _1626599603_AbstractUIInfolayerComponentSkin_BriskImageDynaLib3:BriskImageDynaLib;
      
      public var _AbstractUIInfolayerComponentSkin_BriskImageDynaLib4:BriskImageDynaLib;
      
      public var _AbstractUIInfolayerComponentSkin_BriskImageDynaLib5:BriskImageDynaLib;
      
      public var _AbstractUIInfolayerComponentSkin_BriskImageDynaLib6:BriskImageDynaLib;
      
      private var _1626599607_AbstractUIInfolayerComponentSkin_BriskImageDynaLib7:BriskImageDynaLib;
      
      public var _AbstractUIInfolayerComponentSkin_BriskImageDynaLib8:BriskImageDynaLib;
      
      public var _AbstractUIInfolayerComponentSkin_BriskImageDynaLib9:BriskImageDynaLib;
      
      private var _1326573433_AbstractUIInfolayerComponentSkin_HGroup1:HGroup;
      
      private var _1326573431_AbstractUIInfolayerComponentSkin_HGroup3:HGroup;
      
      public var _AbstractUIInfolayerComponentSkin_HGroup4:HGroup;
      
      private var _1786423786_AbstractUIInfolayerComponentSkin_VGroup2:VGroup;
      
      private var _1786423785_AbstractUIInfolayerComponentSkin_VGroup3:VGroup;
      
      private var _1786423784_AbstractUIInfolayerComponentSkin_VGroup4:VGroup;
      
      private var _1290911217backgroundGroup:VGroup;
      
      private var _809612678contentGroup:Group;
      
      private var _1221270899header:HeaderComponent;
      
      private var _1977189542headerIcon:BriskImageDynaLib;
      
      private var _104356713topInformation:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:AbstractUIInfolayerComponent;
      
      public function AbstractUIInfolayerComponentSkin()
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
         bindings = this._AbstractUIInfolayerComponentSkin_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_userInterfaceInfoLayer_component_skin_AbstractUIInfolayerComponentSkinWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return AbstractUIInfolayerComponentSkin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.percentHeight = 100;
         this.percentWidth = 100;
         this.mxmlContent = [this._AbstractUIInfolayerComponentSkin_VGroup1_i(),this._AbstractUIInfolayerComponentSkin_VGroup4_i(),this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib18_i()];
         this.currentState = "normal";
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[]
         }),new State({
            "name":"indicator_top",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_AbstractUIInfolayerComponentSkin_HGroup1",
               "name":"height",
               "value":28
            }),new SetProperty().initializeFromObject({
               "target":"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib3",
               "name":"includeInLayout",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib3",
               "name":"visible",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"_AbstractUIInfolayerComponentSkin_VGroup4",
               "name":"paddingTop",
               "value":25
            })]
         }),new State({
            "name":"indicator_bottom",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_AbstractUIInfolayerComponentSkin_HGroup3",
               "name":"height",
               "value":28
            }),new SetProperty().initializeFromObject({
               "target":"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib15",
               "name":"includeInLayout",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib15",
               "name":"visible",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"_AbstractUIInfolayerComponentSkin_VGroup4",
               "name":"paddingBottom",
               "value":25
            })]
         }),new State({
            "name":"indicator_right",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_AbstractUIInfolayerComponentSkin_HGroup1",
               "name":"paddingRight",
               "value":13
            }),new SetProperty().initializeFromObject({
               "target":"_AbstractUIInfolayerComponentSkin_VGroup3",
               "name":"width",
               "value":25
            }),new SetProperty().initializeFromObject({
               "target":"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib11",
               "name":"includeInLayout",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib11",
               "name":"visible",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"_AbstractUIInfolayerComponentSkin_HGroup3",
               "name":"paddingRight",
               "value":13
            }),new SetProperty().initializeFromObject({
               "target":"_AbstractUIInfolayerComponentSkin_VGroup4",
               "name":"paddingRight",
               "value":23
            })]
         }),new State({
            "name":"indicator_left",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_AbstractUIInfolayerComponentSkin_HGroup1",
               "name":"paddingLeft",
               "value":16
            }),new SetProperty().initializeFromObject({
               "target":"_AbstractUIInfolayerComponentSkin_VGroup2",
               "name":"width",
               "value":28
            }),new SetProperty().initializeFromObject({
               "target":"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib7",
               "name":"includeInLayout",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib7",
               "name":"visible",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"_AbstractUIInfolayerComponentSkin_HGroup3",
               "name":"paddingLeft",
               "value":16
            }),new SetProperty().initializeFromObject({
               "target":"_AbstractUIInfolayerComponentSkin_VGroup4",
               "name":"paddingLeft",
               "value":23
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
         AbstractUIInfolayerComponentSkin._watcherSetupUtil = param1;
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
      
      private function _AbstractUIInfolayerComponentSkin_VGroup1_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = 0;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._AbstractUIInfolayerComponentSkin_HGroup1_i(),this._AbstractUIInfolayerComponentSkin_HGroup2_c(),this._AbstractUIInfolayerComponentSkin_HGroup3_i()];
         _loc1_.id = "backgroundGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.backgroundGroup = _loc1_;
         BindingManager.executeBindings(this,"backgroundGroup",this.backgroundGroup);
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.percentWidth = 100;
         _loc1_.height = 12;
         _loc1_.verticalAlign = "bottom";
         _loc1_.mxmlContent = [this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib1_i(),this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib2_i(),this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib3_i(),this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib4_i(),this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib5_i()];
         _loc1_.id = "_AbstractUIInfolayerComponentSkin_HGroup1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._AbstractUIInfolayerComponentSkin_HGroup1 = _loc1_;
         BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_HGroup1",this._AbstractUIInfolayerComponentSkin_HGroup1);
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.rotation = -90;
         _loc1_.width = 12;
         _loc1_.height = 12;
         _loc1_.bottom = 0;
         _loc1_.id = "_AbstractUIInfolayerComponentSkin_BriskImageDynaLib1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib1 = _loc1_;
         BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib1",this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib1);
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.percentWidth = 100;
         _loc1_.height = 12;
         _loc1_.bottom = 0;
         _loc1_.id = "_AbstractUIInfolayerComponentSkin_BriskImageDynaLib2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib2 = _loc1_;
         BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib2",this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib2);
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.width = 28;
         _loc1_.height = 28;
         _loc1_.id = "_AbstractUIInfolayerComponentSkin_BriskImageDynaLib3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib3 = _loc1_;
         BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib3",this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib3);
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.percentWidth = 100;
         _loc1_.height = 12;
         _loc1_.bottom = 0;
         _loc1_.id = "_AbstractUIInfolayerComponentSkin_BriskImageDynaLib4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib4 = _loc1_;
         BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib4",this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib4);
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.rotation = 0;
         _loc1_.width = 12;
         _loc1_.height = 12;
         _loc1_.bottom = 0;
         _loc1_.id = "_AbstractUIInfolayerComponentSkin_BriskImageDynaLib5";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib5 = _loc1_;
         BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib5",this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib5);
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._AbstractUIInfolayerComponentSkin_VGroup2_i(),this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib9_i(),this._AbstractUIInfolayerComponentSkin_VGroup3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_VGroup2_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentHeight = 100;
         _loc1_.width = 12;
         _loc1_.gap = 0;
         _loc1_.horizontalAlign = "right";
         _loc1_.mxmlContent = [this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib6_i(),this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib7_i(),this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib8_i()];
         _loc1_.id = "_AbstractUIInfolayerComponentSkin_VGroup2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._AbstractUIInfolayerComponentSkin_VGroup2 = _loc1_;
         BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_VGroup2",this._AbstractUIInfolayerComponentSkin_VGroup2);
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.rotation = -90;
         _loc1_.width = 12;
         _loc1_.percentHeight = 100;
         _loc1_.id = "_AbstractUIInfolayerComponentSkin_BriskImageDynaLib6";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib6 = _loc1_;
         BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib6",this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib6);
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.rotation = -90;
         _loc1_.width = 28;
         _loc1_.height = 28;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "_AbstractUIInfolayerComponentSkin_BriskImageDynaLib7";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib7 = _loc1_;
         BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib7",this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib7);
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.rotation = -90;
         _loc1_.width = 12;
         _loc1_.percentHeight = 100;
         _loc1_.id = "_AbstractUIInfolayerComponentSkin_BriskImageDynaLib8";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib8 = _loc1_;
         BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib8",this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib8);
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib9_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.id = "_AbstractUIInfolayerComponentSkin_BriskImageDynaLib9";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib9 = _loc1_;
         BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib9",this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib9);
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_VGroup3_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = 0;
         _loc1_.width = 12;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "left";
         _loc1_.mxmlContent = [this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib10_i(),this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib11_i(),this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib12_i()];
         _loc1_.id = "_AbstractUIInfolayerComponentSkin_VGroup3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._AbstractUIInfolayerComponentSkin_VGroup3 = _loc1_;
         BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_VGroup3",this._AbstractUIInfolayerComponentSkin_VGroup3);
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib10_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.rotation = 90;
         _loc1_.width = 12;
         _loc1_.percentHeight = 100;
         _loc1_.id = "_AbstractUIInfolayerComponentSkin_BriskImageDynaLib10";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib10 = _loc1_;
         BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib10",this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib10);
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib11_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.rotation = 90;
         _loc1_.width = 28;
         _loc1_.height = 28;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "_AbstractUIInfolayerComponentSkin_BriskImageDynaLib11";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib11 = _loc1_;
         BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib11",this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib11);
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib12_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.rotation = 90;
         _loc1_.width = 12;
         _loc1_.percentHeight = 100;
         _loc1_.id = "_AbstractUIInfolayerComponentSkin_BriskImageDynaLib12";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib12 = _loc1_;
         BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib12",this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib12);
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_HGroup3_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.height = 12;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib13_i(),this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib14_i(),this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib15_i(),this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib16_i(),this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib17_i()];
         _loc1_.id = "_AbstractUIInfolayerComponentSkin_HGroup3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._AbstractUIInfolayerComponentSkin_HGroup3 = _loc1_;
         BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_HGroup3",this._AbstractUIInfolayerComponentSkin_HGroup3);
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib13_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.rotation = 180;
         _loc1_.width = 12;
         _loc1_.height = 12;
         _loc1_.id = "_AbstractUIInfolayerComponentSkin_BriskImageDynaLib13";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib13 = _loc1_;
         BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib13",this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib13);
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib14_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.rotation = 180;
         _loc1_.percentWidth = 100;
         _loc1_.height = 12;
         _loc1_.id = "_AbstractUIInfolayerComponentSkin_BriskImageDynaLib14";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib14 = _loc1_;
         BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib14",this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib14);
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib15_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.rotation = 180;
         _loc1_.width = 28;
         _loc1_.height = 28;
         _loc1_.bottom = 0;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "_AbstractUIInfolayerComponentSkin_BriskImageDynaLib15";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib15 = _loc1_;
         BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib15",this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib15);
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib16_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.rotation = 180;
         _loc1_.percentWidth = 100;
         _loc1_.height = 12;
         _loc1_.bottom = 0;
         _loc1_.id = "_AbstractUIInfolayerComponentSkin_BriskImageDynaLib16";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib16 = _loc1_;
         BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib16",this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib16);
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib17_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.rotation = 90;
         _loc1_.width = 12;
         _loc1_.height = 12;
         _loc1_.id = "_AbstractUIInfolayerComponentSkin_BriskImageDynaLib17";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib17 = _loc1_;
         BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib17",this._AbstractUIInfolayerComponentSkin_BriskImageDynaLib17);
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_VGroup4_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.paddingTop = 8;
         _loc1_.paddingLeft = 8;
         _loc1_.paddingRight = 8;
         _loc1_.paddingBottom = 13;
         _loc1_.mxmlContent = [this._AbstractUIInfolayerComponentSkin_HGroup4_i(),this._AbstractUIInfolayerComponentSkin_HeaderComponent1_i(),this._AbstractUIInfolayerComponentSkin_Group1_i()];
         _loc1_.id = "_AbstractUIInfolayerComponentSkin_VGroup4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._AbstractUIInfolayerComponentSkin_VGroup4 = _loc1_;
         BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_VGroup4",this._AbstractUIInfolayerComponentSkin_VGroup4);
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_HGroup4_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._AbstractUIInfolayerComponentSkin_LocaLabel1_i()];
         _loc1_.id = "_AbstractUIInfolayerComponentSkin_HGroup4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._AbstractUIInfolayerComponentSkin_HGroup4 = _loc1_;
         BindingManager.executeBindings(this,"_AbstractUIInfolayerComponentSkin_HGroup4",this._AbstractUIInfolayerComponentSkin_HGroup4);
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.maxWidth = 120;
         _loc1_.styleName = "expansionBlue";
         _loc1_.percentHeight = 100;
         _loc1_.id = "topInformation";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.topInformation = _loc1_;
         BindingManager.executeBindings(this,"topInformation",this.topInformation);
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_HeaderComponent1_i() : HeaderComponent
      {
         var _loc1_:HeaderComponent = new HeaderComponent();
         _loc1_.maxDisplayedLines = 2;
         _loc1_.percentWidth = 100;
         _loc1_.id = "header";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.header = _loc1_;
         BindingManager.executeBindings(this,"header",this.header);
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.id = "contentGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.contentGroup = _loc1_;
         BindingManager.executeBindings(this,"contentGroup",this.contentGroup);
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_BriskImageDynaLib18_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.left = -5;
         _loc1_.dynaBmpSourceName = "infolayer_icon_info";
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.id = "headerIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.headerIcon = _loc1_;
         BindingManager.executeBindings(this,"headerIcon",this.headerIcon);
         return _loc1_;
      }
      
      private function _AbstractUIInfolayerComponentSkin_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():BriskDynaVo
         {
            return briskCorner;
         },null,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib1.briskDynaVo");
         result[1] = new Binding(this,function():BriskDynaVo
         {
            return briskOuterMiddle;
         },null,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib2.briskDynaVo");
         result[2] = new Binding(this,function():BriskDynaVo
         {
            return briskIndicator;
         },null,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib3.briskDynaVo");
         result[3] = new Binding(this,function():BriskDynaVo
         {
            return briskOuterMiddle;
         },null,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib4.briskDynaVo");
         result[4] = new Binding(this,function():BriskDynaVo
         {
            return briskCorner;
         },null,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib5.briskDynaVo");
         result[5] = new Binding(this,function():BriskDynaVo
         {
            return briskOuterMiddle;
         },null,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib6.briskDynaVo");
         result[6] = new Binding(this,function():BriskDynaVo
         {
            return briskIndicator;
         },null,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib7.briskDynaVo");
         result[7] = new Binding(this,function():BriskDynaVo
         {
            return briskOuterMiddle;
         },null,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib8.briskDynaVo");
         result[8] = new Binding(this,function():BriskDynaVo
         {
            return briskMiddle;
         },null,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib9.briskDynaVo");
         result[9] = new Binding(this,function():BriskDynaVo
         {
            return briskOuterMiddle;
         },null,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib10.briskDynaVo");
         result[10] = new Binding(this,function():BriskDynaVo
         {
            return briskIndicator;
         },null,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib11.briskDynaVo");
         result[11] = new Binding(this,function():BriskDynaVo
         {
            return briskOuterMiddle;
         },null,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib12.briskDynaVo");
         result[12] = new Binding(this,function():BriskDynaVo
         {
            return briskCorner;
         },null,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib13.briskDynaVo");
         result[13] = new Binding(this,function():BriskDynaVo
         {
            return briskOuterMiddle;
         },null,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib14.briskDynaVo");
         result[14] = new Binding(this,function():BriskDynaVo
         {
            return briskIndicator;
         },null,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib15.briskDynaVo");
         result[15] = new Binding(this,function():BriskDynaVo
         {
            return briskOuterMiddle;
         },null,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib16.briskDynaVo");
         result[16] = new Binding(this,function():BriskDynaVo
         {
            return briskCorner;
         },null,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib17.briskDynaVo");
         result[17] = new Binding(this,function():Boolean
         {
            return topInformation.includeInLayout + "}";
         },null,"_AbstractUIInfolayerComponentSkin_HGroup4.includeInLayout");
         result[18] = new Binding(this,function():Number
         {
            return header.y + header.height / 2 - headerIcon.height / 1.5;
         },null,"headerIcon.y");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get _AbstractUIInfolayerComponentSkin_BriskImageDynaLib11() : BriskImageDynaLib
      {
         return this._1115019872_AbstractUIInfolayerComponentSkin_BriskImageDynaLib11;
      }
      
      public function set _AbstractUIInfolayerComponentSkin_BriskImageDynaLib11(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1115019872_AbstractUIInfolayerComponentSkin_BriskImageDynaLib11;
         if(_loc2_ !== param1)
         {
            this._1115019872_AbstractUIInfolayerComponentSkin_BriskImageDynaLib11 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib11",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _AbstractUIInfolayerComponentSkin_BriskImageDynaLib15() : BriskImageDynaLib
      {
         return this._1115019868_AbstractUIInfolayerComponentSkin_BriskImageDynaLib15;
      }
      
      public function set _AbstractUIInfolayerComponentSkin_BriskImageDynaLib15(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1115019868_AbstractUIInfolayerComponentSkin_BriskImageDynaLib15;
         if(_loc2_ !== param1)
         {
            this._1115019868_AbstractUIInfolayerComponentSkin_BriskImageDynaLib15 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib15",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _AbstractUIInfolayerComponentSkin_BriskImageDynaLib3() : BriskImageDynaLib
      {
         return this._1626599603_AbstractUIInfolayerComponentSkin_BriskImageDynaLib3;
      }
      
      public function set _AbstractUIInfolayerComponentSkin_BriskImageDynaLib3(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1626599603_AbstractUIInfolayerComponentSkin_BriskImageDynaLib3;
         if(_loc2_ !== param1)
         {
            this._1626599603_AbstractUIInfolayerComponentSkin_BriskImageDynaLib3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _AbstractUIInfolayerComponentSkin_BriskImageDynaLib7() : BriskImageDynaLib
      {
         return this._1626599607_AbstractUIInfolayerComponentSkin_BriskImageDynaLib7;
      }
      
      public function set _AbstractUIInfolayerComponentSkin_BriskImageDynaLib7(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1626599607_AbstractUIInfolayerComponentSkin_BriskImageDynaLib7;
         if(_loc2_ !== param1)
         {
            this._1626599607_AbstractUIInfolayerComponentSkin_BriskImageDynaLib7 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_AbstractUIInfolayerComponentSkin_BriskImageDynaLib7",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _AbstractUIInfolayerComponentSkin_HGroup1() : HGroup
      {
         return this._1326573433_AbstractUIInfolayerComponentSkin_HGroup1;
      }
      
      public function set _AbstractUIInfolayerComponentSkin_HGroup1(param1:HGroup) : void
      {
         var _loc2_:Object = this._1326573433_AbstractUIInfolayerComponentSkin_HGroup1;
         if(_loc2_ !== param1)
         {
            this._1326573433_AbstractUIInfolayerComponentSkin_HGroup1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_AbstractUIInfolayerComponentSkin_HGroup1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _AbstractUIInfolayerComponentSkin_HGroup3() : HGroup
      {
         return this._1326573431_AbstractUIInfolayerComponentSkin_HGroup3;
      }
      
      public function set _AbstractUIInfolayerComponentSkin_HGroup3(param1:HGroup) : void
      {
         var _loc2_:Object = this._1326573431_AbstractUIInfolayerComponentSkin_HGroup3;
         if(_loc2_ !== param1)
         {
            this._1326573431_AbstractUIInfolayerComponentSkin_HGroup3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_AbstractUIInfolayerComponentSkin_HGroup3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _AbstractUIInfolayerComponentSkin_VGroup2() : VGroup
      {
         return this._1786423786_AbstractUIInfolayerComponentSkin_VGroup2;
      }
      
      public function set _AbstractUIInfolayerComponentSkin_VGroup2(param1:VGroup) : void
      {
         var _loc2_:Object = this._1786423786_AbstractUIInfolayerComponentSkin_VGroup2;
         if(_loc2_ !== param1)
         {
            this._1786423786_AbstractUIInfolayerComponentSkin_VGroup2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_AbstractUIInfolayerComponentSkin_VGroup2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _AbstractUIInfolayerComponentSkin_VGroup3() : VGroup
      {
         return this._1786423785_AbstractUIInfolayerComponentSkin_VGroup3;
      }
      
      public function set _AbstractUIInfolayerComponentSkin_VGroup3(param1:VGroup) : void
      {
         var _loc2_:Object = this._1786423785_AbstractUIInfolayerComponentSkin_VGroup3;
         if(_loc2_ !== param1)
         {
            this._1786423785_AbstractUIInfolayerComponentSkin_VGroup3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_AbstractUIInfolayerComponentSkin_VGroup3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _AbstractUIInfolayerComponentSkin_VGroup4() : VGroup
      {
         return this._1786423784_AbstractUIInfolayerComponentSkin_VGroup4;
      }
      
      public function set _AbstractUIInfolayerComponentSkin_VGroup4(param1:VGroup) : void
      {
         var _loc2_:Object = this._1786423784_AbstractUIInfolayerComponentSkin_VGroup4;
         if(_loc2_ !== param1)
         {
            this._1786423784_AbstractUIInfolayerComponentSkin_VGroup4 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_AbstractUIInfolayerComponentSkin_VGroup4",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get backgroundGroup() : VGroup
      {
         return this._1290911217backgroundGroup;
      }
      
      public function set backgroundGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._1290911217backgroundGroup;
         if(_loc2_ !== param1)
         {
            this._1290911217backgroundGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backgroundGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get contentGroup() : Group
      {
         return this._809612678contentGroup;
      }
      
      public function set contentGroup(param1:Group) : void
      {
         var _loc2_:Object = this._809612678contentGroup;
         if(_loc2_ !== param1)
         {
            this._809612678contentGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get header() : HeaderComponent
      {
         return this._1221270899header;
      }
      
      public function set header(param1:HeaderComponent) : void
      {
         var _loc2_:Object = this._1221270899header;
         if(_loc2_ !== param1)
         {
            this._1221270899header = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"header",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get headerIcon() : BriskImageDynaLib
      {
         return this._1977189542headerIcon;
      }
      
      public function set headerIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1977189542headerIcon;
         if(_loc2_ !== param1)
         {
            this._1977189542headerIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get topInformation() : LocaLabel
      {
         return this._104356713topInformation;
      }
      
      public function set topInformation(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._104356713topInformation;
         if(_loc2_ !== param1)
         {
            this._104356713topInformation = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topInformation",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : AbstractUIInfolayerComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:AbstractUIInfolayerComponent) : void
      {
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc2_ !== param1)
         {
            this._213507019hostComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
            }
         }
      }
   }
}

