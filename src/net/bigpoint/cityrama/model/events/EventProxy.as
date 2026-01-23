package net.bigpoint.cityrama.model.events
{
   import net.bigpoint.cityrama.constants.quest.QuestSystemStateConst;
   import net.bigpoint.cityrama.constants.quest.QuestSystemTypeConstants;
   import net.bigpoint.cityrama.model.events.vo.EventQuestVo;
   import net.bigpoint.cityrama.model.events.vo.ServerEventTypeConst;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.quest.QuestProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigEventDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigEventLevel;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemPermissionDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigUpcomingEventDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigUserLevelDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestChallengeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestEventPlayerVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestPlayerVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.interfaces.IQuestPlayerVo;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class EventProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "EventProxy";
      
      private var _qproxy:QuestProxy;
      
      private var _cproxy:GameConfigProxy;
      
      private var _timerProxy:TimerProxy;
      
      private var _gSP:PlayerGoodsStockProxy;
      
      private var _prpproxy:PlayerResourceProxy;
      
      public function EventProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         this._timerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
      }
      
      public function get targetAvailableTime() : Number
      {
         if(this.availableEventQuests.length)
         {
            if(this.availableEventQuests[0])
            {
               return this.availableEventQuests[0].configDto.availabilityTimeStart + this.availableEventQuests[0].configDto.totalAvailabilityTime;
            }
         }
         return 0;
      }
      
      public function get targetRunningTime() : Number
      {
         if(this.runningEventQuest)
         {
            return this.runningEventQuest.quests[0].questDto.endTimeStamp;
         }
         return 0;
      }
      
      public function get allEventQuests() : Vector.<EventQuestVo>
      {
         var _loc2_:IQuestPlayerVo = null;
         var _loc3_:EventQuestVo = null;
         var _loc1_:Vector.<EventQuestVo> = new Vector.<EventQuestVo>();
         for each(_loc2_ in this.questProxy.getAllQuestsByType(QuestSystemTypeConstants.EVENT))
         {
            if(_loc2_.state != QuestSystemStateConst.SUBMITTED)
            {
               _loc3_ = new EventQuestVo();
               _loc3_.configDto = _loc2_.questDto.eventConfig;
               _loc3_.quests.push(_loc2_);
               _loc1_.push(_loc3_);
            }
         }
         return _loc1_;
      }
      
      public function get availableEventQuests() : Vector.<EventQuestVo>
      {
         var _loc2_:EventQuestVo = null;
         var _loc1_:Vector.<EventQuestVo> = new Vector.<EventQuestVo>();
         for each(_loc2_ in this.allEventQuests)
         {
            if(_loc2_.currentState == QuestSystemStateConst.INACTIVE)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function get runningEventQuest() : EventQuestVo
      {
         var _loc1_:EventQuestVo = null;
         var _loc3_:QuestPlayerVo = null;
         for each(_loc1_ in this.allEventQuests)
         {
            if(_loc1_.currentState == QuestSystemStateConst.VALID)
            {
               return _loc1_;
            }
         }
         if(this.questProxy.getAllQuestsByType(QuestSystemTypeConstants.EVENT).length == 0)
         {
            return null;
         }
         var _loc2_:EventQuestVo = new EventQuestVo();
         for each(_loc3_ in this.questProxy.getAllQuestsByType(QuestSystemTypeConstants.EVENT))
         {
            if(_loc3_.questDto.elementState == QuestSystemStateConst.VALID)
            {
               _loc2_.quests.push(_loc3_);
            }
         }
         if(_loc2_.quests.length == 0)
         {
            return null;
         }
         return _loc2_;
      }
      
      public function get expiredEventQuest() : EventQuestVo
      {
         var _loc1_:EventQuestVo = null;
         var _loc2_:EventQuestVo = null;
         var _loc3_:Boolean = false;
         var _loc4_:QuestPlayerVo = null;
         for each(_loc1_ in this.allEventQuests)
         {
            if(_loc1_.currentState == QuestSystemStateConst.EXPIRED)
            {
               return _loc1_;
            }
         }
         _loc2_ = new EventQuestVo();
         _loc3_ = false;
         for each(_loc4_ in this.questProxy.getAllQuestsByType(QuestSystemTypeConstants.EVENT))
         {
            if(_loc4_.state == QuestSystemStateConst.EXPIRED)
            {
               _loc2_.quests.push(_loc4_);
               _loc3_ = true;
               break;
            }
         }
         if(_loc3_)
         {
            return _loc2_;
         }
         return null;
      }
      
      public function get finishedEventQuest() : EventQuestVo
      {
         var _loc1_:EventQuestVo = null;
         var _loc3_:QuestPlayerVo = null;
         var _loc4_:QuestChallengeDTO = null;
         for each(_loc1_ in this.allEventQuests)
         {
            if(_loc1_.currentState == QuestSystemStateConst.DONE)
            {
               return _loc1_;
            }
            if(_loc1_.hasFinishedChallenge)
            {
               return _loc1_;
            }
         }
         if(this.questProxy.getAllQuestsByType(QuestSystemTypeConstants.EVENT).length == 0)
         {
            return null;
         }
         var _loc2_:EventQuestVo = new EventQuestVo();
         for each(_loc3_ in this.questProxy.getAllQuestsByType(QuestSystemTypeConstants.EVENT))
         {
            for each(_loc4_ in _loc3_.challenges)
            {
               if(_loc4_.elementState == QuestSystemStateConst.DONE)
               {
                  _loc2_.quests.push(_loc3_);
                  break;
               }
            }
         }
         if(_loc2_.quests.length == 0)
         {
            return null;
         }
         return _loc2_;
      }
      
      public function get availableEventQuestStartTime() : Number
      {
         if(this.availableEventQuests.length)
         {
            return this.availableEventQuests[0].configDto.availabilityTimeStart;
         }
         return 0;
      }
      
      public function get runningEventQuestStartTime() : Number
      {
         if(this.runningEventQuest)
         {
            return this.runningEventQuest.quests[0].questDto.endTimeStamp - this.runningEventQuest.quests[0].config.runtimeFull;
         }
         return 0;
      }
      
      public function get runningEventQuestTimeLeft() : Number
      {
         if(this.runningEventQuest)
         {
            return this.runningEventQuest.quests[0].questDto.endTimeStamp - this._timerProxy.currentTimeStamp;
         }
         return 0;
      }
      
      public function get availableEventQuestTotalDuration() : Number
      {
         if(this.availableEventQuests.length)
         {
            return this.availableEventQuests[0].configDto.totalAvailabilityTime;
         }
         return 0;
      }
      
      public function get runningEventQuestTotalDuration() : Number
      {
         if(this.runningEventQuest)
         {
            return this.runningEventQuest.quests[0].config.runtimeFull;
         }
         return 0;
      }
      
      public function get currentRunningEventQuestGfxId() : Number
      {
         if(this.runningEventQuest)
         {
            return this.runningEventQuest.quests[0].config.gfxId;
         }
         return 0;
      }
      
      public function get currentRunningEventID() : Number
      {
         if(this.runningEventQuest)
         {
            return this.runningEventQuest.quests[0].config.id;
         }
         return 0;
      }
      
      public function get currentRunningEventStepProgress() : Number
      {
         if(this.runningEventQuest)
         {
            return this.runningEventQuest.currentActiveStage / this.runningEventQuest.numberOfChallenges;
         }
         return 0;
      }
      
      public function get currentListOfAvailableEventQuestGoodIds() : Vector.<Number>
      {
         var _loc2_:Vector.<QuestEventPlayerVo> = null;
         var _loc3_:Vector.<Number> = null;
         var _loc4_:QuestEventPlayerVo = null;
         var _loc5_:QuestEventPlayerVo = null;
         var _loc6_:Number = NaN;
         var _loc7_:QuestChallengeDTO = null;
         var _loc8_:ConfigGoodDTO = null;
         var _loc9_:Number = NaN;
         var _loc1_:Vector.<Number> = new Vector.<Number>();
         if(this.runningEventQuest)
         {
            _loc2_ = new Vector.<QuestEventPlayerVo>();
            _loc3_ = new Vector.<Number>();
            for each(_loc4_ in this.runningEventQuest.quests)
            {
               if(_loc4_.state == QuestSystemStateConst.VALID)
               {
                  _loc2_.push(_loc4_);
                  _loc3_.push(_loc4_.id);
               }
            }
            for each(_loc5_ in _loc2_)
            {
               for each(_loc7_ in _loc5_.challenges)
               {
                  if(_loc7_.elementState == QuestSystemStateConst.VALID)
                  {
                     _loc3_.push(_loc7_.config.id);
                  }
               }
            }
            for each(_loc6_ in _loc3_)
            {
               for each(_loc8_ in this.configProxy.config.goods)
               {
                  for each(_loc9_ in _loc8_.associatedEventIds)
                  {
                     if(_loc9_ == _loc6_)
                     {
                        _loc1_.push(_loc8_.id);
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public function get currentRunningEventQuestLocaleId() : String
      {
         if(this.runningEventQuest != null)
         {
            return this.runningEventQuest.quests[0].config.localizationIdentifier as String;
         }
         return "0";
      }
      
      public function get listOfRunningGlobalEvents() : Vector.<ConfigEventDTO>
      {
         var _loc2_:ConfigEventDTO = null;
         var _loc1_:Vector.<ConfigEventDTO> = new Vector.<ConfigEventDTO>();
         for each(_loc2_ in this.configProxy.config.runningEvents)
         {
            if(_loc2_.availabilityTimeStart <= this._timerProxy.currentTimeStamp)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function mayShowItem(param1:ConfigPlayfieldItemPermissionDTO) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:ConfigEventDTO = null;
         if(param1.eventIdList.length == 0)
         {
            return true;
         }
         for each(_loc2_ in param1.eventIdList)
         {
            for each(_loc3_ in this.listOfRunningGlobalEvents)
            {
               if(_loc3_.id == _loc2_)
               {
                  return true;
               }
            }
         }
         if(this.goodStockProxy.getPermissionAmountByConfigId(param1.id) > 0)
         {
            return true;
         }
         return false;
      }
      
      public function mayBuyItem(param1:ConfigPlayfieldItemPermissionDTO) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:ConfigEventDTO = null;
         if(param1.eventIdList.length == 0)
         {
            return true;
         }
         for each(_loc2_ in param1.eventIdList)
         {
            for each(_loc3_ in this.listOfRunningGlobalEvents)
            {
               if(_loc3_.id == _loc2_)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function eventById(param1:Number) : EventQuestVo
      {
         var _loc2_:EventQuestVo = null;
         for each(_loc2_ in this.allEventQuests)
         {
            if(_loc2_.configDto.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get upcomingEventQuests() : Vector.<ConfigUpcomingEventDTO>
      {
         var _loc2_:ConfigUpcomingEventDTO = null;
         var _loc3_:ConfigEventLevel = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc1_:Vector.<ConfigUpcomingEventDTO> = new Vector.<ConfigUpcomingEventDTO>(0);
         for each(_loc2_ in this.configProxy.config.upcomingEvents)
         {
            if(_loc2_.configEvent.eventType == ServerEventTypeConst.EVENTSQUARE)
            {
               for each(_loc3_ in _loc2_.configEvent.levelRestricts)
               {
                  _loc4_ = _loc3_.minimum;
                  _loc5_ = _loc3_.maximum;
                  if(_loc4_ == 0)
                  {
                     _loc6_ = 0;
                  }
                  else
                  {
                     _loc6_ = ConfigUserLevelDTO(this.configProxy.config.levels[_loc4_]).level;
                  }
                  if(_loc5_ == int.MAX_VALUE)
                  {
                     _loc7_ = int.MAX_VALUE;
                  }
                  else
                  {
                     _loc7_ = ConfigUserLevelDTO(this.configProxy.config.levels[_loc5_]).level;
                  }
                  if(this.playerResourceProxy.userLevel <= _loc7_ && this.playerResourceProxy.userLevel >= _loc6_)
                  {
                     _loc1_.push(_loc2_);
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function get questProxy() : QuestProxy
      {
         if(this._qproxy == null)
         {
            this._qproxy = facade.retrieveProxy(QuestProxy.NAME) as QuestProxy;
         }
         return this._qproxy;
      }
      
      private function get goodStockProxy() : PlayerGoodsStockProxy
      {
         if(this._gSP == null)
         {
            this._gSP = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
         }
         return this._gSP;
      }
      
      private function get configProxy() : GameConfigProxy
      {
         if(this._cproxy == null)
         {
            this._cproxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         }
         return this._cproxy;
      }
      
      private function get playerResourceProxy() : PlayerResourceProxy
      {
         if(this._prpproxy == null)
         {
            this._prpproxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         }
         return this._prpproxy;
      }
   }
}

