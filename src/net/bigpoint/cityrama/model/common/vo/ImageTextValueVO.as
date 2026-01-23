package net.bigpoint.cityrama.model.common.vo
{
   public class ImageTextValueVO
   {
      
      private var _visualName:String;
      
      private var _visualLibName:String;
      
      private var _valueFontSize:uint;
      
      private var _valueTextLabel:String;
      
      private var _valueColor:uint;
      
      private var _nameFontSize:uint;
      
      private var _nameText:String;
      
      private var _nameColor:uint;
      
      public function ImageTextValueVO()
      {
         super();
         this.cleanAll();
      }
      
      public function cleanAll() : void
      {
         this._visualName = "";
         this._visualLibName = "";
         this._valueFontSize = 0;
         this._valueTextLabel = "";
         this._valueColor = 0;
         this._nameText = "";
         this._nameFontSize = 0;
         this._nameColor = 0;
      }
      
      public function clone() : ImageTextValueVO
      {
         var _loc1_:ImageTextValueVO = new ImageTextValueVO();
         _loc1_.visualName = this.visualName;
         _loc1_.visualLibName = this.visualLibName;
         _loc1_.valueFontSize = this.valueFontSize;
         _loc1_.valueTextLabel = this.valueTextLabel;
         _loc1_.valueColor = this.valueColor;
         _loc1_.nameText = this.nameText;
         _loc1_.nameFontSize = this.nameFontSize;
         _loc1_.nameColor = this.nameColor;
         return _loc1_;
      }
      
      public function get visualName() : String
      {
         return this._visualName;
      }
      
      public function set visualName(param1:String) : void
      {
         this._visualName = param1;
      }
      
      public function get visualLibName() : String
      {
         return this._visualLibName;
      }
      
      public function set visualLibName(param1:String) : void
      {
         this._visualLibName = param1;
      }
      
      public function get valueFontSize() : uint
      {
         return this._valueFontSize;
      }
      
      public function set valueFontSize(param1:uint) : void
      {
         this._valueFontSize = param1;
      }
      
      public function get valueTextLabel() : String
      {
         return this._valueTextLabel;
      }
      
      public function set valueTextLabel(param1:String) : void
      {
         this._valueTextLabel = param1;
      }
      
      public function get valueColor() : uint
      {
         return this._valueColor;
      }
      
      public function set valueColor(param1:uint) : void
      {
         this._valueColor = param1;
      }
      
      public function get nameText() : String
      {
         return this._nameText;
      }
      
      public function set nameText(param1:String) : void
      {
         this._nameText = param1;
      }
      
      public function get nameFontSize() : uint
      {
         return this._nameFontSize;
      }
      
      public function set nameFontSize(param1:uint) : void
      {
         this._nameFontSize = param1;
      }
      
      public function get nameColor() : uint
      {
         return this._nameColor;
      }
      
      public function set nameColor(param1:uint) : void
      {
         this._nameColor = param1;
      }
   }
}

