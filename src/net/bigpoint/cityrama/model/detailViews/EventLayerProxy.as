package net.bigpoint.cityrama.model.detailViews
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.constants.quest.QuestSystemStateConst;
   import net.bigpoint.cityrama.constants.quest.QuestSystemTypeConstants;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.ServerBalanceParameterConstants;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.common.vo.StepMarkerVo;
   import net.bigpoint.cityrama.model.detailViews.vo.CitySquareDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.DropInfoVo;
   import net.bigpoint.cityrama.model.detailViews.vo.EventChallengeDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.EventChallengeStepDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.EventDetailViewVo;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.events.vo.EventQuestVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.good.vo.GoodObjectVo;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.rewards.RewardLayerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestChallengeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestEventPlayerVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestRewardDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestTaskDTO;
   import net.bigpoint.cityrama.model.server.vo.server.quest.interfaces.IQuestTaskItemDTO;
   import net.bigpoint.cityrama.view.citysquare.ui.vo.CitySquareEventFailVo;
   import net.bigpoint.cityrama.view.citysquare.ui.vo.CitySquareEventSelectionVo;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class EventLayerProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "EventLayerProxy";
      
      private var _eventProxy:EventProxy;
      
      private var _timerProxy:TimerProxy;
      
      private var _configProxy:GameConfigProxy;
      
      private var _gsProxy:PlayerGoodsStockProxy;
      
      private var _resourceProxy:PlayerResourceProxy;
      
      public function EventLayerProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      private static function getEventRewards(param1:Vector.<QuestRewardDTO>, param2:String = "smallskin") : ArrayCollection
      {
         var _loc4_:RewardItemComponentVo = null;
         var _loc5_:QuestRewardDTO = null;
         var _loc3_:ArrayCollection = new ArrayCollection();
         for each(_loc5_ in param1)
         {
            _loc4_ = QuestGUIProxy.getRewardVoForQuestReward(_loc5_,param2);
            if(_loc4_)
            {
               _loc3_.addItem(_loc4_);
            }
         }
         RewardLayerProxy.sortRewardList(_loc3_);
         return _loc3_;
      }
      
      private static function getDrops(param1:QuestChallengeDTO) : Vector.<DropInfoVo>
      {
         var _loc3_:DropInfoVo = null;
         var _loc4_:QuestRewardDTO = null;
         var _loc2_:Vector.<DropInfoVo> = new Vector.<DropInfoVo>();
         for each(_loc4_ in param1.rewards)
         {
            _loc3_ = QuestGUIProxy.getDropInfoForQuestReward(_loc4_);
            if(_loc3_)
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      public static function getTaskUpsellingPrice(param1:Number, param2:Number, param3:Number) : Number
      {
         if(Math.abs(param1) == 0)
         {
            return 0;
         }
         var _loc4_:Number = param2 / param3;
         var _loc5_:Number = 1;
         if(_loc4_ >= 0.5 && _loc4_ < 0.75)
         {
            _loc5_ = 0.9;
         }
         else if(_loc4_ >= 0.75)
         {
            _loc5_ = 0.75;
         }
         var _loc6_:Number = Math.ceil(_loc5_ * param1 * ((param3 - param2) / param3));
         _loc6_ = Math.abs(_loc6_);
         if(_loc6_ < 1)
         {
            _loc6_ = 1;
         }
         return _loc6_;
      }
      
      private static function getUpsellingTotalPrice(param1:EventQuestVo) : Number
      {
         var _loc3_:QuestEventPlayerVo = null;
         var _loc4_:QuestChallengeDTO = null;
         var _loc5_:QuestTaskDTO = null;
         if(!isUpsellingAvailable(param1))
         {
            return -1;
         }
         var _loc2_:Number = 0;
         for each(_loc3_ in param1.quests)
         {
            for each(_loc4_ in _loc3_.challenges)
            {
               if(_loc4_.elementState != QuestSystemStateConst.SUBMITTED && _loc4_.elementState != QuestSystemStateConst.DONE)
               {
                  for each(_loc5_ in _loc4_.tasks)
                  {
                     if(_loc5_.elementState != QuestSystemStateConst.VALID && _loc5_.elementState != QuestSystemStateConst.DONE)
                     {
                        _loc2_ += getTaskUpsellingPrice(_loc5_.taskConfig.instantFinishStartPrice,_loc5_.currentValue,_loc5_.taskConfig.questTaskTarget.target);
                     }
                  }
               }
            }
         }
         if(_loc2_ == 0)
         {
            return -1;
         }
         return _loc2_;
      }
      
      private static function isUpsellingAvailable(param1:EventQuestVo) : Boolean
      {
         var _loc2_:QuestChallengeDTO = null;
         for each(_loc2_ in param1.quests[0].challenges)
         {
            if(_loc2_.config.requiredForUpsell && (_loc2_.elementState == QuestSystemStateConst.EXPIRED || _loc2_.elementState == QuestSystemStateConst.DONE))
            {
               return true;
            }
         }
         return false;
      }
      
      public static function getUpsellingMainReward(param1:EventQuestVo) : QuestRewardDTO
      {
         var _loc2_:QuestChallengeDTO = null;
         var _loc3_:Vector.<QuestRewardDTO> = null;
         var _loc4_:QuestRewardDTO = null;
         for each(_loc2_ in param1.quests[0].challenges)
         {
            _loc3_ = _loc2_.rewards;
            for each(_loc4_ in _loc3_)
            {
               if(_loc4_.isMainReward)
               {
                  return _loc4_;
               }
            }
         }
         return null;
      }
      
      override public function onRegister() : void
      {
         this._eventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         this._timerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         this._resourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
      }
      
      public function getCitySquareDetailViewVoById(param1:Number) : CitySquareDetailViewVo
      {
         return this.buildCitySquareDetailViewVo(new <EventQuestVo>[this._eventProxy.eventById(param1)]);
      }
      
      public function getCitySquareDetailViewVo(param1:Boolean = false, param2:Boolean = false, param3:Boolean = false) : CitySquareDetailViewVo
      {
         var _loc5_:EventQuestVo = null;
         var _loc4_:Vector.<EventQuestVo> = new Vector.<EventQuestVo>();
         if(param1)
         {
            _loc4_.push(this._eventProxy.runningEventQuest);
         }
         else if(param2)
         {
            _loc4_.push(this._eventProxy.finishedEventQuest);
         }
         else if(param3)
         {
            _loc4_.push(this._eventProxy.expiredEventQuest);
         }
         else
         {
            _loc4_ = this._eventProxy.availableEventQuests;
         }
         for each(_loc5_ in _loc4_)
         {
            if(_loc5_ == null)
            {
               return null;
            }
            if(param1 && _loc5_.currentState != QuestSystemStateConst.VALID)
            {
               return null;
            }
         }
         return this.buildCitySquareDetailViewVo(_loc4_);
      }
      
      private function buildCitySquareDetailViewVo(param1:Vector.<EventQuestVo>) : CitySquareDetailViewVo
      {
         var _loc2_:CitySquareDetailViewVo = null;
         var _loc6_:EventQuestVo = null;
         var _loc7_:ArrayCollection = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:EventChallengeStepDetailViewVo = null;
         var _loc11_:QuestEventPlayerVo = null;
         var _loc12_:EventDetailViewVo = null;
         var _loc13_:int = 0;
         var _loc14_:QuestChallengeDTO = null;
         var _loc15_:String = null;
         var _loc16_:QuestTaskDTO = null;
         var _loc17_:Number = NaN;
         var _loc18_:IQuestTaskItemDTO = null;
         var _loc19_:Number = NaN;
         var _loc20_:GoodObjectVo = null;
         var _loc21_:int = 0;
         var _loc3_:Vector.<EventDetailViewVo> = new Vector.<EventDetailViewVo>();
         var _loc4_:Vector.<EventChallengeDetailViewVo> = new Vector.<EventChallengeDetailViewVo>();
         var _loc5_:Vector.<EventChallengeStepDetailViewVo> = new Vector.<EventChallengeStepDetailViewVo>();
         for each(_loc6_ in param1)
         {
            if(_loc6_ == null)
            {
               return null;
            }
            _loc7_ = getEventRewards(_loc6_.quests[0].challenges[_loc6_.quests[0].challenges.length - 1].rewards);
            _loc8_ = 0;
            _loc9_ = 0;
            if(_loc6_.configDto != null)
            {
               _loc8_ = _loc6_.configDto.totalAvailabilityTime;
               _loc9_ = _loc6_.configDto.totalAvailabilityTime - (_loc6_.configDto.availabilityTimeStart + this._timerProxy.eventTimer * 1000 - this._timerProxy.currentTimeStamp);
            }
            for each(_loc11_ in _loc6_.quests)
            {
               _loc13_ = 0;
               for each(_loc14_ in _loc11_.challenges)
               {
                  _loc13_++;
                  _loc15_ = "";
                  for each(_loc16_ in _loc14_.tasks)
                  {
                     for each(_loc18_ in _loc16_.taskConfig.questTaskTarget.questTaskItem)
                     {
                        _loc20_ = this.goodStockProxy.getGoodByConfigId(_loc18_.questTaskItemID);
                        _loc21_ = _loc20_.playerStock;
                     }
                     _loc15_ = _loc16_.taskConfig.questElementSubType == QuestSystemTypeConstants.SUB_TYPE_DEPOSIT_GOOD ? "SPEND_GOODS" : "";
                     _loc19_ = _loc16_.currentValue;
                     if(_loc16_.elementState == QuestSystemStateConst.DONE)
                     {
                        _loc19_ = _loc16_.taskConfig.questTaskTarget.target;
                     }
                     _loc10_ = new EventChallengeStepDetailViewVo(_loc20_.config.id,_loc20_.gfxId,_loc20_.localeId,_loc21_,_loc19_,_loc16_.taskConfig.questTaskTarget.target,_loc20_.config.isEventGood,this._eventProxy.currentRunningEventQuestLocaleId,this._eventProxy.currentRunningEventQuestGfxId);
                     _loc10_.questElementId = _loc16_.configQuestTaskID;
                     _loc10_.questType = _loc11_.questDto.config.questElementSubType;
                     _loc10_.questId = _loc11_.questDto.id;
                     _loc10_.instantFinishPrice = getTaskUpsellingPrice(_loc16_.taskConfig.instantFinishStartPrice,_loc10_.eventStock,_loc10_.eventStockTarget);
                     _loc10_.upsellingAffordable = this._resourceProxy.realCurrency >= _loc10_.instantFinishPrice;
                     _loc5_.push(_loc10_);
                  }
                  _loc17_ = _loc11_.questDto.endTimeStamp - this._timerProxy.currentTimeStamp;
                  _loc4_.push(new EventChallengeDetailViewVo(_loc14_.config.id,_loc11_.config.gfxId,_loc11_.config.localizationIdentifier,_loc14_.config.localizationIdentifier,_loc11_.config.runtimeFull,_loc17_,_loc5_,getEventRewards(_loc14_.rewards),_loc14_.elementState,_loc15_,_loc11_.challenges.length,_loc13_,getDrops(_loc14_)));
                  _loc5_ = new Vector.<EventChallengeStepDetailViewVo>();
               }
            }
            _loc12_ = new EventDetailViewVo(_loc11_.config.id,_loc11_.config.localizationIdentifier,_loc11_.config.gfxId,_loc8_,_loc9_,_loc4_,_loc7_);
            _loc3_.push(_loc12_);
         }
         return new CitySquareDetailViewVo(_loc3_,this._timerProxy.eventTimer);
      }
      
      public function getUpsellingCitySquareDetailViewVo() : CitySquareDetailViewVo
      {
         var _loc1_:Vector.<EventDetailViewVo> = new Vector.<EventDetailViewVo>();
         var _loc2_:EventQuestVo = this._eventProxy.expiredEventQuest;
         var _loc3_:QuestEventPlayerVo = _loc2_.quests[0];
         var _loc4_:QuestRewardDTO = EventLayerProxy.getUpsellingMainReward(this._eventProxy.expiredEventQuest);
         var _loc5_:EventDetailViewVo = new EventDetailViewVo(_loc3_.config.id,_loc3_.config.localizationIdentifier,_loc3_.config.gfxId,0,0,null,getEventRewards(new <QuestRewardDTO>[_loc4_]));
         _loc1_.push(_loc5_);
         return new CitySquareDetailViewVo(_loc1_,this._timerProxy.eventTimer);
      }
      
      public function getCitySquareEventFailVo() : CitySquareEventFailVo
      {
         var _loc7_:QuestChallengeDTO = null;
         var _loc10_:QuestTaskDTO = null;
         var _loc1_:CitySquareEventFailVo = new CitySquareEventFailVo();
         var _loc2_:EventQuestVo = this._eventProxy.expiredEventQuest;
         if(_loc2_ == null)
         {
            throw new RamaCityError("Event Upselling: THERE IS NO EXPIRED EVENT QUEST");
         }
         var _loc3_:StepMarkerVo = new StepMarkerVo();
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         var _loc6_:int = 0;
         for each(_loc7_ in _loc2_.quests[0].challenges)
         {
            if(_loc6_ == _loc2_.quests[0].challenges.length - 1)
            {
               _loc3_.stepInactiveStyles.push("challengeInactiveLastFail");
               _loc3_.stepActiveStyles.push("lastActive");
            }
            else
            {
               _loc3_.stepInactiveStyles.push("challengeInactiveFail");
               _loc3_.stepActiveStyles.push("active");
            }
            _loc3_.hasLastInterval = false;
            for each(_loc10_ in _loc7_.tasks)
            {
               _loc5_ += _loc10_.taskConfig.questTaskTarget.target;
               if(_loc7_.elementState == QuestSystemStateConst.DONE || _loc7_.elementState == QuestSystemStateConst.SUBMITTED)
               {
                  _loc4_ += _loc10_.taskConfig.questTaskTarget.target;
               }
               else
               {
                  _loc4_ += _loc10_.currentValue;
               }
            }
            _loc3_.progressSteps.push(_loc5_);
            _loc6_++;
         }
         _loc3_.currentProgress = _loc4_;
         _loc1_.eventProgress = _loc3_;
         var _loc8_:Vector.<QuestRewardDTO> = new Vector.<QuestRewardDTO>();
         var _loc9_:QuestRewardDTO = getUpsellingMainReward(_loc2_);
         if(_loc9_ != null)
         {
            null.push(null);
            var _loc11_:ArrayCollection = getEventRewards(null,RewardItemComponentVo.SIZE_BIG);
            _loc1_.rewardData = null[0];
            var _loc12_:TimerBarComponentVo = new TimerBarComponentVo();
            _loc12_.startTime = _loc2_.quests[0].questDto.endTimeStamp;
            null.cycleLength = this._configProxy.config.balanceParameters[ServerBalanceParameterConstants.UPSELLING_OVERTIME].value;
            null.targetTime = null.startTime + null.cycleLength;
            null.currentTime = this._timerProxy.currentTimeStamp;
            _loc1_.timerData = null;
            if(null.currentTime > null.targetTime)
            {
               _loc1_.price = -1;
            }
            else
            {
               _loc1_.price = getUpsellingTotalPrice(_loc2_);
               _loc1_.affordable = this._resourceProxy.realCurrency >= _loc1_.price;
            }
            _loc1_.polaroidData = new BriskDynaVo(_loc2_.quests[0].config.gfxId + "_gui_popup_events","fail_" + _loc2_.currentRewardStage,_loc2_.quests[0].config.gfxId.toString());
            return _loc1_;
         }
         throw new RamaCityError("Event Upselling: THERE IS NO MAIN REWARD! EVERY EVENT NEEDS A MAIN REWARD NOW");
      }
      
      public function getCitysquareEventSelectionVo() : CitySquareEventSelectionVo
      {
         return new CitySquareEventSelectionVo(this._eventProxy.allEventQuests,this._eventProxy.upcomingEventQuests,this._timerProxy.currentTimeStamp);
      }
      
      private function get goodStockProxy() : PlayerGoodsStockProxy
      {
         if(this._gsProxy == null)
         {
            this._gsProxy = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
         }
         return this._gsProxy;
      }
   }
}

