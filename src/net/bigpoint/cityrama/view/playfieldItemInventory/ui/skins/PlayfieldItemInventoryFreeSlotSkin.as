package net.bigpoint.cityrama.view.playfieldItemInventory.ui.skins
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
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.components.PlayfieldItemInventorySlotComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class PlayfieldItemInventoryFreeSlotSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _PlayfieldItemInventoryFreeSlotSkin_HGroup3:HGroup;
      
      private var _41846797blockedGroup:HGroup;
      
      private var _262472981departmentIcon:BriskImageDynaLib;
      
      private var _922505399improvementGroup:HGroup;
      
      private var _911601987improvementSlot1:BriskImageDynaLib;
      
      private var _911601986improvementSlot2:BriskImageDynaLib;
      
      private var _911601985improvementSlot3:BriskImageDynaLib;
      
      private var _1376040855itemAmountLabel:LocaLabel;
      
      private var _1295462561itemBackground:BriskImageDynaLib;
      
      private var _2116181862itemGfx:BriskImageDynaLib;
      
      private var _1384890473previewGroup:Group;
      
      private var _311765527residentIcon:BriskImageDynaLib;
      
      private var _288785898residentIconGroup:HGroup;
      
      private var _899454237slotBg:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:PlayfieldItemInventorySlotComponent;
      
      public function PlayfieldItemInventoryFreeSlotSkin()
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
         bindings = this._PlayfieldItemInventoryFreeSlotSkin_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_playfieldItemInventory_ui_skins_PlayfieldItemInventoryFreeSlotSkinWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return PlayfieldItemInventoryFreeSlotSkin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.minHeight = 87;
         this.minWidth = 82;
         this.mxmlContent = [this._PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib1_i(),this._PlayfieldItemInventoryFreeSlotSkin_HGroup1_i(),this._PlayfieldItemInventoryFreeSlotSkin_Group1_i()];
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
            })]
         }),new State({
            "name":"overBlocked",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"slotBg",
               "name":"dynaBmpSourceName",
               "value":"slot_bg_red"
            }),new SetProperty().initializeFromObject({
               "target":"blockedGroup",
               "name":"visible",
               "value":true
            })]
         }),new State({
            "name":"overItem",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"slotBg",
               "name":"dynaBmpSourceName",
               "value":"slot_bg_green"
            }),new SetProperty().initializeFromObject({
               "target":"previewGroup",
               "name":"visible",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"previewGroup",
               "name":"includeInLayout",
               "value":true
            })]
         }),new State({
            "name":"disabled",
            "overrides":[]
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
         PlayfieldItemInventoryFreeSlotSkin._watcherSetupUtil = param1;
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
                  if(this.hostComponent.data.itemAtCursor.isBlocked)
                  {
                     param1 = "overBlocked";
                     break;
                  }
                  param1 = "overItem";
                  this.setPreviewItem();
                  break;
               }
               param1 = "over";
               break;
            default:
               param1 = "normal";
               break;
            case "over":
            case "overSelected":
         }
         super.setCurrentState(param1,param2);
      }
      
      private function setPreviewItem() : void
      {
         if(this.hostComponent.data.itemAtCursor)
         {
            this.itemBackground.briskDynaVo = this.hostComponent.data.itemAtCursor.bgGfxVo;
            this.itemGfx.briskDynaVo = this.hostComponent.data.itemAtCursor.playfieldItemGfxVo;
            this.improvementGroup.visible = this.hostComponent.data.itemAtCursor.improvementGfx != null;
            if(this.hostComponent.data.itemAtCursor.improvementGfx)
            {
               this.improvementSlot1.briskDynaVo = this.hostComponent.data.itemAtCursor.improvementGfx[0];
               this.improvementSlot2.briskDynaVo = this.hostComponent.data.itemAtCursor.improvementGfx[1];
               this.improvementSlot3.briskDynaVo = this.hostComponent.data.itemAtCursor.improvementGfx[2];
            }
            this.residentIconGroup.visible = this.residentIconGroup.includeInLayout = this.hostComponent.data.itemAtCursor.residentGfx != null;
            if(this.hostComponent.data.itemAtCursor.residentGfx)
            {
               this.residentIcon.briskDynaVo = this.hostComponent.data.itemAtCursor.residentGfx;
            }
            this.departmentIcon.visible = this.departmentIcon.includeInLayout = this.hostComponent.data.itemAtCursor.departmentGfx != null;
            if(this.hostComponent.data.itemAtCursor.departmentGfx)
            {
               this.departmentIcon.briskDynaVo = this.hostComponent.data.itemAtCursor.departmentGfx;
            }
         }
      }
      
      private function _PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
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
      
      private function _PlayfieldItemInventoryFreeSlotSkin_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.width = 72;
         _loc1_.height = 87;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.visible = false;
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 5;
         _loc1_.mxmlContent = [this._PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib2_c()];
         _loc1_.id = "blockedGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.blockedGroup = _loc1_;
         BindingManager.executeBindings(this,"blockedGroup",this.blockedGroup);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
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
      
      private function _PlayfieldItemInventoryFreeSlotSkin_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._PlayfieldItemInventoryFreeSlotSkin_Group2_c(),this._PlayfieldItemInventoryFreeSlotSkin_HGroup4_i(),this._PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib11_i()];
         _loc1_.id = "previewGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.previewGroup = _loc1_;
         BindingManager.executeBindings(this,"previewGroup",this.previewGroup);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryFreeSlotSkin_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._PlayfieldItemInventoryFreeSlotSkin_Group3_c(),this._PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib8_i(),this._PlayfieldItemInventoryFreeSlotSkin_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryFreeSlotSkin_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.bottom = 0;
         _loc1_.height = 22;
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 68;
         _loc1_.alpha = 0.5;
         _loc1_.mxmlContent = [this._PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib3_c(),this._PlayfieldItemInventoryFreeSlotSkin_HGroup2_i(),this._PlayfieldItemInventoryFreeSlotSkin_HGroup3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
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
      
      private function _PlayfieldItemInventoryFreeSlotSkin_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.top = 4;
         _loc1_.gap = 2;
         _loc1_.visible = false;
         _loc1_.mxmlContent = [this._PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib4_i(),this._PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib5_i(),this._PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib6_i()];
         _loc1_.id = "improvementGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.improvementGroup = _loc1_;
         BindingManager.executeBindings(this,"improvementGroup",this.improvementGroup);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
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
      
      private function _PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
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
      
      private function _PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib6_i() : BriskImageDynaLib
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
      
      private function _PlayfieldItemInventoryFreeSlotSkin_HGroup3_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.top = 4;
         _loc1_.mxmlContent = [this._PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib7_c(),this._PlayfieldItemInventoryFreeSlotSkin_LocaLabel1_i()];
         _loc1_.id = "_PlayfieldItemInventoryFreeSlotSkin_HGroup3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PlayfieldItemInventoryFreeSlotSkin_HGroup3 = _loc1_;
         BindingManager.executeBindings(this,"_PlayfieldItemInventoryFreeSlotSkin_HGroup3",this._PlayfieldItemInventoryFreeSlotSkin_HGroup3);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib7_c() : BriskImageDynaLib
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
      
      private function _PlayfieldItemInventoryFreeSlotSkin_LocaLabel1_i() : LocaLabel
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
      
      private function _PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib8_i() : BriskImageDynaLib
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
      
      private function _PlayfieldItemInventoryFreeSlotSkin_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 64;
         _loc1_.height = 63;
         _loc1_.top = 9;
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.alpha = 0.5;
         _loc1_.mxmlContent = [this._PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib9_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib9_i() : BriskImageDynaLib
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
      
      private function _PlayfieldItemInventoryFreeSlotSkin_HGroup4_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.width = 26;
         _loc1_.height = 20;
         _loc1_.left = -2;
         _loc1_.top = 0;
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.alpha = 0.5;
         _loc1_.mxmlContent = [this._PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib10_i()];
         _loc1_.id = "residentIconGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.residentIconGroup = _loc1_;
         BindingManager.executeBindings(this,"residentIconGroup",this.residentIconGroup);
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib10_i() : BriskImageDynaLib
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
      
      private function _PlayfieldItemInventoryFreeSlotSkin_BriskImageDynaLib11_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_ui_inventory";
         _loc1_.height = 24;
         _loc1_.width = 20;
         _loc1_.alpha = 0.5;
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
      
      private function _PlayfieldItemInventoryFreeSlotSkin_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Boolean
         {
            return !improvementGroup.visible;
         },null,"_PlayfieldItemInventoryFreeSlotSkin_HGroup3.visible");
         return result;
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
      public function get previewGroup() : Group
      {
         return this._1384890473previewGroup;
      }
      
      public function set previewGroup(param1:Group) : void
      {
         var _loc2_:Object = this._1384890473previewGroup;
         if(_loc2_ !== param1)
         {
            this._1384890473previewGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"previewGroup",_loc2_,param1));
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

