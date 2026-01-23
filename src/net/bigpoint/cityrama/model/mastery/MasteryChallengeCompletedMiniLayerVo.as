package net.bigpoint.cityrama.model.mastery
{
   public class MasteryChallengeCompletedMiniLayerVo
   {
      
      private var _completedMasteryChallengeIndex:int;
      
      private var _rewards:Vector.<MasteryBonusVo>;
      
      public function MasteryChallengeCompletedMiniLayerVo(param1:int, param2:Vector.<MasteryBonusVo>)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            super();
            if(_loc3_ || Boolean(param1))
            {
               this._completedMasteryChallengeIndex = param1;
               if(_loc3_ || Boolean(param2))
               {
                  addr0047:
                  this._rewards = param2;
               }
               return;
            }
         }
         §§goto(addr0047);
      }
      
      public function get completedMasteryChallengeIndex() : int
      {
         return this._completedMasteryChallengeIndex;
      }
      
      public function get rewards() : Vector.<MasteryBonusVo>
      {
         return this._rewards;
      }
   }
}

