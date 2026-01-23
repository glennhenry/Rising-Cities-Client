package net.bigpoint.cityrama.model.server.vo.server
{
   public class PhaseDTO
   {
      
      private var _expirationTime:Number;
      
      private var _phaseId:Number;
      
      private var _timeLeft:Number;
      
      private var _config:ConfigPhaseDTO;
      
      private var _initTime:Number;
      
      private var _mystId:Number;
      
      public function PhaseDTO(param1:Object, param2:ConfigPhaseDTO)
      {
         super();
         this._phaseId = param1.pid as Number;
         this._expirationTime = param1.et as Number;
         this._timeLeft = param1.tl as Number;
         this._initTime = param1.it as Number;
         this._mystId = param1.myst;
         this._config = param2;
      }
      
      public function get expirationTime() : Number
      {
         return this._expirationTime;
      }
      
      public function get phaseId() : Number
      {
         return this._phaseId;
      }
      
      public function get config() : ConfigPhaseDTO
      {
         return this._config;
      }
      
      public function set config(param1:ConfigPhaseDTO) : void
      {
         this._config = param1;
      }
      
      public function set expirationTime(param1:Number) : void
      {
         this._expirationTime = param1;
      }
      
      public function get timeLeft() : Number
      {
         return this._timeLeft;
      }
      
      public function set timeLeft(param1:Number) : void
      {
         this._timeLeft = param1;
      }
      
      public function get initTime() : Number
      {
         return this._initTime;
      }
      
      public function get mystId() : Number
      {
         return this._mystId;
      }
   }
}

