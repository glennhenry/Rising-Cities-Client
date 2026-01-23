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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
            if(!_loc1_)
            {
               addr0026:
               this.cleanAll();
            }
            return;
         }
         §§goto(addr0026);
      }
      
      public function cleanAll() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this._visualName = "";
            if(_loc2_)
            {
               this._visualLibName = "";
               if(!(_loc1_ && _loc1_))
               {
                  this._visualOKName = "";
                  if(_loc2_ || Boolean(this))
                  {
                     addr005b:
                     this._visualOKLibName = "";
                     if(_loc2_)
                     {
                        this._valueFontSize = 0;
                        if(_loc2_)
                        {
                           addr0071:
                           this._textLabel = "";
                           if(!_loc1_)
                           {
                              this._valueColor = 0;
                              if(!_loc1_)
                              {
                                 addr0087:
                                 this._effectType = "";
                              }
                              return;
                           }
                        }
                        §§goto(addr0087);
                     }
                     §§goto(addr0071);
                  }
                  §§goto(addr0087);
               }
               §§goto(addr005b);
            }
            §§goto(addr0087);
         }
         §§goto(addr0071);
      }
      
      public function clone() : BlueprintImageValueVO
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BlueprintImageValueVO = new BlueprintImageValueVO();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.visualName = this.visualName;
            if(_loc3_ || _loc2_)
            {
               _loc1_.visualLibName = this.visualLibName;
               §§goto(addr0041);
            }
            §§goto(addr0095);
         }
         addr0041:
         if(_loc3_)
         {
            _loc1_.visualOKName = this.visualOKName;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.visualOKLibName = this.visualOKLibName;
               if(!_loc2_)
               {
                  addr0088:
                  _loc1_.valueFontSize = this.valueFontSize;
                  if(!_loc2_)
                  {
                     addr0095:
                     _loc1_.textLabel = this.textLabel;
                     if(!_loc2_)
                     {
                        addr00a2:
                        _loc1_.valueColor = this.valueColor;
                        if(!_loc2_)
                        {
                           _loc1_.effectType = this.effectType;
                        }
                     }
                     §§goto(addr00b7);
                  }
                  §§goto(addr00a2);
               }
               §§goto(addr00b7);
            }
            §§goto(addr0088);
         }
         addr00b7:
         return _loc1_;
      }
      
      public function get visualName() : String
      {
         return this._visualName;
      }
      
      public function set visualName(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
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
         if(_loc2_ || Boolean(this))
         {
            this._visualLibName = param1;
         }
      }
      
      public function get visualOKName() : String
      {
         return this._visualOKName;
      }
      
      public function set visualOKName(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._visualOKName = param1;
         }
      }
      
      public function get valueFontSize() : uint
      {
         return this._valueFontSize;
      }
      
      public function set valueFontSize(param1:uint) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._valueFontSize = param1;
         }
      }
      
      public function get textLabel() : String
      {
         return this._textLabel;
      }
      
      public function set textLabel(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
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
      
      public function get visualOKLibName() : String
      {
         return this._visualOKLibName;
      }
      
      public function set visualOKLibName(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._visualOKLibName = param1;
         }
      }
      
      public function get effectType() : String
      {
         return this._effectType;
      }
      
      public function set effectType(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._effectType = param1;
         }
      }
   }
}

