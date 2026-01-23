package net.bigpoint.cityrama.model.inventory.vo
{
   import net.bigpoint.cityrama.model.server.vo.server.ConfigInventoryBagDTO;
   import net.bigpoint.cityrama.model.server.vo.server.InventoryItemBagDTO;
   import net.bigpoint.cityrama.model.server.vo.server.InventoryItemDTO;
   
   public class InventoryItemBagVo
   {
      
      private var _dto:InventoryItemBagDTO;
      
      private var _config:ConfigInventoryBagDTO;
      
      public function InventoryItemBagVo(param1:InventoryItemBagDTO, param2:ConfigInventoryBagDTO)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param2))
         {
            super();
            if(!_loc4_)
            {
               addr0038:
               this._dto = param1;
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._config = param2;
               }
            }
            return;
         }
         §§goto(addr0038);
      }
      
      public function get bagType() : String
      {
         return this._dto.type;
      }
      
      public function get bagItems() : Vector.<InventoryItemDTO>
      {
         return this._dto.items;
      }
      
      public function get dto() : InventoryItemBagDTO
      {
         return this._dto;
      }
      
      public function get config() : ConfigInventoryBagDTO
      {
         return this._config;
      }
   }
}

