package net.bigpoint.cityrama.model.server.vo.server.player
{
   import net.bigpoint.cityrama.constants.quest.QuestSystemRewardTypeConstants;
   import net.bigpoint.cityrama.model.quest.strategy.QuestFactory;
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   import net.bigpoint.cityrama.model.server.vo.server.AbstractQuestSystemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigEventDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.interfaces.IQuestDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.interfaces.IQuestRewardDTO;
   import net.bigpoint.cityrama.model.server.vo.server.quest.ConfigQuestDTO;
   
   public class QuestDTO extends AbstractQuestSystemDTO implements ILoggableObject, IQuestDTO
   {
      
      private var _config:ConfigQuestDTO;
      
      private var _viewCount:uint;
      
      private var _slotID:uint;
      
      private var _rewardList:Vector.<IQuestRewardDTO>;
      
      private var _eventConfig:ConfigEventDTO;
      
      private var _lastUpdated:Number;
      
      public function QuestDTO(param1:Object)
      {
         var _loc2_:Object = null;
         super(param1);
         this._config = new ConfigQuestDTO(param1.c);
         this._viewCount = param1.v;
         if(param1.o != null)
         {
            this._eventConfig = new ConfigEventDTO(param1.o);
         }
         this._slotID = param1.sid;
         this._rewardList = new Vector.<IQuestRewardDTO>();
         this._lastUpdated = param1.l;
         for each(_loc2_ in param1.rw)
         {
            if(_loc2_ != null)
            {
               if(_loc2_.t != QuestSystemRewardTypeConstants.QUEST)
               {
                  var _loc3_:IQuestRewardDTO = QuestFactory.getQuestRewardDto(_loc2_);
               }
            }
         }
      }
      
      public function get config() : ConfigQuestDTO
      {
         return this._config;
      }
      
      public function get viewCount() : uint
      {
         return this._viewCount;
      }
      
      public function get slotID() : uint
      {
         return this._slotID;
      }
      
      public function get rewardList() : Vector.<IQuestRewardDTO>
      {
         return this._rewardList;
      }
      
      public function set viewCount(param1:uint) : void
      {
         this._viewCount = param1;
      }
      
      public function get id() : Number
      {
         return this._config.id;
      }
      
      public function set rewardList(param1:Vector.<IQuestRewardDTO>) : void
      {
         this._rewardList = param1;
      }
      
      public function get eventConfig() : ConfigEventDTO
      {
         return this._eventConfig;
      }
      
      public function get lastUpdated() : Number
      {
         return this._lastUpdated;
      }
      
      public function set lastUpdated(param1:Number) : void
      {
         this._lastUpdated = param1;
      }
   }
}

