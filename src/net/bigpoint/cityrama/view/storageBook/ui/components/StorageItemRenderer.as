package net.bigpoint.cityrama.view.storageBook.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.model.storage.vo.StorageObjectVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class StorageItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      public static var REBUY_GOOD:String = "REBUY_GOOD";
      
      private var _1299216927backgroundPrint:BriskImageDynaLib;
      
      private var _1788023724emptySlotGroup:HGroup;
      
      private var _100313435image:BriskImageDynaLib;
      
      private var _361121306improBadge:BriskImageDynaLib;
      
      private var _2135689121itemLabel:LocaLabel;
      
      private var _1849499341plusIcon:BriskImageDynaLib;
      
      private var _525604071storageSlot:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:StorageObjectVo;
      
      private var _isDirty:Boolean;
      
      public function StorageItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.autoDrawBackground = false;
         this.width = 120;
         this.height = 150;
         this.mxmlContent = [this._StorageItemRenderer_Group1_i(),this._StorageItemRenderer_HGroup2_i()];
         this.currentState = "normal";
         this.addEventListener("rollOver",this.___StorageItemRenderer_ItemRenderer1_rollOver);
         this.addEventListener("rollOut",this.___StorageItemRenderer_ItemRenderer1_rollOut);
         this.addEventListener("click",this.___StorageItemRenderer_ItemRenderer1_click);
         states = [new State({
            "name":"normal",
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
      
      override public function get data() : Object
      {
         return super.data;
      }
      
      override public function set data(param1:Object) : void
      {
         if(!RandomUtilities.isEqual(super.data,param1))
         {
            super.data = param1;
            this._data = param1 as StorageObjectVo;
            this._isDirty = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(Boolean(this._data) && this._isDirty)
         {
            this._isDirty = false;
            if(!this._data.showEmptySlot())
            {
               this.plusIcon.visible = this.plusIcon.includeInLayout = this._data.showPlus();
               this.itemLabel.text = LocaUtils.getThousendSeperatedNumber(this._data.currentStock);
               this.image.alpha = this._data.imageAlpha;
               this.image.briskDynaVo = this._data.imageData;
               this.backgroundPrint.briskDynaVo = this._data.getBackgroundPrintByIndex(itemIndex);
               if(this._data.showBadge())
               {
                  this.improBadge.briskDynaVo = this._data.badgeData();
                  this.improBadge.includeInLayout = this.improBadge.visible = true;
               }
               else
               {
                  this.improBadge.includeInLayout = this.improBadge.visible = false;
               }
               this.image.mouseEnabled = false;
               this.image.mouseChildren = false;
               this.storageSlot.includeInLayout = this.storageSlot.visible = true;
               this.emptySlotGroup.includeInLayout = this.emptySlotGroup.visible = false;
            }
            else
            {
               this.storageSlot.includeInLayout = this.storageSlot.visible = false;
               this.emptySlotGroup.includeInLayout = this.emptySlotGroup.visible = true;
            }
         }
      }
      
      private function mouseOverHandler(param1:MouseEvent) : void
      {
         if(!this._data.showEmptySlot())
         {
            dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this._data.goodObjectVo != null ? UIInfolayerDispatcherEvent.CALLER_TYPE_GOOD : UIInfolayerDispatcherEvent.CALLER_TYPE_IMPROVEMENT,this._data.configId,true,false));
         }
         if(this._data.showPlus())
         {
            this.plusIcon.scaleX += 0.05;
            this.plusIcon.scaleY += 0.05;
         }
      }
      
      private function mouseOutHandler(param1:MouseEvent) : void
      {
         if(!this._data.showEmptySlot())
         {
            dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER,this._data.goodObjectVo != null ? UIInfolayerDispatcherEvent.CALLER_TYPE_GOOD : UIInfolayerDispatcherEvent.CALLER_TYPE_IMPROVEMENT,this._data.configId,true,false));
         }
         if(this._data.showPlus())
         {
            this.plusIcon.scaleX = 1;
            this.plusIcon.scaleY = 1;
         }
      }
      
      private function onClicked(param1:MouseEvent) : void
      {
         if(this._data.showPlus())
         {
            dispatchEvent(new Event(REBUY_GOOD,true));
         }
      }
      
      private function _StorageItemRenderer_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._StorageItemRenderer_BriskImageDynaLib1_c(),this._StorageItemRenderer_BriskImageDynaLib2_i(),this._StorageItemRenderer_BriskImageDynaLib3_i(),this._StorageItemRenderer_HGroup1_c(),this._StorageItemRenderer_BriskMCDynaLib1_c(),this._StorageItemRenderer_BriskImageDynaLib5_i(),this._StorageItemRenderer_BriskImageDynaLib6_i()];
         _loc1_.id = "storageSlot";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.storageSlot = _loc1_;
         BindingManager.executeBindings(this,"storageSlot",this.storageSlot);
         return _loc1_;
      }
      
      private function _StorageItemRenderer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.bottom = 2;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaBmpSourceName = "architect_postit_price";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StorageItemRenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_storagePopup";
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 6;
         _loc1_.dynaBmpSourceName = "ressource_cardboard1_small";
         _loc1_.id = "backgroundPrint";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.backgroundPrint = _loc1_;
         BindingManager.executeBindings(this,"backgroundPrint",this.backgroundPrint);
         return _loc1_;
      }
      
      private function _StorageItemRenderer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_resources_icons";
         _loc1_.verticalCenter = -12;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "image";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.image = _loc1_;
         BindingManager.executeBindings(this,"image",this.image);
         return _loc1_;
      }
      
      private function _StorageItemRenderer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.bottom = 7;
         _loc1_.left = 16;
         _loc1_.right = 16;
         _loc1_.mxmlContent = [this._StorageItemRenderer_BriskImageDynaLib4_c(),this._StorageItemRenderer_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StorageItemRenderer_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_storagePopup";
         _loc1_.dynaBmpSourceName = "icon_product";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StorageItemRenderer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "priceLabel";
         _loc1_.percentWidth = 100;
         _loc1_.id = "itemLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemLabel = _loc1_;
         BindingManager.executeBindings(this,"itemLabel",this.itemLabel);
         return _loc1_;
      }
      
      private function _StorageItemRenderer_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.top = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaMCSourceName = "stickytape_top";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StorageItemRenderer_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
         _loc1_.dynaBmpSourceName = "ui_mainbar_icon_add";
         _loc1_.top = 7;
         _loc1_.right = 1;
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.id = "plusIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.plusIcon = _loc1_;
         BindingManager.executeBindings(this,"plusIcon",this.plusIcon);
         return _loc1_;
      }
      
      private function _StorageItemRenderer_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "hip_badge_common_small";
         _loc1_.top = 6;
         _loc1_.left = 3;
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.id = "improBadge";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.improBadge = _loc1_;
         BindingManager.executeBindings(this,"improBadge",this.improBadge);
         return _loc1_;
      }
      
      private function _StorageItemRenderer_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.top = 6;
         _loc1_.horizontalAlign = "center";
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.mxmlContent = [this._StorageItemRenderer_BriskImageDynaLib7_c()];
         _loc1_.id = "emptySlotGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.emptySlotGroup = _loc1_;
         BindingManager.executeBindings(this,"emptySlotGroup",this.emptySlotGroup);
         return _loc1_;
      }
      
      private function _StorageItemRenderer_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_storagePopup";
         _loc1_.dynaBmpSourceName = "emptySlot_bg";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___StorageItemRenderer_ItemRenderer1_rollOver(param1:MouseEvent) : void
      {
         this.mouseOverHandler(param1);
      }
      
      public function ___StorageItemRenderer_ItemRenderer1_rollOut(param1:MouseEvent) : void
      {
         this.mouseOutHandler(param1);
      }
      
      public function ___StorageItemRenderer_ItemRenderer1_click(param1:MouseEvent) : void
      {
         this.onClicked(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get backgroundPrint() : BriskImageDynaLib
      {
         return this._1299216927backgroundPrint;
      }
      
      public function set backgroundPrint(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1299216927backgroundPrint;
         if(_loc2_ !== param1)
         {
            this._1299216927backgroundPrint = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backgroundPrint",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get emptySlotGroup() : HGroup
      {
         return this._1788023724emptySlotGroup;
      }
      
      public function set emptySlotGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._1788023724emptySlotGroup;
         if(_loc2_ !== param1)
         {
            this._1788023724emptySlotGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"emptySlotGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get image() : BriskImageDynaLib
      {
         return this._100313435image;
      }
      
      public function set image(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._100313435image;
         if(_loc2_ !== param1)
         {
            this._100313435image = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get improBadge() : BriskImageDynaLib
      {
         return this._361121306improBadge;
      }
      
      public function set improBadge(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._361121306improBadge;
         if(_loc2_ !== param1)
         {
            this._361121306improBadge = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improBadge",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemLabel() : LocaLabel
      {
         return this._2135689121itemLabel;
      }
      
      public function set itemLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._2135689121itemLabel;
         if(_loc2_ !== param1)
         {
            this._2135689121itemLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get plusIcon() : BriskImageDynaLib
      {
         return this._1849499341plusIcon;
      }
      
      public function set plusIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1849499341plusIcon;
         if(_loc2_ !== param1)
         {
            this._1849499341plusIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"plusIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get storageSlot() : Group
      {
         return this._525604071storageSlot;
      }
      
      public function set storageSlot(param1:Group) : void
      {
         var _loc2_:Object = this._525604071storageSlot;
         if(_loc2_ !== param1)
         {
            this._525604071storageSlot = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"storageSlot",_loc2_,param1));
            }
         }
      }
   }
}

