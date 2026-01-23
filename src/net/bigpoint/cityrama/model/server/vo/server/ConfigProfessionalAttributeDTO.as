package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigProfessionalAttributeDTO
   {
      
      private var _id:Number;
      
      private var _attributeType:String;
      
      private var _attributeThresholds:Vector.<ConfigProfessionalAttributeThresholdDTO>;
      
      private var _maxCap:int;
      
      public function ConfigProfessionalAttributeDTO(param1:Object)
      {
         var _loc2_:Object = null;
         super();
         this._id = param1.cpai;
         this._attributeType = param1.cat;
         this._maxCap = param1.max;
         this._attributeThresholds = new Vector.<ConfigProfessionalAttributeThresholdDTO>();
         for each(_loc2_ in param1.ats)
         {
            this._attributeThresholds.push(new ConfigProfessionalAttributeThresholdDTO(_loc2_));
         }
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get attributeType() : String
      {
         return this._attributeType;
      }
      
      public function get attributeThresholds() : Vector.<ConfigProfessionalAttributeThresholdDTO>
      {
         return this._attributeThresholds;
      }
      
      public function get maxCap() : int
      {
         return this._maxCap;
      }
   }
}

