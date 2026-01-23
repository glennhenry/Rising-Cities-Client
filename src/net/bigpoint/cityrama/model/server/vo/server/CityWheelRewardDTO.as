package net.bigpoint.cityrama.model.server.vo.server
{
   public class CityWheelRewardDTO extends ConfigOutputDTO
   {
      
      private var _rewardTypeTagId:Number;
      
      private var _drawnReward:Boolean;
      
      private var _rewardType:String;
      
      public function CityWheelRewardDTO(param1:Object)
      {
         super(param1);
         this._rewardTypeTagId = param1.rt;
         this._drawnReward = param1.r;
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
         this._rewardType = param1;
      }
   }
}

