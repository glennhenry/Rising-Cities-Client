package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigGlobalFeatureDTO
   {
      
      private var _marketIsInMaintenance:Boolean;
      
      private var _pmsEnabled:Boolean = true;
      
      private var _cinemaIsInMaintenance:Boolean;
      
      private var _upsellingEnabled:Boolean;
      
      public function ConfigGlobalFeatureDTO(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super();
            if(!_loc2_)
            {
               this._marketIsInMaintenance = param1.market;
               if(_loc3_ || Boolean(this))
               {
                  this._pmsEnabled = param1.pms;
                  if(_loc3_)
                  {
                     this._cinemaIsInMaintenance = param1.cinema;
                     if(_loc3_ || Boolean(this))
                     {
                        addr0073:
                        this._upsellingEnabled = param1.upsell;
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0073);
            }
         }
         addr007c:
      }
      
      public function get marketIsInMaintenance() : Boolean
      {
         return this._marketIsInMaintenance;
      }
      
      public function get pmsEnabled() : Boolean
      {
         return this._pmsEnabled;
      }
      
      public function get cinemaIsInMaintenance() : Boolean
      {
         return this._cinemaIsInMaintenance;
      }
      
      public function get upsellingEnabled() : Boolean
      {
         return this._upsellingEnabled;
      }
   }
}

