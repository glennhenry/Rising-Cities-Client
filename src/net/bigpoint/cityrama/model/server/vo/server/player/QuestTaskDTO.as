package net.bigpoint.cityrama.model.server.vo.server.player
{
   import net.bigpoint.cityrama.constants.quest.QuestSystemCompositePatternSucksConstants;
   import net.bigpoint.cityrama.model.server.vo.server.AbstractQuestSystemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.QuestCompleteCostVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.interfaces.IQuestTaskDTO;
   import net.bigpoint.cityrama.model.server.vo.server.quest.QuestTaskConfigDTO;
   
   public class QuestTaskDTO extends AbstractQuestSystemDTO implements IQuestTaskDTO
   {
      
      private var _currentValue:uint;
      
      private var _taskConfig:QuestTaskConfigDTO;
      
      private var _questCompleteCostVo:QuestCompleteCostVo;
      
      public function QuestTaskDTO(param1:Object, param2:QuestTaskConfigDTO = null)
      {
         super(param1);
         this._currentValue = param1 == null ? 0 : uint(param1.v);
         if(!param2 && param1 != null)
         {
            this._taskConfig = new QuestTaskConfigDTO(param1.c);
         }
         else
         {
            this._taskConfig = param2;
         }
         if(param1 != null)
         {
            if(param1.u != null && param1.u.et != null && param1.u.et == QuestSystemCompositePatternSucksConstants.COST)
            {
               this._questCompleteCostVo = new QuestCompleteCostVo(param1.u);
            }
         }
      }
      
      public function get currentValue() : uint
      {
         return this._currentValue;
      }
      
      public function get configQuestTaskID() : uint
      {
         return this._taskConfig.id;
      }
      
      public function get taskConfig() : QuestTaskConfigDTO
      {
         return this._taskConfig;
      }
      
      public function set currentValue(param1:uint) : void
      {
         this._currentValue = param1;
      }
      
      public function get questCompleteCostVo() : QuestCompleteCostVo
      {
         return this._questCompleteCostVo;
      }
      
      public function set questCompleteCostVo(param1:QuestCompleteCostVo) : void
      {
         this._questCompleteCostVo = param1;
      }
   }
}

