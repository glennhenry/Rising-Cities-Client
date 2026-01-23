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
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         if(_loc10_)
         {
            super();
            if(!_loc9_)
            {
               this._text = param1;
               if(_loc10_ || Boolean(param2))
               {
                  this._amount = param2;
                  if(_loc10_ || Boolean(this))
                  {
                     addr005a:
                     this._maxAmount = param3;
                     if(_loc10_ || Boolean(param1))
                     {
                        addr006e:
                        this._imageId = param4;
                        if(!_loc9_)
                        {
                           this._dynaLibName = param5;
                           if(!(_loc9_ && Boolean(param3)))
                           {
                              addr009d:
                              this._imageTooltip = param6;
                              if(_loc10_ || Boolean(param1))
                              {
                                 addr00b2:
                                 this._textTooltip = param7;
                                 if(!_loc9_)
                                 {
                                    addr00bf:
                                    this._colorModifier = param8;
                                 }
                                 §§goto(addr00c5);
                              }
                              §§goto(addr00bf);
                           }
                           §§goto(addr00c5);
                        }
                        §§goto(addr00b2);
                     }
                     §§goto(addr009d);
                  }
                  §§goto(addr006e);
               }
               §§goto(addr00b2);
            }
            addr00c5:
            return;
         }
         §§goto(addr005a);
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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._colorModifier = param1;
         }
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

