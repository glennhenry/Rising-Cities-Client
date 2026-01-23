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
         super();
         this._thresholdId = param1.tid;
         this._configProfAttributeId = param1.cpai;
         this._type = param1.tt;
         this._threshold = param1.t;
         this._value = param1.m;
         this._optionalConfigId = param1.cid;
      }
      
      public function get copy() : ConfigProfessionalAttributeThresholdDTO
      {
         var _loc1_:Object = new Object();
         _loc1_.tid = this._thresholdId;
         _loc1_.cpai = this._configProfAttributeId;
         _loc1_.tt = this._type;
         _loc1_.t = this._threshold;
         _loc1_.m = this._value;
         _loc1_.cid = this._optionalConfigId;
         return new ConfigProfessionalAttributeThresholdDTO(_loc1_);
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

