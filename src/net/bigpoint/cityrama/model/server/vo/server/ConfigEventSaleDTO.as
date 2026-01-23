package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigEventSaleDTO extends ConfigEventDTO
   {
      
      private var _listOfAffectedResources:Vector.<ConfigOutputDTO>;
      
      public function ConfigEventSaleDTO(param1:Object)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:Object = null;
         if(!(_loc6_ && Boolean(param1)))
         {
            super(param1);
            if(!_loc6_)
            {
               this._listOfAffectedResources = new Vector.<ConfigOutputDTO>();
               addr0030:
            }
            for each(_loc2_ in param1.s)
            {
               if(_loc5_ || Boolean(this))
               {
                  this._listOfAffectedResources.push(new ConfigOutputDTO(_loc2_));
               }
            }
            return;
         }
         §§goto(addr0030);
      }
      
      public function get listOfAffectedResources() : Vector.<ConfigOutputDTO>
      {
         return this._listOfAffectedResources;
      }
   }
}

