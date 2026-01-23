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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
         }
      }
      
      public function get targetProgress() : Number
      {
         return this._targetProgress;
      }
      
      public function set targetProgress(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._targetProgress = param1;
         }
      }
      
      public function get currentProgress() : Number
      {
         return this._currentProgress;
      }
      
      public function set currentProgress(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._currentProgress = param1;
         }
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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this._challengeType = param1;
         }
      }
      
      public function set bonusId(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._bonusId = param1;
         }
      }
      
      public function get bonusId() : Number
      {
         return this._bonusId;
      }
   }
}

