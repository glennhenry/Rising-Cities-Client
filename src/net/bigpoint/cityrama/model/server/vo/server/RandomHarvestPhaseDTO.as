package net.bigpoint.cityrama.model.server.vo.server
{
   public class RandomHarvestPhaseDTO extends PhaseDTO
   {
      
      private var _rewards:Vector.<ConfigOutputDTO>;
      
      public function RandomHarvestPhaseDTO(param1:Object, param2:ConfigPhaseDTO)
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:Object = null;
         if(!_loc6_)
         {
            this._rewards = new Vector.<ConfigOutputDTO>();
         }
         for each(_loc3_ in param1.o)
         {
            if(!_loc6_)
            {
               this._rewards.push(new ConfigOutputDTO(_loc3_));
            }
         }
         if(_loc7_)
         {
            super(param1,param2);
         }
      }
      
      public function get rewards() : Vector.<ConfigOutputDTO>
      {
         return this._rewards;
      }
   }
}

