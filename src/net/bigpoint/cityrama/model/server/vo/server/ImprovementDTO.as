package net.bigpoint.cityrama.model.server.vo.server
{
   public class ImprovementDTO extends PhaseDTO
   {
      
      private var _configId:Number;
      
      private var _slotId:Number;
      
      private var _buildingId:Number;
      
      public function ImprovementDTO(param1:Object, param2:ConfigPhaseDTO = null)
      {
         super(param1,param2);
         this._configId = param1.cid;
         this._slotId = param1.sid;
         this._buildingId = param1.bid;
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

