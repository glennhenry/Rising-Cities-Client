package net.bigpoint.cityrama.model.detailViews.vo
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.constants.quest.QuestSystemStateConst;
   
   public class EventDetailViewVo
   {
      
      private var _listOfChallenges:Vector.<EventChallengeDetailViewVo>;
      
      private var _eventCharacterGfxId:int;
      
      private var _timeLeft:Number;
      
      private var _fullRuntime:Number;
      
      private var _localeId:String;
      
      private var _questUId:Number;
      
      private var _rewardCollection:ArrayCollection;
      
      public function EventDetailViewVo(param1:Number, param2:String, param3:int, param4:Number, param5:Number, param6:Vector.<EventChallengeDetailViewVo>, param7:ArrayCollection)
      {
         super();
         this._listOfChallenges = param6;
         this._questUId = param1;
         this._localeId = param2;
         this._eventCharacterGfxId = param3;
         this._timeLeft = param5;
         this._fullRuntime = param4;
         this._rewardCollection = param7;
      }
      
      public function get currentActiveStage() : int
      {
         var _loc2_:EventChallengeDetailViewVo = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this._listOfChallenges)
         {
            if(_loc2_.state == QuestSystemStateConst.VALID || _loc2_.state == QuestSystemStateConst.DONE || _loc2_.state == QuestSystemStateConst.SUBMITTED)
            {
               _loc1_++;
            }
            if(_loc2_.state == QuestSystemStateConst.VALID)
            {
               return _loc1_;
            }
         }
         return _loc1_;
      }
      
      public function get currentRewardStage() : int
      {
         var _loc2_:EventChallengeDetailViewVo = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this._listOfChallenges)
         {
            _loc1_++;
            if(_loc2_.state == QuestSystemStateConst.DONE)
            {
               return _loc1_;
            }
         }
         return _loc1_;
      }
      
      public function get listOfChallenges() : Vector.<EventChallengeDetailViewVo>
      {
         return this._listOfChallenges;
      }
      
      public function get gfxId() : int
      {
         return this._eventCharacterGfxId;
      }
      
      public function get timeLeft() : Number
      {
         return this._timeLeft;
      }
      
      public function get fullRuntime() : Number
      {
         return this._fullRuntime;
      }
      
      public function get localeId() : String
      {
         return this._localeId;
      }
      
      public function get questUId() : Number
      {
         return this._questUId;
      }
      
      public function get rewardCollection() : ArrayCollection
      {
         return this._rewardCollection;
      }
   }
}

