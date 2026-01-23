package net.bigpoint.cityrama.model.quest
{
   import com.greensock.TweenMax;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.quest.ClickTaskNotificationConstants;
   import net.bigpoint.cityrama.constants.quest.QuestGFXIDLayerConstants;
   import net.bigpoint.cityrama.constants.quest.QuestSystemStateConst;
   import net.bigpoint.cityrama.constants.quest.QuestSystemTypeConstants;
   import net.bigpoint.cityrama.controller.quest.SolveClickTaskCommand;
   import net.bigpoint.cityrama.controller.quest.SolveVirtualTaskCommand;
   import net.bigpoint.cityrama.controller.quest.UnsolveVirtualTaskCommand;
   import net.bigpoint.cityrama.controller.quest.infrastructure.InfrastructureIntroductionQuestHandleTownhallBehaviorCommand;
   import net.bigpoint.cityrama.model.detailViews.EventLayerProxy;
   import net.bigpoint.cityrama.model.featureScreens.FeatureScreenProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.model.preloader.CvTagProxy;
   import net.bigpoint.cityrama.model.quest.strategy.IQuestManagerStrategy;
   import net.bigpoint.cityrama.model.quest.strategy.QuestManagerEventStrategy;
   import net.bigpoint.cityrama.model.quest.strategy.QuestManagerIncentiveStrategy;
   import net.bigpoint.cityrama.model.quest.strategy.QuestManagerParentStrategy;
   import net.bigpoint.cityrama.model.quest.vo.QuestBookVo;
   import net.bigpoint.cityrama.model.quest.vo.QuestVirtualTaskVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayerDTO;
   import net.bigpoint.cityrama.model.server.vo.server.QuestCompleteCostVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestBookManagerVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestChallengeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestEventPlayerVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestPlayerVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestTaskDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.interfaces.IQuestBookDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.interfaces.IQuestPlayerVo;
   import net.bigpoint.cityrama.model.server.vo.server.quest.QuestChallengeConfigDTO;
   import net.bigpoint.cityrama.view.citysquare.CitySquareEventPopupMediator;
   import net.bigpoint.cityrama.view.citysquare.ui.components.CitySquareEventPopup;
   import net.bigpoint.cityrama.view.miniLayer.CitySquareRewardMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.CitySquareRewardMiniLayer;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadServiceDynamic;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class QuestProxy extends Proxy
   {
      
      public static const NAME:String = "QuestProxy";
      
      private var _virtualTaskDescriptor:VirtualTasksDescriptorSetting;
      
      private var _virtualTaskUnsolveDict:Dictionary;
      
      private var _virtualTaskSolveDict:Dictionary;
      
      private var _currentScreenQuestConfigId:Number;
      
      private var _currentScreenTaskConfigId:Number;
      
      private var _clickTasks:Dictionary;
      
      private var _previousScreenTaskId:Number;
      
      private var _lastChange:int = -1;
      
      private var _playerProxy:PlayerProxy;
      
      private var _gameConfigProxy:GameConfigProxy;
      
      private var _cvTagProxy:CvTagProxy;
      
      private var _playfieldProxy:PlayfieldProxy;
      
      private var _questManager:IQuestManagerStrategy;
      
      private var _eventManager:IQuestManagerStrategy;
      
      private var _socialManager:IQuestManagerStrategy;
      
      private var _bridgeRepairQuestActive:Boolean;
      
      public function QuestProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
         this._clickTasks = new Dictionary();
         this._virtualTaskUnsolveDict = new Dictionary();
         this._virtualTaskSolveDict = new Dictionary();
         this._virtualTaskDescriptor = new VirtualTasksDescriptorSetting();
         this._gameConfigProxy = GameConfigProxy(facade.retrieveProxy(GameConfigProxy.NAME));
         this._playerProxy = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
         this._cvTagProxy = CvTagProxy(facade.retrieveProxy(CvTagProxy.NAME));
         this._playfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
      }
      
      override public function onRegister() : void
      {
         this.prepareStrategies();
         super.onRegister();
      }
      
      public function init(param1:PlayerDTO) : void
      {
         var _loc2_:IQuestBookDTO = null;
         var _loc3_:QuestDTO = null;
         this.prepareQuestBooks();
         for each(_loc2_ in param1.questBooks.questBookList)
         {
            for each(_loc3_ in _loc2_.list)
            {
               this.addQuest(_loc3_);
            }
         }
         sendNotification(ApplicationNotificationConstants.QUEST_SYSTEM_INITIALIZED);
      }
      
      private function prepareStrategies() : void
      {
         this._questManager = new QuestManagerParentStrategy();
         this._questManager.prepare(facade,this._gameConfigProxy,this._cvTagProxy,this._playerProxy,this._playfieldProxy);
         this._questManager.questBook = new QuestBookVo();
         this._eventManager = new QuestManagerEventStrategy();
         this._eventManager.prepare(facade,this._gameConfigProxy,this._cvTagProxy,this._playerProxy,this._playfieldProxy);
         this._eventManager.questBook = new QuestBookVo();
         this._socialManager = new QuestManagerIncentiveStrategy();
         this._socialManager.prepare(facade,this._gameConfigProxy,this._cvTagProxy,this._playerProxy,this._playfieldProxy);
         this._socialManager.questBook = new QuestBookVo();
      }
      
      public function addQuest(param1:QuestDTO, param2:Boolean = false) : void
      {
         if(this.getStrategyByQuestType(param1.config.questElementSubType) != null)
         {
            this.checkForScreenTask(this.getStrategyByQuestType(param1.config.questElementSubType).addQuest(param1));
            this.checkForVirtualTasks(this.getStrategyByQuestType(param1.config.questElementSubType).questBook.getQuestsById(param1.id));
            this.checkForClickTasks(this.getStrategyByQuestType(param1.config.questElementSubType).questBook.getQuestsById(param1.id));
            this.checkEventState();
            if(param1.config.questElementSubType == QuestSystemTypeConstants.EVENT && param2)
            {
               sendNotification(ApplicationNotificationConstants.CONFIG_EVENTS_CHANGED);
            }
         }
      }
      
      private function checkEventState() : void
      {
         var _loc1_:Array = null;
         var _loc2_:FileRuntimeLoadServiceDynamic = null;
         if(this.getStrategyByQuestType(QuestSystemTypeConstants.EVENT).questBook.quests.length > 0)
         {
            _loc1_ = [this.getStrategyByQuestType(QuestSystemTypeConstants.EVENT).questBook.quests[0].config.gfxId];
            _loc2_ = FileRuntimeLoadServiceDynamic.getInstance();
            if(!_loc2_.libAllReadyLoaded("gui_popups_paperPopup"))
            {
               _loc2_.checkSWFArrayLoaded(_loc1_,"dfsacfasd");
            }
         }
      }
      
      public function recheckClickTasks() : void
      {
         var _loc1_:IQuestPlayerVo = null;
         for each(_loc1_ in this.getStrategyByQuestType(QuestSystemTypeConstants.TUTORIAL).questBook.quests)
         {
            this.checkForClickTasks(_loc1_);
         }
      }
      
      private function checkForClickTasks(param1:IQuestPlayerVo) : void
      {
         var _loc2_:* = false;
         var _loc3_:QuestTaskDTO = null;
         var _loc4_:PlayfieldObjectsProxy = null;
         if(param1 == null || param1.type == QuestSystemTypeConstants.EVENT || param1.state == QuestSystemStateConst.NEW || param1.state == QuestSystemStateConst.INACTIVE)
         {
            return;
         }
         if(param1.config.localizationIdentifier == "1568")
         {
            if(param1.state == QuestSystemStateConst.VALID || param1.state == QuestSystemStateConst.DONE)
            {
               if(!this._bridgeRepairQuestActive)
               {
                  this._bridgeRepairQuestActive = true;
                  sendNotification(ApplicationNotificationConstants.BRIDGE_CHANGED);
               }
            }
         }
         for each(_loc3_ in param1.tasks)
         {
            if(_loc3_.taskConfig.questElementSubType != QuestSystemTypeConstants.CLICK)
            {
               continue;
            }
            _loc2_ = param1.state == QuestSystemStateConst.DONE;
            _loc2_ = param1.state == QuestSystemStateConst.SUBMITTED;
            if(param1.state != QuestSystemStateConst.DONE && (_loc3_.elementState == QuestSystemStateConst.VALID || _loc3_.elementState == QuestSystemStateConst.DONE))
            {
               _loc2_ = true;
            }
            switch(_loc3_.taskConfig.localizationIdentifier)
            {
               case "1702":
                  if(!_loc2_)
                  {
                     this._clickTasks[ClickTaskNotificationConstants.FULLSCREEN] = this.getStrategyByQuestType(param1.config.questElementSubType).questBook.getQuestsById(param1.id);
                     facade.registerCommand(ClickTaskNotificationConstants.FULLSCREEN,SolveClickTaskCommand);
                  }
                  else
                  {
                     this._clickTasks[ClickTaskNotificationConstants.FULLSCREEN] = null;
                     facade.removeCommand(ClickTaskNotificationConstants.FULLSCREEN);
                  }
                  break;
               case "1691":
                  if(!_loc2_)
                  {
                     this._clickTasks[ClickTaskNotificationConstants.STORAGE] = this.getStrategyByQuestType(param1.config.questElementSubType).questBook.getQuestsById(param1.id);
                     facade.registerCommand(ClickTaskNotificationConstants.STORAGE,SolveClickTaskCommand);
                  }
                  else
                  {
                     this._clickTasks[ClickTaskNotificationConstants.STORAGE] = null;
                     facade.removeCommand(ClickTaskNotificationConstants.STORAGE);
                  }
                  break;
               case "973":
               case "463":
                  if(!_loc2_)
                  {
                     this._clickTasks[ClickTaskNotificationConstants.CITYSQUARE_EVENT_STARTED] = this.getStrategyByQuestType(param1.config.questElementSubType).questBook.getQuestsById(param1.id);
                     facade.registerCommand(ClickTaskNotificationConstants.CITYSQUARE_EVENT_STARTED,SolveClickTaskCommand);
                  }
                  else
                  {
                     this._clickTasks[ClickTaskNotificationConstants.CITYSQUARE_EVENT_STARTED] = null;
                     facade.removeCommand(ClickTaskNotificationConstants.CITYSQUARE_EVENT_STARTED);
                  }
                  break;
               case "1082":
                  if(!_loc2_)
                  {
                     this._clickTasks[ClickTaskNotificationConstants.BASEMENT_ENABLED] = this.getStrategyByQuestType(param1.config.questElementSubType).questBook.getQuestsById(param1.id);
                     facade.registerCommand(ClickTaskNotificationConstants.BASEMENT_ENABLED,SolveClickTaskCommand);
                  }
                  else
                  {
                     this._clickTasks[ClickTaskNotificationConstants.BASEMENT_ENABLED] = null;
                     facade.removeCommand(ClickTaskNotificationConstants.BASEMENT_ENABLED);
                  }
                  break;
               case "471":
               case "473":
               case "474":
                  if(!_loc2_)
                  {
                     if(facade.hasCommand(ClickTaskNotificationConstants.TOWNHALL_CLICKED))
                     {
                        break;
                     }
                     this._clickTasks[ClickTaskNotificationConstants.TOWNHALL_CLICKED] = this.getStrategyByQuestType(param1.config.questElementSubType).questBook.getQuestsById(param1.id);
                     facade.registerCommand(ClickTaskNotificationConstants.TOWNHALL_CLICKED,SolveClickTaskCommand);
                     facade.registerCommand(ClickTaskNotificationConstants.TOWNHALL_ANIMATION_HANDLER,InfrastructureIntroductionQuestHandleTownhallBehaviorCommand);
                     facade.sendNotification(ClickTaskNotificationConstants.TOWNHALL_ANIMATION_HANDLER,{
                        "questId":param1.config.id,
                        "localeId":_loc3_.taskConfig.localizationIdentifier
                     });
                  }
                  else
                  {
                     facade.sendNotification(ClickTaskNotificationConstants.TOWNHALL_ANIMATION_HANDLER,{
                        "questId":param1.config.id,
                        "localeId":0
                     });
                     this._clickTasks[ClickTaskNotificationConstants.TOWNHALL_CLICKED] = null;
                     facade.removeCommand(ClickTaskNotificationConstants.TOWNHALL_CLICKED);
                     facade.removeCommand(ClickTaskNotificationConstants.TOWNHALL_ANIMATION_HANDLER);
                  }
                  _loc4_ = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
                  if(_loc4_.getTownHall())
                  {
                     _loc4_.getTownHall().townHallFieldObjectVo.userInteractionLocked = false;
                  }
                  break;
               case "2063":
                  if(!_loc2_)
                  {
                     this._clickTasks[ClickTaskNotificationConstants.MASTERY_TRAIT_SELECTED] = this.getStrategyByQuestType(param1.config.questElementSubType).questBook.getQuestsById(param1.id);
                     facade.registerCommand(ClickTaskNotificationConstants.MASTERY_TRAIT_SELECTED,SolveClickTaskCommand);
                  }
                  else
                  {
                     this._clickTasks[ClickTaskNotificationConstants.MASTERY_TRAIT_SELECTED] = null;
                     facade.removeCommand(ClickTaskNotificationConstants.MASTERY_TRAIT_SELECTED);
                  }
            }
         }
      }
      
      private function checkForCitySquareInvalidation(param1:String, param2:String = "", param3:String = "") : void
      {
         var _loc4_:PopupSettingsVo = null;
         var _loc5_:EventLayerProxy = null;
         sendNotification(ApplicationNotificationConstants.EVENTS_CHANGED);
         if(param1 == QuestSystemTypeConstants.EVENT)
         {
            _loc5_ = facade.retrieveProxy(EventLayerProxy.NAME) as EventLayerProxy;
            if(param2 == QuestSystemStateConst.INACTIVE && param3 == QuestSystemStateConst.VALID)
            {
               _loc4_ = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
               _loc4_.modal = true;
               _loc4_.viewClass = CitySquareEventPopup;
               _loc4_.mediatorClass = CitySquareEventPopupMediator;
               _loc4_.mediatorName = CitySquareEventPopupMediator.NAME;
               _loc4_.data = _loc5_.getCitySquareDetailViewVo(true);
               facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc4_);
            }
            else if(param3 == QuestSystemStateConst.DONE)
            {
               _loc4_ = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
               _loc4_.modal = true;
               _loc4_.viewClass = CitySquareRewardMiniLayer;
               _loc4_.mediatorClass = CitySquareRewardMiniLayerMediator;
               _loc4_.mediatorName = CitySquareRewardMiniLayerMediator.NAME;
               _loc4_.data = _loc5_.getCitySquareDetailViewVo(false,true);
               facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc4_);
            }
         }
      }
      
      private function checkForVirtualTasks(param1:QuestPlayerVo) : void
      {
         var _loc2_:QuestTaskDTO = null;
         if(param1 == null || param1.type == QuestSystemTypeConstants.EVENT)
         {
            return;
         }
         for each(_loc2_ in param1.tasks)
         {
            if(this._virtualTaskDescriptor.virtualTasks[_loc2_.taskConfig.localizationIdentifier] != null)
            {
               for each(var _loc3_ in this._virtualTaskDescriptor.virtualTasks[_loc2_.taskConfig.localizationIdentifier])
               {
                  if(null.targetItemGfxId != 0)
                  {
                     null.targetItemGfxId = ConfigPlayfieldItemDTO(this.gameConfigProxy.config.items[_loc2_.taskConfig.questTaskTarget.questTaskItem[0].questTaskItemID]).gfxId;
                  }
                  for each(var _loc4_ in null.notificationCancelInterest)
                  {
                     if(param1.state != QuestSystemStateConst.DONE)
                     {
                        if(this._virtualTaskUnsolveDict[null] == null)
                        {
                           this._virtualTaskUnsolveDict[null] = new Vector.<QuestVirtualTaskVo>(0);
                        }
                        facade.registerCommand(null,UnsolveVirtualTaskCommand);
                        this._virtualTaskUnsolveDict[null].push(null);
                     }
                     else
                     {
                        facade.removeCommand(null);
                     }
                  }
                  for each(var _loc5_ in null.notificationInterest)
                  {
                     if(param1.state != QuestSystemStateConst.DONE)
                     {
                        if(this._virtualTaskSolveDict[null] == null)
                        {
                           this._virtualTaskSolveDict[null] = new Vector.<QuestVirtualTaskVo>(0);
                        }
                        facade.registerCommand(null,SolveVirtualTaskCommand);
                        this._virtualTaskSolveDict[null].push(null);
                     }
                     else
                     {
                        facade.removeCommand(null);
                     }
                  }
               }
            }
         }
      }
      
      private function get gameConfigProxy() : GameConfigProxy
      {
         if(this._gameConfigProxy == null)
         {
            this._gameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         }
         return this._gameConfigProxy;
      }
      
      public function reset(param1:String) : void
      {
         if(param1 == QuestSystemTypeConstants.TUTORIAL)
         {
            this._questManager = new QuestManagerParentStrategy();
            this._questManager.prepare(facade,this._gameConfigProxy,this._cvTagProxy,this._playerProxy,this._playfieldProxy);
            this._questManager.questBook = new QuestBookVo();
         }
         else if(param1 == QuestSystemTypeConstants.EVENT)
         {
            this._eventManager = new QuestManagerEventStrategy();
            this._eventManager.prepare(facade,this._gameConfigProxy,this._cvTagProxy,this._playerProxy,this._playfieldProxy);
            this._eventManager.questBook = new QuestBookVo();
         }
      }
      
      private function prepareQuestBooks() : void
      {
         var _loc2_:IQuestBookDTO = null;
         var _loc3_:QuestDTO = null;
         var _loc1_:QuestBookManagerVo = this._playerProxy.player.questBooks;
         for each(_loc2_ in _loc1_.questBookTutorial)
         {
            for each(_loc3_ in _loc2_.list)
            {
               this.addQuest(_loc3_);
            }
         }
         sendNotification(ApplicationNotificationConstants.QUEST_STATE_CHANGED);
      }
      
      public function get currentQuests() : Vector.<QuestPlayerVo>
      {
         var _loc2_:QuestPlayerVo = null;
         var _loc1_:Vector.<QuestPlayerVo> = new Vector.<QuestPlayerVo>();
         for each(_loc2_ in this._questManager.questBook.currentQuests)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function updateQuestState(param1:String, param2:Number, param3:String, param4:Number, param5:Number, param6:Boolean = false) : void
      {
         var _loc8_:String = null;
         if(facade.hasCommand(ApplicationNotificationConstants.INIT_QUEST_SYSTEM))
         {
            facade.sendNotification(ApplicationNotificationConstants.INIT_QUEST_SYSTEM);
         }
         var _loc7_:QuestBookVo = this.getStrategyByQuestType(param1).questBook;
         var _loc9_:QuestPlayerVo = _loc7_.getQuestsById(param2);
         if(_loc9_)
         {
            _loc8_ = _loc9_.state;
            _loc9_.lastUpdated = param5;
            this.getStrategyByQuestType(param1).updateQuestState(param2,param3,param4,param6);
            if(param3 != QuestSystemStateConst.DELETED)
            {
               this.checkForScreenTask(_loc9_);
               this.checkForClickTasks(_loc9_);
            }
            if(param3 == QuestSystemStateConst.DONE)
            {
               this.checkForVirtualTasks(_loc9_);
            }
            if(_loc8_)
            {
               this.checkForCitySquareInvalidation(param1,_loc8_,param3);
            }
            if(getTimer() - this._lastChange < 500)
            {
               TweenMax.killDelayedCallsTo(this.sendChangeDelayed);
            }
            TweenMax.delayedCall(0.5,this.sendChangeDelayed);
            this._lastChange = getTimer();
         }
      }
      
      private function sendChangeDelayed() : void
      {
         sendNotification(ApplicationNotificationConstants.QUEST_STATE_CHANGED);
      }
      
      public function updateTask(param1:String, param2:Number, param3:String, param4:Number, param5:Number, param6:QuestCompleteCostVo) : void
      {
         if(this.getStrategyByQuestType(param1) == null)
         {
            return;
         }
         this.getStrategyByQuestType(param1).updateTask(param2,param3,param4,param5,param6);
         this.checkForClickTasks(this.getStrategyByQuestType(param1).questBook.getQuestsById(param5));
         this.checkForScreenTask(this.getStrategyByQuestType(param1).questBook.getQuestsById(param5));
         this.checkForCitySquareInvalidation(param1);
      }
      
      public function updateChallenge(param1:QuestChallengeDTO) : void
      {
         var _loc2_:QuestChallengeDTO = (this._eventManager as QuestManagerEventStrategy).getChallengeByCid(param1.config.id);
         var _loc3_:QuestEventPlayerVo = (this._eventManager as QuestManagerEventStrategy).updateChallenge(param1);
         this.checkForCitySquareInvalidation(_loc3_.config.questElementSubType,_loc2_.elementState,param1.elementState);
      }
      
      private function getStrategyByQuestType(param1:String) : IQuestManagerStrategy
      {
         var _loc2_:IQuestManagerStrategy = null;
         switch(param1)
         {
            case QuestSystemTypeConstants.TUTORIAL:
               _loc2_ = this._questManager;
               break;
            case QuestSystemTypeConstants.EVENT:
               _loc2_ = this._eventManager;
               break;
            case QuestSystemTypeConstants.SOCIAL:
               _loc2_ = this._socialManager;
         }
         return _loc2_;
      }
      
      public function getAllQuestsByType(param1:String) : Vector.<IQuestPlayerVo>
      {
         return this.getStrategyByQuestType(param1).questBook.quests;
      }
      
      public function get virtualTaskDescriptor() : VirtualTasksDescriptorSetting
      {
         return this._virtualTaskDescriptor;
      }
      
      public function get virtualTaskSolveDict() : Dictionary
      {
         return this._virtualTaskSolveDict;
      }
      
      public function get virtualTaskUnsolveDict() : Dictionary
      {
         return this._virtualTaskUnsolveDict;
      }
      
      private function checkForScreenTask(param1:IQuestPlayerVo) : void
      {
         var _loc2_:QuestTaskDTO = null;
         var _loc3_:String = null;
         var _loc4_:* = undefined;
         var _loc5_:Object = null;
         if(param1 != null && param1.type != QuestSystemTypeConstants.EVENT && param1.state == QuestSystemStateConst.VALID)
         {
            for each(_loc2_ in param1.tasks)
            {
               if(_loc2_.taskConfig.questElementSubType == QuestSystemTypeConstants.SCREEN && _loc2_.elementState == QuestSystemStateConst.ACTIVE)
               {
                  this._currentScreenQuestConfigId = param1.config.id;
                  this._currentScreenTaskConfigId = _loc2_.taskConfig.id;
                  _loc5_ = {};
                  switch(_loc2_.taskConfig.gfxId)
                  {
                     case QuestGFXIDLayerConstants.TUTORIALREWARD:
                        _loc3_ = MiniLayerConstants.OPEN_MINI_TUTORIALREWARD;
                        break;
                     case QuestGFXIDLayerConstants.INTRODUCTION:
                        _loc3_ = MiniLayerConstants.OPEN_MINI_INTRODUCTION;
                        _loc4_ = param1.rewards;
                        break;
                     case QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION:
                     case QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION_KAIDEN:
                     case QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION_KAIDEN_FRIENDS:
                     case QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION_EDUCATION:
                     case QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION_POLICE:
                     case QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION_POLICECHIEF:
                     case QuestGFXIDLayerConstants.CHARACTER_SARIKA_INTRODUCTION:
                        _loc3_ = ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN;
                        _loc5_.screen = _loc2_.taskConfig.gfxId;
                        _loc5_.quest = true;
                        _loc4_ = _loc5_;
                        break;
                     case QuestGFXIDLayerConstants.INFRASTRUCTURE_FEATURE_SECURITY_GRADES:
                     case QuestGFXIDLayerConstants.INFRASTRUCTURE_FEATURE_SUCCESS_CHANCE:
                     case QuestGFXIDLayerConstants.INFRASTRUCTURE_FEATURE_SECURITY_DEVICES:
                     case QuestGFXIDLayerConstants.IMPROVEMENT_FEATURE_BOOSTERPACKS:
                     case QuestGFXIDLayerConstants.IMPROVEMENT_FEATURE_CURSOR_MODE:
                     case QuestGFXIDLayerConstants.IMPROVEMENT_FEATURE_MANAGEMENT_LAYER:
                     case QuestGFXIDLayerConstants.IMPROVEMENT_FEATURE_EFFECTS:
                     case QuestGFXIDLayerConstants.BIG_FEATURE_CAPITALISTS:
                     case QuestGFXIDLayerConstants.BIG_FEATURE_PRODUCTION_POINTS:
                     case QuestGFXIDLayerConstants.BIG_FEATURE_PF2_BRIDGE:
                     case QuestGFXIDLayerConstants.BIG_FEATURE_PF2_COASTAL_BUILDINGS:
                     case QuestGFXIDLayerConstants.BIG_FEATURE_SUBLEVEL:
                     case QuestGFXIDLayerConstants.BIG_FEATURE_MASTERY:
                        _loc3_ = ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN;
                        _loc5_.feature = _loc2_.taskConfig.gfxId;
                        _loc5_.quest = true;
                        _loc4_ = _loc5_;
                        break;
                     case QuestGFXIDLayerConstants.FEATURE_NEEDS:
                        _loc3_ = ApplicationNotificationConstants.OPEN_FEATURESCREEN;
                        _loc5_.feature = FeatureScreenProxy.FEATURE_NEEDS;
                        _loc5_.quest = true;
                        _loc4_ = _loc5_;
                        break;
                     case QuestGFXIDLayerConstants.FEATURE_PERMISSIONS:
                        _loc3_ = ApplicationNotificationConstants.OPEN_FEATURESCREEN;
                        _loc5_.feature = FeatureScreenProxy.FEATURE_PERMISSIONS;
                        _loc5_.quest = true;
                        _loc4_ = _loc5_;
                        break;
                     case QuestGFXIDLayerConstants.FEATURE_BALANCE:
                        _loc3_ = ApplicationNotificationConstants.OPEN_FEATURESCREEN;
                        _loc5_.feature = FeatureScreenProxy.FEATURE_BALANCE;
                        _loc5_.quest = true;
                        _loc4_ = _loc5_;
                  }
                  if(this._previousScreenTaskId != this._currentScreenTaskConfigId)
                  {
                     this._previousScreenTaskId = this._currentScreenTaskConfigId;
                     TweenMax.delayedCall(1,this.openScreenDelayed,[{
                        "command":_loc3_,
                        "feature":_loc4_
                     }]);
                  }
               }
            }
         }
      }
      
      private function openScreenDelayed(param1:Object) : void
      {
         sendNotification(param1.command,param1.feature);
      }
      
      public function activateVirtualTaskByLocaleId(param1:String) : void
      {
         var _loc2_:QuestVirtualTaskVo = null;
         for each(_loc2_ in this.virtualTaskList)
         {
            if(_loc2_.localeId == param1)
            {
               _loc2_.isActive = true;
               return;
            }
         }
      }
      
      private function get virtualTaskList() : Vector.<QuestVirtualTaskVo>
      {
         var _loc2_:Vector.<QuestVirtualTaskVo> = null;
         var _loc3_:QuestVirtualTaskVo = null;
         var _loc1_:Vector.<QuestVirtualTaskVo> = new Vector.<QuestVirtualTaskVo>();
         for each(_loc2_ in this._virtualTaskSolveDict)
         {
            for each(_loc3_ in _loc2_)
            {
               _loc1_.push(_loc3_);
            }
         }
         return _loc1_;
      }
      
      public function getQuestByID(param1:Number) : QuestPlayerVo
      {
         var _loc2_:QuestPlayerVo = null;
         var _loc3_:QuestPlayerVo = null;
         for each(_loc2_ in this._eventManager.questBook.quests)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         for each(_loc3_ in this._questManager.questBook.quests)
         {
            if(_loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function getEventByID(param1:Number) : QuestPlayerVo
      {
         var _loc2_:QuestPlayerVo = null;
         for each(_loc2_ in this._eventManager.questBook.quests)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function getCurrentQuestByID(param1:Number) : QuestPlayerVo
      {
         var _loc2_:QuestPlayerVo = null;
         var _loc3_:QuestPlayerVo = null;
         for each(_loc2_ in this.currentQuests)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         for each(_loc3_ in this._eventManager.questBook.quests)
         {
            if(_loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function get currentScreenQuestConfigId() : Number
      {
         return this._currentScreenQuestConfigId;
      }
      
      public function get currentScreenTaskConfigId() : Number
      {
         return this._currentScreenTaskConfigId;
      }
      
      public function get clickTasks() : Dictionary
      {
         return this._clickTasks;
      }
      
      public function getChallengeConfigByConfigId(param1:Number) : QuestChallengeConfigDTO
      {
         return this._eventManager.questBook.getChallengeConfigByCId(param1);
      }
      
      public function getQuestByChallengeCId(param1:Number) : QuestDTO
      {
         return this._eventManager.questBook.getQuestByConfigId(param1);
      }
      
      public function getChallengeIDByQuestIDAndState(param1:Number, param2:String) : Number
      {
         var _loc4_:QuestChallengeDTO = null;
         var _loc3_:QuestPlayerVo = this.getQuestByID(param1);
         if(_loc3_ == null)
         {
            return -1;
         }
         for each(_loc4_ in _loc3_.challenges)
         {
            if(_loc4_.elementState == param2)
            {
               return _loc4_.config.id;
            }
         }
         return -1;
      }
      
      public function get bridgeRepairQuestActive() : Boolean
      {
         var _loc1_:IQuestPlayerVo = null;
         for each(_loc1_ in this._questManager.questBook.currentQuests)
         {
            if(_loc1_.config.localizationIdentifier == "1960")
            {
               if(_loc1_.state == QuestSystemStateConst.VALID || _loc1_.state == QuestSystemStateConst.DONE)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function get getBridgeRepairQuestId() : Number
      {
         var _loc1_:IQuestPlayerVo = null;
         for each(_loc1_ in this._questManager.questBook.currentQuests)
         {
            if(_loc1_.config.localizationIdentifier == "1960")
            {
               if(_loc1_.state == QuestSystemStateConst.VALID || _loc1_.state == QuestSystemStateConst.DONE)
               {
                  return _loc1_.id;
               }
            }
         }
         return 0;
      }
      
      public function getActiveQuestByLocaleIdentifier(param1:String) : Boolean
      {
         var _loc2_:IQuestPlayerVo = null;
         for each(_loc2_ in this._questManager.questBook.currentQuests)
         {
            if(_loc2_.config.localizationIdentifier == param1)
            {
               if(_loc2_.state == QuestSystemStateConst.VALID || _loc2_.state == QuestSystemStateConst.DONE)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function getActiveQuestIdByLocaleIdentifier(param1:String) : Number
      {
         var _loc2_:IQuestPlayerVo = null;
         for each(_loc2_ in this._questManager.questBook.currentQuests)
         {
            if(_loc2_.config.localizationIdentifier == param1)
            {
               if(_loc2_.state == QuestSystemStateConst.VALID || _loc2_.state == QuestSystemStateConst.DONE)
               {
                  return _loc2_.id;
               }
            }
         }
         return 0;
      }
   }
}

