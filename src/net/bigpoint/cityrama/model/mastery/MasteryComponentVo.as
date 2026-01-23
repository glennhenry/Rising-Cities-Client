package net.bigpoint.cityrama.model.mastery
{
   public class MasteryComponentVo
   {
      
      private var _masteryLocked:Boolean;
      
      private var _masteryUnlockLevel:int;
      
      private var _currentMasteryIndex:uint;
      
      private var _amountRC:Number;
      
      private var _instantFinishPrice:int;
      
      private var _challenges:Vector.<MasteryChallengeVo>;
      
      public function MasteryComponentVo()
      {
         super();
      }
      
      public function get masteryLocked() : Boolean
      {
         return this._masteryLocked;
      }
      
      public function set masteryLocked(param1:Boolean) : void
      {
         this._masteryLocked = param1;
      }
      
      public function get masteryUnlockLevel() : int
      {
         return this._masteryUnlockLevel;
      }
      
      public function set masteryUnlockLevel(param1:int) : void
      {
         this._masteryUnlockLevel = param1;
      }
      
      public function get currentMasteryIndex() : uint
      {
         return this._currentMasteryIndex;
      }
      
      public function set currentMasteryIndex(param1:uint) : void
      {
         this._currentMasteryIndex = param1;
      }
      
      public function get amountRC() : Number
      {
         return this._amountRC;
      }
      
      public function set amountRC(param1:Number) : void
      {
         this._amountRC = param1;
      }
      
      public function get challenges() : Vector.<MasteryChallengeVo>
      {
         return this._challenges;
      }
      
      public function set challenges(param1:Vector.<MasteryChallengeVo>) : void
      {
         this._challenges = param1;
      }
      
      public function get instantFinishPrice() : int
      {
         return this._instantFinishPrice;
      }
      
      public function set instantFinishPrice(param1:int) : void
      {
         this._instantFinishPrice = param1;
      }
      
      public function get readyToCollect() : Boolean
      {
         if(Boolean(this._challenges) && this.currentMasteryIndex < this._challenges.length)
         {
            return this._challenges[this.currentMasteryIndex].currentProgress >= this._challenges[this.currentMasteryIndex].targetProgress;
         }
         return false;
      }
      
      public function get currentProgress() : Number
      {
         if(Boolean(this._challenges) && this.currentMasteryIndex < this._challenges.length)
         {
            return this._challenges[this.currentMasteryIndex].currentProgress;
         }
         return 0;
      }
      
      public function get targetProgress() : Number
      {
         if(Boolean(this._challenges) && this.currentMasteryIndex < this._challenges.length)
         {
            return this._challenges[this.currentMasteryIndex].targetProgress;
         }
         return 0;
      }
   }
}

