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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function get rewardCollection() : ArrayCollection
      {
         return this._rewardCollection;
      }
      
      public function set rewardCollection(param1:ArrayCollection) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._rewardCollection = param1;
         }
      }
      
      public function get challengeNumber() : Number
      {
         return this._challengeNumber;
      }
      
      public function set challengeNumber(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._challengeNumber = param1;
         }
      }
      
      public function get totalChallenges() : Number
      {
         return this._totalChallenges;
      }
      
      public function set totalChallenges(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._totalChallenges = param1;
         }
      }
   }
}

