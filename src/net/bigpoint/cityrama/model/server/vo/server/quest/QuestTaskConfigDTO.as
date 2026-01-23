package net.bigpoint.cityrama.model.server.vo.server.quest
{
   import net.bigpoint.cityrama.model.server.vo.server.AbstractQuestSystemConfigDTO;
   import net.bigpoint.cityrama.model.server.vo.server.quest.interfaces.IQuestTaskConfigDTO;
   import net.bigpoint.cityrama.model.server.vo.server.quest.interfaces.IQuestTaskTargetDTO;
   
   public class QuestTaskConfigDTO extends AbstractQuestSystemConfigDTO implements IQuestTaskConfigDTO
   {
      
      private var _questTaskTarget:IQuestTaskTargetDTO;
      
      public function QuestTaskConfigDTO(param1:Object)
      {
         super(param1);
         this._questTaskTarget = new QuestTaskTargetDTO(param1.tt);
      }
      
      public function get questTaskTarget() : IQuestTaskTargetDTO
      {
         return this._questTaskTarget;
      }
   }
}

