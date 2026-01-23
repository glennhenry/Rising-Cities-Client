package net.bigpoint.cityrama.model.server.vo.server
{
   public class ImprovementDTO extends PhaseDTO
   {
      
      private var _configId:Number;
      
      private var _slotId:Number;
      
      private var _buildingId:Number;
      
      public function ImprovementDTO(param1:Object, param2:ConfigPhaseDTO = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(param2))
         {
            super(param1,param2);
            if(_loc4_)
            {
               this._configId = param1.cid;
               if(_loc4_)
               {
                  this._slotId = param1.sid;
                  if(_loc4_ || _loc3_)
                  {
                     addr006d:
                     this._buildingId = param1.bid;
                  }
                  §§goto(addr0077);
               }
               §§goto(addr006d);
            }
            addr0077:
            return;
         }
         §§goto(addr006d);
      }
      
      public function get configId() : Number
      {
         return this._configId;
      }
      
      public function get slotId() : Number
      {
         return this._slotId;
      }
      
      public function get buildingId() : Number
      {
         return this._buildingId;
      }
   }
}

