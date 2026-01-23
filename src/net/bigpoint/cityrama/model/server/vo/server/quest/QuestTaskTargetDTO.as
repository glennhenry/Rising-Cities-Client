package net.bigpoint.cityrama.model.server.vo.server.quest
{
   import net.bigpoint.cityrama.model.server.vo.server.quest.interfaces.IQuestTaskItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.quest.interfaces.IQuestTaskTargetDTO;
   
   public class QuestTaskTargetDTO implements IQuestTaskTargetDTO
   {
      
      private var _target:int;
      
      private var _questTaskItem:Vector.<IQuestTaskItemDTO>;
      
      public function QuestTaskTargetDTO(param1:Object)
      {
         var _loc2_:Object = null;
         super();
         this._questTaskItem = new Vector.<IQuestTaskItemDTO>();
         if(param1)
         {
            for each(_loc2_ in param1.i)
            {
               this._questTaskItem.push(new QuestTaskItemVo(_loc2_));
            }
            this._target = param1.t;
         }
      }
      
      public function get target() : int
      {
         return this._target;
      }
      
      public function get questTaskItem() : Vector.<IQuestTaskItemDTO>
      {
         return this._questTaskItem;
      }
   }
}

