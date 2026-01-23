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
         super();
         this._marketIsInMaintenance = param1.market;
         this._pmsEnabled = param1.pms;
         this._cinemaIsInMaintenance = param1.cinema;
         this._upsellingEnabled = param1.upsell;
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

