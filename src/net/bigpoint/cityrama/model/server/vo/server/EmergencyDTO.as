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
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:Object = null;
         if(!_loc5_)
         {
            super();
            if(!(_loc5_ && Boolean(_loc2_)))
            {
               this._endTime = param1.t;
               if(!_loc5_)
               {
                  if(param1.r)
                  {
                     if(_loc6_)
                     {
                        this._rewardsOrCosts = new Vector.<ConfigOutputDTO>();
                        addr004f:
                     }
                     §§goto(addr006c);
                  }
                  §§goto(addr00c2);
               }
               §§goto(addr004f);
            }
            addr006c:
            var _loc3_:int = 0;
            for each(_loc2_ in param1.r)
            {
               if(_loc6_ || Boolean(_loc3_))
               {
                  this._rewardsOrCosts.push(new ConfigOutputDTO(_loc2_));
               }
            }
            if(!(_loc5_ && Boolean(this)))
            {
               addr00c2:
               this._status = param1.s;
               if(!_loc5_)
               {
                  this._config = new ConfigEmergencyDTO(param1.c);
               }
            }
            return;
         }
         §§goto(addr004f);
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

