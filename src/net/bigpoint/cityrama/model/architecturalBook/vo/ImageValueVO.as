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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
         }
      }
      
      public function cleanAll() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            this._visual = null;
            if(!_loc2_)
            {
               this._visualOK = null;
               addr0027:
               if(!(_loc2_ && Boolean(this)))
               {
                  this._textLabel = "";
                  if(_loc1_ || _loc2_)
                  {
                     addr0060:
                     this._valueColor = 0;
                     if(_loc1_ || Boolean(this))
                     {
                        this._toolTip = "";
                     }
                  }
                  §§goto(addr0079);
               }
               §§goto(addr0060);
            }
            addr0079:
            return;
         }
         §§goto(addr0027);
      }
      
      public function get visual() : Bitmap
      {
         return this._visual;
      }
      
      public function set visual(param1:Bitmap) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._visual = param1;
         }
      }
      
      public function get visualOK() : Bitmap
      {
         return this._visualOK;
      }
      
      public function set visualOK(param1:Bitmap) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._visualOK = param1;
         }
      }
      
      public function get textLabel() : String
      {
         return this._textLabel;
      }
      
      public function set textLabel(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._textLabel = param1;
         }
      }
      
      public function get valueColor() : uint
      {
         return this._valueColor;
      }
      
      public function set valueColor(param1:uint) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._valueColor = param1;
         }
      }
      
      public function get toolTip() : String
      {
         return this._toolTip;
      }
      
      public function set toolTip(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._toolTip = param1;
         }
      }
   }
}

