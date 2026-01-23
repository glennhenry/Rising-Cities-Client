package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigMasteryBonusDTO
   {
      
      private var _id:Number;
      
      private var _buffs:Vector.<ConfigMasteryBonusGroupDTO>;
      
      public function ConfigMasteryBonusDTO(param1:Object)
      {
         var _loc2_:Object = null;
         super();
         this._id = param1.bid;
         this._buffs = new Vector.<ConfigMasteryBonusGroupDTO>();
         for each(_loc2_ in param1.bg)
         {
            this._buffs.push(new ConfigMasteryBonusGroupDTO(_loc2_));
         }
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get buffs() : Vector.<ConfigMasteryBonusGroupDTO>
      {
         return this._buffs;
      }
   }
}

