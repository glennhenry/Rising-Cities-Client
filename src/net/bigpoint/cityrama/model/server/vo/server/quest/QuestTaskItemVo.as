package net.bigpoint.cityrama.model.server.vo.server.quest
{
   import net.bigpoint.cityrama.model.server.vo.server.quest.interfaces.IQuestTaskItemDTO;
   
   public class QuestTaskItemVo implements IQuestTaskItemDTO
   {
      
      private var _questTaskItemType:String;
      
      private var _questTaskItemID:Number;
      
      public function QuestTaskItemVo(param1:Object)
      {
         super();
         this._questTaskItemID = param1.id;
         this._questTaskItemType = param1.t;
      }
      
      public function get questTaskItemType() : String
      {
         return this._questTaskItemType;
      }
      
      public function get questTaskItemID() : Number
      {
         return this._questTaskItemID;
      }
   }
}

