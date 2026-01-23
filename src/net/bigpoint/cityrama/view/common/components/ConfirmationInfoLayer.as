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
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class ConfirmationInfoLayer extends Group implements IBindingClient
   {
      
      private static var _abortButton:MultistateButton;
      
      private static var _confirmButton:MultistateButton;
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public static const EVENT_CONFIRM_CLICKED:String = "EVENT_CONFIRM_CLICKED";
      
      public static const EVENT_ABORT_CLICKED:String = "EVENT_ABORT_CLICKED";
      
      private static const briskOuterMiddle:BriskDynaVo = new BriskDynaVo("gui_infolayer_bg","ui_infolayer_outermiddle","gui_popups_paperPopup");
      
      private static const briskCorner:BriskDynaVo = new BriskDynaVo("gui_infolayer_bg","ui_infolayer_corner","gui_popups_paperPopup");
      
      private static const briskMiddle:BriskDynaVo = new BriskDynaVo("gui_infolayer_bg","ui_infolayer_middle","gui_popups_paperPopup");
      
      public var _ConfirmationInfoLayer_BriskImageDynaLib1:BriskImageDynaLib;
      
      public var _ConfirmationInfoLayer_BriskImageDynaLib2:BriskImageDynaLib;
      
      public var _ConfirmationInfoLayer_BriskImageDynaLib3:BriskImageDynaLib;
      
      public var _ConfirmationInfoLayer_BriskImageDynaLib4:BriskImageDynaLib;
      
      public var _ConfirmationInfoLayer_BriskImageDynaLib5:BriskImageDynaLib;
      
      public var _ConfirmationInfoLayer_BriskImageDynaLib6:BriskImageDynaLib;
      
      public var _ConfirmationInfoLayer_BriskImageDynaLib7:BriskImageDynaLib;
      
      public var _ConfirmationInfoLayer_BriskImageDynaLib8:BriskImageDynaLib;
      
      public var _ConfirmationInfoLayer_BriskImageDynaLib9:BriskImageDynaLib;
      
      private var _1616565516abortBtn:MultistateButton;
      
      private var _1290911217backgroundGroup:VGroup;
      
      private var _1781625235buttonGroup:HGroup;
      
      private var _842377084confirmBtn:MultistateButton;
      
      private var _1787280239costAmountLabel:LocaLabel;
      
      private var _288049369costLabel:LocaLabel;
      
      private var _1221270899header:LocaLabel;
      
      private var _642714088verificationText:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _verificationAmount:Number = -1;
      
      private var _isDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ConfirmationInfoLayer()
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
         bindings = this._ConfirmationInfoLayer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_common_components_ConfirmationInfoLayerWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return ConfirmationInfoLayer[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.minHeight = 160;
         this.minWidth = 220;
         this.mxmlContent = [this._ConfirmationInfoLayer_VGroup1_i(),this._ConfirmationInfoLayer_VGroup4_c(),this._ConfirmationInfoLayer_BriskImageDynaLib12_c()];
         this.addEventListener("creationComplete",this.___ConfirmationInfoLayer_Group1_creationComplete);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         ConfirmationInfoLayer._watcherSetupUtil = param1;
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
         if(this._isDirty && this._verificationAmount > 0)
         {
            this._isDirty = false;
            this.costAmountLabel.text = LocaUtils.getThousendSeperatedNumber(this._verificationAmount);
         }
      }
      
      public function set verificationAmount(param1:Number) : void
      {
         if(RandomUtilities.isUnEqual(param1,this._verificationAmount))
         {
            this._verificationAmount = param1;
            this._isDirty = true;
            invalidateProperties();
         }
      }
      
      private function handleAbort(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(EVENT_ABORT_CLICKED,true,true));
      }
      
      private function handleConfirm(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(EVENT_CONFIRM_CLICKED,true,true));
      }
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
         this.header.text = LocaUtils.getString("rcl.guiinfolayer.confirmation","rcl.guiinfolayer.confirmation.header.capital");
         this.verificationText.text = LocaUtils.getString("rcl.guiinfolayer.confirmation","rcl.guiinfolayer.confirmation.text");
         this.costLabel.text = LocaUtils.getString("rcl.guiinfolayer.confirmation","rcl.guiinfolayer.confirmation.costs");
         invalidateSize();
      }
      
      private function _ConfirmationInfoLayer_VGroup1_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = 0;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ConfirmationInfoLayer_HGroup1_c(),this._ConfirmationInfoLayer_HGroup2_c(),this._ConfirmationInfoLayer_HGroup3_c()];
         _loc1_.id = "backgroundGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.backgroundGroup = _loc1_;
         BindingManager.executeBindings(this,"backgroundGroup",this.backgroundGroup);
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.percentWidth = 100;
         _loc1_.height = 12;
         _loc1_.verticalAlign = "bottom";
         _loc1_.mxmlContent = [this._ConfirmationInfoLayer_BriskImageDynaLib1_i(),this._ConfirmationInfoLayer_BriskImageDynaLib2_i(),this._ConfirmationInfoLayer_BriskImageDynaLib3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.rotation = -90;
         _loc1_.width = 12;
         _loc1_.height = 12;
         _loc1_.bottom = 0;
         _loc1_.id = "_ConfirmationInfoLayer_BriskImageDynaLib1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ConfirmationInfoLayer_BriskImageDynaLib1 = _loc1_;
         BindingManager.executeBindings(this,"_ConfirmationInfoLayer_BriskImageDynaLib1",this._ConfirmationInfoLayer_BriskImageDynaLib1);
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.percentWidth = 100;
         _loc1_.height = 12;
         _loc1_.bottom = 0;
         _loc1_.id = "_ConfirmationInfoLayer_BriskImageDynaLib2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ConfirmationInfoLayer_BriskImageDynaLib2 = _loc1_;
         BindingManager.executeBindings(this,"_ConfirmationInfoLayer_BriskImageDynaLib2",this._ConfirmationInfoLayer_BriskImageDynaLib2);
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.rotation = 0;
         _loc1_.width = 12;
         _loc1_.height = 12;
         _loc1_.bottom = 0;
         _loc1_.id = "_ConfirmationInfoLayer_BriskImageDynaLib3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ConfirmationInfoLayer_BriskImageDynaLib3 = _loc1_;
         BindingManager.executeBindings(this,"_ConfirmationInfoLayer_BriskImageDynaLib3",this._ConfirmationInfoLayer_BriskImageDynaLib3);
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._ConfirmationInfoLayer_VGroup2_c(),this._ConfirmationInfoLayer_BriskImageDynaLib5_i(),this._ConfirmationInfoLayer_VGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentHeight = 100;
         _loc1_.width = 12;
         _loc1_.gap = 0;
         _loc1_.horizontalAlign = "right";
         _loc1_.mxmlContent = [this._ConfirmationInfoLayer_BriskImageDynaLib4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.rotation = -90;
         _loc1_.width = 12;
         _loc1_.percentHeight = 100;
         _loc1_.id = "_ConfirmationInfoLayer_BriskImageDynaLib4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ConfirmationInfoLayer_BriskImageDynaLib4 = _loc1_;
         BindingManager.executeBindings(this,"_ConfirmationInfoLayer_BriskImageDynaLib4",this._ConfirmationInfoLayer_BriskImageDynaLib4);
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.id = "_ConfirmationInfoLayer_BriskImageDynaLib5";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ConfirmationInfoLayer_BriskImageDynaLib5 = _loc1_;
         BindingManager.executeBindings(this,"_ConfirmationInfoLayer_BriskImageDynaLib5",this._ConfirmationInfoLayer_BriskImageDynaLib5);
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = 0;
         _loc1_.width = 12;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "left";
         _loc1_.mxmlContent = [this._ConfirmationInfoLayer_BriskImageDynaLib6_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.rotation = 90;
         _loc1_.width = 12;
         _loc1_.percentHeight = 100;
         _loc1_.id = "_ConfirmationInfoLayer_BriskImageDynaLib6";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ConfirmationInfoLayer_BriskImageDynaLib6 = _loc1_;
         BindingManager.executeBindings(this,"_ConfirmationInfoLayer_BriskImageDynaLib6",this._ConfirmationInfoLayer_BriskImageDynaLib6);
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.height = 12;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._ConfirmationInfoLayer_BriskImageDynaLib7_i(),this._ConfirmationInfoLayer_BriskImageDynaLib8_i(),this._ConfirmationInfoLayer_BriskImageDynaLib9_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.rotation = 180;
         _loc1_.width = 12;
         _loc1_.height = 12;
         _loc1_.id = "_ConfirmationInfoLayer_BriskImageDynaLib7";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ConfirmationInfoLayer_BriskImageDynaLib7 = _loc1_;
         BindingManager.executeBindings(this,"_ConfirmationInfoLayer_BriskImageDynaLib7",this._ConfirmationInfoLayer_BriskImageDynaLib7);
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.rotation = 180;
         _loc1_.percentWidth = 100;
         _loc1_.height = 12;
         _loc1_.id = "_ConfirmationInfoLayer_BriskImageDynaLib8";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ConfirmationInfoLayer_BriskImageDynaLib8 = _loc1_;
         BindingManager.executeBindings(this,"_ConfirmationInfoLayer_BriskImageDynaLib8",this._ConfirmationInfoLayer_BriskImageDynaLib8);
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_BriskImageDynaLib9_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.rotation = 90;
         _loc1_.width = 12;
         _loc1_.height = 12;
         _loc1_.id = "_ConfirmationInfoLayer_BriskImageDynaLib9";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ConfirmationInfoLayer_BriskImageDynaLib9 = _loc1_;
         BindingManager.executeBindings(this,"_ConfirmationInfoLayer_BriskImageDynaLib9",this._ConfirmationInfoLayer_BriskImageDynaLib9);
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_VGroup4_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.paddingTop = 10;
         _loc1_.paddingLeft = 8;
         _loc1_.paddingRight = 8;
         _loc1_.paddingBottom = 13;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._ConfirmationInfoLayer_Group2_c(),this._ConfirmationInfoLayer_Group3_c(),this._ConfirmationInfoLayer_VGroup5_c(),this._ConfirmationInfoLayer_BriskImageDynaLib10_c(),this._ConfirmationInfoLayer_HGroup5_c(),this._ConfirmationInfoLayer_HGroup6_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.horizontalCenter = 0;
         _loc1_.height = 30;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._ConfirmationInfoLayer_BlueBarComponent1_c(),this._ConfirmationInfoLayer_HGroup4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_BlueBarComponent1_c() : BlueBarComponent
      {
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.percentHeight = 100;
         _loc1_.paddingLeft = 40;
         _loc1_.paddingRight = 40;
         _loc1_.mxmlContent = [this._ConfirmationInfoLayer_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "progressBarLabel";
         _loc1_.percentWidth = 100;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.id = "header";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.header = _loc1_;
         BindingManager.executeBindings(this,"header",this.header);
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_VGroup5_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._ConfirmationInfoLayer_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "infoLabel";
         _loc1_.percentWidth = 90;
         _loc1_.id = "verificationText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.verificationText = _loc1_;
         BindingManager.executeBindings(this,"verificationText",this.verificationText);
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_BriskImageDynaLib10_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "infolayer_divider_new";
         _loc1_.percentWidth = 100;
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.percentWidth = 90;
         _loc1_.gap = 6;
         _loc1_.mxmlContent = [this._ConfirmationInfoLayer_LocaLabel3_i(),this._ConfirmationInfoLayer_LocaLabel4_i(),this._ConfirmationInfoLayer_BriskImageDynaLib11_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.styleName = "residentialOutputItem";
         _loc1_.id = "costLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.costLabel = _loc1_;
         BindingManager.executeBindings(this,"costLabel",this.costLabel);
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_LocaLabel4_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "postitHeader";
         _loc1_.setStyle("fontSize",11);
         _loc1_.id = "costAmountLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.costAmountLabel = _loc1_;
         BindingManager.executeBindings(this,"costAmountLabel",this.costAmountLabel);
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_BriskImageDynaLib11_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_resources_icons";
         _loc1_.dynaBmpSourceName = "dd_button_icon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_HGroup6_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 90;
         _loc1_.gap = 20;
         _loc1_.horizontalAlign = "center";
         _loc1_.minWidth = 200;
         _loc1_.minHeight = 40;
         _loc1_.mxmlContent = [this._ConfirmationInfoLayer_MultistateButton1_i(),this._ConfirmationInfoLayer_MultistateButton2_i()];
         _loc1_.id = "buttonGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.buttonGroup = _loc1_;
         BindingManager.executeBindings(this,"buttonGroup",this.buttonGroup);
         return _loc1_;
      }
      
      private function _ConfirmationInfoLayer_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.styleName = "abort";
         _loc1_.percentWidth = 100;
         _loc1_.minWidth = 90;
         _loc1_.minHeight = 40;
         _loc1_.imageNameLeft = "icon_cancel";
         _loc1_.libNameLeft = "gui_popups_miniLayer";
         _loc1_.addEventListener("creationComplete",this.__abortBtn_creationComplete);
         _loc1_.addEventListener("click",this.__abortBtn_click);
         _loc1_.id = "abortBtn";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.abortBtn = _loc1_;
         BindingManager.executeBindings(this,"abortBtn",this.abortBtn);
         return _loc1_;
      }
      
      public function __abortBtn_creationComplete(param1:FlexEvent) : void
      {
         this.abortBtn.invalidateSize();
      }
      
      public function __abortBtn_click(param1:MouseEvent) : void
      {
         this.handleAbort(param1);
      }
      
      private function _ConfirmationInfoLayer_MultistateButton2_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.styleName = "confirm";
         _loc1_.percentWidth = 100;
         _loc1_.minWidth = 90;
         _loc1_.minHeight = 40;
         _loc1_.showSparkle = true;
         _loc1_.imageNameLeft = "icon_check";
         _loc1_.libNameLeft = "gui_popups_miniLayer";
         _loc1_.addEventListener("creationComplete",this.__confirmBtn_creationComplete);
         _loc1_.addEventListener("click",this.__confirmBtn_click);
         _loc1_.id = "confirmBtn";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.confirmBtn = _loc1_;
         BindingManager.executeBindings(this,"confirmBtn",this.confirmBtn);
         return _loc1_;
      }
      
      public function __confirmBtn_creationComplete(param1:FlexEvent) : void
      {
         this.confirmBtn.invalidateSize();
      }
      
      public function __confirmBtn_click(param1:MouseEvent) : void
      {
         this.handleConfirm(param1);
      }
      
      private function _ConfirmationInfoLayer_BriskImageDynaLib12_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.top = -4;
         _loc1_.left = -10;
         _loc1_.dynaBmpSourceName = "infolayer_icon_rc";
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___ConfirmationInfoLayer_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
      }
      
      private function _ConfirmationInfoLayer_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():BriskDynaVo
         {
            return briskCorner;
         },null,"_ConfirmationInfoLayer_BriskImageDynaLib1.briskDynaVo");
         result[1] = new Binding(this,function():BriskDynaVo
         {
            return briskOuterMiddle;
         },null,"_ConfirmationInfoLayer_BriskImageDynaLib2.briskDynaVo");
         result[2] = new Binding(this,function():BriskDynaVo
         {
            return briskCorner;
         },null,"_ConfirmationInfoLayer_BriskImageDynaLib3.briskDynaVo");
         result[3] = new Binding(this,function():BriskDynaVo
         {
            return briskOuterMiddle;
         },null,"_ConfirmationInfoLayer_BriskImageDynaLib4.briskDynaVo");
         result[4] = new Binding(this,function():BriskDynaVo
         {
            return briskMiddle;
         },null,"_ConfirmationInfoLayer_BriskImageDynaLib5.briskDynaVo");
         result[5] = new Binding(this,function():BriskDynaVo
         {
            return briskOuterMiddle;
         },null,"_ConfirmationInfoLayer_BriskImageDynaLib6.briskDynaVo");
         result[6] = new Binding(this,function():BriskDynaVo
         {
            return briskCorner;
         },null,"_ConfirmationInfoLayer_BriskImageDynaLib7.briskDynaVo");
         result[7] = new Binding(this,function():BriskDynaVo
         {
            return briskOuterMiddle;
         },null,"_ConfirmationInfoLayer_BriskImageDynaLib8.briskDynaVo");
         result[8] = new Binding(this,function():BriskDynaVo
         {
            return briskCorner;
         },null,"_ConfirmationInfoLayer_BriskImageDynaLib9.briskDynaVo");
         result[9] = new Binding(this,function():Number
         {
            return header.width + 10;
         },null,"verificationText.maxWidth");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get abortBtn() : MultistateButton
      {
         return this._1616565516abortBtn;
      }
      
      public function set abortBtn(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1616565516abortBtn;
         if(_loc2_ !== param1)
         {
            this._1616565516abortBtn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"abortBtn",_loc2_,param1));
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
      public function get buttonGroup() : HGroup
      {
         return this._1781625235buttonGroup;
      }
      
      public function set buttonGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._1781625235buttonGroup;
         if(_loc2_ !== param1)
         {
            this._1781625235buttonGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get confirmBtn() : MultistateButton
      {
         return this._842377084confirmBtn;
      }
      
      public function set confirmBtn(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._842377084confirmBtn;
         if(_loc2_ !== param1)
         {
            this._842377084confirmBtn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confirmBtn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get costAmountLabel() : LocaLabel
      {
         return this._1787280239costAmountLabel;
      }
      
      public function set costAmountLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1787280239costAmountLabel;
         if(_loc2_ !== param1)
         {
            this._1787280239costAmountLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costAmountLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get costLabel() : LocaLabel
      {
         return this._288049369costLabel;
      }
      
      public function set costLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._288049369costLabel;
         if(_loc2_ !== param1)
         {
            this._288049369costLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get header() : LocaLabel
      {
         return this._1221270899header;
      }
      
      public function set header(param1:LocaLabel) : void
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
      public function get verificationText() : LocaLabel
      {
         return this._642714088verificationText;
      }
      
      public function set verificationText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._642714088verificationText;
         if(_loc2_ !== param1)
         {
            this._642714088verificationText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"verificationText",_loc2_,param1));
            }
         }
      }
   }
}

