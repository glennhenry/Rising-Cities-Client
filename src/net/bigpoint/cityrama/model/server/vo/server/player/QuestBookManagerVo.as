package net.bigpoint.cityrama.model.server.vo.server.player
{
   import net.bigpoint.cityrama.constants.quest.QuestSystemTypeConstants;
   import net.bigpoint.cityrama.model.server.vo.server.player.interfaces.IQuestBookDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.interfaces.IQuestBookMangerDTO;
   
   public class QuestBookManagerVo implements IQuestBookMangerDTO
   {
      
      private var _questBookTutorial:QuestBookServerDTO;
      
      private var _questBookSocial:QuestBookServerDTO;
      
      private var _questBookList:Vector.<IQuestBookDTO>;
      
      private var _questBookEvents:QuestBookServerDTO;
      
      public function QuestBookManagerVo(param1:Object)
      {
         var _loc2_:Object = null;
         var _loc3_:QuestBookServerDTO = null;
         super();
         this._questBookList = new Vector.<IQuestBookDTO>();
         for each(_loc2_ in param1.qb)
         {
            _loc3_ = new QuestBookServerDTO(_loc2_);
            this._questBookList.push(_loc3_);
            switch(_loc3_.type)
            {
               case QuestSystemTypeConstants.SOCIAL:
                  this._questBookSocial = _loc3_;
                  break;
               case QuestSystemTypeConstants.TUTORIAL:
                  this._questBookTutorial = _loc3_;
                  break;
               case QuestSystemTypeConstants.EVENT:
                  this._questBookEvents = _loc3_;
            }
         }
      }
      
      public function set questBookSocial(param1:QuestBookServerDTO) : void
      {
         this._questBookSocial = param1;
      }
      
      public function get questBookList() : Vector.<IQuestBookDTO>
      {
         return this._questBookList;
      }
      
      public function get questBookTutorial() : QuestBookServerDTO
      {
         return this._questBookTutorial;
      }
      
      public function get questBookSocial() : QuestBookServerDTO
      {
         return this._questBookSocial;
      }
   }
}

