package net.bigpoint.cityrama.view.schoolBook
{
   public class CharacteristicsEntryVo
   {
      
      private var _localeId:String;
      
      private var _amountSum:Number;
      
      private var _gender:String;
      
      public function CharacteristicsEntryVo(param1:String, param2:Number, param3:String)
      {
         super();
         this._localeId = param1;
         this._amountSum = param2;
         this._gender = param3;
      }
      
      public function get localeId() : String
      {
         return this._localeId;
      }
      
      public function get amountSum() : Number
      {
         return this._amountSum;
      }
      
      public function set amountSum(param1:Number) : void
      {
         this._amountSum = param1;
      }
      
      public function get gender() : String
      {
         return this._gender;
      }
   }
}

