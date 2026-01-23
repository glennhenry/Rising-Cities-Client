package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigMasteryBonusDTO
   {
      
      private var _id:Number;
      
      private var _buffs:Vector.<ConfigMasteryBonusGroupDTO>;
      
      public function ConfigMasteryBonusDTO(param1:Object)
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:Object = null;
         if(_loc6_)
         {
            super();
            if(_loc6_ || Boolean(_loc2_))
            {
               this._id = param1.bid;
               if(_loc6_ || _loc3_)
               {
                  this._buffs = new Vector.<ConfigMasteryBonusGroupDTO>();
               }
            }
         }
         for each(_loc2_ in param1.bg)
         {
            if(_loc6_ || Boolean(_loc2_))
            {
               this._buffs.push(new ConfigMasteryBonusGroupDTO(_loc2_));
            }
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

