package net.bigpoint.cityrama.model.inventory.vo
{
   public class PlayfieldItemInventoryBagVo
   {
      
      private var _source:InventoryItemBagVo;
      
      private var _category:String;
      
      private var _inventoryItems:Vector.<InventoryPlayfieldItemVo>;
      
      public function PlayfieldItemInventoryBagVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
         }
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function set category(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._category = param1;
         }
      }
      
      public function get inventoryItems() : Vector.<InventoryPlayfieldItemVo>
      {
         return this._inventoryItems;
      }
      
      public function set inventoryItems(param1:Vector.<InventoryPlayfieldItemVo>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._inventoryItems = param1;
         }
      }
      
      public function get source() : InventoryItemBagVo
      {
         return this._source;
      }
      
      public function set source(param1:InventoryItemBagVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._source = param1;
         }
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
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:Vector.<Number> = new Vector.<Number>();
         var _loc2_:int = 0;
         while(_loc2_ < this.purchaseSlotCount)
         {
            _loc1_.push(5 * Math.ceil(this.source.config.priceModifier * (this.source.dto.slots + _loc2_ - this.source.config.initialSlots + 1)));
            if(!_loc3_)
            {
               break;
            }
            _loc2_++;
            if(_loc4_ && Boolean(_loc1_))
            {
               break;
            }
         }
         return _loc1_;
      }
   }
}

