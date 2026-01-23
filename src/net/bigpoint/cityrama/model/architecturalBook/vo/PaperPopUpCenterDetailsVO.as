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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function get visualBluePrintBg() : Bitmap
      {
         return this._visualBluePrintBg;
      }
      
      public function set visualBluePrintBg(param1:Bitmap) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._visualBluePrintBg = param1;
         }
      }
      
      public function get visualBuilding() : Bitmap
      {
         return this._visualBuilding;
      }
      
      public function set visualBuilding(param1:Bitmap) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._visualBuilding = param1;
         }
      }
      
      public function get visualGlueStrip() : Bitmap
      {
         return this._visualGlueStrip;
      }
      
      public function set visualGlueStrip(param1:Bitmap) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._visualGlueStrip = param1;
         }
      }
      
      public function get paperClipBg() : Bitmap
      {
         return this._paperClipBg;
      }
      
      public function set paperClipBg(param1:Bitmap) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._paperClipBg = param1;
         }
      }
      
      public function get rakeState() : Bitmap
      {
         return this._rakeState;
      }
      
      public function set rakeState(param1:Bitmap) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._rakeState = param1;
         }
      }
      
      public function get enableBuyButton() : Boolean
      {
         return this._enableBuyButton;
      }
      
      public function set enableBuyButton(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._enableBuyButton = param1;
         }
      }
   }
}

