package net.bigpoint.cityrama.view.citysquare.ui.vo
{
   public class ChallengeBarVo
   {
      
      private var _goodLocaleId:String;
      
      private var _eventLocalId:String;
      
      private var _goodGFXId:int;
      
      private var _eventGFXId:int;
      
      private var _maxValue:int = 0;
      
      private var _currentValue:int = 0;
      
      private var _isEventGood:Boolean;
      
      private var _upsellingPrice:Number = 0;
      
      private var _upsellingAffordable:Boolean;
      
      private var _elementId:Number;
      
      private var _questId:Number;
      
      private var _questType:String;
      
      public function ChallengeBarVo()
      {
         super();
      }
      
      public function get goodLocaleId() : String
      {
         return this._goodLocaleId;
      }
      
      public function set goodLocaleId(param1:String) : void
      {
         this._goodLocaleId = param1;
      }
      
      public function get eventLocalId() : String
      {
         return this._eventLocalId;
      }
      
      public function set eventLocalId(param1:String) : void
      {
         this._eventLocalId = param1;
      }
      
      public function get goodGFXId() : int
      {
         return this._goodGFXId;
      }
      
      public function set goodGFXId(param1:int) : void
      {
         this._goodGFXId = param1;
      }
      
      public function get eventGFXId() : int
      {
         return this._eventGFXId;
      }
      
      public function set eventGFXId(param1:int) : void
      {
         this._eventGFXId = param1;
      }
      
      public function get maxValue() : int
      {
         return this._maxValue;
      }
      
      public function set maxValue(param1:int) : void
      {
         this._maxValue = param1;
      }
      
      public function get currentValue() : int
      {
         return this._currentValue;
      }
      
      public function set currentValue(param1:int) : void
      {
         this._currentValue = param1;
      }
      
      public function get isEventGood() : Boolean
      {
         return this._isEventGood;
      }
      
      public function set isEventGood(param1:Boolean) : void
      {
         this._isEventGood = param1;
      }
      
      public function get upsellingPrice() : Number
      {
         return this._upsellingPrice;
      }
      
      public function set upsellingPrice(param1:Number) : void
      {
         this._upsellingPrice = param1;
      }
      
      public function get upsellingAffordable() : Boolean
      {
         return this._upsellingAffordable;
      }
      
      public function set upsellingAffordable(param1:Boolean) : void
      {
         this._upsellingAffordable = param1;
      }
      
      public function get elementId() : Number
      {
         return this._elementId;
      }
      
      public function set elementId(param1:Number) : void
      {
         this._elementId = param1;
      }
      
      public function get questId() : Number
      {
         return this._questId;
      }
      
      public function set questId(param1:Number) : void
      {
         this._questId = param1;
      }
      
      public function get questType() : String
      {
         return this._questType;
      }
      
      public function set questType(param1:String) : void
      {
         this._questType = param1;
      }
   }
}

