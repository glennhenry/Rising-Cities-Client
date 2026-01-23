package net.bigpoint.cityrama.model.server.vo.server
{
   public class MasteryChallengeDTO
   {
      
      private var _id:Number;
      
      private var _currentProgress:int;
      
      private var _config:ConfigMasteryChallengeDTO;
      
      public function MasteryChallengeDTO(param1:Object)
      {
         super();
         this._id = param1.id;
         this._currentProgress = param1.v;
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get currentProgress() : int
      {
         return this._currentProgress;
      }
      
      public function get config() : ConfigMasteryChallengeDTO
      {
         return this._config;
      }
      
      public function set config(param1:ConfigMasteryChallengeDTO) : void
      {
         this._config = param1;
      }
   }
}

