package net.bigpoint.cityrama.model.server.vo.server.quest.interfaces
{
   public interface IQuestTaskTargetDTO
   {
      
      function get target() : int;
      
      function get questTaskItem() : Vector.<IQuestTaskItemDTO>;
   }
}

