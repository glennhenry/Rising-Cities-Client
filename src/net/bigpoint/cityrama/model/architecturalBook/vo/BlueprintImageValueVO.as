package net.bigpoint.cityrama.model.architecturalBook.vo
{
   public class BlueprintImageValueVO
   {
      
      private var _visualName:String;
      
      private var _visualLibName:String;
      
      private var _visualOKName:String;
      
      private var _visualOKLibName:String;
      
      private var _valueFontSize:uint;
      
      private var _textLabel:String;
      
      private var _valueColor:uint;
      
      private var _effectType:String;
      
      public function BlueprintImageValueVO()
      {
         super();
         this.cleanAll();
      }
      
      public function cleanAll() : void
      {
         this._visualName = "";
         this._visualLibName = "";
         this._visualOKName = "";
         this._visualOKLibName = "";
         this._valueFontSize = 0;
         this._textLabel = "";
         this._valueColor = 0;
         this._effectType = "";
      }
      
      public function clone() : BlueprintImageValueVO
      {
         var _loc1_:BlueprintImageValueVO = new BlueprintImageValueVO();
         _loc1_.visualName = this.visualName;
         _loc1_.visualLibName = this.visualLibName;
         _loc1_.visualOKName = this.visualOKName;
         _loc1_.visualOKLibName = this.visualOKLibName;
         _loc1_.valueFontSize = this.valueFontSize;
         _loc1_.textLabel = this.textLabel;
         _loc1_.valueColor = this.valueColor;
         _loc1_.effectType = this.effectType;
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
      
      public function get visualOKName() : String
      {
         return this._visualOKName;
      }
      
      public function set visualOKName(param1:String) : void
      {
         this._visualOKName = param1;
      }
      
      public function get valueFontSize() : uint
      {
         return this._valueFontSize;
      }
      
      public function set valueFontSize(param1:uint) : void
      {
         this._valueFontSize = param1;
      }
      
      public function get textLabel() : String
      {
         return this._textLabel;
      }
      
      public function set textLabel(param1:String) : void
      {
         this._textLabel = param1;
      }
      
      public function get valueColor() : uint
      {
         return this._valueColor;
      }
      
      public function set valueColor(param1:uint) : void
      {
         this._valueColor = param1;
      }
      
      public function get visualOKLibName() : String
      {
         return this._visualOKLibName;
      }
      
      public function set visualOKLibName(param1:String) : void
      {
         this._visualOKLibName = param1;
      }
      
      public function get effectType() : String
      {
         return this._effectType;
      }
      
      public function set effectType(param1:String) : void
      {
         this._effectType = param1;
      }
   }
}

