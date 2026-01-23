package net.bigpoint.cityrama.model.inventory.vo
{
   import net.bigpoint.cityrama.model.inventory.InventoryProxy;
   import net.bigpoint.cityrama.model.server.vo.server.BuildingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.DecorationVo;
   import net.bigpoint.cityrama.model.server.vo.server.GoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ImprovementDTO;
   import net.bigpoint.cityrama.model.server.vo.server.InventoryItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayfieldItemPermissionDTO;
   
   public class InventoryItemVo
   {
      
      private var _dto:InventoryItemDTO;
      
      private var _bagType:String;
      
      public function InventoryItemVo(param1:InventoryItemDTO, param2:String)
      {
         super();
         this._dto = param1;
         this._bagType = param2;
      }
      
      public function get bagType() : String
      {
         return this._bagType;
      }
      
      public function get amount() : Number
      {
         if(this.bagType == InventoryProxy.INVENTORY_BAG_TYPE_GOOD && Boolean(this.goodDTO))
         {
            return this.goodDTO.amount;
         }
         if(this.bagType == InventoryProxy.INVENTORY_BAG_TYPE_PERMISSION && Boolean(this.permissionDTO))
         {
            return this.permissionDTO.permissionsLeft;
         }
         if(this.bagType == InventoryProxy.INVENTORY_BAG_TYPE_PLAYFIELDITEM)
         {
            if(this.deleteMe)
            {
               return 0;
            }
            return 1;
         }
         if(this.bagType == InventoryProxy.INVENTORY_BAG_TYPE_IMPROVEMENT)
         {
            return this._dto.amount;
         }
         return 0;
      }
      
      public function get buildingDTO() : BuildingDTO
      {
         return this._dto.buildingDTO;
      }
      
      public function get decorationVo() : DecorationVo
      {
         return this._dto.decorationVo;
      }
      
      public function get goodDTO() : GoodDTO
      {
         return this._dto.goodDTO;
      }
      
      public function get permissionDTO() : PlayfieldItemPermissionDTO
      {
         return this._dto.permissionDTO;
      }
      
      public function get improvementDTO() : ImprovementDTO
      {
         return this._dto.improvementDTO;
      }
      
      public function get itemId() : Number
      {
         return this._dto.itemId;
      }
      
      public function get deleteMe() : Boolean
      {
         return this._dto.shouldBeRemoved;
      }
      
      public function get dto() : InventoryItemDTO
      {
         return this._dto;
      }
   }
}

