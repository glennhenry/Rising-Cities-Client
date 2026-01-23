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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
            if(!(_loc1_ && _loc2_))
            {
               addr0038:
               this.cleanAll();
            }
            return;
         }
         §§goto(addr0038);
      }
      
      public function cleanAll() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            this._visualName = "";
            if(_loc2_ || Boolean(this))
            {
               this._visualLibName = "";
               if(!_loc1_)
               {
                  addr0046:
                  this._valueFontSize = 0;
                  if(!_loc1_)
                  {
                     §§goto(addr0051);
                  }
               }
               §§goto(addr008c);
            }
            addr0051:
            this._valueTextLabel = "";
            if(!(_loc1_ && _loc1_))
            {
               this._valueColor = 0;
               if(_loc2_)
               {
                  this._nameText = "";
                  if(!(_loc1_ && _loc1_))
                  {
                     addr008c:
                     this._nameFontSize = 0;
                     if(_loc2_ || Boolean(this))
                     {
                        this._nameColor = 0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0046);
      }
      
      public function clone() : ImageTextValueVO
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ImageTextValueVO = new ImageTextValueVO();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.visualName = this.visualName;
            if(_loc2_ || _loc3_)
            {
               _loc1_.visualLibName = this.visualLibName;
               addr003e:
               if(!_loc3_)
               {
                  _loc1_.valueFontSize = this.valueFontSize;
                  if(_loc2_ || _loc2_)
                  {
                     addr006e:
                     _loc1_.valueTextLabel = this.valueTextLabel;
                     if(!_loc3_)
                     {
                        _loc1_.valueColor = this.valueColor;
                        if(_loc2_)
                        {
                           _loc1_.nameText = this.nameText;
                           if(!_loc3_)
                           {
                              addr00a0:
                              _loc1_.nameFontSize = this.nameFontSize;
                              if(!_loc3_)
                              {
                                 _loc1_.nameColor = this.nameColor;
                              }
                           }
                           return _loc1_;
                        }
                     }
                  }
                  §§goto(addr00a0);
               }
            }
            §§goto(addr006e);
         }
         §§goto(addr003e);
      }
      
      public function get visualName() : String
      {
         return this._visualName;
      }
      
      public function set visualName(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._visualName = param1;
         }
      }
      
      public function get visualLibName() : String
      {
         return this._visualLibName;
      }
      
      public function set visualLibName(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._visualLibName = param1;
         }
      }
      
      public function get valueFontSize() : uint
      {
         return this._valueFontSize;
      }
      
      public function set valueFontSize(param1:uint) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._valueFontSize = param1;
         }
      }
      
      public function get valueTextLabel() : String
      {
         return this._valueTextLabel;
      }
      
      public function set valueTextLabel(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._valueTextLabel = param1;
         }
      }
      
      public function get valueColor() : uint
      {
         return this._valueColor;
      }
      
      public function set valueColor(param1:uint) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._valueColor = param1;
         }
      }
      
      public function get nameText() : String
      {
         return this._nameText;
      }
      
      public function set nameText(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._nameText = param1;
         }
      }
      
      public function get nameFontSize() : uint
      {
         return this._nameFontSize;
      }
      
      public function set nameFontSize(param1:uint) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._nameFontSize = param1;
         }
      }
      
      public function get nameColor() : uint
      {
         return this._nameColor;
      }
      
      public function set nameColor(param1:uint) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._nameColor = param1;
         }
      }
   }
}

