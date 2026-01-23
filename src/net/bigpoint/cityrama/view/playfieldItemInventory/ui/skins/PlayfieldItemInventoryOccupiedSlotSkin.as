package net.bigpoint.cityrama.view.playfieldItemInventory.ui.skins
{
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.model.inventory.PlayfieldItemInventoryViewProxy;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.components.PlayfieldItemInventorySlotComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class PlayfieldItemInventoryOccupiedSlotSkin extends SparkSkin implements IStateClient2
   {
      
      private var _169992686_PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10:BriskImageDynaLib;
      
      private var _514574038_PlayfieldItemInventoryOccupiedSlotSkin_Group1:Group;
      
      private var _2028875548_PlayfieldItemInventoryOccupiedSlotSkin_VGroup1:VGroup;
      
      private var _1233113849amountGroup:HGroup;
      
      private var _41846797blockedGroup:HGroup;
      
      private var _262472981departmentIcon:BriskImageDynaLib;
      
      private var _922505399improvementGroup:HGroup;
      
      private var _911601987improvementSlot1:BriskImageDynaLib;
      
      private var _911601986improvementSlot2:BriskImageDynaLib;
      
      private var _911601985improvementSlot3:BriskImageDynaLib;
      
      private var _1376040855itemAmountLabel:LocaLabel;
      
      private var _1295462561itemBackground:BriskImageDynaLib;
      
      private var _2116181862itemGfx:BriskImageDynaLib;
      
      private var _1282346808removeBtn:DynamicImageButton;
      
      private var _860889977removeSlotBg:BriskImageDynaLib;
      
      private var _311765527residentIcon:BriskImageDynaLib;
      
      private var _288785898residentIconGroup:HGroup;
      
      private var _899454237slotBg:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:PlayfieldItemInventorySlotComponent;
      
      public function PlayfieldItemInventoryOccupiedSlotSkin()
      {
         super();
         mx_internal::_document = this;
         this.minHeight = 87;
         this.minWidth = 82;
         this.mxmlContent = [this._PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib1_i(),this._PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib2_i(),this._PlayfieldItemInventoryOccupiedSlotSkin_Group1_i(),this._PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib8_i(),this._PlayfieldItemInventoryOccupiedSlotSkin_VGroup1_i(),this._PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10_i(),this._PlayfieldItemInventoryOccupiedSlotSkin_DynamicImageButton1_i(),this._PlayfieldItemInventoryOccupiedSlotSkin_HGroup3_i(),this._PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib12_i(),this._PlayfieldItemInventoryOccupiedSlotSkin_HGroup4_i()];
         this.currentState = "normal";
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"over",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"slotBg",
               "name":"dynaBmpSourceName",
               "value":"slot_bg_blue"
            }),new SetProperty().initializeFromObject({
               "target":"_PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10",
               "name":"dynaBmpSourceName",
               "value":"abort_over"
            }),new SetProperty().initializeFromObject({
               "target":"removeBtn",
               "name":"includeInLayout",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"removeBtn",
               "name":"visible",
               "value":true
            })]
         }),new State({
            "name":"overNoRemove",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"slotBg",
               "name":"dynaBmpSourceName",
               "value":"slot_bg_blue"
            })]
         }),new State({
            "name":"overSelected",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"slotBg",
               "name":"dynaBmpSourceName",
               "value":"slot_bg_blue"
            }),new SetProperty().initializeFromObject({
               "target":"_PlayfieldItemInventoryOccupiedSlotSkin_Group1",
               "name":"alpha",
               "value":0.5
            }),new SetProperty().initializeFromObject({
               "target":"itemBackground",
               "name":"alpha",
               "value":0.5
            }),new SetProperty().initializeFromObject({
               "target":"_PlayfieldItemInventoryOccupiedSlotSkin_VGroup1",
               "name":"alpha",
               "value":0.5
            }),new SetProperty().initializeFromObject({
               "target":"_PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10",
               "name":"dynaBmpSourceName",
               "value":"abort_over"
            }),new SetProperty().initializeFromObject({
               "target":"_PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10",
               "name":"includeInLayout",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"_PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10",
               "name":"visible",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"residentIconGroup",
               "name":"alpha",
               "value":0.5
            }),new SetProperty().initializeFromObject({
               "target":"departmentIcon",
               "name":"alpha",
               "value":0.5
            })]
         }),new State({
            "name":"overEmergencyBlocked",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"slotBg",
               "name":"dynaBmpSourceName",
               "value":"slot_bg_red"
            }),new SetProperty().initializeFromObject({
               "target":"_PlayfieldItemInventoryOccupiedSlotSkin_Group1",
               "name":"alpha",
               "value":0.5
            }),new SetProperty().initializeFromObject({
               "target":"itemBackground",
               "name":"alpha",
               "value":0.5
            }),new SetProperty().initializeFromObject({
               "target":"_PlayfieldItemInventoryOccupiedSlotSkin_VGroup1",
               "name":"alpha",
               "value":0.5
            }),new SetProperty().initializeFromObject({
               "target":"departmentIcon",
               "name":"alpha",
               "value":0.5
            }),new SetProperty().initializeFromObject({
               "target":"blockedGroup",
               "name":"visible",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"blockedGroup",
               "name":"includeInLayout",
               "value":true
            })]
         }),new State({
            "name":"overItem",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"slotBg",
               "name":"dynaBmpSourceName",
               "value":"slot_bg_red"
            })]
         }),new State({
            "name":"disabled",
            "overrides":[]
         }),new State({
            "name":"selected",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"slotBg",
               "name":"dynaBmpSourceName",
               "value":"slot_bg_blue"
            }),new SetProperty().initializeFromObject({
               "target":"_PlayfieldItemInventoryOccupiedSlotSkin_Group1",
               "name":"alpha",
               "value":0.5
            }),new SetProperty().initializeFromObject({
               "target":"itemBackground",
               "name":"alpha",
               "value":0.5
            }),new SetProperty().initializeFromObject({
               "target":"_PlayfieldItemInventoryOccupiedSlotSkin_VGroup1",
               "name":"alpha",
               "value":0.5
            }),new SetProperty().initializeFromObject({
               "target":"_PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10",
               "name":"includeInLayout",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"_PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10",
               "name":"visible",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"residentIconGroup",
               "name":"alpha",
               "value":0.5
            }),new SetProperty().initializeFromObject({
               "target":"departmentIcon",
               "name":"alpha",
               "value":0.5
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
         switch(param1)
         {
               if(this.hostComponent.data.itemAtCursor)
               {
                  if(this.hostComponent.data.item == this.hostComponent.data.itemAtCursor)
                  {
                     param1 = "overSelected";
                     break;
                  }
                  param1 = "overItem";
                  break;
               }
               if(this.hostComponent.data.item.configItem.destroyable)
               {
                  param1 = "over";
               }
               else
               {
                  param1 = "overNoRemove";
               }
               if(this.hostComponent.data.emergencyRunning && this.hostComponent.data.item.sortCategory == PlayfieldItemInventoryViewProxy.CATEGORY_EMERGENCY_INVENTORY)
               {
                  param1 = "overEmergencyBlocked";
               }
               break;
            default:
               param1 = "normal";
               break;
            case "over":
            case "overSelected":
         }
         super.setCurrentState(param1,param2);
      }
      
      private function handleRemoveBtnOver(param1:MouseEvent) : void
      {
         var _temp_1:* = this.slotBg;
         this.slotBg.includeInLayout = false;
         _temp_1.visible = false;
         var _temp_2:* = this.removeSlotBg;
         var _loc2_:Boolean;
         this.removeSlotBg.includeInLayout = _loc2_ = true;
         _temp_2.visible = false;
      }
      
      private function handleRemoveBtnOut(param1:MouseEvent) : void
      {
         var _temp_1:* = this.slotBg;
         this.slotBg.includeInLayout = true;
         _temp_1.visible = true;
         var _temp_2:* = this.removeSlotBg;
         var _loc2_:Boolean;
         this.removeSlotBg.includeInLayout = _loc2_ = false;
         _temp_2.visible = true;
      }
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
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
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 5;
         _loc1_.dynaLibName = "gui_ui_inventory";
         _loc1_.dynaBmpSourceName = "slot_bg_red";
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "removeSlotBg";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.removeSlotBg = _loc1_;
         BindingManager.executeBindings(this,"removeSlotBg",this.removeSlotBg);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.bottom = 0;
         _loc1_.height = 22;
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 68;
         _loc1_.alpha = 1;
         _loc1_.mxmlContent = [this._PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib3_c(),this._PlayfieldItemInventoryOccupiedSlotSkin_HGroup1_i(),this._PlayfieldItemInventoryOccupiedSlotSkin_HGroup2_i()];
         _loc1_.id = "_PlayfieldItemInventoryOccupiedSlotSkin_Group1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PlayfieldItemInventoryOccupiedSlotSkin_Group1 = _loc1_;
         BindingManager.executeBindings(this,"_PlayfieldItemInventoryOccupiedSlotSkin_Group1",this._PlayfieldItemInventoryOccupiedSlotSkin_Group1);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
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
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.top = 4;
         _loc1_.gap = 2;
         _loc1_.visible = false;
         _loc1_.mxmlContent = [this._PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib4_i(),this._PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib5_i(),this._PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib6_i()];
         _loc1_.id = "improvementGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.improvementGroup = _loc1_;
         BindingManager.executeBindings(this,"improvementGroup",this.improvementGroup);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
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
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
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
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib6_i() : BriskImageDynaLib
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
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.top = 4;
         _loc1_.visible = false;
         _loc1_.mxmlContent = [this._PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib7_c(),this._PlayfieldItemInventoryOccupiedSlotSkin_LocaLabel1_i()];
         _loc1_.id = "amountGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.amountGroup = _loc1_;
         BindingManager.executeBindings(this,"amountGroup",this.amountGroup);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib7_c() : BriskImageDynaLib
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
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_LocaLabel1_i() : LocaLabel
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
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 8;
         _loc1_.dynaLibName = "gui_ui_inventory";
         _loc1_.dynaBmpSourceName = "bg_playfieldItem_blue";
         _loc1_.width = 64;
         _loc1_.height = 63;
         _loc1_.alpha = 1;
         _loc1_.id = "itemBackground";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemBackground = _loc1_;
         BindingManager.executeBindings(this,"itemBackground",this.itemBackground);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_VGroup1_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 64;
         _loc1_.height = 63;
         _loc1_.top = 9;
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.alpha = 1;
         _loc1_.mxmlContent = [this._PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib9_i()];
         _loc1_.id = "_PlayfieldItemInventoryOccupiedSlotSkin_VGroup1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PlayfieldItemInventoryOccupiedSlotSkin_VGroup1 = _loc1_;
         BindingManager.executeBindings(this,"_PlayfieldItemInventoryOccupiedSlotSkin_VGroup1",this._PlayfieldItemInventoryOccupiedSlotSkin_VGroup1);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib9_i() : BriskImageDynaLib
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
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.height = 25;
         _loc1_.width = 25;
         _loc1_.dynaLibName = "gui_ui_inventory";
         _loc1_.dynaBmpSourceName = "abort_normal";
         _loc1_.right = 0;
         _loc1_.top = 0;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "_PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10 = _loc1_;
         BindingManager.executeBindings(this,"_PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10",this._PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "inventoryRemoveBtn";
         _loc1_.right = 0;
         _loc1_.top = 0;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.addEventListener("rollOver",this.__removeBtn_rollOver);
         _loc1_.addEventListener("rollOut",this.__removeBtn_rollOut);
         _loc1_.id = "removeBtn";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.removeBtn = _loc1_;
         BindingManager.executeBindings(this,"removeBtn",this.removeBtn);
         return _loc1_;
      }
      
      public function __removeBtn_rollOver(param1:MouseEvent) : void
      {
         this.handleRemoveBtnOver(param1);
      }
      
      public function __removeBtn_rollOut(param1:MouseEvent) : void
      {
         this.handleRemoveBtnOut(param1);
      }
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_HGroup3_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.width = 26;
         _loc1_.height = 20;
         _loc1_.left = -2;
         _loc1_.top = 0;
         _loc1_.visible = false;
         _loc1_.alpha = 1;
         _loc1_.mxmlContent = [this._PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib11_i()];
         _loc1_.id = "residentIconGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.residentIconGroup = _loc1_;
         BindingManager.executeBindings(this,"residentIconGroup",this.residentIconGroup);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib11_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_ui_inventory";
         _loc1_.id = "residentIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.residentIcon = _loc1_;
         BindingManager.executeBindings(this,"residentIcon",this.residentIcon);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib12_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_ui_inventory";
         _loc1_.height = 24;
         _loc1_.width = 20;
         _loc1_.alpha = 1;
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.id = "departmentIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.departmentIcon = _loc1_;
         BindingManager.executeBindings(this,"departmentIcon",this.departmentIcon);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_HGroup4_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.width = 72;
         _loc1_.height = 87;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 5;
         _loc1_.mxmlContent = [this._PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib13_c()];
         _loc1_.id = "blockedGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.blockedGroup = _loc1_;
         BindingManager.executeBindings(this,"blockedGroup",this.blockedGroup);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib13_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_ui_inventory";
         _loc1_.dynaBmpSourceName = "icon_no";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10() : BriskImageDynaLib
      {
         return this._169992686_PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10;
      }
      
      public function set _PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._169992686_PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10;
         if(_loc2_ !== param1)
         {
            this._169992686_PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_PlayfieldItemInventoryOccupiedSlotSkin_BriskImageDynaLib10",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _PlayfieldItemInventoryOccupiedSlotSkin_Group1() : Group
      {
         return this._514574038_PlayfieldItemInventoryOccupiedSlotSkin_Group1;
      }
      
      public function set _PlayfieldItemInventoryOccupiedSlotSkin_Group1(param1:Group) : void
      {
         var _loc2_:Object = this._514574038_PlayfieldItemInventoryOccupiedSlotSkin_Group1;
         if(_loc2_ !== param1)
         {
            this._514574038_PlayfieldItemInventoryOccupiedSlotSkin_Group1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_PlayfieldItemInventoryOccupiedSlotSkin_Group1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _PlayfieldItemInventoryOccupiedSlotSkin_VGroup1() : VGroup
      {
         return this._2028875548_PlayfieldItemInventoryOccupiedSlotSkin_VGroup1;
      }
      
      public function set _PlayfieldItemInventoryOccupiedSlotSkin_VGroup1(param1:VGroup) : void
      {
         var _loc2_:Object = this._2028875548_PlayfieldItemInventoryOccupiedSlotSkin_VGroup1;
         if(_loc2_ !== param1)
         {
            this._2028875548_PlayfieldItemInventoryOccupiedSlotSkin_VGroup1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_PlayfieldItemInventoryOccupiedSlotSkin_VGroup1",_loc2_,param1));
            }
         }
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
      public function get blockedGroup() : HGroup
      {
         return this._41846797blockedGroup;
      }
      
      public function set blockedGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._41846797blockedGroup;
         if(_loc2_ !== param1)
         {
            this._41846797blockedGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blockedGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get departmentIcon() : BriskImageDynaLib
      {
         return this._262472981departmentIcon;
      }
      
      public function set departmentIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._262472981departmentIcon;
         if(_loc2_ !== param1)
         {
            this._262472981departmentIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"departmentIcon",_loc2_,param1));
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
      public function get removeBtn() : DynamicImageButton
      {
         return this._1282346808removeBtn;
      }
      
      public function set removeBtn(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._1282346808removeBtn;
         if(_loc2_ !== param1)
         {
            this._1282346808removeBtn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"removeBtn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get removeSlotBg() : BriskImageDynaLib
      {
         return this._860889977removeSlotBg;
      }
      
      public function set removeSlotBg(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._860889977removeSlotBg;
         if(_loc2_ !== param1)
         {
            this._860889977removeSlotBg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"removeSlotBg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get residentIcon() : BriskImageDynaLib
      {
         return this._311765527residentIcon;
      }
      
      public function set residentIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._311765527residentIcon;
         if(_loc2_ !== param1)
         {
            this._311765527residentIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get residentIconGroup() : HGroup
      {
         return this._288785898residentIconGroup;
      }
      
      public function set residentIconGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._288785898residentIconGroup;
         if(_loc2_ !== param1)
         {
            this._288785898residentIconGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentIconGroup",_loc2_,param1));
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

