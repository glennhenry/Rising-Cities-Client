package net.bigpoint.cityrama.model.field.fieldInfoLayer.vo
{
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   
   public class FieldInfoLayerConfigPlayfieldItemVo extends FieldInfoLayerHeaderVo
   {
      
      private var _config:ConfigPlayfieldItemDTO;
      
      public function FieldInfoLayerConfigPlayfieldItemVo(param1:ConfigPlayfieldItemDTO)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super();
            if(!(_loc3_ && _loc3_))
            {
               addr0028:
               this._config = param1;
            }
            return;
         }
         §§goto(addr0028);
      }
      
      public function get config() : ConfigPlayfieldItemDTO
      {
         return this._config;
      }
   }
}

