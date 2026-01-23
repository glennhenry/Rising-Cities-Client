package net.bigpoint.cityrama.model.architecturalBook.vo
{
   import flash.display.Bitmap;
   
   public class PaperPopUpCenterDetailsVO
   {
      
      private var _visualBluePrintBg:Bitmap;
      
      private var _visualBuilding:Bitmap;
      
      private var _visualGlueStrip:Bitmap;
      
      private var _paperClipBg:Bitmap;
      
      private var _rakeState:Bitmap;
      
      private var _enableBuyButton:Boolean;
      
      public function PaperPopUpCenterDetailsVO()
      {
         super();
      }
      
      public function get visualBluePrintBg() : Bitmap
      {
         return this._visualBluePrintBg;
      }
      
      public function set visualBluePrintBg(param1:Bitmap) : void
      {
         this._visualBluePrintBg = param1;
      }
      
      public function get visualBuilding() : Bitmap
      {
         return this._visualBuilding;
      }
      
      public function set visualBuilding(param1:Bitmap) : void
      {
         this._visualBuilding = param1;
      }
      
      public function get visualGlueStrip() : Bitmap
      {
         return this._visualGlueStrip;
      }
      
      public function set visualGlueStrip(param1:Bitmap) : void
      {
         this._visualGlueStrip = param1;
      }
      
      public function get paperClipBg() : Bitmap
      {
         return this._paperClipBg;
      }
      
      public function set paperClipBg(param1:Bitmap) : void
      {
         this._paperClipBg = param1;
      }
      
      public function get rakeState() : Bitmap
      {
         return this._rakeState;
      }
      
      public function set rakeState(param1:Bitmap) : void
      {
         this._rakeState = param1;
      }
      
      public function get enableBuyButton() : Boolean
      {
         return this._enableBuyButton;
      }
      
      public function set enableBuyButton(param1:Boolean) : void
      {
         this._enableBuyButton = param1;
      }
   }
}

