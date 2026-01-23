package net.bigpoint.cityrama.view.playfieldItemInventory.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.components.PlayfieldItemInventorySlotComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class PlayfieldItemInventoryLockedSlotSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1233113849amountGroup:HGroup;
      
      private var _922505399improvementGroup:HGroup;
      
      private var _911601987improvementSlot1:BriskImageDynaLib;
      
      private var _911601986improvementSlot2:BriskImageDynaLib;
      
      private var _911601985improvementSlot3:BriskImageDynaLib;
      
      private var _1376040855itemAmountLabel:LocaLabel;
      
      private var _1295462561itemBackground:BriskImageDynaLib;
      
      private var _2116181862itemGfx:BriskImageDynaLib;
      
      private var _1391742627lockedIcon:BriskImageDynaLib;
      
      private var _899454237slotBg:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:PlayfieldItemInventorySlotComponent;
      
      public function PlayfieldItemInventoryLockedSlotSkin()
      {
         super();
         mx_internal::_document = this;
         this.minHeight = 87;
         this.minWidth = 82;
         this.mxmlContent = [this._PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib1_i(),this._PlayfieldItemInventoryLockedSlotSkin_Group1_c(),this._PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib7_i(),this._PlayfieldItemInventoryLockedSlotSkin_VGroup1_c(),this._PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib9_i()];
         this.currentState = "disabled";
         states = [new State({
            "name":"disabled",
            "overrides":[]
         }),new State({
            "name":"over",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"slotBg",
               "name":"dynaBmpSourceName",
               "value":"slot_bg_red"
            })]
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
         if(param1 != "over")
         {
            param1 = "disabled";
         }
         super.setCurrentState(param1,false);
      }
      
      private function _PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 5;
         _loc1_.dynaLibName = "gui_ui_inventory";
         _loc1_.dynaBmpSourceName = "item_master_bg_normal";
         _loc1_.id = "slotBg";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.slotBg = _loc1_;
         BindingManager.executeBindings(this,"slotBg",this.slotBg);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryLockedSlotSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.bottom = 0;
         _loc1_.height = 22;
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 68;
         _loc1_.alpha = 0.5;
         _loc1_.mxmlContent = [this._PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib2_c(),this._PlayfieldItemInventoryLockedSlotSkin_HGroup1_i(),this._PlayfieldItemInventoryLockedSlotSkin_HGroup2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.height = 22;
         _loc1_.width = 59;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaLibName = "gui_ui_inventory";
         _loc1_.dynaBmpSourceName = "building_postit";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryLockedSlotSkin_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.top = 4;
         _loc1_.gap = 2;
         _loc1_.visible = false;
         _loc1_.mxmlContent = [this._PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib3_i(),this._PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib4_i(),this._PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib5_i()];
         _loc1_.id = "improvementGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.improvementGroup = _loc1_;
         BindingManager.executeBindings(this,"improvementGroup",this.improvementGroup);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.height = 15;
         _loc1_.width = 15;
         _loc1_.dynaLibName = "gui_ui_inventory";
         _loc1_.dynaBmpSourceName = "hip_locked";
         _loc1_.id = "improvementSlot1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.improvementSlot1 = _loc1_;
         BindingManager.executeBindings(this,"improvementSlot1",this.improvementSlot1);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.height = 15;
         _loc1_.width = 15;
         _loc1_.dynaLibName = "gui_ui_inventory";
         _loc1_.dynaBmpSourceName = "hip_locked";
         _loc1_.id = "improvementSlot2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.improvementSlot2 = _loc1_;
         BindingManager.executeBindings(this,"improvementSlot2",this.improvementSlot2);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.height = 15;
         _loc1_.width = 15;
         _loc1_.dynaLibName = "gui_ui_inventory";
         _loc1_.dynaBmpSourceName = "hip_locked";
         _loc1_.id = "improvementSlot3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.improvementSlot3 = _loc1_;
         BindingManager.executeBindings(this,"improvementSlot3",this.improvementSlot3);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryLockedSlotSkin_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.top = 4;
         _loc1_.visible = false;
         _loc1_.mxmlContent = [this._PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib6_c(),this._PlayfieldItemInventoryLockedSlotSkin_LocaLabel1_i()];
         _loc1_.id = "amountGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.amountGroup = _loc1_;
         BindingManager.executeBindings(this,"amountGroup",this.amountGroup);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.height = 14;
         _loc1_.width = 15;
         _loc1_.dynaLibName = "gui_ui_inventory";
         _loc1_.dynaBmpSourceName = "amount_icon_mini";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryLockedSlotSkin_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.text = "1";
         _loc1_.styleName = "improvementAmount";
         _loc1_.setStyle("paddingTop",3);
         _loc1_.id = "itemAmountLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemAmountLabel = _loc1_;
         BindingManager.executeBindings(this,"itemAmountLabel",this.itemAmountLabel);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 8;
         _loc1_.dynaLibName = "gui_ui_inventory";
         _loc1_.dynaBmpSourceName = "bg_playfieldItem_blue";
         _loc1_.width = 64;
         _loc1_.height = 63;
         _loc1_.alpha = 0.5;
         _loc1_.id = "itemBackground";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemBackground = _loc1_;
         BindingManager.executeBindings(this,"itemBackground",this.itemBackground);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryLockedSlotSkin_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 64;
         _loc1_.height = 63;
         _loc1_.top = 9;
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.alpha = 0.5;
         _loc1_.mxmlContent = [this._PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib8_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.maintainAspectRation = true;
         _loc1_.smoothing = true;
         _loc1_.maxWidth = 50;
         _loc1_.maxHeight = 50;
         _loc1_.id = "itemGfx";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemGfx = _loc1_;
         BindingManager.executeBindings(this,"itemGfx",this.itemGfx);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryLockedSlotSkin_BriskImageDynaLib9_i() : BriskImageDynaLib
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
      public function get amountGroup() : HGroup
      {
         return this._1233113849amountGroup;
      }
      
      public function set amountGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._1233113849amountGroup;
         if(_loc2_ !== param1)
         {
            this._1233113849amountGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"amountGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get improvementGroup() : HGroup
      {
         return this._922505399improvementGroup;
      }
      
      public function set improvementGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._922505399improvementGroup;
         if(_loc2_ !== param1)
         {
            this._922505399improvementGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvementGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get improvementSlot1() : BriskImageDynaLib
      {
         return this._911601987improvementSlot1;
      }
      
      public function set improvementSlot1(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._911601987improvementSlot1;
         if(_loc2_ !== param1)
         {
            this._911601987improvementSlot1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvementSlot1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get improvementSlot2() : BriskImageDynaLib
      {
         return this._911601986improvementSlot2;
      }
      
      public function set improvementSlot2(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._911601986improvementSlot2;
         if(_loc2_ !== param1)
         {
            this._911601986improvementSlot2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvementSlot2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get improvementSlot3() : BriskImageDynaLib
      {
         return this._911601985improvementSlot3;
      }
      
      public function set improvementSlot3(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._911601985improvementSlot3;
         if(_loc2_ !== param1)
         {
            this._911601985improvementSlot3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvementSlot3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemAmountLabel() : LocaLabel
      {
         return this._1376040855itemAmountLabel;
      }
      
      public function set itemAmountLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1376040855itemAmountLabel;
         if(_loc2_ !== param1)
         {
            this._1376040855itemAmountLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemAmountLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemBackground() : BriskImageDynaLib
      {
         return this._1295462561itemBackground;
      }
      
      public function set itemBackground(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1295462561itemBackground;
         if(_loc2_ !== param1)
         {
            this._1295462561itemBackground = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemBackground",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemGfx() : BriskImageDynaLib
      {
         return this._2116181862itemGfx;
      }
      
      public function set itemGfx(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._2116181862itemGfx;
         if(_loc2_ !== param1)
         {
            this._2116181862itemGfx = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemGfx",_loc2_,param1));
            }
         }
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

