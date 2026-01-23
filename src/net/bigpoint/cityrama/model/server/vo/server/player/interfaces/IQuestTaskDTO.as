package net.bigpoint.cityrama.model.server.vo.server.player.interfaces
{
   import net.bigpoint.cityrama.model.server.vo.server.quest.QuestTaskConfigDTO;
   
   public interface IQuestTaskDTO
   {
      
      function get currentValue() : uint;
      
      function get configQuestTaskID() : uint;
      
      function get taskConfig() : QuestTaskConfigDTO;
   }
}

