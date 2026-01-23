package net.bigpoint.cityrama.model.server.vo.server.player
{
   public class QuestCostVo
   {
      
      private var _rewardType:String;
      
      private var _amount:Number;
      
      private var _rewardConfigID:Number;
      
      public function QuestCostVo(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super();
            if(_loc3_ || _loc2_)
            {
               addr0034:
               this._rewardType = param1.t;
               if(!(_loc2_ && _loc3_))
               {
                  this._amount = param1.a;
                  if(_loc3_)
                  {
                     this._rewardConfigID = param1.id;
                  }
               }
            }
            return;
         }
         §§goto(addr0034);
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

