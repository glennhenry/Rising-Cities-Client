package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigPlayfieldItemPlayfieldRestrictionDTO
   {
      
      private var _configPlayfieldId:Number;
      
      public function ConfigPlayfieldItemPlayfieldRestrictionDTO(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super();
            if(_loc2_ || Boolean(param1))
            {
               addr0027:
               this._configPlayfieldId = param1.cpi;
            }
            return;
         }
         §§goto(addr0027);
      }
      
      public function get configPlayfieldId() : Number
      {
         return this._configPlayfieldId;
      }
   }
}

