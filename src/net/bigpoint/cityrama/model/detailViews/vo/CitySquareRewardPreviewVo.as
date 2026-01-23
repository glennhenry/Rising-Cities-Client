package net.bigpoint.cityrama.model.detailViews.vo
{
   import mx.collections.ArrayCollection;
   
   public class CitySquareRewardPreviewVo
   {
      
      private var _rewardCollection:ArrayCollection;
      
      private var _challengeNumber:Number;
      
      private var _totalChallenges:Number;
      
      public function CitySquareRewardPreviewVo()
      {
         super();
      }
      
      public function get rewardCollection() : ArrayCollection
      {
         return this._rewardCollection;
      }
      
      public function set rewardCollection(param1:ArrayCollection) : void
      {
         this._rewardCollection = param1;
      }
      
      public function get challengeNumber() : Number
      {
         return this._challengeNumber;
      }
      
      public function set challengeNumber(param1:Number) : void
      {
         this._challengeNumber = param1;
      }
      
      public function get totalChallenges() : Number
      {
         return this._totalChallenges;
      }
      
      public function set totalChallenges(param1:Number) : void
      {
         this._totalChallenges = param1;
      }
   }
}

