package net.bigpoint.cityrama.view.playfieldItemInventory.ui.components
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
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   
   use namespace mx_internal;
   
   public class PurchaseSlotButton extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public static const PURCHASE_BTN_CLICKED:String = "PURCHASE_BTN_CLICKED";
      
      private var _1501304571plusGroup:HGroup;
      
      private var _1082037139purchaseButton:MultistateButton;
      
      private var _1870554669smallPlusButton:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function PurchaseSlotButton()
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
         bindings = this._PurchaseSlotButton_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_playfieldItemInventory_ui_components_PurchaseSlotButtonWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return PurchaseSlotButton[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.width = 61;
         this.height = 33;
         this.mxmlContent = [this._PurchaseSlotButton_MultistateButton1_i(),this._PurchaseSlotButton_HGroup1_i()];
         this.addEventListener("mouseOver",this.___PurchaseSlotButton_Group1_mouseOver);
         this.addEventListener("mouseOut",this.___PurchaseSlotButton_Group1_mouseOut);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         PurchaseSlotButton._watcherSetupUtil = param1;
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
      
      public function set showPlus(param1:Boolean) : void
      {
         this.plusGroup.includeInLayout = this.smallPlusButton.visible = param1;
         this.purchaseButton.showPlus = param1;
      }
      
      public function set price(param1:Number) : void
      {
         this.purchaseButton.priceToConfirm = param1;
         this.purchaseButton.label = LocaUtils.getThousendSeperatedNumber(param1);
      }
      
      private function handleButtonClick(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(PURCHASE_BTN_CLICKED,true));
      }
      
      private function handleMouseOver(param1:MouseEvent) : void
      {
         if(this.plusGroup.includeInLayout)
         {
            this.smallPlusButton.dynaBmpSourceName = "mini_plus_over";
         }
      }
      
      private function handleMouseOut(param1:MouseEvent) : void
      {
         if(this.plusGroup.includeInLayout)
         {
            this.smallPlusButton.dynaBmpSourceName = "mini_plus";
         }
      }
      
      private function _PurchaseSlotButton_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.styleName = "mediumSkinPurchase";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.libNameLeft = "gui_resources_icons";
         _loc1_.imageNameLeft = "rc_icon_small";
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
         this.handleButtonClick(param1);
      }
      
      private function _PurchaseSlotButton_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.right = -6;
         _loc1_.top = -6;
         _loc1_.includeInLayout = true;
         _loc1_.visible = true;
         _loc1_.mxmlContent = [this._PurchaseSlotButton_BriskImageDynaLib1_i()];
         _loc1_.id = "plusGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.plusGroup = _loc1_;
         BindingManager.executeBindings(this,"plusGroup",this.plusGroup);
         return _loc1_;
      }
      
      private function _PurchaseSlotButton_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_ui_inventory";
         _loc1_.dynaBmpSourceName = "mini_plus";
         _loc1_.id = "smallPlusButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.smallPlusButton = _loc1_;
         BindingManager.executeBindings(this,"smallPlusButton",this.smallPlusButton);
         return _loc1_;
      }
      
      public function ___PurchaseSlotButton_Group1_mouseOver(param1:MouseEvent) : void
      {
         this.handleMouseOver(param1);
      }
      
      public function ___PurchaseSlotButton_Group1_mouseOut(param1:MouseEvent) : void
      {
         this.handleMouseOut(param1);
      }
      
      private function _PurchaseSlotButton_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Boolean
         {
            return this.enabled;
         },null,"purchaseButton.enabled");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get plusGroup() : HGroup
      {
         return this._1501304571plusGroup;
      }
      
      public function set plusGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._1501304571plusGroup;
         if(_loc2_ !== param1)
         {
            this._1501304571plusGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"plusGroup",_loc2_,param1));
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
      public function get smallPlusButton() : BriskImageDynaLib
      {
         return this._1870554669smallPlusButton;
      }
      
      public function set smallPlusButton(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1870554669smallPlusButton;
         if(_loc2_ !== param1)
         {
            this._1870554669smallPlusButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"smallPlusButton",_loc2_,param1));
            }
         }
      }
   }
}

