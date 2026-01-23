package net.bigpoint.cityrama.model.server.vo.server.player
{
   import flash.errors.IllegalOperationError;
   import flash.events.EventDispatcher;
   import net.bigpoint.cityrama.constants.quest.*;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.game.*;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.preloader.*;
   import net.bigpoint.cityrama.model.server.vo.server.AbstractQuestSystemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.interfaces.*;
   import net.bigpoint.cityrama.model.server.vo.server.quest.*;
   
   public class QuestPlayerVo extends EventDispatcher implements IQuestPlayerVo
   {
      
      private static const _STATE:String = "_STATE";
      
      public static const DATA_CHANGED_EVENT:String = "DATA_CHANGED_EVENT";
      
      public static const _VIEWED:String = "_VIEWED";
      
      public static const _TASK:String = "_TASK";
      
      protected var _questDto:QuestDTO;
      
      private var _config:ConfigQuestDTO;
      
      protected var _propertiesBuilt:Boolean;
      
      private var _tasks:Vector.<QuestTaskDTO>;
      
      private var _rewards:Vector.<QuestRewardInfoVo>;
      
      public function QuestPlayerVo(param1:QuestDTO, param2:GameConfigProxy, param3:CvTagProxy, param4:PlayerProxy, param5:PlayfieldProxy)
      {
         super();
         this._questDto = param1;
         this._config = this._questDto.config;
         this._tasks = new Vector.<QuestTaskDTO>();
         this.buildProperties(param2,param3,param4,param5);
      }
      
      protected function buildProperties(param1:GameConfigProxy, param2:CvTagProxy, param3:PlayerProxy, param4:PlayfieldProxy) : void
      {
         var _loc5_:IQuestRewardDTO = null;
         if(this._propertiesBuilt)
         {
            return;
         }
         this._rewards = new Vector.<QuestRewardInfoVo>();
         for each(_loc5_ in this.questDto.rewardList)
         {
            if(_loc5_.rewardType == QuestSystemRewardTypeConstants.RESOURCE)
            {
               _loc5_.resourceConfig = param1.resources[_loc5_.rewardConfigID];
            }
            if(_loc5_.rewardType == QuestSystemRewardTypeConstants.GOOD)
            {
               _loc5_.goodConfig = param1.goods[_loc5_.rewardConfigID];
            }
            if(_loc5_.rewardType == QuestSystemRewardTypeConstants.PERMISSION)
            {
               for each(var _loc6_ in param1.getConfigPlayfieldItemsByPermissionId(_loc5_.rewardConfigID))
               {
                  if(!_loc6_.isUpgrade)
                  {
                     _loc5_.configPlayfieldItem = null;
                  }
               }
            }
            if(_loc5_.rewardType == QuestSystemRewardTypeConstants.IMPROVEMENT)
            {
               _loc5_.improvementConfig = param1.config.improvements[_loc5_.rewardConfigID];
            }
            if(_loc5_.rewardType == QuestSystemRewardTypeConstants.ASSIST)
            {
               _loc5_.assistConfig = param1.config.assists[_loc5_.rewardConfigID];
            }
            this._rewards.push(new QuestRewardInfoVo(_loc5_));
         }
         this._propertiesBuilt = true;
      }
      
      public function get type() : String
      {
         return this.config.questElementSubType;
      }
      
      public function get state() : String
      {
         return this.questDto.elementState;
      }
      
      public function set state(param1:String) : void
      {
         this.questDto.elementState = param1;
      }
      
      public function get id() : int
      {
         return this.config.id;
      }
      
      public function get tasks() : Vector.<QuestTaskDTO>
      {
         return this._tasks;
      }
      
      private function buildUserTasks() : void
      {
         var _loc1_:QuestTaskDTO = null;
         for each(_loc1_ in this._questDto.downstreamQuestElement)
         {
            if(_loc1_)
            {
               this.modifyUserQuest(_loc1_);
            }
         }
      }
      
      private function modifyUserQuest(param1:AbstractQuestSystemDTO) : void
      {
         var _loc2_:QuestTaskDTO = null;
         var _loc3_:AbstractQuestSystemDTO = null;
         for each(_loc2_ in this._tasks)
         {
            if(param1 is QuestTaskDTO)
            {
               if(_loc2_.configQuestTaskID == (param1 as QuestTaskDTO).configQuestTaskID)
               {
                  _loc2_.currentValue = (param1 as QuestTaskDTO).currentValue;
                  _loc2_.elementState = (param1 as QuestTaskDTO).elementState;
               }
            }
         }
         for each(_loc3_ in param1.downstreamQuestElement)
         {
            this.modifyUserQuest(_loc3_);
         }
      }
      
      public function get config() : ConfigQuestDTO
      {
         this.validate();
         return this._config;
      }
      
      protected function validate() : void
      {
         if(this._questDto == null || this._config == null || !this._propertiesBuilt)
         {
            throw new Error("QuestVo Error data,config is null");
         }
      }
      
      public function get questDto() : QuestDTO
      {
         return this._questDto;
      }
      
      public function set questDto(param1:QuestDTO) : void
      {
         this._questDto = param1;
      }
      
      public function get rewards() : Vector.<QuestRewardInfoVo>
      {
         return this._rewards;
      }
      
      public function set tasks(param1:Vector.<QuestTaskDTO>) : void
      {
         this._tasks = param1;
         this.buildUserTasks();
      }
      
      public function get questGiverGfxId() : int
      {
         return this.questDto.config.questGiverGFXid;
      }
      
      public function get challenges() : Vector.<QuestChallengeDTO>
      {
         throw new IllegalOperationError("I am a quest and not an event !!");
      }
      
      public function set challenges(param1:Vector.<QuestChallengeDTO>) : void
      {
         throw new IllegalOperationError("I am a quest and not an event !!");
      }
      
      public function get lastUpdated() : Number
      {
         return this._questDto.lastUpdated;
      }
      
      public function set lastUpdated(param1:Number) : void
      {
         this._questDto.lastUpdated = param1;
      }
   }
}

