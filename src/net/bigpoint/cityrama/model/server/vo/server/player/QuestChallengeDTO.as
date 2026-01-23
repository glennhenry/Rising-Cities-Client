package net.bigpoint.cityrama.model.server.vo.server.player
{
   import net.bigpoint.cityrama.model.server.vo.server.AbstractQuestSystemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.quest.QuestChallengeConfigDTO;
   
   public class QuestChallengeDTO extends AbstractQuestSystemDTO
   {
      
      private var _challengeConfig:QuestChallengeConfigDTO;
      
      private var _tasks:Vector.<QuestTaskDTO> = new Vector.<QuestTaskDTO>(0);
      
      public function QuestChallengeDTO(param1:Object, param2:QuestChallengeConfigDTO = null)
      {
         super(param1);
         this._tasks = Vector.<QuestTaskDTO>(_downstreamQuestElement);
         if(param2)
         {
            this._challengeConfig = param2;
         }
      }
      
      public function get rewards() : Vector.<QuestRewardDTO>
      {
         return this.config.rewardList;
      }
      
      public function get config() : QuestChallengeConfigDTO
      {
         return this._challengeConfig;
      }
      
      public function get tasks() : Vector.<QuestTaskDTO>
      {
         return this._tasks;
      }
      
      public function set tasks(param1:Vector.<QuestTaskDTO>) : void
      {
         this._tasks = param1;
      }
   }
}

