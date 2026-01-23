package net.bigpoint.cityrama.view.assistants.ui.components
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
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.assistants.vo.RentCollectorVo;
   import net.bigpoint.cityrama.view.common.FilterUtils;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   use namespace mx_internal;
   
   public class RentCollectorOffersItemRenderer extends ItemRenderer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public static const EVENT_PURCHASE:String = "EVENT_PURCHASE";
      
      public static const EVENT_TREASURY:String = "EVENT_TREASURY";
      
      public static const EVENT_PAYMENT:String = "EVENT_PAYMENT";
      
      private var _1670087799assistantIcon:BriskImageDynaLib;
      
      private var _1332194002background:BriskImageDynaLib;
      
      private var _949820541flavourLabel:LocaLabel;
      
      private var _1221270899header:LocaLabel;
      
      private var _1115260014headerBG:BriskImageDynaLib;
      
      private var _945498328paymentButton:MultistateButton;
      
      private var _2131928199paymentButtonGroup:Group;
      
      private var _868554306paymentHoverLabel:LocaLabel;
      
      private var _805360694paymentSaleBadge:BriskImageDynaLib;
      
      private var _1287581744paymentSparkle:BriskImageDynaLib;
      
      private var _1082037139purchaseButton:MultistateButton;
      
      private var _128319588saleBadge:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:RentCollectorVo;
      
      private var _isDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function RentCollectorOffersItemRenderer()
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
         bindings = this._RentCollectorOffersItemRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_assistants_ui_components_RentCollectorOffersItemRendererWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return RentCollectorOffersItemRenderer[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.autoDrawBackground = false;
         this.width = 184;
         this.height = 286;
         this.mxmlContent = [this._RentCollectorOffersItemRenderer_Group1_c()];
         this.addEventListener("creationComplete",this.___RentCollectorOffersItemRenderer_ItemRenderer1_creationComplete);
         this.addEventListener("rollOver",this.___RentCollectorOffersItemRenderer_ItemRenderer1_rollOver);
         this.addEventListener("rollOut",this.___RentCollectorOffersItemRenderer_ItemRenderer1_rollOut);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         RentCollectorOffersItemRenderer._watcherSetupUtil = param1;
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
         UIComponent(this.purchaseButton.labelDisplay).setStyle("fontSize",13);
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(Boolean(this._data) && this._isDirty)
         {
            this._isDirty = false;
            this.paymentButtonGroup.includeInLayout = this.paymentButtonGroup.visible = this._data.isExternalPaymentPack;
            this.background.briskDynaVo = this._data.backgroundGfx;
            this.assistantIcon.briskDynaVo = this._data.iconGfx;
            this.header.text = this._data.headerText;
            this.flavourLabel.text = this._data.flavourText;
            this.paymentHoverLabel.text = this._data.paymentHoverText;
            this.purchaseButton.label = LocaUtils.getThousendSeperatedNumber(this._data.price);
            this.purchaseButton.showPlus = !this._data.isAffordable;
            this.purchaseButton.priceToConfirm = this._data.price;
            this.paymentSparkle.includeInLayout = this.paymentSparkle.visible = !this._data.saleActive;
            this.paymentSaleBadge.includeInLayout = this.paymentSaleBadge.visible = this._data.saleActive;
            this.saleBadge.includeInLayout = this.saleBadge.visible = this._data.saleActive && this._data.isExternalPaymentPack;
         }
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         if(param1 is RentCollectorVo)
         {
            if(RandomUtilities.isUnEqual(param1,this._data))
            {
               this._data = param1 as RentCollectorVo;
               this._isDirty = true;
               invalidateProperties();
            }
         }
      }
      
      public function get assistConfigId() : Number
      {
         if(this._data)
         {
            return this._data.assistConfigId;
         }
         return -1;
      }
      
      public function get externalPackKey() : String
      {
         if(this._data)
         {
            return this._data.externalPackKey;
         }
         return "";
      }
      
      private function handleRollOver(param1:MouseEvent) : void
      {
         this.headerBG.dynaBmpSourceName = "header_bg_over";
      }
      
      private function handleRollOut(param1:MouseEvent) : void
      {
         this.headerBG.dynaBmpSourceName = "header_bg_normal";
      }
      
      private function handlePurchaseClicked(param1:MouseEvent) : void
      {
         if(this.purchaseButton.showPlus)
         {
            dispatchEvent(new Event(EVENT_TREASURY,true,true));
         }
         else
         {
            dispatchEvent(new Event(EVENT_PURCHASE,true,true));
         }
      }
      
      private function handlePaymentClicked(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(EVENT_PAYMENT,true,true));
      }
      
      private function handlePaymentBtnOver(param1:MouseEvent) : void
      {
         this.purchaseButton.visible = false;
         this.paymentHoverLabel.visible = true;
      }
      
      private function handlePaymentBtnOut(param1:MouseEvent) : void
      {
         this.purchaseButton.visible = true;
         this.paymentHoverLabel.visible = false;
      }
      
      private function _RentCollectorOffersItemRenderer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._RentCollectorOffersItemRenderer_BriskImageDynaLib1_i(),this._RentCollectorOffersItemRenderer_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorOffersItemRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_rentCollector";
         _loc1_.dynaBmpSourceName = "collector_bg_44";
         _loc1_.id = "background";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.background = _loc1_;
         BindingManager.executeBindings(this,"background",this.background);
         return _loc1_;
      }
      
      private function _RentCollectorOffersItemRenderer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.top = 8;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._RentCollectorOffersItemRenderer_Group2_c(),this._RentCollectorOffersItemRenderer_Group3_c(),this._RentCollectorOffersItemRenderer_BriskImageDynaLib4_i(),this._RentCollectorOffersItemRenderer_Group4_c(),this._RentCollectorOffersItemRenderer_HGroup1_c(),this._RentCollectorOffersItemRenderer_Group5_c(),this._RentCollectorOffersItemRenderer_Group6_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorOffersItemRenderer_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 32;
         _loc1_.width = 170;
         _loc1_.mxmlContent = [this._RentCollectorOffersItemRenderer_BriskImageDynaLib2_i(),this._RentCollectorOffersItemRenderer_LocaLabel1_i(),this._RentCollectorOffersItemRenderer_BriskImageDynaLib3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorOffersItemRenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_rentCollector";
         _loc1_.dynaBmpSourceName = "header_bg_normal";
         _loc1_.id = "headerBG";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.headerBG = _loc1_;
         BindingManager.executeBindings(this,"headerBG",this.headerBG);
         return _loc1_;
      }
      
      private function _RentCollectorOffersItemRenderer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "progressBarLabel";
         _loc1_.percentWidth = 90;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.id = "header";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.header = _loc1_;
         BindingManager.executeBindings(this,"header",this.header);
         return _loc1_;
      }
      
      private function _RentCollectorOffersItemRenderer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "upsell_medium";
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.left = -14;
         _loc1_.top = -8;
         _loc1_.id = "saleBadge";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.saleBadge = _loc1_;
         BindingManager.executeBindings(this,"saleBadge",this.saleBadge);
         return _loc1_;
      }
      
      private function _RentCollectorOffersItemRenderer_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 8;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorOffersItemRenderer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_rentCollector";
         _loc1_.dynaBmpSourceName = "rentCollector_big_44";
         _loc1_.id = "assistantIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.assistantIcon = _loc1_;
         BindingManager.executeBindings(this,"assistantIcon",this.assistantIcon);
         return _loc1_;
      }
      
      private function _RentCollectorOffersItemRenderer_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 6;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorOffersItemRenderer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.height = 42;
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._RentCollectorOffersItemRenderer_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorOffersItemRenderer_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "twelveDarkCenter";
         _loc1_.percentWidth = 80;
         _loc1_.maxDisplayedLines = 3;
         _loc1_.setStyle("fontSize",11);
         _loc1_.id = "flavourLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavourLabel = _loc1_;
         BindingManager.executeBindings(this,"flavourLabel",this.flavourLabel);
         return _loc1_;
      }
      
      private function _RentCollectorOffersItemRenderer_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 6;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorOffersItemRenderer_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 40;
         _loc1_.width = 160;
         _loc1_.mxmlContent = [this._RentCollectorOffersItemRenderer_HGroup2_c(),this._RentCollectorOffersItemRenderer_HGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorOffersItemRenderer_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.width = 116;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._RentCollectorOffersItemRenderer_LocaLabel3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorOffersItemRenderer_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "tenBlueCenter";
         _loc1_.maxDisplayedLines = 3;
         _loc1_.percentWidth = 100;
         _loc1_.visible = false;
         _loc1_.id = "paymentHoverLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.paymentHoverLabel = _loc1_;
         BindingManager.executeBindings(this,"paymentHoverLabel",this.paymentHoverLabel);
         return _loc1_;
      }
      
      private function _RentCollectorOffersItemRenderer_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 2;
         _loc1_.mxmlContent = [this._RentCollectorOffersItemRenderer_MultistateButton1_i(),this._RentCollectorOffersItemRenderer_Group7_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorOffersItemRenderer_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.libNameRight = "gui_resources_icons";
         _loc1_.imageNameRight = "dd_button_icon";
         _loc1_.percentWidth = 100;
         _loc1_.useConfirmation = true;
         _loc1_.addEventListener("click",this.__purchaseButton_click);
         _loc1_.id = "purchaseButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.purchaseButton = _loc1_;
         BindingManager.executeBindings(this,"purchaseButton",this.purchaseButton);
         return _loc1_;
      }
      
      public function __purchaseButton_click(param1:MouseEvent) : void
      {
         this.handlePurchaseClicked(param1);
      }
      
      private function _RentCollectorOffersItemRenderer_Group7_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 40;
         _loc1_.height = 40;
         _loc1_.mxmlContent = [this._RentCollectorOffersItemRenderer_MultistateButton2_i(),this._RentCollectorOffersItemRenderer_BriskImageDynaLib5_i(),this._RentCollectorOffersItemRenderer_BriskImageDynaLib6_i()];
         _loc1_.id = "paymentButtonGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.paymentButtonGroup = _loc1_;
         BindingManager.executeBindings(this,"paymentButtonGroup",this.paymentButtonGroup);
         return _loc1_;
      }
      
      private function _RentCollectorOffersItemRenderer_MultistateButton2_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.libNameLeft = "gui_popups_rentCollector";
         _loc1_.imageNameLeft = "button_icon_treasury";
         _loc1_.width = 40;
         _loc1_.addEventListener("rollOver",this.__paymentButton_rollOver);
         _loc1_.addEventListener("rollOut",this.__paymentButton_rollOut);
         _loc1_.addEventListener("click",this.__paymentButton_click);
         _loc1_.id = "paymentButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.paymentButton = _loc1_;
         BindingManager.executeBindings(this,"paymentButton",this.paymentButton);
         return _loc1_;
      }
      
      public function __paymentButton_rollOver(param1:MouseEvent) : void
      {
         this.handlePaymentBtnOver(param1);
      }
      
      public function __paymentButton_rollOut(param1:MouseEvent) : void
      {
         this.handlePaymentBtnOut(param1);
      }
      
      public function __paymentButton_click(param1:MouseEvent) : void
      {
         this.handlePaymentClicked(param1);
      }
      
      private function _RentCollectorOffersItemRenderer_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.dynaLibName = "gui_popups_rentCollector";
         _loc1_.dynaBmpSourceName = "minibutton_sparkle_single";
         _loc1_.left = -2;
         _loc1_.top = -4;
         _loc1_.id = "paymentSparkle";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.paymentSparkle = _loc1_;
         BindingManager.executeBindings(this,"paymentSparkle",this.paymentSparkle);
         return _loc1_;
      }
      
      private function _RentCollectorOffersItemRenderer_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "upsell_small";
         _loc1_.left = -6;
         _loc1_.top = -6;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "paymentSaleBadge";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.paymentSaleBadge = _loc1_;
         BindingManager.executeBindings(this,"paymentSaleBadge",this.paymentSaleBadge);
         return _loc1_;
      }
      
      public function ___RentCollectorOffersItemRenderer_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
      }
      
      public function ___RentCollectorOffersItemRenderer_ItemRenderer1_rollOver(param1:MouseEvent) : void
      {
         this.handleRollOver(param1);
      }
      
      public function ___RentCollectorOffersItemRenderer_ItemRenderer1_rollOut(param1:MouseEvent) : void
      {
         this.handleRollOut(param1);
      }
      
      private function _RentCollectorOffersItemRenderer_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Array
         {
            var _loc1_:* = [FilterUtils.createDropShadowTextFilter()];
            return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy ? _loc1_ : [_loc1_];
         },null,"header.filters");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get assistantIcon() : BriskImageDynaLib
      {
         return this._1670087799assistantIcon;
      }
      
      public function set assistantIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1670087799assistantIcon;
         if(_loc2_ !== param1)
         {
            this._1670087799assistantIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"assistantIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get background() : BriskImageDynaLib
      {
         return this._1332194002background;
      }
      
      public function set background(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1332194002background;
         if(_loc2_ !== param1)
         {
            this._1332194002background = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"background",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourLabel() : LocaLabel
      {
         return this._949820541flavourLabel;
      }
      
      public function set flavourLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._949820541flavourLabel;
         if(_loc2_ !== param1)
         {
            this._949820541flavourLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourLabel",_loc2_,param1));
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
      public function get headerBG() : BriskImageDynaLib
      {
         return this._1115260014headerBG;
      }
      
      public function set headerBG(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1115260014headerBG;
         if(_loc2_ !== param1)
         {
            this._1115260014headerBG = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerBG",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get paymentButton() : MultistateButton
      {
         return this._945498328paymentButton;
      }
      
      public function set paymentButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._945498328paymentButton;
         if(_loc2_ !== param1)
         {
            this._945498328paymentButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"paymentButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get paymentButtonGroup() : Group
      {
         return this._2131928199paymentButtonGroup;
      }
      
      public function set paymentButtonGroup(param1:Group) : void
      {
         var _loc2_:Object = this._2131928199paymentButtonGroup;
         if(_loc2_ !== param1)
         {
            this._2131928199paymentButtonGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"paymentButtonGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get paymentHoverLabel() : LocaLabel
      {
         return this._868554306paymentHoverLabel;
      }
      
      public function set paymentHoverLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._868554306paymentHoverLabel;
         if(_loc2_ !== param1)
         {
            this._868554306paymentHoverLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"paymentHoverLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get paymentSaleBadge() : BriskImageDynaLib
      {
         return this._805360694paymentSaleBadge;
      }
      
      public function set paymentSaleBadge(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._805360694paymentSaleBadge;
         if(_loc2_ !== param1)
         {
            this._805360694paymentSaleBadge = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"paymentSaleBadge",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get paymentSparkle() : BriskImageDynaLib
      {
         return this._1287581744paymentSparkle;
      }
      
      public function set paymentSparkle(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1287581744paymentSparkle;
         if(_loc2_ !== param1)
         {
            this._1287581744paymentSparkle = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"paymentSparkle",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get purchaseButton() : MultistateButton
      {
         return this._1082037139purchaseButton;
      }
      
      public function set purchaseButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1082037139purchaseButton;
         if(_loc2_ !== param1)
         {
            this._1082037139purchaseButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"purchaseButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get saleBadge() : BriskImageDynaLib
      {
         return this._128319588saleBadge;
      }
      
      public function set saleBadge(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._128319588saleBadge;
         if(_loc2_ !== param1)
         {
            this._128319588saleBadge = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"saleBadge",_loc2_,param1));
            }
         }
      }
   }
}

