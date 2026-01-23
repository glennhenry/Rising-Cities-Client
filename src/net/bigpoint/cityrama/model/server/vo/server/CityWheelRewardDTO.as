package net.bigpoint.cityrama.model.server.vo.server
{
   public class CityWheelRewardDTO extends ConfigOutputDTO
   {
      
      private var _rewardTypeTagId:Number;
      
      private var _drawnReward:Boolean;
      
      private var _rewardType:String;
      
      public function CityWheelRewardDTO(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            super(param1);
            if(_loc3_ || Boolean(param1))
            {
               this._rewardTypeTagId = param1.rt;
               if(!_loc2_)
               {
                  addr0050:
                  this._drawnReward = param1.r;
               }
               §§goto(addr005a);
            }
            §§goto(addr0050);
         }
         addr005a:
      }
      
      public function get rewardTypeTagId() : Number
      {
         return this._rewardTypeTagId;
      }
      
      public function get drawnReward() : Boolean
      {
         return this._drawnReward;
      }
      
      public function get rewardType() : String
      {
         return this._rewardType;
      }
      
      public function set rewardType(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._rewardType = param1;
         }
      }
   }
}

