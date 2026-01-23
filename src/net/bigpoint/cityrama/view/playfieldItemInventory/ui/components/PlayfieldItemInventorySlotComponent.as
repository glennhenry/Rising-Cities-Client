package net.bigpoint.cityrama.view.playfieldItemInventory.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.model.inventory.vo.PlayfieldItemInventoryListItemVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.events.PlayfieldItemInventoryEvent;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.skins.PlayfieldItemInventoryFreeSlotSkin;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.skins.PlayfieldItemInventoryLockedSlotSkin;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.skins.PlayfieldItemInventoryOccupiedSlotSkin;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.skins.PlayfieldItemInventoryPurchaseSlotSkin;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.HGroup;
   import spark.components.supportClasses.SkinnableComponent;
   
   public class PlayfieldItemInventorySlotComponent extends SkinnableComponent
   {
      
      public static const STATE_SLOT_OCCUPIED:String = "STATE_SLOT_OCCUPIED";
      
      public static const STATE_SLOT_PURCHASABLE:String = "STATE_SLOT_PURCHASABLE";
      
      public static const STATE_SLOT_FREE:String = "STATE_SLOT_FREE";
      
      public static const STATE_SLOT_LOCKED:String = "STATE_SLOT_LOCKED";
      
      public static const REMOVE_BTN_ID:String = "removeBtn";
      
      private static const MEASURED_WIDTH:uint = 82;
      
      private static var _skinParts:Object = {
         "residentIcon":false,
         "itemGfx":false,
         "purchaseBtn":false,
         "amountGroup":false,
         "improvementGroup":false,
         "departmentIcon":false,
         "improvementSlot2":false,
         "improvementSlot3":false,
         "itemBackground":false,
         "improvementSlot1":false,
         "removeBtn":false,
         "residentIconGroup":false
      };
      
      public var itemBackground:BriskImageDynaLib;
      
      public var itemGfx:BriskImageDynaLib;
      
      public var improvementGroup:HGroup;
      
      public var amountGroup:HGroup;
      
      public var improvementSlot1:BriskImageDynaLib;
      
      public var improvementSlot2:BriskImageDynaLib;
      
      public var improvementSlot3:BriskImageDynaLib;
      
      public var residentIcon:BriskImageDynaLib;
      
      public var residentIconGroup:HGroup;
      
      public var purchaseBtn:PurchaseSlotButton;
      
      public var removeBtn:DynamicImageButton;
      
      public var departmentIcon:BriskImageDynaLib;
      
      private var _data:PlayfieldItemInventoryListItemVo;
      
      private var _isDirty:Boolean;
      
      public function PlayfieldItemInventorySlotComponent()
      {
         super();
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(Boolean(this._data) && this._isDirty)
         {
            this._isDirty = false;
            this.alpha = 1;
            this.mouseChildren = false;
            if(this.purchaseBtn)
            {
               this.purchaseBtn.removeEventListener(PurchaseSlotButton.PURCHASE_BTN_CLICKED,this.handlePurchaseSlot);
               if(this._data.slotPrice != -1)
               {
                  this.mouseChildren = true;
                  this.purchaseBtn.addEventListener(PurchaseSlotButton.PURCHASE_BTN_CLICKED,this.handlePurchaseSlot);
                  this.purchaseBtn.enabled = this._data.disabledAlpha == 1;
                  this.purchaseBtn.showPlus = this._data.slotPrice > this._data.currentRCStock && Boolean(this.purchaseBtn.enabled);
                  this.purchaseBtn.price = this._data.slotPrice;
                  this.alpha = this._data.disabledAlpha;
               }
            }
            if(Boolean(this.removeBtn) && Boolean(this._data.item))
            {
               this.mouseChildren = true;
               this.removeBtn.removeEventListener(MouseEvent.CLICK,this.handleRemoveInventoryItem);
               this.removeBtn.addEventListener(MouseEvent.CLICK,this.handleRemoveInventoryItem);
               this.removeBtn.toolTip = LocaUtils.getString("rcl.guiinfolayer.inventory","rcl.guiinfolayer.inventory.text.remove");
            }
            if(Boolean(this.itemBackground) && Boolean(this._data.item))
            {
               this.itemBackground.briskDynaVo = this._data.item.bgGfxVo;
            }
            if(Boolean(this.itemGfx) && Boolean(this._data.item))
            {
               this.itemGfx.briskDynaVo = this._data.item.playfieldItemGfxVo;
            }
            if(Boolean(this.improvementGroup) && Boolean(this._data.item))
            {
               this.improvementGroup.visible = this._data.item.improvementGfx != null;
               if(this._data.item.improvementGfx)
               {
                  if(Boolean(this.improvementSlot1) && Boolean(this.improvementSlot2) && Boolean(this.improvementSlot3))
                  {
                     this.improvementSlot1.briskDynaVo = this._data.item.improvementGfx[0];
                     this.improvementSlot2.briskDynaVo = this._data.item.improvementGfx[1];
                     this.improvementSlot3.briskDynaVo = this._data.item.improvementGfx[2];
                  }
               }
            }
            if(Boolean(this.amountGroup) && Boolean(this.improvementGroup) && Boolean(this._data.item))
            {
               this.amountGroup.visible = !this.improvementGroup.visible;
            }
            if(this.residentIcon && this.residentIconGroup && Boolean(this._data.item))
            {
               this.residentIconGroup.visible = this.residentIconGroup.includeInLayout = this._data.item.residentGfx != null;
               if(this._data.item.residentGfx)
               {
                  this.residentIcon.briskDynaVo = this._data.item.residentGfx;
               }
            }
            if(Boolean(this.departmentIcon) && Boolean(this._data.item))
            {
               this.departmentIcon.visible = this.departmentIcon.includeInLayout = this._data.item.departmentGfx != null;
               if(this._data.item.departmentGfx)
               {
                  this.departmentIcon.briskDynaVo = this._data.item.departmentGfx;
               }
            }
            if(this._data.slotState == STATE_SLOT_FREE && this._data.disabledAlpha < 1)
            {
               this.alpha = this._data.disabledAlpha;
            }
         }
      }
      
      override public function setCurrentState(param1:String, param2:Boolean = true) : void
      {
         if(param1 == "over" || param1 == "selected" || param1 == "normal" || param1 == "overSelected")
         {
            if(this.skin)
            {
               this.skin.setCurrentState(param1);
            }
         }
      }
      
      private function handleRemoveInventoryItem(param1:Event) : void
      {
         param1.stopPropagation();
         dispatchEvent(new PlayfieldItemInventoryEvent(PlayfieldItemInventoryEvent.DELETE_INVENTORY_ITEM,true,this._data));
      }
      
      private function handlePurchaseSlot(param1:Event) : void
      {
         param1.stopPropagation();
         if(this.purchaseBtn)
         {
            this.purchaseBtn.removeEventListener(PurchaseSlotButton.PURCHASE_BTN_CLICKED,this.handlePurchaseSlot);
            dispatchEvent(new PlayfieldItemInventoryEvent(PlayfieldItemInventoryEvent.PURCHASE_INVENTORY_SLOT,true,this._data));
         }
      }
      
      public function set data(param1:PlayfieldItemInventoryListItemVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._isDirty = true;
            this.determineSkin();
            invalidateProperties();
         }
      }
      
      private function determineSkin() : void
      {
         switch(this._data.slotState)
         {
            case STATE_SLOT_FREE:
               setStyle("skinClass",PlayfieldItemInventoryFreeSlotSkin);
               break;
            case STATE_SLOT_OCCUPIED:
               setStyle("skinClass",PlayfieldItemInventoryOccupiedSlotSkin);
               break;
            case STATE_SLOT_PURCHASABLE:
               setStyle("skinClass",PlayfieldItemInventoryPurchaseSlotSkin);
               break;
            case STATE_SLOT_LOCKED:
               setStyle("skinClass",PlayfieldItemInventoryLockedSlotSkin);
               break;
            default:
               setStyle("skinClass",PlayfieldItemInventoryFreeSlotSkin);
         }
      }
      
      public function get data() : PlayfieldItemInventoryListItemVo
      {
         return this._data;
      }
      
      override public function get measuredWidth() : Number
      {
         return MEASURED_WIDTH;
      }
   }
}

