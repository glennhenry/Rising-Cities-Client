package net.bigpoint.cityrama.model.server.vo.server
{
   public class RandomHarvestPhaseDTO extends PhaseDTO
   {
      
      private var _rewards:Vector.<ConfigOutputDTO>;
      
      public function RandomHarvestPhaseDTO(param1:Object, param2:ConfigPhaseDTO)
      {
         var _loc3_:Object = null;
         this._rewards = new Vector.<ConfigOutputDTO>();
         for each(_loc3_ in param1.o)
         {
            this._rewards.push(new ConfigOutputDTO(_loc3_));
         }
         super(param1,param2);
      }
      
      public function get rewards() : Vector.<ConfigOutputDTO>
      {
         return this._rewards;
      }
   }
}

