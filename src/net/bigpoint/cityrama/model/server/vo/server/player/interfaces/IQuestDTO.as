package net.bigpoint.cityrama.model.server.vo.server.player.interfaces
{
   import net.bigpoint.cityrama.model.server.vo.server.quest.ConfigQuestDTO;
   
   public interface IQuestDTO
   {
      
      function get config() : ConfigQuestDTO;
      
      function get viewCount() : uint;
      
      function get slotID() : uint;
      
      function get rewardList() : Vector.<IQuestRewardDTO>;
   }
}

