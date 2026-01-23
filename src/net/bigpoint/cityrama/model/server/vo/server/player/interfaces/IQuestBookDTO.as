package net.bigpoint.cityrama.model.server.vo.server.player.interfaces
{
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestHistoryVo;
   
   public interface IQuestBookDTO
   {
      
      function get type() : String;
      
      function get list() : Vector.<QuestDTO>;
      
      function get history() : Vector.<QuestHistoryVo>;
   }
}

