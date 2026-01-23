package net.bigpoint.cityrama.model.detailViews
{
   import flash.utils.Dictionary;
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.constants.ServerAssistTypeConstants;
   import net.bigpoint.cityrama.constants.ServerImprovementConstants;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.quest.QuestGFXIDLayerConstants;
   import net.bigpoint.cityrama.constants.quest.QuestSystemOrderConst;
   import net.bigpoint.cityrama.constants.quest.QuestSystemStateConst;
   import net.bigpoint.cityrama.constants.quest.QuestSystemTypeConstants;
   import net.bigpoint.cityrama.model.architecturalBook.ArchitecturalBookProxy;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.detailViews.vo.DropInfoVo;
   import net.bigpoint.cityrama.model.detailViews.vo.QuestDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.QuestTaskVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.improvement.ImprovementLayerProxy;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.quest.QuestProxy;
   import net.bigpoint.cityrama.model.quest.QuestSystemTaskTargetTypeConstants;
   import net.bigpoint.cityrama.model.quest.vo.QuestVirtualTaskVo;
   import net.bigpoint.cityrama.model.rewards.RewardLayerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigResourceDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestPlayerVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestRewardDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestRewardInfoVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestTaskDTO;
   import net.bigpoint.cityrama.model.server.vo.server.quest.interfaces.IQuestTaskItemDTO;
   import net.bigpoint.cityrama.model.serverStorage.ServerStorageProxy;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class QuestGUIProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "QuestGUIProxy";
      
      public static const GFXID_PRODUCTION_TASK:int = 51028;
      
      public static const GFXID_SELLING_TASK:int = 51029;
      
      private var _configProxy:GameConfigProxy;
      
      private var _questProxy:QuestProxy;
      
      private var _playerResourceProxy:PlayerResourceProxy;
      
      private var _stockProxy:PlayerGoodsStockProxy;
      
      private var _serverStorageProxy:ServerStorageProxy;
      
      private var _questDetailsDict:Dictionary;
      
      public function QuestGUIProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      private static function calculateCurrentSkipCosts(param1:QuestTaskDTO) : Number
      {
         return EventLayerProxy.getTaskUpsellingPrice(param1.taskConfig.instantFinishStartPrice,param1.currentValue,param1.taskConfig.questTaskTarget.target);
      }
      
      private static function checkTasks(param1:QuestPlayerVo, param2:Array) : void
      {
         var _loc4_:QuestTaskVo = null;
         var _loc5_:int = 0;
         var _loc6_:QuestTaskVo = null;
         var _loc7_:int = 0;
         var _loc8_:QuestTaskVo = null;
         var _loc3_:QuestTaskVo = null;
         if(param1.config.downstreamElementOrder == QuestSystemOrderConst.SERIAL)
         {
            for each(_loc4_ in param2)
            {
               if(_loc4_.isCompleted)
               {
                  _loc5_ = 0;
                  while(_loc5_ < param2.indexOf(_loc4_))
                  {
                     QuestTaskVo(param2[_loc5_]).isCompleted = true;
                     QuestTaskVo(param2[_loc5_]).isActive = false;
                     QuestTaskVo(param2[_loc5_]).isLocked = false;
                     _loc5_++;
                  }
               }
            }
         }
         for each(_loc4_ in param2)
         {
            if(_loc4_.isCompleted)
            {
               _loc4_.isActive = false;
               _loc4_.isLocked = false;
               if(param2.indexOf(_loc4_) + 1 < param2.length)
               {
                  _loc3_ = QuestTaskVo(param2[param2.indexOf(_loc4_) + 1]);
                  QuestTaskVo(param2[param2.indexOf(_loc4_) + 1]).isActive = true;
               }
            }
            if(!_loc3_)
            {
               for each(_loc6_ in param2)
               {
                  _loc6_.isActive = false;
                  _loc6_.isLocked = false;
               }
               if(param2.length)
               {
                  QuestTaskVo(param2[0]).isActive = true;
                  QuestTaskVo(param2[0]).isLocked = false;
                  _loc3_ = QuestTaskVo(param2[0]);
               }
            }
         }
         if(param1.config.downstreamElementOrder == QuestSystemOrderConst.SERIAL)
         {
            if(_loc3_)
            {
               _loc7_ = param2.indexOf(_loc3_) + 1;
               while(_loc7_ < param2.length)
               {
                  QuestTaskVo(param2[_loc7_]).isActive = false;
                  QuestTaskVo(param2[_loc7_]).isCompleted = false;
                  QuestTaskVo(param2[_loc7_]).isLocked = true;
                  _loc7_++;
               }
            }
         }
         if(param1.state == QuestSystemStateConst.DONE)
         {
            for each(_loc8_ in param2)
            {
               _loc8_.isCompleted = true;
               _loc8_.isActive = false;
            }
         }
      }
      
      private static function getQuestRewards(param1:QuestPlayerVo) : ArrayCollection
      {
         var _loc3_:RewardItemComponentVo = null;
         var _loc4_:QuestRewardInfoVo = null;
         var _loc2_:ArrayCollection = new ArrayCollection();
         for each(_loc4_ in param1.rewards)
         {
            _loc3_ = getRewardVoForQuestReward(_loc4_.questRewardVo,RewardItemComponentVo.SIZE_SMALL);
            if(_loc3_)
            {
               _loc2_.addItem(_loc3_);
            }
         }
         RewardLayerProxy.sortRewardList(_loc2_);
         return _loc2_;
      }
      
      private static function getQuestDrops(param1:QuestPlayerVo) : Vector.<DropInfoVo>
      {
         var _loc3_:DropInfoVo = null;
         var _loc4_:QuestRewardInfoVo = null;
         var _loc2_:Vector.<DropInfoVo> = new Vector.<DropInfoVo>();
         for each(_loc4_ in param1.rewards)
         {
            _loc3_ = getDropInfoForQuestReward(_loc4_.questRewardVo);
            if(_loc3_)
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      public static function getDropInfoForQuestReward(param1:QuestRewardDTO) : DropInfoVo
      {
         if(param1.resourceConfig != null)
         {
            return new DropInfoVo(param1.resourceConfig.type);
         }
         if(param1.goodConfig != null)
         {
            return new DropInfoVo(ServerOutputConstants.GOOD,param1.goodConfig.gfxId);
         }
         if(param1.improvementConfig != null)
         {
            return new DropInfoVo(ServerImprovementConstants.IMPROVEMENT,0);
         }
         if(param1.assistConfig != null)
         {
            if(param1.assistConfig.type == ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL)
            {
               return new DropInfoVo(param1.assistConfig.type);
            }
         }
         return null;
      }
      
      public static function getRewardVoForQuestReward(param1:QuestRewardDTO, param2:String) : RewardItemComponentVo
      {
         var _loc4_:BriskDynaVo = null;
         var _loc3_:Object = {};
         if(param1.resourceConfig != null)
         {
            _loc3_.type = RewardItemComponentVo.TYPE_RESOURCE;
            _loc3_.size = param2;
            _loc3_.useNew = false;
            _loc3_.cid = param1.resourceConfig.id;
            switch(param1.resourceConfig.type)
            {
               case ServerResConst.RESOURCE_REALCURRENCY:
                  _loc3_.priceIcon = RewardItemComponentVo.PRICE_ICON_RC;
                  switch(param2)
                  {
                     case RewardItemComponentVo.SIZE_SMALL:
                        _loc3_.itemIcon = "rc_icon_medium";
                        break;
                     case RewardItemComponentVo.SIZE_BIG:
                        _loc3_.itemIcon = "ressource_rc_big";
                  }
                  break;
               case ServerResConst.RESOURCE_VIRTUALCURRENCY:
                  _loc3_.priceIcon = RewardItemComponentVo.PRICE_ICON_VC;
                  switch(param2)
                  {
                     case RewardItemComponentVo.SIZE_SMALL:
                        _loc3_.itemIcon = "vc_icon_medium";
                        break;
                     case RewardItemComponentVo.SIZE_BIG:
                        _loc3_.itemIcon = "ressource_cc_big";
                  }
                  break;
               case ServerResConst.RESOURCE_EXPERIENCE:
                  _loc3_.priceIcon = RewardItemComponentVo.PRICE_ICON_XP;
                  switch(param2)
                  {
                     case RewardItemComponentVo.SIZE_SMALL:
                        _loc3_.itemIcon = "xp_icon_medium";
                        break;
                     case RewardItemComponentVo.SIZE_BIG:
                        _loc3_.itemIcon = "ressource_xp_big";
                  }
                  break;
               case ServerResConst.RESOURCE_PRODUCTIONPOINTS:
                  _loc3_.priceIcon = RewardItemComponentVo.PRICE_ICON_PP;
                  switch(param2)
                  {
                     case RewardItemComponentVo.SIZE_SMALL:
                        _loc3_.itemIcon = "pp_icon_medium";
                        break;
                     case RewardItemComponentVo.SIZE_BIG:
                        _loc3_.itemIcon = "ressource_pp_big";
                  }
                  break;
               case ServerResConst.RESOURCE_EDUCATIONPOINTS:
                  _loc3_.priceIcon = RewardItemComponentVo.PRICE_ICON_EP;
                  _loc3_.itemIcon = "ep_icon_medium";
                  switch(param2)
                  {
                     case RewardItemComponentVo.SIZE_SMALL:
                        _loc3_.itemIcon = "ep_icon_medium";
                        break;
                     case RewardItemComponentVo.SIZE_BIG:
                        _loc3_.itemIcon = "ressource_ep_big";
                  }
            }
            switch(param2)
            {
               case RewardItemComponentVo.SIZE_SMALL:
                  _loc3_.itemIconLib = "gui_resources_icons";
                  break;
               case RewardItemComponentVo.SIZE_BIG:
                  _loc3_.itemIconLib = "gui_popups_largeGoodIcons";
            }
            _loc3_.price = param1.amount;
         }
         else if(param1.goodConfig != null)
         {
            _loc3_.cid = param1.goodConfig.id;
            if(param1.goodConfig.isEventGood)
            {
               _loc3_.type = RewardItemComponentVo.TYPE_EVENT_GOOD;
            }
            else if(param1.goodConfig.isSpecialGood)
            {
               _loc3_.type = RewardItemComponentVo.TYPE_SPECIAL_GOOD;
            }
            else
            {
               _loc3_.type = RewardItemComponentVo.TYPE_NORMAL_GOOD;
            }
            switch(param2)
            {
               case RewardItemComponentVo.SIZE_SMALL:
                  _loc3_.itemIconLib = "gui_resources_icons";
                  _loc3_.itemIcon = "ressource_" + param1.goodConfig.gfxId + "_medium";
                  break;
               case RewardItemComponentVo.SIZE_BIG:
                  _loc3_.itemIconLib = "gui_popups_largeGoodIcons";
                  _loc3_.itemIcon = "large_" + param1.goodConfig.gfxId;
            }
            _loc3_.priceIcon = RewardItemComponentVo.PRICE_ICON_GOOD;
            _loc3_.size = param2;
            _loc3_.useNew = false;
            _loc3_.price = param1.amount;
         }
         else if(param1.configPlayfieldItem)
         {
            _loc3_.cid = param1.configPlayfieldItem.id;
            _loc3_.type = RewardItemComponentVo.TYPE_NORMAL_PERMISSION;
            if(param1.configPlayfieldItem.specialHighlighting)
            {
               _loc3_.type = RewardItemComponentVo.TYPE_SPECIAL_PERMISSION;
            }
            if(param1.configPlayfieldItem.isPremium)
            {
               _loc3_.priceIcon = RewardItemComponentVo.PRICE_ICON_CONSTRUCTED;
            }
            else
            {
               _loc3_.priceIcon = RewardItemComponentVo.PRICE_ICON_PERMISSSON;
            }
            _loc3_.itemIconLib = ArchitecturalBookProxy.getItemIconLibByConfigPlayfieldItemDTO(param1.configPlayfieldItem);
            switch(param2)
            {
               case RewardItemComponentVo.SIZE_SMALL:
                  _loc3_.itemIcon = "FieldItem_" + param1.configPlayfieldItem.gfxId + "_small";
                  break;
               case RewardItemComponentVo.SIZE_BIG:
                  _loc3_.itemIcon = "FieldItem_" + param1.configPlayfieldItem.gfxId + "_level1_big";
            }
            _loc3_.size = param2;
            _loc3_.useNew = false;
            _loc3_.price = param1.amount;
         }
         else if(param1.improvementConfig != null)
         {
            _loc3_.cid = param1.improvementConfig.id;
            _loc3_.type = RewardItemComponentVo.TYPE_IMPROVEMENT;
            _loc3_.priceIcon = RewardItemComponentVo.PRICE_ICON_GOOD;
            switch(param2)
            {
               case RewardItemComponentVo.SIZE_SMALL:
                  _loc4_ = ImprovementLayerProxy.improvementGfx(param1.improvementConfig);
                  break;
               case RewardItemComponentVo.SIZE_BIG:
                  _loc4_ = ImprovementLayerProxy.improvementGfx(param1.improvementConfig,ImprovementLayerProxy.SIZE_BIG);
            }
            _loc3_.itemIconLib = _loc4_.dynaLibName;
            _loc3_.itemIcon = _loc4_.dynaBmpName;
            _loc3_.size = param2;
            _loc3_.useNew = false;
            _loc3_.price = param1.amount;
            _loc3_.quality = param1.improvementConfig.quality;
         }
         else if(param1.assistConfig != null)
         {
            if(param1.assistConfig.type == ServerAssistTypeConstants.HARVEST_HELPER_RESIDENTIAL)
            {
               _loc3_.cid = param1.assistConfig.id;
               _loc3_.type = RewardItemComponentVo.TYPE_ASSIST;
               _loc3_.priceIcon = RewardItemComponentVo.PRICE_ICON_GOOD;
               switch(param2)
               {
                  case RewardItemComponentVo.SIZE_SMALL:
                     _loc4_ = new BriskDynaVo("gui_popups_rentCollector","rentCollector_small_" + param1.assistConfig.gfxId);
                     break;
                  case RewardItemComponentVo.SIZE_BIG:
                     _loc4_ = new BriskDynaVo("gui_popups_rentCollector","rentCollector_big_" + param1.assistConfig.gfxId);
               }
               _loc3_.itemIconLib = _loc4_.dynaLibName;
               _loc3_.itemIcon = _loc4_.dynaBmpName;
               _loc3_.size = param2;
               _loc3_.useNew = false;
               _loc3_.price = param1.amount;
            }
            else
            {
               _loc3_ = null;
            }
         }
         if(_loc3_)
         {
            return new RewardItemComponentVo(_loc3_);
         }
         return null;
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this._questProxy = facade.retrieveProxy(QuestProxy.NAME) as QuestProxy;
         this._playerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         this._stockProxy = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
         this._serverStorageProxy = facade.retrieveProxy(ServerStorageProxy.NAME) as ServerStorageProxy;
         this._questDetailsDict = new Dictionary();
      }
      
      public function getQuestDetailViewVo(param1:Number, param2:Boolean = false) : QuestDetailViewVo
      {
         if(param1)
         {
            if(!param2)
            {
               this.updateQuestTasks(this._questDetailsDict[param1]);
            }
            return this._questDetailsDict[param1];
         }
         return null;
      }
      
      private function updateQuestTasks(param1:QuestDetailViewVo) : void
      {
         var _loc2_:QuestTaskVo = null;
         for each(_loc2_ in param1.tasks)
         {
            if(_loc2_.isDepositTask)
            {
               this.setDepositTaskValues(_loc2_);
            }
            _loc2_.currentRealCurrency = this._playerResourceProxy.realCurrency;
         }
      }
      
      public function getQuestSideDetailVo() : Vector.<QuestDetailViewVo>
      {
         var _loc2_:QuestDetailViewVo = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:* = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:QuestTaskVo = null;
         var _loc11_:Boolean = false;
         var _loc12_:QuestPlayerVo = null;
         var _loc13_:QuestDetailViewVo = null;
         var _loc14_:QuestDetailViewVo = null;
         var _loc15_:QuestTaskDTO = null;
         var _loc16_:QuestVirtualTaskVo = null;
         var _loc17_:IQuestTaskItemDTO = null;
         var _loc18_:QuestTaskDTO = null;
         var _loc19_:IQuestTaskItemDTO = null;
         var _loc20_:Number = NaN;
         var _loc1_:Vector.<QuestDetailViewVo> = new Vector.<QuestDetailViewVo>(0);
         for each(_loc12_ in this._questProxy.currentQuests)
         {
            _loc11_ = false;
            _loc3_ = [];
            _loc2_ = new QuestDetailViewVo();
            _loc2_.questHeader = LocaUtils.getString("rcl.quest","rcl.quest.header." + _loc12_.config.localizationIdentifier);
            for each(_loc15_ in _loc12_.tasks)
            {
               if(_loc15_.taskConfig.gfxId == QuestGFXIDLayerConstants.INTRODUCTION)
               {
                  _loc11_ = true;
                  break;
               }
               if(_loc15_.taskConfig.questElementSubType != QuestSystemTypeConstants.SCREEN)
               {
                  if(this._questProxy.virtualTaskDescriptor.virtualTasks[_loc15_.taskConfig.localizationIdentifier] != null)
                  {
                     for each(_loc16_ in this._questProxy.virtualTaskDescriptor.virtualTasks[_loc15_.taskConfig.localizationIdentifier])
                     {
                        _loc4_ = LocaUtils.getString("rcl.quest","rcl.quest.task.header." + _loc16_.localeId);
                        _loc6_ = LocaUtils.getString("rcl.quest","rcl.quest.task.flavor." + _loc16_.localeId);
                        _loc8_ = _loc16_.isCompleted;
                        _loc7_ = _loc16_.isActive;
                        _loc10_ = new QuestTaskVo();
                        _loc10_.taskDTO = _loc15_;
                        _loc10_.questSubType = _loc12_.questDto.config.questElementSubType;
                        _loc10_.questId = _loc12_.questDto.id;
                        _loc10_.configQuestId = _loc12_.questDto.config.id;
                        _loc10_.gfxId = _loc16_.gfxId;
                        _loc10_.taskText = _loc4_;
                        _loc10_.finishedTaskText = _loc4_;
                        _loc10_.flavour = _loc6_;
                        _loc10_.linkParameter = this.configureLinkParameter(_loc15_);
                        _loc10_.isActive = _loc7_;
                        _loc10_.isCompleted = _loc8_;
                        _loc10_.isVirtual = true;
                        _loc3_.push(_loc10_);
                     }
                  }
                  _loc8_ = _loc15_.elementState == QuestSystemStateConst.VALID || _loc15_.elementState == QuestSystemStateConst.DONE;
                  _loc7_ = _loc15_.elementState == QuestSystemStateConst.ACTIVE;
                  _loc9_ = _loc15_.taskConfig.questElementSubType == QuestSystemTypeConstants.SUB_TYPE_DEPOSIT_GOOD || _loc15_.taskConfig.questElementSubType == QuestSystemTypeConstants.SUB_TYPE_DEPOSIT_RESOURCE;
                  if(_loc12_.state == QuestSystemStateConst.DONE)
                  {
                     _loc8_ = true;
                     _loc7_ = false;
                  }
                  if(_loc15_.taskConfig.questElementSubType == QuestSystemTypeConstants.RESOURCE_PLAYER)
                  {
                     for each(_loc17_ in _loc15_.taskConfig.questTaskTarget.questTaskItem)
                     {
                        if(_loc17_.questTaskItemType == ServerResConst.RESOURCE_POPULATION)
                        {
                           _loc15_.currentValue = this._playerResourceProxy.population;
                        }
                     }
                  }
                  if(_loc8_)
                  {
                     _loc15_.currentValue = _loc15_.taskConfig.questTaskTarget.target;
                  }
                  _loc4_ = QuestTextFactory.replaceWildCards(LocaUtils.getString("rcl.quest","rcl.quest.task.header." + _loc15_.taskConfig.localizationIdentifier),_loc15_);
                  _loc5_ = QuestTextFactory.replaceWildCards(LocaUtils.getString("rcl.quest","rcl.quest.task.header." + _loc15_.taskConfig.localizationIdentifier),_loc15_,true);
                  _loc6_ = QuestTextFactory.replaceWildCards(LocaUtils.getString("rcl.quest","rcl.quest.task.flavor." + _loc15_.taskConfig.localizationIdentifier),_loc15_);
                  _loc10_ = new QuestTaskVo();
                  _loc10_.taskDTO = _loc15_;
                  _loc10_.questSubType = _loc12_.questDto.config.questElementSubType;
                  _loc10_.questId = _loc12_.questDto.id;
                  _loc10_.gfxId = _loc15_.taskConfig.gfxId;
                  _loc10_.taskText = _loc4_;
                  _loc10_.flavour = _loc6_;
                  _loc10_.finishedTaskText = _loc5_;
                  _loc10_.linkParameter = this.configureLinkParameter(_loc15_);
                  _loc10_.isActive = _loc7_;
                  _loc10_.isCompleted = _loc8_;
                  _loc10_.instantFinishCosts = calculateCurrentSkipCosts(_loc15_);
                  _loc10_.currentRealCurrency = this._playerResourceProxy.realCurrency;
                  _loc10_.isVirtual = false;
                  if(_loc9_)
                  {
                     this.setDepositTaskValues(_loc10_);
                  }
                  _loc3_.push(_loc10_);
               }
            }
            if(!_loc11_)
            {
               checkTasks(_loc12_,_loc3_);
               _loc2_.tasks = _loc3_;
               _loc2_.rewards = getQuestRewards(_loc12_);
               _loc2_.drops = getQuestDrops(_loc12_);
               _loc2_.isQuestComplete = _loc12_.state == QuestSystemStateConst.DONE;
               _loc2_.avatarName = LocaUtils.getString("rcl.quest","rcl.quest.avatar." + _loc12_.config.questElementSubType.toLowerCase());
               _loc2_.bubbleText = _loc2_.isQuestComplete ? LocaUtils.getString("rcl.quest","rcl.quest.completed." + _loc12_.config.localizationIdentifier) : LocaUtils.getString("rcl.quest","rcl.quest.flavor." + _loc12_.config.localizationIdentifier);
               _loc2_.questGfxId = _loc12_.config.gfxId;
               _loc2_.lastUpdated = _loc12_.lastUpdated;
               _loc2_.polaroid = _loc2_.isQuestComplete ? "reward" : "quest";
               _loc2_.questID = _loc12_.id;
               if(_loc12_.config.gfxId == GFXID_PRODUCTION_TASK || _loc12_.config.gfxId == GFXID_SELLING_TASK)
               {
                  for each(_loc18_ in _loc12_.tasks)
                  {
                     for each(_loc19_ in _loc18_.taskConfig.questTaskTarget.questTaskItem)
                     {
                        if(_loc19_.questTaskItemType == QuestSystemTaskTargetTypeConstants.GOOD)
                        {
                           _loc2_.targetGoodGfxId = this._configProxy.goods[_loc19_.questTaskItemID].gfxId;
                           break;
                        }
                     }
                  }
               }
               _loc2_.questGiverGfxId = _loc12_.questGiverGfxId;
               _loc1_.push(_loc2_);
            }
         }
         for each(_loc13_ in _loc1_)
         {
            for each(_loc20_ in this._serverStorageProxy.uiDataDTO.viewedQuest)
            {
               if(_loc20_ == _loc13_.questID)
               {
                  _loc13_.isNewQuest = false;
               }
            }
            if(this._questDetailsDict[_loc13_.questID] != null)
            {
               if(QuestDetailViewVo(this._questDetailsDict[_loc13_.questID]).checkChanged(_loc13_))
               {
                  _loc13_.changed = true;
               }
            }
         }
         for each(_loc14_ in _loc1_)
         {
            this._questDetailsDict[_loc14_.questID] = _loc14_;
         }
         return _loc1_;
      }
      
      private function configureLinkParameter(param1:QuestTaskDTO) : Array
      {
         var _loc3_:ConfigPlayfieldItemDTO = null;
         var _loc4_:IQuestTaskItemDTO = null;
         var _loc2_:Array = [];
         if(param1.taskConfig.questTaskTarget)
         {
            for each(_loc4_ in param1.taskConfig.questTaskTarget.questTaskItem)
            {
               if(_loc4_.questTaskItemType == QuestSystemTaskTargetTypeConstants.PLAYFIELDITEM)
               {
                  _loc3_ = this._configProxy.config.items[_loc4_.questTaskItemID];
                  if(Boolean(_loc3_) && !_loc3_.isUpgrade)
                  {
                     _loc2_.push(_loc3_.id);
                     break;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      private function setDepositTaskValues(param1:QuestTaskVo) : void
      {
         var _loc4_:IQuestTaskItemDTO = null;
         for each(_loc4_ in param1.taskDTO.taskConfig.questTaskTarget.questTaskItem)
         {
            if(_loc4_.questTaskItemType == QuestSystemTaskTargetTypeConstants.GOOD)
            {
               var _loc2_:ConfigGoodDTO = this._configProxy.config.goods[_loc4_.questTaskItemID];
            }
            else if(_loc4_.questTaskItemType == QuestSystemTaskTargetTypeConstants.RESOURCE)
            {
               var _loc3_:ConfigResourceDTO = this._configProxy.config.resources[_loc4_.questTaskItemID];
            }
         }
         if(param1.isCompleted)
         {
            param1.taskDTO.currentValue = param1.taskDTO.taskConfig.questTaskTarget.target;
         }
      }
   }
}

