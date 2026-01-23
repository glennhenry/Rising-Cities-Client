package net.bigpoint.cityrama.model.inventory.vo
{
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.components.PlayfieldItemInventorySlotComponent;
   
   public class PlayfieldItemInventoryListItemVo
   {
      
      private var _configBagId:Number;
      
      private var _item:InventoryPlayfieldItemVo;
      
      private var _slotPrice:Number = -1;
      
      private var _currentRCStock:Number = 0;
      
      private var _disabledAlpha:Number;
      
      private var _itemAtCursor:InventoryPlayfieldItemVo;
      
      private var _emergencyRunning:Boolean;
      
      public function PlayfieldItemInventoryListItemVo()
      {
         super();
      }
      
      public function set item(param1:InventoryPlayfieldItemVo) : void
      {
         this._item = param1;
      }
      
      public function set disabledAlpha(param1:Number) : void
      {
         this._disabledAlpha = param1;
      }
      
      public function set slotPrice(param1:Number) : void
      {
         this._slotPrice = param1;
      }
      
      public function get slotPrice() : Number
      {
         return this._slotPrice;
      }
      
      public function get disabledAlpha() : Number
      {
         return this._disabledAlpha;
      }
      
      public function get item() : InventoryPlayfieldItemVo
      {
         return this._item;
      }
      
      public function get slotState() : String
      {
         if(this.isEmpty)
         {
            return PlayfieldItemInventorySlotComponent.STATE_SLOT_FREE;
         }
         if(this.isPurchaseSlot)
         {
            return PlayfieldItemInventorySlotComponent.STATE_SLOT_PURCHASABLE;
         }
         if(this.isOccupied)
         {
            return PlayfieldItemInventorySlotComponent.STATE_SLOT_OCCUPIED;
         }
         if(this.isLocked)
         {
            return PlayfieldItemInventorySlotComponent.STATE_SLOT_LOCKED;
         }
         return "";
      }
      
      public function get purchaseSlotEnabled() : Boolean
      {
         if(this.slotState == PlayfieldItemInventorySlotComponent.STATE_SLOT_PURCHASABLE && this.disabledAlpha == 1)
         {
            return true;
         }
         return false;
      }
      
      public function get configBagId() : Number
      {
         return this._configBagId;
      }
      
      public function set configBagId(param1:Number) : void
      {
         this._configBagId = param1;
      }
      
      public function get currentRCStock() : Number
      {
         return this._currentRCStock;
      }
      
      public function set currentRCStock(param1:Number) : void
      {
         this._currentRCStock = param1;
      }
      
      private function get isOccupied() : Boolean
      {
         if(Boolean(this._item) && !this.isLocked)
         {
            return true;
         }
         return false;
      }
      
      private function get isLocked() : Boolean
      {
         if(this._item)
         {
            return !this._item.canBePlacedOnCurrentPlayfield;
         }
         return false;
      }
      
      private function get isPurchaseSlot() : Boolean
      {
         return this._slotPrice != -1;
      }
      
      private function get isEmpty() : Boolean
      {
         return !this.isLocked && !this.isOccupied && !this.isPurchaseSlot;
      }
      
      public function get itemAtCursor() : InventoryPlayfieldItemVo
      {
         return this._itemAtCursor;
      }
      
      public function set itemAtCursor(param1:InventoryPlayfieldItemVo) : void
      {
         this._itemAtCursor = param1;
      }
      
      public function get emergencyRunning() : Boolean
      {
         return this._emergencyRunning;
      }
      
      public function set emergencyRunning(param1:Boolean) : void
      {
         this._emergencyRunning = param1;
      }
   }
}

