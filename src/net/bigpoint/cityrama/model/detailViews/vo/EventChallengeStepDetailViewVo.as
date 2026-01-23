package net.bigpoint.cityrama.model.detailViews.vo
{
   public class EventChallengeStepDetailViewVo
   {
      
      private var _targetGoodGfxId:int;
      
      private var _targetGoodIsEventGood:Boolean;
      
      private var _currentEventGfxId:Number;
      
      private var _currentEventLocaleId:String;
      
      private var _targetGoodLocaleId:String;
      
      private var _targetGoodCid:Number;
      
      private var _targetGoodPlayerStock:int;
      
      private var _targetGoodEventStock:int;
      
      private var _targetGoodEventStockTarget:int;
      
      private var _questId:Number;
      
      private var _questElementId:Number;
      
      private var _questType:String;
      
      private var _instantFinishPrice:Number;
      
      private var _upsellingAffordable:Boolean;
      
      public function EventChallengeStepDetailViewVo(param1:Number, param2:int, param3:String, param4:int, param5:int, param6:int, param7:Boolean, param8:String, param9:Number)
      {
         super();
         this._targetGoodCid = param1;
         this._targetGoodIsEventGood = param7;
         this._targetGoodGfxId = param2;
         this._targetGoodLocaleId = param3;
         this._targetGoodPlayerStock = param4;
         this._targetGoodEventStock = param5;
         this._targetGoodEventStockTarget = param6;
         this._currentEventGfxId = param9;
         this._currentEventLocaleId = param8;
      }
      
      public function get gfxId() : int
      {
         return this._targetGoodGfxId;
      }
      
      public function get localeId() : String
      {
         return this._targetGoodLocaleId;
      }
      
      public function get playerStock() : int
      {
         return this._targetGoodPlayerStock;
      }
      
      public function get eventStock() : int
      {
         return this._targetGoodEventStock;
      }
      
      public function get eventStockTarget() : int
      {
         return this._targetGoodEventStockTarget;
      }
      
      public function get targetGoodCid() : Number
      {
         return this._targetGoodCid;
      }
      
      public function get targetGoodIsEventGood() : Boolean
      {
         return this._targetGoodIsEventGood;
      }
      
      public function get currentEventGfxId() : Number
      {
         return this._currentEventGfxId;
      }
      
      public function get currentEventLocaleId() : String
      {
         return this._currentEventLocaleId;
      }
      
      public function get questId() : Number
      {
         return this._questId;
      }
      
      public function set questId(param1:Number) : void
      {
         this._questId = param1;
      }
      
      public function get questElementId() : Number
      {
         return this._questElementId;
      }
      
      public function set questElementId(param1:Number) : void
      {
         this._questElementId = param1;
      }
      
      public function get questType() : String
      {
         return this._questType;
      }
      
      public function set questType(param1:String) : void
      {
         this._questType = param1;
      }
      
      public function get instantFinishPrice() : Number
      {
         return this._instantFinishPrice;
      }
      
      public function set instantFinishPrice(param1:Number) : void
      {
         this._instantFinishPrice = param1;
      }
      
      public function get upsellingAffordable() : Boolean
      {
         return this._upsellingAffordable;
      }
      
      public function set upsellingAffordable(param1:Boolean) : void
      {
         this._upsellingAffordable = param1;
      }
      
      public function get challengeStepCompletedPercentage() : Number
      {
         return this._targetGoodEventStock / this._targetGoodEventStockTarget;
      }
   }
}

