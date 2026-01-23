package net.bigpoint.cityrama.model.architecturalBook.vo
{
   import flash.display.Bitmap;
   
   public class ImageValueVO
   {
      
      private var _visual:Bitmap;
      
      private var _visualOK:Bitmap;
      
      private var _textLabel:String;
      
      private var _valueColor:uint;
      
      private var _toolTip:String;
      
      public function ImageValueVO()
      {
         super();
      }
      
      public function cleanAll() : void
      {
         this._visual = null;
         this._visualOK = null;
         this._textLabel = "";
         this._valueColor = 0;
         this._toolTip = "";
      }
      
      public function get visual() : Bitmap
      {
         return this._visual;
      }
      
      public function set visual(param1:Bitmap) : void
      {
         this._visual = param1;
      }
      
      public function get visualOK() : Bitmap
      {
         return this._visualOK;
      }
      
      public function set visualOK(param1:Bitmap) : void
      {
         this._visualOK = param1;
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
      
      public function get toolTip() : String
      {
         return this._toolTip;
      }
      
      public function set toolTip(param1:String) : void
      {
         this._toolTip = param1;
      }
   }
}

