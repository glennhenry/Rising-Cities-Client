package net.bigpoint.cityrama.model.server.vo.server.quest.interfaces
{
   public interface IQuestRequirementDTO
   {
      
      function get type() : String;
      
      function get amount() : int;
      
      function get configID() : uint;
   }
}

