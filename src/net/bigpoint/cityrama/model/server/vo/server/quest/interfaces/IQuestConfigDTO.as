package net.bigpoint.cityrama.model.server.vo.server.quest.interfaces
{
   public interface IQuestConfigDTO
   {
      
      function get saveable() : Boolean;
      
      function get resumable() : Boolean;
      
      function get questRequirements() : Vector.<IQuestRequirementDTO>;
   }
}

