package net.bigpoint.cityrama.model.detailViews.vo
{
   import mx.collections.ArrayCollection;
   
   public class EventChallengeDetailViewVo
   {
      
      private var _listOfSteps:Vector.<EventChallengeStepDetailViewVo>;
      
      private var _timeLeft:Number;
      
      private var _fullRuntime:Number;
      
      private var _challengeGfxId:int;
      
      private var _challengelocaleId:String;
      
      private var _rewards:ArrayCollection;
      
      private var _state:String;
      
      private var _id:Number;
      
      private var _challengeType:String;
      
      private var _nbrOfChallengesOverall:int;
      
      private var _nbrOfThisChallenge:int;
      
      private var _eventLocaleId:String;
      
      private var _drops:Vector.<DropInfoVo>;
      
      public function EventChallengeDetailViewVo(param1:Number, param2:int, param3:String, param4:String, param5:Number, param6:Number, param7:Vector.<EventChallengeStepDetailViewVo>, param8:ArrayCollection, param9:String, param10:String, param11:int, param12:int, param13:Vector.<DropInfoVo>)
      {
         super();
         this._id = param1;
         this._listOfSteps = param7;
         this._timeLeft = param6;
         this._fullRuntime = param5;
         this._challengeGfxId = param2;
         this._challengelocaleId = param4;
         this._eventLocaleId = param3;
         this._rewards = param8;
         this._state = param9;
         this._challengeType = param10;
         this._nbrOfChallengesOverall = param11;
         this._nbrOfThisChallenge = param12;
         this._drops = param13;
      }
      
      public function get listOfSteps() : Vector.<EventChallengeStepDetailViewVo>
      {
         return this._listOfSteps;
      }
      
      public function get timeLeft() : Number
      {
         return this._timeLeft;
      }
      
      public function get fullRuntime() : Number
      {
         return this._fullRuntime;
      }
      
      public function get challengeGfxId() : int
      {
         return this._challengeGfxId;
      }
      
      public function get challengelocaleId() : String
      {
         return this._challengelocaleId;
      }
      
      public function get rewards() : ArrayCollection
      {
         return this._rewards;
      }
      
      public function get state() : String
      {
         return this._state;
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get nbrOfChallengesOverall() : int
      {
         return this._nbrOfChallengesOverall;
      }
      
      public function get challengeType() : String
      {
         return this._challengeType;
      }
      
      public function get nbrOfThisChallenge() : int
      {
         return this._nbrOfThisChallenge;
      }
      
      public function get eventLocaleId() : String
      {
         return this._eventLocaleId;
      }
      
      public function get drops() : Vector.<DropInfoVo>
      {
         return this._drops;
      }
   }
}

