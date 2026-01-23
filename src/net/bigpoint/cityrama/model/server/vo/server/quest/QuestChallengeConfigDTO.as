package net.bigpoint.cityrama.model.server.vo.server.quest
{
   import net.bigpoint.cityrama.constants.quest.QuestSystemRewardTypeConstants;
   import net.bigpoint.cityrama.model.server.vo.server.AbstractQuestSystemConfigDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestRewardDTO;
   
   public class QuestChallengeConfigDTO extends AbstractQuestSystemConfigDTO
   {
      
      private var _rewardList:Vector.<QuestRewardDTO>;
      
      private var _requiredForUpsell:Boolean;
      
      public function QuestChallengeConfigDTO(param1:Object)
      {
         var _loc2_:Object = null;
         this._rewardList = new Vector.<QuestRewardDTO>();
         super(param1);
         if(param1)
         {
            for each(_loc2_ in param1.rw)
            {
               if(_loc2_ != null)
               {
                  if(_loc2_.t != QuestSystemRewardTypeConstants.QUEST)
                  {
                     this._rewardList.push(new QuestRewardDTO(_loc2_));
                  }
               }
            }
            this._requiredForUpsell = param1.u;
         }
      }
      
      public function get rewardList() : Vector.<QuestRewardDTO>
      {
         return this._rewardList;
      }
      
      public function get requiredForUpsell() : Boolean
      {
         return this._requiredForUpsell;
      }
   }
}

