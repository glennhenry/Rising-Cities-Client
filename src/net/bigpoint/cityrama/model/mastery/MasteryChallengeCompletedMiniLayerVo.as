package net.bigpoint.cityrama.model.mastery
{
   public class MasteryChallengeCompletedMiniLayerVo
   {
      
      private var _completedMasteryChallengeIndex:int;
      
      private var _rewards:Vector.<MasteryBonusVo>;
      
      public function MasteryChallengeCompletedMiniLayerVo(param1:int, param2:Vector.<MasteryBonusVo>)
      {
         super();
         this._completedMasteryChallengeIndex = param1;
         this._rewards = param2;
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

