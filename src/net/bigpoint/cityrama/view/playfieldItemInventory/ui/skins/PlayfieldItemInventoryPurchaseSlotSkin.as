package net.bigpoint.cityrama.view.playfieldItemInventory.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.components.PlayfieldItemInventorySlotComponent;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.components.PurchaseSlotButton;
   import spark.skins.SparkSkin;
   
   public class PlayfieldItemInventoryPurchaseSlotSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1391742627lockedIcon:BriskImageDynaLib;
      
      private var _633230747purchaseBtn:PurchaseSlotButton;
      
      private var _899454237slotBg:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:PlayfieldItemInventorySlotComponent;
      
      public function PlayfieldItemInventoryPurchaseSlotSkin()
      {
         super();
         mx_internal::_document = this;
         this.minHeight = 87;
         this.minWidth = 82;
         this.mxmlContent = [this._PlayfieldItemInventoryPurchaseSlotSkin_BriskImageDynaLib1_i(),this._PlayfieldItemInventoryPurchaseSlotSkin_PurchaseSlotButton1_i(),this._PlayfieldItemInventoryPurchaseSlotSkin_BriskImageDynaLib2_i()];
         this.currentState = "normal";
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"over",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[]
         })];
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
      
      override public function setCurrentState(param1:String, param2:Boolean = true) : void
      {
         if(param1 != "normal" && param1 != "over")
         {
            return;
         }
         super.setCurrentState(param1,param2);
      }
      
      private function _PlayfieldItemInventoryPurchaseSlotSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 5;
         _loc1_.dynaLibName = "gui_ui_inventory";
         _loc1_.dynaBmpSourceName = "slot_bg_dark";
         _loc1_.id = "slotBg";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.slotBg = _loc1_;
         BindingManager.executeBindings(this,"slotBg",this.slotBg);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryPurchaseSlotSkin_PurchaseSlotButton1_i() : PurchaseSlotButton
      {
         var _loc1_:PurchaseSlotButton = new PurchaseSlotButton();
         _loc1_.top = 40;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "purchaseBtn";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.purchaseBtn = _loc1_;
         BindingManager.executeBindings(this,"purchaseBtn",this.purchaseBtn);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryPurchaseSlotSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_ui_inventory";
         _loc1_.dynaBmpSourceName = "icon_slot_locked";
         _loc1_.left = 0;
         _loc1_.top = 0;
         _loc1_.id = "lockedIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.lockedIcon = _loc1_;
         BindingManager.executeBindings(this,"lockedIcon",this.lockedIcon);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get lockedIcon() : BriskImageDynaLib
      {
         return this._1391742627lockedIcon;
      }
      
      public function set lockedIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1391742627lockedIcon;
         if(_loc2_ !== param1)
         {
            this._1391742627lockedIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lockedIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get purchaseBtn() : PurchaseSlotButton
      {
         return this._633230747purchaseBtn;
      }
      
      public function set purchaseBtn(param1:PurchaseSlotButton) : void
      {
         var _loc2_:Object = this._633230747purchaseBtn;
         if(_loc2_ !== param1)
         {
            this._633230747purchaseBtn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"purchaseBtn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slotBg() : BriskImageDynaLib
      {
         return this._899454237slotBg;
      }
      
      public function set slotBg(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._899454237slotBg;
         if(_loc2_ !== param1)
         {
            this._899454237slotBg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slotBg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : PlayfieldItemInventorySlotComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:PlayfieldItemInventorySlotComponent) : void
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

