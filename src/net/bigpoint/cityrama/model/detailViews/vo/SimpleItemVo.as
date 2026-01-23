package net.bigpoint.cityrama.model.detailViews.vo
{
   public class SimpleItemVo
   {
      
      private var _text:String;
      
      private var _amount:Number;
      
      private var _maxAmount:Number;
      
      private var _imageId:String;
      
      private var _dynaLibName:String;
      
      private var _imageTooltip:String;
      
      private var _textTooltip:String;
      
      private var _colorModifier:int;
      
      public function SimpleItemVo(param1:String, param2:Number, param3:Number, param4:String, param5:String, param6:String = null, param7:String = null, param8:int = 0)
      {
         super();
         this._text = param1;
         this._amount = param2;
         this._maxAmount = param3;
         this._imageId = param4;
         this._dynaLibName = param5;
         this._imageTooltip = param6;
         this._textTooltip = param7;
         this._colorModifier = param8;
      }
      
      public function get amount() : Number
      {
         return this._amount;
      }
      
      public function get imageId() : String
      {
         return this._imageId;
      }
      
      public function get dynaLibName() : String
      {
         return this._dynaLibName;
      }
      
      public function get colorModifier() : int
      {
         return this._colorModifier;
      }
      
      public function set colorModifier(param1:int) : void
      {
         this._colorModifier = param1;
      }
      
      public function get imageTooltip() : String
      {
         return this._imageTooltip;
      }
      
      public function get textTooltip() : String
      {
         return this._textTooltip;
      }
      
      public function get maxAmount() : Number
      {
         return this._maxAmount;
      }
      
      public function get text() : String
      {
         return this._text;
      }
   }
}

