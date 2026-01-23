package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   
   public class InventoryItemDTO
   {
      
      private var _id:Number;
      
      private var _buildingDTO:BuildingDTO;
      
      private var _decorationVo:DecorationVo;
      
      private var _improvementDTO:ImprovementDTO;
      
      private var _goodDTO:GoodDTO;
      
      private var _permissionDTO:PlayfieldItemPermissionDTO;
      
      private var _shouldBeRemoved:Boolean;
      
      private var _amount:Number;
      
      public function InventoryItemDTO(param1:Object, param2:ConfigPlayfieldItemDTO = null)
      {
         super();
         this._id = param1.bid;
         if(param1.b)
         {
            if(!param2)
            {
               throw new ArgumentError("No Config for BuildingDTO!");
            }
            this._buildingDTO = new BuildingDTO(param1.b,param2);
         }
         if(param1.d)
         {
            if(!param2)
            {
               throw new ArgumentError("No Config for DecorationVo!");
            }
            this._decorationVo = new DecorationVo(param1.d,param2);
         }
         if(param1.imp)
         {
            this._improvementDTO = new ImprovementDTO(param1.imp);
         }
         if(param1.g)
         {
            this._goodDTO = ConfigFactory.buildGoodDTO(param1.g);
         }
         if(param1.p)
         {
            this._permissionDTO = ConfigFactory.buildPermissionDTO(param1.p);
         }
         this._shouldBeRemoved = param1.del;
         this._amount = param1.a;
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get buildingDTO() : BuildingDTO
      {
         return this._buildingDTO;
      }
      
      public function get decorationVo() : DecorationVo
      {
         return this._decorationVo;
      }
      
      public function get improvementDTO() : ImprovementDTO
      {
         return this._improvementDTO;
      }
      
      public function get goodDTO() : GoodDTO
      {
         return this._goodDTO;
      }
      
      public function get permissionDTO() : PlayfieldItemPermissionDTO
      {
         return this._permissionDTO;
      }
      
      public function get amount() : Number
      {
         return this._amount;
      }
      
      public function get shouldBeRemoved() : Boolean
      {
         return this._shouldBeRemoved;
      }
      
      public function get itemId() : Number
      {
         if(this.buildingDTO)
         {
            return this.buildingDTO.id;
         }
         if(this.decorationVo)
         {
            return this.decorationVo.id;
         }
         if(this.goodDTO)
         {
            return this.goodDTO.configId;
         }
         if(this.improvementDTO)
         {
            return this.improvementDTO.configId;
         }
         if(this.permissionDTO)
         {
            return this.permissionDTO.permissionConfigId;
         }
         return -1;
      }
   }
}

