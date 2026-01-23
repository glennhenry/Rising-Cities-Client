package net.bigpoint.cityrama.model.server.vo.server.player
{
   import net.bigpoint.cityrama.model.server.interfaces.*;
   import net.bigpoint.cityrama.model.server.vo.server.player.interfaces.IQuestBookDTO;
   import net.bigpoint.cityrama.model.server.vo.server.quest.*;
   import net.bigpoint.util.*;
   
   public class QuestBookServerDTO implements ILoggableObject, IQuestBookDTO
   {
      
      private var _list:Vector.<QuestDTO>;
      
      private var _type:String;
      
      private var _history:Vector.<QuestHistoryVo>;
      
      public function QuestBookServerDTO(param1:Object)
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:QuestDTO = null;
         var _loc5_:QuestHistoryVo = null;
         super();
         this._type = param1.t;
         this._list = new Vector.<QuestDTO>();
         this._history = new Vector.<QuestHistoryVo>();
         for each(_loc2_ in param1.q)
         {
            _loc4_ = new QuestDTO(_loc2_);
            this._list.push(_loc4_);
         }
         for each(_loc3_ in param1.h)
         {
            _loc5_ = new QuestHistoryVo(_loc3_);
            this._history.push(_loc5_);
         }
      }
      
      public function log(param1:int, param2:int) : void
      {
         var _loc3_:QuestDTO = null;
         CityramaLogger.logger.log(param1,CityramaLogger.generatesSpaces(param2) + "QuestBookVo:");
         for each(_loc3_ in this._list)
         {
            _loc3_.log(param1,param2 + 1);
         }
      }
      
      public function get history() : Vector.<QuestHistoryVo>
      {
         return this._history;
      }
      
      public function get list() : Vector.<QuestDTO>
      {
         return this._list;
      }
      
      public function get type() : String
      {
         return this._type;
      }
   }
}

