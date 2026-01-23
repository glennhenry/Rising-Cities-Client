package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigProfessionalAttributeThresholdDTO
   {
      
      private var _thresholdId:Number;
      
      private var _configProfAttributeId:Number;
      
      private var _type:String;
      
      private var _threshold:int;
      
      private var _value:Number;
      
      private var _optionalConfigId:Number;
      
      public function ConfigProfessionalAttributeThresholdDTO(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            super();
            if(_loc3_)
            {
               this._thresholdId = param1.tid;
               if(!_loc2_)
               {
                  this._configProfAttributeId = param1.cpai;
                  if(!_loc2_)
                  {
                     this._type = param1.tt;
                     if(_loc3_)
                     {
                        this._threshold = param1.t;
                        if(!_loc2_)
                        {
                           §§goto(addr0076);
                        }
                        §§goto(addr008c);
                     }
                  }
               }
               addr0076:
               this._value = param1.m;
               if(!(_loc2_ && _loc3_))
               {
                  addr008c:
                  this._optionalConfigId = param1.cid;
               }
               return;
            }
         }
         §§goto(addr008c);
      }
      
      public function get copy() : ConfigProfessionalAttributeThresholdDTO
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Object = new Object();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.tid = this._thresholdId;
            if(_loc2_ || _loc3_)
            {
               _loc1_.cpai = this._configProfAttributeId;
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0060:
                  _loc1_.tt = this._type;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.t = this._threshold;
                     addr0076:
                     if(!(_loc3_ && _loc2_))
                     {
                        §§goto(addr0097);
                     }
                     §§goto(addr00a5);
                  }
                  addr0097:
                  _loc1_.m = this._value;
                  if(!_loc3_)
                  {
                     addr00a5:
                     _loc1_.cid = this._optionalConfigId;
                  }
                  §§goto(addr00ae);
               }
               addr00ae:
               return new ConfigProfessionalAttributeThresholdDTO(_loc1_);
            }
            §§goto(addr0076);
         }
         §§goto(addr0060);
      }
      
      public function get thresholdId() : Number
      {
         return this._thresholdId;
      }
      
      public function get configProfAttributeId() : Number
      {
         return this._configProfAttributeId;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get threshold() : int
      {
         return this._threshold;
      }
      
      public function get value() : Number
      {
         return this._value;
      }
      
      public function get optionalConfigId() : Number
      {
         return this._optionalConfigId;
      }
   }
}

