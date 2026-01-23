package net.bigpoint.cityrama.model.emergencyLayer.vo
{
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalAttributeThresholdDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalAttributeDTO;
   
   public class ProfessionalAttributeVO
   {
      
      private var _dto:ProfessionalAttributeDTO;
      
      private var _tempMod:int;
      
      public function ProfessionalAttributeVO()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public function get progressScalar() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(this._dto.attributePoints + this._tempMod);
         if(_loc1_)
         {
            return §§pop() / this._dto.config.maxCap;
         }
      }
      
      public function get configId() : Number
      {
         return this._dto.configId;
      }
      
      public function get amount() : uint
      {
         return this._dto.attributePoints;
      }
      
      public function set dto(param1:ProfessionalAttributeDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._dto = param1;
         }
      }
      
      public function get attributeType() : String
      {
         return this._dto.config.attributeType;
      }
      
      public function set tempMod(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._tempMod = param1;
         }
      }
      
      public function get tempMod() : int
      {
         return this._tempMod;
      }
      
      public function get traitThresholds() : Vector.<ConfigProfessionalAttributeThresholdDTO>
      {
         return this._dto.config.attributeThresholds;
      }
   }
}

