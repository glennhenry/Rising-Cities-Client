package net.bigpoint.cityrama.model.server.vo.server.player
{
   import net.bigpoint.cityrama.model.server.vo.server.player.interfaces.QuestHistoryDTO;
   
   public class QuestHistoryVo implements QuestHistoryDTO
   {
      
      private var _category:String;
      
      private var _finishCount:int;
      
      public function QuestHistoryVo(param1:Object)
      {
         super();
         this._category = param1.c;
         this._finishCount = param1.s;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get finishCount() : int
      {
         return this._finishCount;
      }
   }
}

