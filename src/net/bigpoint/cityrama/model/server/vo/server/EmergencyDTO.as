package net.bigpoint.cityrama.model.server.vo.server
{
   public class EmergencyDTO
   {
      
      private var _endTime:Number;
      
      private var _rewardsOrCosts:Vector.<ConfigOutputDTO>;
      
      private var _status:String;
      
      private var _config:ConfigEmergencyDTO;
      
      public function EmergencyDTO(param1:Object)
      {
         var _loc2_:Object = null;
         super();
         this._endTime = param1.t;
         if(param1.r)
         {
            this._rewardsOrCosts = new Vector.<ConfigOutputDTO>();
            for each(_loc2_ in param1.r)
            {
               this._rewardsOrCosts.push(new ConfigOutputDTO(_loc2_));
            }
         }
         this._status = param1.s;
         this._config = new ConfigEmergencyDTO(param1.c);
      }
      
      public function get endTime() : Number
      {
         return this._endTime;
      }
      
      public function get rewardOrCosts() : Vector.<ConfigOutputDTO>
      {
         return this._rewardsOrCosts;
      }
      
      public function get status() : String
      {
         return this._status;
      }
      
      public function get config() : ConfigEmergencyDTO
      {
         return this._config;
      }
   }
}

