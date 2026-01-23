package net.bigpoint.cityrama.model.server.vo.server.player
{
   import net.bigpoint.cityrama.model.server.vo.server.player.interfaces.QuestHistoryDTO;
   
   public class QuestHistoryVo implements QuestHistoryDTO
   {
      
      private var _category:String;
      
      private var _finishCount:int;
      
      public function QuestHistoryVo(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super();
            if(_loc3_)
            {
               addr0021:
               this._category = param1.c;
               if(_loc3_)
               {
                  this._finishCount = param1.s;
               }
            }
            return;
         }
         §§goto(addr0021);
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

