package net.bigpoint.cityrama.model.server.vo.server.player
{
   import net.bigpoint.cityrama.model.server.vo.server.AbstractQuestSystemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.quest.QuestChallengeConfigDTO;
   
   public class QuestChallengeDTO extends AbstractQuestSystemDTO
   {
      
      private var _challengeConfig:QuestChallengeConfigDTO;
      
      private var _tasks:Vector.<QuestTaskDTO>;
      
      public function QuestChallengeDTO(param1:Object, param2:QuestChallengeConfigDTO = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(this)))
         {
            this._tasks = new Vector.<QuestTaskDTO>(0);
            if(_loc3_)
            {
               super(param1);
               if(!_loc4_)
               {
                  §§goto(addr005c);
               }
               §§goto(addr007c);
            }
            addr005c:
            this._tasks = Vector.<QuestTaskDTO>(_downstreamQuestElement);
            if(_loc3_ || Boolean(this))
            {
               addr007c:
               if(param2)
               {
                  if(_loc3_)
                  {
                     addr0086:
                     this._challengeConfig = param2;
                  }
               }
            }
            return;
         }
         §§goto(addr0086);
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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._tasks = param1;
         }
      }
   }
}

