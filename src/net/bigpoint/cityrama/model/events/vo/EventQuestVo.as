package net.bigpoint.cityrama.model.events.vo
{
   import net.bigpoint.cityrama.constants.quest.QuestSystemStateConst;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigEventDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestChallengeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestEventPlayerVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestPlayerVo;
   
   public class EventQuestVo
   {
      
      private var _configDto:ConfigEventDTO;
      
      private var _quests:Vector.<QuestEventPlayerVo>;
      
      public function EventQuestVo()
      {
         super();
         this._quests = new Vector.<QuestEventPlayerVo>();
      }
      
      public function get currentState() : String
      {
         var _loc1_:QuestPlayerVo = null;
         var _loc2_:QuestChallengeDTO = null;
         if(this._quests.length == 0)
         {
            return "";
         }
         for each(_loc1_ in this._quests)
         {
            if(_loc1_ == null)
            {
               return "";
            }
            if(_loc1_.state == QuestSystemStateConst.VALID)
            {
               return _loc1_.state;
            }
            if(_loc1_.state == QuestSystemStateConst.EXPIRED)
            {
               for each(_loc2_ in _loc1_.challenges)
               {
                  if(_loc2_.elementState == QuestSystemStateConst.DONE)
                  {
                     return QuestSystemStateConst.DONE;
                  }
               }
               return _loc1_.state;
            }
         }
         return _loc1_.state;
      }
      
      public function get configDto() : ConfigEventDTO
      {
         return this._configDto;
      }
      
      public function set configDto(param1:ConfigEventDTO) : void
      {
         this._configDto = param1;
      }
      
      public function get quests() : Vector.<QuestEventPlayerVo>
      {
         return this._quests;
      }
      
      public function set quests(param1:Vector.<QuestEventPlayerVo>) : void
      {
         this._quests = param1;
      }
      
      public function get hasFinishedChallenge() : Boolean
      {
         var _loc1_:QuestEventPlayerVo = null;
         var _loc2_:QuestChallengeDTO = null;
         for each(_loc1_ in this.quests)
         {
            if(_loc1_ != null)
            {
               for each(_loc2_ in _loc1_.challenges)
               {
                  if(_loc2_.elementState == QuestSystemStateConst.DONE)
                  {
                     return true;
                  }
               }
            }
         }
         return false;
      }
      
      public function get currentChallenge() : QuestChallengeDTO
      {
         var _loc1_:QuestEventPlayerVo = null;
         var _loc2_:QuestChallengeDTO = null;
         for each(_loc1_ in this.quests)
         {
            for each(_loc2_ in _loc1_.challenges)
            {
               if(_loc2_.elementState == QuestSystemStateConst.VALID)
               {
                  return _loc2_;
               }
            }
         }
         return null;
      }
      
      public function get currentActiveStage() : int
      {
         var _loc2_:QuestEventPlayerVo = null;
         var _loc3_:QuestChallengeDTO = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.quests)
         {
            if(_loc2_.state == QuestSystemStateConst.DONE)
            {
               return _loc2_.challenges.length;
            }
            for each(_loc3_ in _loc2_.challenges)
            {
               if(_loc3_.elementState == QuestSystemStateConst.VALID || _loc3_.elementState == QuestSystemStateConst.DONE || _loc3_.elementState == QuestSystemStateConst.SUBMITTED)
               {
                  _loc1_++;
               }
               if(_loc3_.elementState == QuestSystemStateConst.VALID)
               {
                  return _loc1_;
               }
            }
         }
         return _loc1_;
      }
      
      public function get currentRewardStage() : int
      {
         var _loc2_:QuestEventPlayerVo = null;
         var _loc3_:QuestChallengeDTO = null;
         var _loc1_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:* = this.quests;
         for each(_loc2_ in _loc5_)
         {
            if(_loc2_.state == QuestSystemStateConst.DONE)
            {
               return _loc2_.challenges.length;
            }
            for each(_loc3_ in _loc2_.challenges)
            {
               _loc1_++;
               if(_loc3_.elementState == QuestSystemStateConst.DONE)
               {
                  return _loc1_;
               }
            }
            return _loc1_;
         }
         return _loc1_;
      }
      
      public function get numberOfChallenges() : int
      {
         return this.quests[0].challenges.length;
      }
   }
}

