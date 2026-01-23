package net.bigpoint.cityrama.model.quest.vo
{
   import net.bigpoint.cityrama.constants.quest.QuestSystemStateConst;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestChallengeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestEventPlayerVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestPlayerVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestTaskDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.interfaces.IQuestPlayerVo;
   import net.bigpoint.cityrama.model.server.vo.server.quest.QuestChallengeConfigDTO;
   
   public class QuestBookVo
   {
      
      private var _quests:Vector.<IQuestPlayerVo>;
      
      private var _type:String;
      
      public function QuestBookVo()
      {
         super();
         this._quests = new Vector.<IQuestPlayerVo>();
      }
      
      public function add(param1:QuestPlayerVo) : void
      {
         this._quests.push(param1);
         if(!this._type)
         {
            this._type = param1.type;
         }
      }
      
      public function get quests() : Vector.<IQuestPlayerVo>
      {
         return this._quests;
      }
      
      public function get currentQuests() : Vector.<IQuestPlayerVo>
      {
         var _loc2_:QuestPlayerVo = null;
         var _loc1_:Vector.<IQuestPlayerVo> = new Vector.<IQuestPlayerVo>();
         for each(_loc2_ in this._quests)
         {
            if(_loc2_.state == QuestSystemStateConst.ACTIVE || _loc2_.state == QuestSystemStateConst.DONE || _loc2_.state == QuestSystemStateConst.VALID)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function getTaskByElementSubType(param1:String) : Vector.<QuestTaskDTO>
      {
         var _loc3_:QuestPlayerVo = null;
         var _loc4_:QuestTaskDTO = null;
         var _loc2_:Vector.<QuestTaskDTO> = new Vector.<QuestTaskDTO>();
         for each(_loc3_ in this.quests)
         {
            for each(_loc4_ in _loc3_.tasks)
            {
               if(_loc4_.taskConfig.questElementSubType == param1)
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         return _loc2_;
      }
      
      public function updateQuestStateById(param1:Number, param2:String, param3:Number) : void
      {
         var _loc4_:QuestPlayerVo = null;
         for each(_loc4_ in this.quests)
         {
            if(_loc4_.id == param1)
            {
               _loc4_.state = param2;
               _loc4_.questDto.endTimeStamp = param3;
            }
         }
      }
      
      public function deleteQuestById(param1:Number) : void
      {
         var _loc2_:QuestPlayerVo = null;
         for each(_loc2_ in this.quests)
         {
            if(_loc2_.id == param1)
            {
               this.quests.splice(this.quests.indexOf(_loc2_),1);
            }
         }
      }
      
      public function getQuestsById(param1:Number) : QuestPlayerVo
      {
         var _loc2_:QuestPlayerVo = null;
         for each(_loc2_ in this.quests)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function getChallengeConfigByCId(param1:Number) : QuestChallengeConfigDTO
      {
         var _loc2_:QuestEventPlayerVo = null;
         var _loc3_:QuestChallengeDTO = null;
         for each(_loc2_ in this.quests)
         {
            for each(_loc3_ in _loc2_.challenges)
            {
               if(_loc3_.config.id == param1)
               {
                  return _loc3_.config;
               }
            }
         }
         return null;
      }
      
      public function getParentQuestConfigIdByTaskConfigId(param1:Number) : Number
      {
         var _loc2_:QuestPlayerVo = null;
         var _loc3_:QuestTaskDTO = null;
         for each(_loc2_ in this.quests)
         {
            for each(_loc3_ in _loc2_.tasks)
            {
               if(_loc3_.taskConfig.id == param1)
               {
                  return _loc2_.config.id;
               }
            }
         }
         return 0;
      }
      
      public function getQuestByConfigId(param1:Number) : QuestDTO
      {
         var _loc2_:QuestEventPlayerVo = null;
         var _loc3_:QuestChallengeDTO = null;
         for each(_loc2_ in this.quests)
         {
            for each(_loc3_ in _loc2_.challenges)
            {
               if(_loc3_.config.id == param1)
               {
                  return _loc2_.questDto;
               }
            }
         }
         return null;
      }
   }
}

