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
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:Object = null;
         var _loc3_:IQuestRewardDTO = null;
         if(_loc7_ || Boolean(param1))
         {
            super(param1);
            if(!(_loc6_ && Boolean(param1)))
            {
               this._config = new ConfigQuestDTO(param1.c);
               if(_loc7_ || Boolean(_loc3_))
               {
                  this._viewCount = param1.v;
                  if(!_loc6_)
                  {
                     §§goto(addr006a);
                  }
                  §§goto(addr007a);
               }
               addr006a:
               if(param1.o != null)
               {
                  if(_loc7_)
                  {
                     addr007a:
                     this._eventConfig = new ConfigEventDTO(param1.o);
                     if(!_loc6_)
                     {
                        §§goto(addr009c);
                     }
                  }
                  §§goto(addr00ab);
               }
               addr009c:
               this._slotID = param1.sid;
               if(_loc7_)
               {
                  addr00ab:
                  this._rewardList = new Vector.<IQuestRewardDTO>();
                  if(_loc7_ || Boolean(param1))
                  {
                     addr00c8:
                     this._lastUpdated = param1.l;
                  }
               }
               for each(_loc2_ in param1.rw)
               {
                  if(!(_loc6_ && Boolean(this)))
                  {
                     if(_loc2_ == null)
                     {
                        continue;
                     }
                     if(!(_loc6_ && Boolean(this)))
                     {
                        if(_loc2_.t == QuestSystemRewardTypeConstants.QUEST)
                        {
                           continue;
                        }
                     }
                  }
                  _loc3_ = QuestFactory.getQuestRewardDto(_loc2_);
                  if(!_loc6_)
                  {
                     if(_loc3_)
                     {
                        if(_loc7_)
                        {
                           this._rewardList.push(_loc3_);
                        }
                     }
                  }
               }
               return;
            }
            §§goto(addr007a);
         }
         §§goto(addr00c8);
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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._viewCount = param1;
         }
      }
      
      public function get id() : Number
      {
         return this._config.id;
      }
      
      public function set rewardList(param1:Vector.<IQuestRewardDTO>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._rewardList = param1;
         }
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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._lastUpdated = param1;
         }
      }
   }
}

