package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigMasteryChallengeDTO
   {
      
      private var _id:Number;
      
      private var _targetProgress:int;
      
      private var _locaID:String;
      
      private var _nextChallenge:ConfigMasteryChallengeDTO;
      
      private var _bonusID:Number;
      
      private var _instantFinishCosts:int;
      
      public function ConfigMasteryChallengeDTO(param1:Object)
      {
         super();
         this._id = param1.id;
         this._targetProgress = param1.t;
         this._locaID = param1.l;
         if(param1.n)
         {
            this._nextChallenge = new ConfigMasteryChallengeDTO(param1.n);
         }
         this._bonusID = param1.b;
         this._instantFinishCosts = param1.ic;
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function set id(param1:Number) : void
      {
         this._id = param1;
      }
      
      public function get targetProgress() : int
      {
         return this._targetProgress;
      }
      
      public function get locaID() : String
      {
         return this._locaID;
      }
      
      public function get nextChallenge() : ConfigMasteryChallengeDTO
      {
         return this._nextChallenge;
      }
      
      public function get bonusID() : Number
      {
         return this._bonusID;
      }
      
      public function set bonusID(param1:Number) : void
      {
         this._bonusID = param1;
      }
      
      public function get challengeValue() : int
      {
         return this._instantFinishCosts;
      }
   }
}

