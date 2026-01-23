package net.bigpoint.cityrama.model.field.fieldInfoLayer.vo
{
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   
   public class FieldInfoLayerConfigPlayfieldItemVo extends FieldInfoLayerHeaderVo
   {
      
      private var _config:ConfigPlayfieldItemDTO;
      
      public function FieldInfoLayerConfigPlayfieldItemVo(param1:ConfigPlayfieldItemDTO)
      {
         super();
         this._config = param1;
      }
      
      public function get config() : ConfigPlayfieldItemDTO
      {
         return this._config;
      }
   }
}

