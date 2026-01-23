package net.bigpoint.cityrama.model.server.vo.server
{
   public class MasteryBonusDTO
   {
      
      private var _configBonusId:Number;
      
      private var _config:ConfigMasteryBonusDTO;
      
      private var _highestUnlockedBonusGroup:int;
      
      private var _selectedBonus:int;
      
      public function MasteryBonusDTO(param1:Object, param2:ConfigMasteryBonusDTO)
      {
         super();
         this._configBonusId = param1.bid;
         this._highestUnlockedBonusGroup = param1.g;
         if(param1.s)
         {
            this._selectedBonus = param1.s;
         }
         else
         {
            this._selectedBonus = 0;
         }
         this._config = param2;
      }
      
      public function get configBonusId() : Number
      {
         return this._configBonusId;
      }
      
      public function get highestUnlockedBonusGroup() : int
      {
         return this._highestUnlockedBonusGroup;
      }
      
      public function get selectedBonus() : int
      {
         return this._selectedBonus;
      }
      
      public function get config() : ConfigMasteryBonusDTO
      {
         return this._config;
      }
   }
}

