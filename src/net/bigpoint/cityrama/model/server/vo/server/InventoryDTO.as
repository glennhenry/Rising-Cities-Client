package net.bigpoint.cityrama.model.server.vo.server
{
   public class InventoryDTO
   {
      
      private var _id:Number;
      
      private var _configId:Number;
      
      private var _bags:Vector.<InventoryItemBagDTO>;
      
      public function InventoryDTO(param1:Object)
      {
         var _loc2_:Object = null;
         super();
         this._id = param1.id;
         this._configId = param1.c;
         this._bags = new Vector.<InventoryItemBagDTO>();
         if(param1.b)
         {
            for each(_loc2_ in param1.b)
            {
               this._bags.push(new InventoryItemBagDTO(_loc2_));
            }
         }
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get configId() : Number
      {
         return this._configId;
      }
      
      public function get bags() : Vector.<InventoryItemBagDTO>
      {
         return this._bags;
      }
   }
}

