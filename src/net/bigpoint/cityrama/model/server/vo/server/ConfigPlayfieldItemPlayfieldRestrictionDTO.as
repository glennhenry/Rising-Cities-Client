package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigPlayfieldItemPlayfieldRestrictionDTO
   {
      
      private var _configPlayfieldId:Number;
      
      public function ConfigPlayfieldItemPlayfieldRestrictionDTO(param1:Object)
      {
         super();
         this._configPlayfieldId = param1.cpi;
      }
      
      public function get configPlayfieldId() : Number
      {
         return this._configPlayfieldId;
      }
   }
}

