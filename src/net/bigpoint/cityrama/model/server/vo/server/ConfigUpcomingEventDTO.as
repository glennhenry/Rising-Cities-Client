package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigUpcomingEventDTO
   {
      
      private var _configEvent:ConfigEventDTO;
      
      private var _locaId:String;
      
      private var _gfxId:int;
      
      public function ConfigUpcomingEventDTO(param1:Object)
      {
         super();
         this._configEvent = new ConfigEventDTO(param1.e);
         this._locaId = String(param1.l);
         this._gfxId = int(param1.gId);
      }
      
      public function get configEvent() : ConfigEventDTO
      {
         return this._configEvent;
      }
      
      public function get locaId() : String
      {
         return this._locaId;
      }
      
      public function get gfxId() : int
      {
         return this._gfxId;
      }
   }
}

