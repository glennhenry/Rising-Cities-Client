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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            super(param1);
            if(_loc2_ || _loc2_)
            {
               addr003c:
               this._questTaskTarget = new QuestTaskTargetDTO(param1.tt);
            }
            return;
         }
         §§goto(addr003c);
      }
      
      public function get questTaskTarget() : IQuestTaskTargetDTO
      {
         return this._questTaskTarget;
      }
   }
}

