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
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            super();
            if(!_loc3_)
            {
               this._configBonusId = param1.bid;
               if(_loc4_)
               {
                  this._highestUnlockedBonusGroup = param1.g;
                  §§goto(addr003f);
               }
               §§goto(addr006a);
            }
            §§goto(addr0089);
         }
         addr003f:
         if(!_loc3_)
         {
            if(param1.s)
            {
               if(_loc4_)
               {
                  addr006a:
                  this._selectedBonus = param1.s;
                  if(_loc4_)
                  {
                  }
                  addr0089:
                  this._config = param2;
               }
            }
            else
            {
               this._selectedBonus = 0;
               if(_loc4_)
               {
                  §§goto(addr0089);
               }
            }
         }
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

