package net.bigpoint.cityrama.model.mastery
{
   public class MasteryChallengeVo
   {
      
      private var _targetProgress:Number;
      
      private var _currentProgress:Number;
      
      private var _challengeType:String;
      
      private var _bonusId:Number;
      
      public function MasteryChallengeVo()
      {
         super();
      }
      
      public function get targetProgress() : Number
      {
         return this._targetProgress;
      }
      
      public function set targetProgress(param1:Number) : void
      {
         this._targetProgress = param1;
      }
      
      public function get currentProgress() : Number
      {
         return this._currentProgress;
      }
      
      public function set currentProgress(param1:Number) : void
      {
         this._currentProgress = param1;
      }
      
      public function get readyToCollect() : Boolean
      {
         return this._currentProgress >= this._targetProgress;
      }
      
      public function get challengeType() : String
      {
         return this._challengeType;
      }
      
      public function set challengeType(param1:String) : void
      {
         this._challengeType = param1;
      }
      
      public function set bonusId(param1:Number) : void
      {
         this._bonusId = param1;
      }
      
      public function get bonusId() : Number
      {
         return this._bonusId;
      }
   }
}

