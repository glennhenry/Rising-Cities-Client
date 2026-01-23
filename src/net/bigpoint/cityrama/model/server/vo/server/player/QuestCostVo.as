package net.bigpoint.cityrama.model.server.vo.server.player
{
   public class QuestCostVo
   {
      
      private var _rewardType:String;
      
      private var _amount:Number;
      
      private var _rewardConfigID:Number;
      
      public function QuestCostVo(param1:Object)
      {
         super();
         this._rewardType = param1.t;
         this._amount = param1.a;
         this._rewardConfigID = param1.id;
      }
      
      public function get rewardType() : String
      {
         return this._rewardType;
      }
      
      public function get amount() : Number
      {
         return this._amount;
      }
      
      public function get rewardConfigID() : Number
      {
         return this._rewardConfigID;
      }
   }
}

