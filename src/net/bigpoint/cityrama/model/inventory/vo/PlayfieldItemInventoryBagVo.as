package net.bigpoint.cityrama.model.inventory.vo
{
   public class PlayfieldItemInventoryBagVo
   {
      
      private var _source:InventoryItemBagVo;
      
      private var _category:String;
      
      private var _inventoryItems:Vector.<InventoryPlayfieldItemVo>;
      
      public function PlayfieldItemInventoryBagVo()
      {
         super();
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function set category(param1:String) : void
      {
         this._category = param1;
      }
      
      public function get inventoryItems() : Vector.<InventoryPlayfieldItemVo>
      {
         return this._inventoryItems;
      }
      
      public function set inventoryItems(param1:Vector.<InventoryPlayfieldItemVo>) : void
      {
         this._inventoryItems = param1;
      }
      
      public function get source() : InventoryItemBagVo
      {
         return this._source;
      }
      
      public function set source(param1:InventoryItemBagVo) : void
      {
         this._source = param1;
      }
      
      public function get emptySlotCount() : int
      {
         return Math.max(this.source.dto.slots - this.inventoryItems.length,0);
      }
      
      private function get purchaseSlotCount() : int
      {
         return Math.min(this.source.config.maxSlots - this.source.dto.slots,5);
      }
      
      public function get purchasableSlotPrices() : Vector.<Number>
      {
         var _loc1_:Vector.<Number> = new Vector.<Number>();
         var _loc2_:int = 0;
         while(_loc2_ < this.purchaseSlotCount)
         {
            _loc1_.push(5 * Math.ceil(this.source.config.priceModifier * (this.source.dto.slots + _loc2_ - this.source.config.initialSlots + 1)));
            _loc2_++;
         }
         return _loc1_;
      }
   }
}

