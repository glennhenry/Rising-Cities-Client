package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigEventSaleDTO extends ConfigEventDTO
   {
      
      private var _listOfAffectedResources:Vector.<ConfigOutputDTO>;
      
      public function ConfigEventSaleDTO(param1:Object)
      {
         var _loc2_:Object = null;
         super(param1);
         this._listOfAffectedResources = new Vector.<ConfigOutputDTO>();
         for each(_loc2_ in param1.s)
         {
            this._listOfAffectedResources.push(new ConfigOutputDTO(_loc2_));
         }
      }
      
      public function get listOfAffectedResources() : Vector.<ConfigOutputDTO>
      {
         return this._listOfAffectedResources;
      }
   }
}

