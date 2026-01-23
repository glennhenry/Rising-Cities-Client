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
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         NAME = "QuestProxy";
      }
      
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
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super(param1,param2);
            if(!_loc3_)
            {
               this._clickTasks = new Dictionary();
               if(!_loc3_)
               {
                  this._virtualTaskUnsolveDict = new Dictionary();
                  if(_loc4_ || _loc3_)
                  {
                     §§goto(addr004b);
                  }
                  §§goto(addr00a5);
               }
               addr004b:
               this._virtualTaskSolveDict = new Dictionary();
               if(_loc4_ || Boolean(param1))
               {
                  addr006e:
                  this._virtualTaskDescriptor = new VirtualTasksDescriptorSetting();
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     this._gameConfigProxy = GameConfigProxy(facade.retrieveProxy(GameConfigProxy.NAME));
                     if(!(_loc3_ && Boolean(param1)))
                     {
                        this._playerProxy = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
                        §§goto(addr00a5);
                     }
                     §§goto(addr00cc);
                  }
                  addr00a5:
                  if(_loc4_)
                  {
                     addr00cc:
                     this._cvTagProxy = CvTagProxy(facade.retrieveProxy(CvTagProxy.NAME));
                     if(_loc4_)
                     {
                        this._playfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
                     }
                  }
                  §§goto(addr00fc);
               }
               addr00fc:
               return;
            }
            §§goto(addr00a5);
         }
         §§goto(addr006e);
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this.prepareStrategies();
            if(_loc2_ || _loc1_)
            {
               addr0029:
               super.onRegister();
            }
            return;
         }
         §§goto(addr0029);
      }
      
      public function init(param1:PlayerDTO) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc2_:IQuestBookDTO = null;
         var _loc3_:QuestDTO = null;
         if(!(_loc8_ && Boolean(_loc3_)))
         {
            this.prepareQuestBooks();
         }
         for each(_loc2_ in param1.questBooks.questBookList)
         {
            if(!_loc8_)
            {
               var _loc6_:int = 0;
               if(!(_loc8_ && Boolean(this)))
               {
                  for each(_loc3_ in _loc2_.list)
                  {
                     if(_loc9_)
                     {
                        this.addQuest(_loc3_);
                     }
                  }
               }
            }
         }
         if(_loc9_)
         {
            sendNotification(ApplicationNotificationConstants.QUEST_SYSTEM_INITIALIZED);
         }
      }
      
      private function prepareStrategies() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this._questManager = new QuestManagerParentStrategy();
            if(_loc2_)
            {
               §§push(this._questManager);
               if(!(_loc1_ && _loc1_))
               {
                  §§pop().prepare(facade,this._gameConfigProxy,this._cvTagProxy,this._playerProxy,this._playfieldProxy);
                  if(_loc2_ || _loc1_)
                  {
                     addr005e:
                     this._questManager.questBook = new QuestBookVo();
                     if(!(_loc1_ && Boolean(this)))
                     {
                        this._eventManager = new QuestManagerEventStrategy();
                        if(!_loc1_)
                        {
                           addr0085:
                           §§push(this._eventManager);
                           if(!(_loc1_ && _loc1_))
                           {
                              §§pop().prepare(facade,this._gameConfigProxy,this._cvTagProxy,this._playerProxy,this._playfieldProxy);
                              if(_loc2_ || _loc1_)
                              {
                                 §§goto(addr00c7);
                              }
                              §§goto(addr012c);
                           }
                           addr00c7:
                           this._eventManager.questBook = new QuestBookVo();
                           §§goto(addr00c3);
                        }
                        §§goto(addr00de);
                     }
                     §§goto(addr012c);
                  }
                  addr00c3:
                  if(_loc2_ || Boolean(this))
                  {
                     addr00de:
                     this._socialManager = new QuestManagerIncentiveStrategy();
                     if(!_loc1_)
                     {
                        §§push(this._socialManager);
                        if(_loc2_ || _loc2_)
                        {
                           §§pop().prepare(facade,this._gameConfigProxy,this._cvTagProxy,this._playerProxy,this._playfieldProxy);
                           if(_loc2_ || _loc1_)
                           {
                              addr0130:
                              this._socialManager.questBook = new QuestBookVo();
                              addr012c:
                           }
                           §§goto(addr013a);
                        }
                        §§goto(addr0130);
                     }
                  }
                  addr013a:
                  return;
               }
               §§goto(addr005e);
            }
            §§goto(addr0085);
         }
         §§goto(addr00de);
      }
      
      public function addQuest(param1:QuestDTO, param2:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || param2)
         {
            if(this.getStrategyByQuestType(param1.config.questElementSubType) != null)
            {
               if(_loc4_)
               {
                  this.checkForScreenTask(this.getStrategyByQuestType(param1.config.questElementSubType).addQuest(param1));
                  if(!(_loc3_ && _loc3_))
                  {
                     this.checkForVirtualTasks(this.getStrategyByQuestType(param1.config.questElementSubType).questBook.getQuestsById(param1.id));
                     if(!(_loc3_ && _loc3_))
                     {
                        this.checkForClickTasks(this.getStrategyByQuestType(param1.config.questElementSubType).questBook.getQuestsById(param1.id));
                        addr0083:
                        if(!_loc3_)
                        {
                           this.checkEventState();
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr00c2:
                              §§push(param1.config.questElementSubType == QuestSystemTypeConstants.EVENT);
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 var _temp_7:* = §§pop();
                                 §§push(_temp_7);
                                 if(_temp_7)
                                 {
                                    if(_loc4_ || param2)
                                    {
                                       §§goto(addr00ef);
                                    }
                                    §§goto(addr0118);
                                 }
                                 §§goto(addr0119);
                              }
                              addr00ef:
                              §§pop();
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr0119:
                                 addr0109:
                                 §§push(param2);
                                 if(_loc4_ || _loc3_)
                                 {
                                    addr0118:
                                    §§push(§§pop());
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       sendNotification(ApplicationNotificationConstants.CONFIG_EVENTS_CHANGED);
                                    }
                                 }
                              }
                           }
                           §§goto(addr0135);
                        }
                        §§goto(addr00c2);
                     }
                     §§goto(addr0135);
                  }
                  §§goto(addr00c2);
               }
               §§goto(addr0083);
            }
            addr0135:
            return;
         }
         §§goto(addr0109);
      }
      
      private function checkEventState() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:Array = null;
         var _loc2_:FileRuntimeLoadServiceDynamic = null;
         if(_loc3_)
         {
            §§push(this.getStrategyByQuestType(QuestSystemTypeConstants.EVENT));
            if(!_loc4_)
            {
               §§push(§§pop().questBook);
               if(_loc3_ || Boolean(_loc2_))
               {
                  if(§§pop().quests.length > 0)
                  {
                     _loc1_ = [this.getStrategyByQuestType(QuestSystemTypeConstants.EVENT).questBook.quests[0].config.gfxId];
                     _loc2_ = FileRuntimeLoadServiceDynamic.getInstance();
                     addr006a:
                     addr0067:
                     addr005c:
                     if(_loc3_ || Boolean(_loc2_))
                     {
                        if(!_loc2_.libAllReadyLoaded("gui_popups_paperPopup"))
                        {
                           if(_loc3_)
                           {
                              _loc2_.checkSWFArrayLoaded(_loc1_,"dfsacfasd");
                           }
                        }
                     }
                  }
                  return;
               }
               §§goto(addr006a);
            }
            §§goto(addr0067);
         }
         §§goto(addr005c);
      }
      
      public function recheckClickTasks() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:IQuestPlayerVo = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.getStrategyByQuestType(QuestSystemTypeConstants.TUTORIAL).questBook.quests)
         {
            if(_loc4_ || Boolean(_loc2_))
            {
               this.checkForClickTasks(_loc1_);
            }
         }
      }
      
      private function checkForClickTasks(param1:IQuestPlayerVo) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:* = false;
         var _loc3_:QuestTaskDTO = null;
         var _loc4_:PlayfieldObjectsProxy = null;
         if(!(_loc9_ && Boolean(_loc3_)))
         {
            §§push(param1 == null);
            if(_loc8_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               §§push(_temp_2);
               if(!(_loc9_ && Boolean(_loc3_)))
               {
                  if(!§§pop())
                  {
                     if(_loc8_)
                     {
                        §§pop();
                        if(!_loc9_)
                        {
                           §§push(param1.type);
                           if(_loc8_ || Boolean(_loc3_))
                           {
                              §§push(QuestSystemTypeConstants.EVENT);
                              if(_loc8_ || Boolean(this))
                              {
                                 §§push(§§pop() == §§pop());
                                 if(!_loc9_)
                                 {
                                    addr0084:
                                    var _temp_6:* = §§pop();
                                    §§push(_temp_6);
                                    §§push(_temp_6);
                                    if(!(_loc9_ && _loc2_))
                                    {
                                       if(!§§pop())
                                       {
                                          if(_loc8_ || Boolean(_loc3_))
                                          {
                                             addr00a5:
                                             §§pop();
                                             if(!(_loc9_ && Boolean(param1)))
                                             {
                                                §§push(param1.state);
                                                if(_loc8_ || Boolean(this))
                                                {
                                                   §§push(QuestSystemStateConst.NEW);
                                                   if(!_loc9_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(_loc8_)
                                                      {
                                                         addr00d9:
                                                         var _temp_11:* = §§pop();
                                                         §§push(_temp_11);
                                                         §§push(_temp_11);
                                                         if(!(_loc9_ && Boolean(_loc3_)))
                                                         {
                                                            §§goto(addr00e8);
                                                         }
                                                         §§goto(addr017a);
                                                      }
                                                      §§goto(addr0184);
                                                   }
                                                   §§goto(addr019d);
                                                }
                                                §§goto(addr010b);
                                             }
                                             §§goto(addr01be);
                                          }
                                       }
                                       §§goto(addr00d9);
                                    }
                                    addr00e8:
                                    if(!§§pop())
                                    {
                                       if(!_loc9_)
                                       {
                                          §§pop();
                                          if(_loc8_ || Boolean(param1))
                                          {
                                             §§push(param1.state);
                                             if(!_loc9_)
                                             {
                                                addr010b:
                                                §§push(QuestSystemStateConst.INACTIVE);
                                                if(!_loc9_)
                                                {
                                                   addr0117:
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc8_ || Boolean(_loc3_))
                                                   {
                                                      §§goto(addr0126);
                                                   }
                                                   §§goto(addr0179);
                                                }
                                                §§goto(addr016a);
                                             }
                                             §§goto(addr0197);
                                          }
                                          §§goto(addr0154);
                                       }
                                       §§goto(addr0179);
                                    }
                                    §§goto(addr0126);
                                 }
                                 addr0126:
                                 if(§§pop())
                                 {
                                    if(_loc8_ || Boolean(this))
                                    {
                                       §§goto(addr0138);
                                    }
                                 }
                                 if(param1.config.localizationIdentifier == "1568")
                                 {
                                    if(_loc8_)
                                    {
                                       addr0154:
                                       §§push(param1.state);
                                       if(_loc8_)
                                       {
                                          addr015e:
                                          §§push(QuestSystemStateConst.VALID);
                                          if(!_loc9_)
                                          {
                                             addr016a:
                                             §§push(§§pop() == §§pop());
                                             if(_loc8_ || Boolean(param1))
                                             {
                                                addr0179:
                                                var _temp_17:* = §§pop();
                                                addr017a:
                                                §§push(_temp_17);
                                                if(!_temp_17)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      addr0184:
                                                      §§pop();
                                                      if(_loc8_ || Boolean(_loc3_))
                                                      {
                                                         addr019d:
                                                         addr0197:
                                                         §§push(param1.state == QuestSystemStateConst.DONE);
                                                         if(_loc8_ || Boolean(this))
                                                         {
                                                            §§goto(addr01ac);
                                                         }
                                                         §§goto(addr01c3);
                                                      }
                                                      §§goto(addr01be);
                                                   }
                                                   §§goto(addr01c3);
                                                }
                                                addr01ac:
                                                if(§§pop())
                                                {
                                                   if(_loc8_ || Boolean(this))
                                                   {
                                                      addr01c3:
                                                      addr01be:
                                                      if(!this._bridgeRepairQuestActive)
                                                      {
                                                         if(!(_loc9_ && Boolean(param1)))
                                                         {
                                                            addr01d5:
                                                            this._bridgeRepairQuestActive = true;
                                                            if(_loc8_ || Boolean(param1))
                                                            {
                                                               addr01e9:
                                                               sendNotification(ApplicationNotificationConstants.BRIDGE_CHANGED);
                                                            }
                                                            §§goto(addr01f4);
                                                         }
                                                         §§goto(addr01e9);
                                                      }
                                                      §§goto(addr01f4);
                                                   }
                                                   §§goto(addr01d5);
                                                }
                                                §§goto(addr01f4);
                                             }
                                             §§goto(addr01c3);
                                          }
                                          §§goto(addr019d);
                                       }
                                       §§goto(addr0197);
                                    }
                                    §§goto(addr01d5);
                                 }
                                 addr01f4:
                                 for each(_loc3_ in param1.tasks)
                                 {
                                    if(_loc8_)
                                    {
                                       §§push(_loc3_.taskConfig);
                                       if(!_loc9_)
                                       {
                                          if(§§pop().questElementSubType != QuestSystemTypeConstants.CLICK)
                                          {
                                             continue;
                                          }
                                          if(!_loc9_)
                                          {
                                             §§push(param1.state);
                                             if(!(_loc9_ && Boolean(this)))
                                             {
                                                §§push(QuestSystemStateConst.DONE);
                                                if(!_loc9_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc8_ || Boolean(_loc3_))
                                                   {
                                                      _loc2_ = §§pop();
                                                      if(!(_loc9_ && Boolean(param1)))
                                                      {
                                                         §§push(param1.state);
                                                         if(_loc8_ || _loc2_)
                                                         {
                                                            §§push(QuestSystemStateConst.SUBMITTED);
                                                            if(_loc8_ || Boolean(_loc3_))
                                                            {
                                                               addr0292:
                                                               §§push(§§pop() == §§pop());
                                                               if(!(_loc9_ && Boolean(_loc3_)))
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  if(!(_loc9_ && Boolean(param1)))
                                                                  {
                                                                     addr02ba:
                                                                     addr02b4:
                                                                     §§push(param1.state == QuestSystemStateConst.DONE);
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        if(_loc8_)
                                                                        {
                                                                           addr02c8:
                                                                           var _temp_30:* = §§pop();
                                                                           §§push(_temp_30);
                                                                           §§push(_temp_30);
                                                                           if(_loc8_ || Boolean(param1))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    §§pop();
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       §§push(_loc3_.elementState == QuestSystemStateConst.VALID);
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          addr02f9:
                                                                                          var _temp_32:* = §§pop();
                                                                                          addr02fa:
                                                                                          §§push(_temp_32);
                                                                                          if(!_temp_32)
                                                                                          {
                                                                                             if(!(_loc9_ && _loc2_))
                                                                                             {
                                                                                                addr030c:
                                                                                                §§pop();
                                                                                                if(!(_loc9_ && Boolean(_loc3_)))
                                                                                                {
                                                                                                   addr031b:
                                                                                                   §§push(_loc3_.elementState == QuestSystemStateConst.DONE);
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      addr032c:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            §§push(true);
                                                                                                            if(_loc8_ || _loc2_)
                                                                                                            {
                                                                                                               _loc2_ = §§pop();
                                                                                                               if(!(_loc8_ || _loc2_))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               addr07c0:
                                                                                                               var _loc7_:* = _loc3_.taskConfig.localizationIdentifier;
                                                                                                               addr07bc:
                                                                                                               if(_loc8_ || Boolean(_loc3_))
                                                                                                               {
                                                                                                                  §§push("1702");
                                                                                                                  if(!(_loc9_ && _loc2_))
                                                                                                                  {
                                                                                                                     if(§§pop() === _loc7_)
                                                                                                                     {
                                                                                                                        if(_loc8_ || Boolean(this))
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           if(_loc8_ || _loc2_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr089f:
                                                                                                                           §§push(3);
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push("1691");
                                                                                                                        if(_loc8_ || _loc2_)
                                                                                                                        {
                                                                                                                           if(§§pop() === _loc7_)
                                                                                                                           {
                                                                                                                              if(_loc8_ || _loc2_)
                                                                                                                              {
                                                                                                                                 §§push(1);
                                                                                                                                 if(_loc8_ || Boolean(_loc3_))
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr089f);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push("973");
                                                                                                                              if(_loc8_ || Boolean(param1))
                                                                                                                              {
                                                                                                                                 if(§§pop() === _loc7_)
                                                                                                                                 {
                                                                                                                                    if(_loc8_ || Boolean(_loc3_))
                                                                                                                                    {
                                                                                                                                       §§push(2);
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr091d:
                                                                                                                                       §§push(6);
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push("463");
                                                                                                                                    if(_loc8_ || Boolean(_loc3_))
                                                                                                                                    {
                                                                                                                                       addr088b:
                                                                                                                                       if(§§pop() === _loc7_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc9_ && Boolean(param1)))
                                                                                                                                          {
                                                                                                                                             §§goto(addr089f);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr08c9:
                                                                                                                                             §§push(4);
                                                                                                                                             if(_loc8_)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push("1082");
                                                                                                                                          if(!(_loc9_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             if(§§pop() === _loc7_)
                                                                                                                                             {
                                                                                                                                                if(!_loc9_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr08c9);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr0947:
                                                                                                                                                   §§push(7);
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§push("471");
                                                                                                                                                if(!(_loc9_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   addr08e7:
                                                                                                                                                   if(§§pop() === _loc7_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc8_)
                                                                                                                                                      {
                                                                                                                                                         §§push(5);
                                                                                                                                                         if(_loc8_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr0947);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§push("473");
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         addr0911:
                                                                                                                                                         if(§§pop() === _loc7_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc8_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr091d);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               addr0969:
                                                                                                                                                               §§push(8);
                                                                                                                                                               if(_loc9_ && Boolean(_loc3_))
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr0989:
                                                                                                                                                            switch(§§pop())
                                                                                                                                                            {
                                                                                                                                                               case 0:
                                                                                                                                                                  §§push(_loc2_);
                                                                                                                                                                  if(!_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     addr04a2:
                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc8_ || Boolean(this))
                                                                                                                                                                        {
                                                                                                                                                                           this._clickTasks[ClickTaskNotificationConstants.CITYSQUARE_EVENT_STARTED] = this.getStrategyByQuestType(param1.config.questElementSubType).questBook.getQuestsById(param1.id);
                                                                                                                                                                           if(!(_loc9_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              facade.registerCommand(ClickTaskNotificationConstants.CITYSQUARE_EVENT_STARTED,SolveClickTaskCommand);
                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                              }
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           addr056c:
                                                                                                                                                                           facade.registerCommand(ClickTaskNotificationConstants.BASEMENT_ENABLED,SolveClickTaskCommand);
                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           addr06b5:
                                                                                                                                                                           facade.removeCommand(ClickTaskNotificationConstants.TOWNHALL_CLICKED);
                                                                                                                                                                           if(_loc9_ && _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           addr06cf:
                                                                                                                                                                           facade.removeCommand(ClickTaskNotificationConstants.TOWNHALL_ANIMATION_HANDLER);
                                                                                                                                                                           if(!_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr06e1:
                                                                                                                                                                        _loc4_ = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
                                                                                                                                                                        §§push(_loc4_.getTownHall());
                                                                                                                                                                        if(!(_loc9_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           if(!(_loc8_ || _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(_loc4_.getTownHall());
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().townHallFieldObjectVo.userInteractionLocked = false;
                                                                                                                                                                        if(_loc9_ && _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     this._clickTasks[ClickTaskNotificationConstants.CITYSQUARE_EVENT_STARTED] = null;
                                                                                                                                                                     if(!(_loc9_ && Boolean(param1)))
                                                                                                                                                                     {
                                                                                                                                                                        facade.removeCommand(ClickTaskNotificationConstants.CITYSQUARE_EVENT_STARTED);
                                                                                                                                                                        if(_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr061e:
                                                                                                                                                                  }
                                                                                                                                                                  addr0360:
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        this._clickTasks[ClickTaskNotificationConstants.FULLSCREEN] = this.getStrategyByQuestType(param1.config.questElementSubType).questBook.getQuestsById(param1.id);
                                                                                                                                                                        if(_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           facade.registerCommand(ClickTaskNotificationConstants.FULLSCREEN,SolveClickTaskCommand);
                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     this._clickTasks[ClickTaskNotificationConstants.FULLSCREEN] = null;
                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        facade.removeCommand(ClickTaskNotificationConstants.FULLSCREEN);
                                                                                                                                                                        if(_loc9_ && _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           addr0466:
                                                                                                                                                                           facade.removeCommand(ClickTaskNotificationConstants.STORAGE);
                                                                                                                                                                           if(_loc8_ || Boolean(_loc3_))
                                                                                                                                                                           {
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue;
                                                                                                                                                                  facade.registerCommand(ClickTaskNotificationConstants.TOWNHALL_CLICKED,SolveClickTaskCommand);
                                                                                                                                                                  if(!(_loc9_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     addr063a:
                                                                                                                                                                     facade.registerCommand(ClickTaskNotificationConstants.TOWNHALL_ANIMATION_HANDLER,InfrastructureIntroductionQuestHandleTownhallBehaviorCommand);
                                                                                                                                                                     if(!(_loc9_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        addr0656:
                                                                                                                                                                        facade.sendNotification(ClickTaskNotificationConstants.TOWNHALL_ANIMATION_HANDLER,{
                                                                                                                                                                           "questId":param1.config.id,
                                                                                                                                                                           "localeId":_loc3_.taskConfig.localizationIdentifier
                                                                                                                                                                        });
                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr06cf);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr06e1);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr06b5);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr06a1:
                                                                                                                                                                     this._clickTasks[ClickTaskNotificationConstants.TOWNHALL_CLICKED] = null;
                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr06b5);
                                                                                                                                                                  break;
                                                                                                                                                               case 1:
                                                                                                                                                                  §§push(_loc2_);
                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     addr03e6:
                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc8_ || Boolean(this))
                                                                                                                                                                        {
                                                                                                                                                                           this._clickTasks[ClickTaskNotificationConstants.STORAGE] = this.getStrategyByQuestType(param1.config.questElementSubType).questBook.getQuestsById(param1.id);
                                                                                                                                                                           if(!(_loc8_ || Boolean(this)))
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr042a:
                                                                                                                                                                        facade.registerCommand(ClickTaskNotificationConstants.STORAGE,SolveClickTaskCommand);
                                                                                                                                                                        if(_loc9_ && Boolean(param1))
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     this._clickTasks[ClickTaskNotificationConstants.STORAGE] = null;
                                                                                                                                                                     if(_loc8_ || Boolean(this))
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr0466);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr056c);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr05b8:
                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc9_ && Boolean(this)))
                                                                                                                                                                        {
                                                                                                                                                                           addr05ca:
                                                                                                                                                                           if(facade.hasCommand(ClickTaskNotificationConstants.TOWNHALL_CLICKED))
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc9_ && Boolean(this)))
                                                                                                                                                                              {
                                                                                                                                                                                 continue;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              this._clickTasks[ClickTaskNotificationConstants.TOWNHALL_CLICKED] = this.getStrategyByQuestType(param1.config.questElementSubType).questBook.getQuestsById(param1.id);
                                                                                                                                                                              if(_loc9_ && Boolean(_loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 continue;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr061e);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr06b5);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr063a);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        facade.sendNotification(ClickTaskNotificationConstants.TOWNHALL_ANIMATION_HANDLER,{
                                                                                                                                                                           "questId":param1.config.id,
                                                                                                                                                                           "localeId":0
                                                                                                                                                                        });
                                                                                                                                                                        if(!_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr06a1);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr06b5);
                                                                                                                                                               case 2:
                                                                                                                                                               case 3:
                                                                                                                                                                  §§push(_loc2_);
                                                                                                                                                                  if(!(_loc9_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr04a2);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr0538:
                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           this._clickTasks[ClickTaskNotificationConstants.BASEMENT_ENABLED] = this.getStrategyByQuestType(param1.config.questElementSubType).questBook.getQuestsById(param1.id);
                                                                                                                                                                           if(!_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr056c);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr0656);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        this._clickTasks[ClickTaskNotificationConstants.BASEMENT_ENABLED] = null;
                                                                                                                                                                        if(_loc8_ || Boolean(this))
                                                                                                                                                                        {
                                                                                                                                                                           addr05a0:
                                                                                                                                                                           facade.removeCommand(ClickTaskNotificationConstants.BASEMENT_ENABLED);
                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr061e);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr06a1);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr06b5);
                                                                                                                                                                  }
                                                                                                                                                               case 4:
                                                                                                                                                                  §§push(_loc2_);
                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr0538);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr05b8);
                                                                                                                                                                  }
                                                                                                                                                               case 5:
                                                                                                                                                               case 6:
                                                                                                                                                               case 7:
                                                                                                                                                                  §§goto(addr05b8);
                                                                                                                                                                  §§push(_loc2_);
                                                                                                                                                               case 8:
                                                                                                                                                                  if(!_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc9_ && Boolean(_loc3_)))
                                                                                                                                                                     {
                                                                                                                                                                        this._clickTasks[ClickTaskNotificationConstants.MASTERY_TRAIT_SELECTED] = this.getStrategyByQuestType(param1.config.questElementSubType).questBook.getQuestsById(param1.id);
                                                                                                                                                                        if(_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           facade.registerCommand(ClickTaskNotificationConstants.MASTERY_TRAIT_SELECTED,SolveClickTaskCommand);
                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     this._clickTasks[ClickTaskNotificationConstants.MASTERY_TRAIT_SELECTED] = null;
                                                                                                                                                                     if(_loc8_ || Boolean(this))
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue;
                                                                                                                                                               default:
                                                                                                                                                                  continue;
                                                                                                                                                            }
                                                                                                                                                            facade.removeCommand(ClickTaskNotificationConstants.MASTERY_TRAIT_SELECTED);
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         §§push("474");
                                                                                                                                                         if(_loc8_)
                                                                                                                                                         {
                                                                                                                                                            addr0933:
                                                                                                                                                            if(§§pop() === _loc7_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc8_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr0947);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr0969);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               addr0963:
                                                                                                                                                               if("2063" === _loc7_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr0969);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§push(9);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0989);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0969);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0963);
                                                                                                                                                         §§goto(addr0969);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0933);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0989);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0911);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0989);
                                                                                                                                          }
                                                                                                                                          §§goto(addr08e7);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0989);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0963);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0989);
                                                                                                                              }
                                                                                                                              §§goto(addr0933);
                                                                                                                           }
                                                                                                                           §§goto(addr0989);
                                                                                                                        }
                                                                                                                        §§goto(addr088b);
                                                                                                                     }
                                                                                                                     §§goto(addr0989);
                                                                                                                  }
                                                                                                                  §§goto(addr088b);
                                                                                                               }
                                                                                                               §§goto(addr089f);
                                                                                                            }
                                                                                                            §§goto(addr03e6);
                                                                                                         }
                                                                                                         §§goto(addr05ca);
                                                                                                      }
                                                                                                      §§goto(addr07bc);
                                                                                                   }
                                                                                                   §§goto(addr0360);
                                                                                                }
                                                                                                §§goto(addr05a0);
                                                                                             }
                                                                                             §§goto(addr03e6);
                                                                                          }
                                                                                          §§goto(addr032c);
                                                                                       }
                                                                                       §§goto(addr03e6);
                                                                                    }
                                                                                    §§goto(addr042a);
                                                                                 }
                                                                                 §§goto(addr04a2);
                                                                              }
                                                                              §§goto(addr032c);
                                                                           }
                                                                           §§goto(addr02fa);
                                                                        }
                                                                        §§goto(addr02f9);
                                                                     }
                                                                     §§goto(addr04a2);
                                                                  }
                                                                  §§goto(addr061e);
                                                               }
                                                               §§goto(addr030c);
                                                            }
                                                            §§goto(addr02ba);
                                                         }
                                                         §§goto(addr02b4);
                                                      }
                                                      §§goto(addr031b);
                                                   }
                                                   §§goto(addr02c8);
                                                }
                                                §§goto(addr0292);
                                             }
                                             §§goto(addr02b4);
                                          }
                                          §§goto(addr061e);
                                       }
                                       §§goto(addr07c0);
                                    }
                                    §§goto(addr042a);
                                 }
                                 return;
                              }
                              §§goto(addr0117);
                           }
                           §§goto(addr015e);
                        }
                        §§goto(addr0138);
                     }
                     §§goto(addr01c3);
                  }
                  §§goto(addr0084);
               }
               §§goto(addr017a);
            }
            §§goto(addr00a5);
         }
         addr0138:
      }
      
      private function checkForCitySquareInvalidation(param1:String, param2:String = "", param3:String = "") : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc4_:PopupSettingsVo = null;
         var _loc5_:EventLayerProxy = null;
         if(!(_loc6_ && Boolean(param3)))
         {
            sendNotification(ApplicationNotificationConstants.EVENTS_CHANGED);
            if(_loc7_)
            {
               if(param1 == QuestSystemTypeConstants.EVENT)
               {
                  addr004b:
                  _loc5_ = facade.retrieveProxy(EventLayerProxy.NAME) as EventLayerProxy;
                  if(_loc7_ || Boolean(param3))
                  {
                     §§push(param2);
                     if(_loc7_ || Boolean(param3))
                     {
                        §§push(QuestSystemStateConst.INACTIVE);
                        if(_loc7_)
                        {
                           §§push(§§pop() == §§pop());
                           if(!_loc6_)
                           {
                              var _temp_5:* = §§pop();
                              §§push(_temp_5);
                              if(_temp_5)
                              {
                                 if(_loc7_ || Boolean(param3))
                                 {
                                    addr00a1:
                                    §§pop();
                                    if(!(_loc6_ && Boolean(param2)))
                                    {
                                       §§push(param3);
                                       if(_loc7_)
                                       {
                                          §§push(QuestSystemStateConst.VALID);
                                          if(!_loc6_)
                                          {
                                             §§goto(addr00c4);
                                          }
                                          §§goto(addr0152);
                                       }
                                       §§goto(addr014c);
                                    }
                                    §§goto(addr00ce);
                                 }
                              }
                              addr00c4:
                              if(§§pop() == §§pop())
                              {
                                 if(_loc7_)
                                 {
                                    _loc4_ = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
                                    _loc4_.modal = true;
                                    addr00ce:
                                    if(_loc7_)
                                    {
                                       _loc4_.viewClass = CitySquareEventPopup;
                                       if(!_loc6_)
                                       {
                                          _loc4_.mediatorClass = CitySquareEventPopupMediator;
                                          if(_loc7_)
                                          {
                                             _loc4_.mediatorName = CitySquareEventPopupMediator.NAME;
                                             if(!(_loc6_ && Boolean(param2)))
                                             {
                                                addr012a:
                                                _loc4_.data = _loc5_.getCitySquareDetailViewVo(true);
                                                if(_loc7_)
                                                {
                                                   addr013b:
                                                   facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc4_);
                                                }
                                                §§goto(addr01e7);
                                             }
                                             §§goto(addr013b);
                                          }
                                          §§goto(addr01e7);
                                       }
                                       §§goto(addr012a);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr0156);
                                 }
                              }
                              else
                              {
                                 addr0152:
                                 addr014c:
                                 if(param3 == QuestSystemStateConst.DONE)
                                 {
                                    addr0156:
                                    _loc4_ = new PopupSettingsVo(PopupSettingsVo.PAPER_POPUP);
                                    _loc4_.modal = true;
                                    if(_loc7_ || Boolean(param2))
                                    {
                                       _loc4_.viewClass = CitySquareRewardMiniLayer;
                                       if(_loc7_ || Boolean(param1))
                                       {
                                          §§goto(addr018d);
                                       }
                                       §§goto(addr01db);
                                    }
                                    addr018d:
                                    _loc4_.mediatorClass = CitySquareRewardMiniLayerMediator;
                                    if(_loc7_ || Boolean(this))
                                    {
                                       _loc4_.mediatorName = CitySquareRewardMiniLayerMediator.NAME;
                                       if(!_loc6_)
                                       {
                                          _loc4_.data = _loc5_.getCitySquareDetailViewVo(false,true);
                                          if(_loc7_ || Boolean(param3))
                                          {
                                             addr01db:
                                             facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc4_);
                                          }
                                       }
                                    }
                                    §§goto(addr01e7);
                                 }
                              }
                              §§goto(addr01e7);
                           }
                           §§goto(addr00a1);
                        }
                        §§goto(addr0152);
                     }
                     §§goto(addr014c);
                  }
                  §§goto(addr0156);
               }
               addr01e7:
               return;
            }
         }
         §§goto(addr004b);
      }
      
      private function checkForVirtualTasks(param1:QuestPlayerVo) : void
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         var _loc2_:QuestTaskDTO = null;
         var _loc3_:QuestVirtualTaskVo = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         if(!(_loc12_ && Boolean(_loc3_)))
         {
            §§push(param1 == null);
            if(!_loc12_)
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(!_temp_3)
               {
                  if(!(_loc12_ && Boolean(this)))
                  {
                     addr0052:
                     §§pop();
                     if(!(_loc12_ && Boolean(this)))
                     {
                        §§goto(addr006b);
                     }
                     §§goto(addr0075);
                  }
               }
               addr006b:
               if(param1.type == QuestSystemTypeConstants.EVENT)
               {
                  if(!_loc12_)
                  {
                     §§goto(addr0075);
                  }
               }
               for each(_loc2_ in param1.tasks)
               {
                  if(!(_loc12_ && Boolean(param1)))
                  {
                     if(this._virtualTaskDescriptor.virtualTasks[_loc2_.taskConfig.localizationIdentifier] == null)
                     {
                        continue;
                     }
                     if(!_loc13_)
                     {
                        continue;
                     }
                  }
                  var _loc8_:int = 0;
                  if(_loc13_ || Boolean(_loc3_))
                  {
                     loop1:
                     for each(_loc3_ in this._virtualTaskDescriptor.virtualTasks[_loc2_.taskConfig.localizationIdentifier])
                     {
                        if(_loc13_ || Boolean(_loc2_))
                        {
                           if(_loc3_.targetItemGfxId != 0)
                           {
                              if(_loc13_)
                              {
                                 _loc3_.targetItemGfxId = ConfigPlayfieldItemDTO(this.gameConfigProxy.config.items[_loc2_.taskConfig.questTaskTarget.questTaskItem[0].questTaskItemID]).gfxId;
                                 if(!(_loc13_ || Boolean(_loc3_)))
                                 {
                                    continue;
                                 }
                              }
                           }
                        }
                        §§push(0);
                        if(!(_loc12_ && Boolean(param1)))
                        {
                           var _loc10_:* = §§pop();
                           if(!(_loc12_ && Boolean(_loc2_)))
                           {
                              var _loc11_:* = _loc3_.notificationCancelInterest;
                              if(!(_loc12_ && Boolean(param1)))
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc11_,_loc10_));
                                    if(!(_loc13_ || Boolean(param1)))
                                    {
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       if(!_loc12_)
                                       {
                                          if(!_loc12_)
                                          {
                                             if(!(_loc13_ || Boolean(_loc3_)))
                                             {
                                                continue loop1;
                                             }
                                             _loc10_ = 0;
                                             if(!_loc12_)
                                             {
                                                addr026b:
                                                _loc11_ = _loc3_.notificationInterest;
                                                if(!(_loc12_ && Boolean(param1)))
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§hasnext(_loc11_,_loc10_));
                                                      break loop2;
                                                   }
                                                   addr033d:
                                                }
                                                while(true)
                                                {
                                                   if(this._virtualTaskSolveDict[_loc5_] == null)
                                                   {
                                                      if(_loc13_)
                                                      {
                                                         while(true)
                                                         {
                                                            this._virtualTaskSolveDict[_loc5_] = new Vector.<QuestVirtualTaskVo>(0);
                                                            if(_loc13_)
                                                            {
                                                               while(true)
                                                               {
                                                                  facade.registerCommand(_loc5_,SolveVirtualTaskCommand);
                                                                  if(!(_loc12_ && Boolean(param1)))
                                                                  {
                                                                     this._virtualTaskSolveDict[_loc5_].push(_loc3_);
                                                                     if(_loc12_)
                                                                     {
                                                                     }
                                                                  }
                                                               }
                                                               addr02f7:
                                                            }
                                                         }
                                                         addr02d9:
                                                      }
                                                      §§goto(addr033d);
                                                   }
                                                   §§goto(addr02f7);
                                                }
                                                addr02c5:
                                             }
                                          }
                                          addr0346:
                                          continue loop1;
                                       }
                                       addr0344:
                                       §§goto(addr0346);
                                    }
                                    else
                                    {
                                       §§push(§§nextvalue(_loc10_,_loc11_));
                                       if(!_loc12_)
                                       {
                                          _loc4_ = §§pop();
                                          if(!(_loc12_ && Boolean(param1)))
                                          {
                                             addr01ab:
                                             if(param1.state == QuestSystemStateConst.DONE)
                                             {
                                                facade.removeCommand(_loc4_);
                                                continue;
                                             }
                                             if(!(_loc13_ || Boolean(_loc2_)))
                                             {
                                                continue;
                                             }
                                          }
                                          if(this._virtualTaskUnsolveDict[_loc4_] == null)
                                          {
                                             if(_loc13_ || Boolean(_loc2_))
                                             {
                                                this._virtualTaskUnsolveDict[_loc4_] = new Vector.<QuestVirtualTaskVo>(0);
                                                if(!_loc13_)
                                                {
                                                   continue;
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             facade.registerCommand(_loc4_,UnsolveVirtualTaskCommand);
                                             if(_loc13_)
                                             {
                                                this._virtualTaskUnsolveDict[_loc4_].push(_loc3_);
                                                if(_loc13_)
                                                {
                                                }
                                             }
                                             continue loop2;
                                          }
                                          addr01fd:
                                       }
                                       §§goto(addr01ab);
                                    }
                                 }
                                 for(; §§pop(); §§push(§§hasnext(_loc11_,_loc10_)))
                                 {
                                    §§push(§§nextvalue(_loc10_,_loc11_));
                                    if(_loc13_ || Boolean(this))
                                    {
                                       _loc5_ = §§pop();
                                       if(!(_loc12_ && Boolean(_loc2_)))
                                       {
                                          addr02ad:
                                          if(param1.state == QuestSystemStateConst.DONE)
                                          {
                                             facade.removeCommand(_loc5_);
                                             continue;
                                          }
                                          if(!(_loc12_ && Boolean(this)))
                                          {
                                             §§goto(addr02c5);
                                          }
                                          §§goto(addr02f7);
                                       }
                                       §§goto(addr02d9);
                                    }
                                    §§goto(addr02ad);
                                 }
                                 §§goto(addr0344);
                              }
                              §§goto(addr01fd);
                           }
                           §§goto(addr026b);
                        }
                        §§goto(addr0263);
                     }
                  }
               }
               return;
            }
            §§goto(addr0052);
         }
         addr0075:
      }
      
      private function get gameConfigProxy() : GameConfigProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(this._gameConfigProxy);
            if(_loc1_)
            {
               if(§§pop() == null)
               {
                  if(_loc1_)
                  {
                     addr003a:
                     this._gameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                  }
               }
               return this._gameConfigProxy;
            }
         }
         §§goto(addr003a);
      }
      
      public function reset(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            §§push(param1);
            if(_loc2_ || Boolean(param1))
            {
               §§push(QuestSystemTypeConstants.TUTORIAL);
               if(!_loc3_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        this._questManager = new QuestManagerParentStrategy();
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(this._questManager);
                           if(_loc2_)
                           {
                              §§pop().prepare(facade,this._gameConfigProxy,this._cvTagProxy,this._playerProxy,this._playfieldProxy);
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr009c:
                                 this._questManager.questBook = new QuestBookVo();
                                 if(_loc2_)
                                 {
                                 }
                              }
                              §§goto(addr011d);
                           }
                           §§goto(addr009c);
                        }
                        else
                        {
                           addr0113:
                           this._eventManager.questBook = new QuestBookVo();
                           addr010f:
                        }
                     }
                     else
                     {
                        addr00bf:
                        this._eventManager = new QuestManagerEventStrategy();
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr00d7:
                           §§push(this._eventManager);
                           if(!(_loc3_ && _loc2_))
                           {
                              §§pop().prepare(facade,this._gameConfigProxy,this._cvTagProxy,this._playerProxy,this._playfieldProxy);
                              if(!_loc3_)
                              {
                                 §§goto(addr010f);
                              }
                              §§goto(addr011d);
                           }
                           §§goto(addr0113);
                        }
                     }
                  }
                  else
                  {
                     addr00b6:
                     addr00b0:
                     if(param1 == QuestSystemTypeConstants.EVENT)
                     {
                        if(_loc2_)
                        {
                           §§goto(addr00bf);
                        }
                        §§goto(addr00d7);
                     }
                  }
                  addr011d:
                  return;
               }
               §§goto(addr00b6);
            }
            §§goto(addr00b0);
         }
         §§goto(addr00bf);
      }
      
      private function prepareQuestBooks() : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc2_:IQuestBookDTO = null;
         var _loc3_:QuestDTO = null;
         var _loc1_:QuestBookManagerVo = this._playerProxy.player.questBooks;
         for each(_loc2_ in _loc1_.questBookTutorial)
         {
            if(!(_loc8_ && Boolean(_loc1_)))
            {
               var _loc6_:int = 0;
               if(!_loc8_)
               {
                  for each(_loc3_ in _loc2_.list)
                  {
                     if(!_loc8_)
                     {
                        this.addQuest(_loc3_);
                     }
                  }
               }
            }
         }
         if(_loc9_)
         {
            sendNotification(ApplicationNotificationConstants.QUEST_STATE_CHANGED);
         }
      }
      
      public function get currentQuests() : Vector.<QuestPlayerVo>
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:QuestPlayerVo = null;
         var _loc1_:Vector.<QuestPlayerVo> = new Vector.<QuestPlayerVo>();
         for each(_loc2_ in this._questManager.questBook.currentQuests)
         {
            if(_loc5_ || Boolean(this))
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function updateQuestState(param1:String, param2:Number, param3:String, param4:Number, param5:Number, param6:Boolean = false) : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc8_:* = null;
         if(!_loc11_)
         {
            if(facade.hasCommand(ApplicationNotificationConstants.INIT_QUEST_SYSTEM))
            {
               if(!_loc11_)
               {
                  facade.sendNotification(ApplicationNotificationConstants.INIT_QUEST_SYSTEM);
               }
            }
         }
         var _loc7_:QuestBookVo = this.getStrategyByQuestType(param1).questBook;
         var _loc9_:QuestPlayerVo = _loc7_.getQuestsById(param2);
         if(_loc9_)
         {
            if(_loc10_)
            {
               §§push(_loc9_.state);
               if(!(_loc11_ && Boolean(param3)))
               {
                  §§push(§§pop());
                  if(_loc10_)
                  {
                     _loc8_ = §§pop();
                     if(!_loc11_)
                     {
                        _loc9_.lastUpdated = param5;
                        if(_loc10_ || Boolean(param2))
                        {
                           this.getStrategyByQuestType(param1).updateQuestState(param2,param3,param4,param6);
                           if(!(_loc11_ && Boolean(param1)))
                           {
                              §§push(param3);
                              if(!_loc11_)
                              {
                                 addr00c1:
                                 §§push(QuestSystemStateConst.DELETED);
                                 if(_loc10_ || Boolean(param1))
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       if(!(_loc11_ && Boolean(param3)))
                                       {
                                          this.checkForScreenTask(_loc9_);
                                          if(_loc10_)
                                          {
                                             addr00fe:
                                             this.checkForClickTasks(_loc9_);
                                             if(_loc10_ || Boolean(this))
                                             {
                                                addr0113:
                                                §§push(param3);
                                                if(_loc10_)
                                                {
                                                   addr0120:
                                                   if(§§pop() == QuestSystemStateConst.DONE)
                                                   {
                                                      if(!_loc11_)
                                                      {
                                                         this.checkForVirtualTasks(_loc9_);
                                                         if(_loc10_ || Boolean(param1))
                                                         {
                                                            addr0140:
                                                            addr0142:
                                                            if(_loc8_)
                                                            {
                                                               if(!_loc11_)
                                                               {
                                                                  this.checkForCitySquareInvalidation(param1,_loc8_,param3);
                                                                  if(_loc10_)
                                                                  {
                                                                     addr015b:
                                                                     if(getTimer() - this._lastChange < 500)
                                                                     {
                                                                        if(_loc10_ || Boolean(param2))
                                                                        {
                                                                           addr018a:
                                                                           TweenMax.killDelayedCallsTo(this.sendChangeDelayed);
                                                                           if(!_loc11_)
                                                                           {
                                                                              addr019a:
                                                                              TweenMax.delayedCall(0.5,this.sendChangeDelayed);
                                                                              if(_loc10_ || Boolean(param1))
                                                                              {
                                                                                 this._lastChange = getTimer();
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr01c4);
                                                                     }
                                                                     §§goto(addr019a);
                                                                  }
                                                                  §§goto(addr018a);
                                                               }
                                                            }
                                                            §§goto(addr015b);
                                                         }
                                                         §§goto(addr018a);
                                                      }
                                                      §§goto(addr019a);
                                                   }
                                                   §§goto(addr0140);
                                                }
                                                §§goto(addr0142);
                                             }
                                             §§goto(addr0140);
                                          }
                                          §§goto(addr019a);
                                       }
                                       §§goto(addr00fe);
                                    }
                                    §§goto(addr0113);
                                 }
                                 §§goto(addr0120);
                              }
                              §§goto(addr0142);
                           }
                           §§goto(addr0140);
                        }
                        §§goto(addr0113);
                     }
                     §§goto(addr00fe);
                  }
                  §§goto(addr00c1);
               }
               §§goto(addr0142);
            }
            §§goto(addr018a);
         }
         addr01c4:
      }
      
      private function sendChangeDelayed() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            sendNotification(ApplicationNotificationConstants.QUEST_STATE_CHANGED);
         }
      }
      
      public function updateTask(param1:String, param2:Number, param3:String, param4:Number, param5:Number, param6:QuestCompleteCostVo) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         if(!(_loc8_ && Boolean(param1)))
         {
            §§push(this.getStrategyByQuestType(param1));
            if(!(_loc8_ && Boolean(param3)))
            {
               if(§§pop() == null)
               {
                  if(_loc7_)
                  {
                     return;
                  }
                  addr0098:
                  this.checkForScreenTask(this.getStrategyByQuestType(param1).questBook.getQuestsById(param5));
                  if(_loc7_ || Boolean(param2))
                  {
                     addr00ba:
                     this.checkForCitySquareInvalidation(param1);
                  }
               }
               else
               {
                  addr005d:
                  this.getStrategyByQuestType(param1).updateTask(param2,param3,param4,param5,param6);
                  if(!_loc8_)
                  {
                     this.checkForClickTasks(this.getStrategyByQuestType(param1).questBook.getQuestsById(param5));
                     addr0070:
                     if(!_loc8_)
                     {
                        §§goto(addr0098);
                     }
                     §§goto(addr00ba);
                  }
               }
               return;
            }
            §§goto(addr005d);
         }
         §§goto(addr0070);
      }
      
      public function updateChallenge(param1:QuestChallengeDTO) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:QuestChallengeDTO = (this._eventManager as QuestManagerEventStrategy).getChallengeByCid(param1.config.id);
         var _loc3_:QuestEventPlayerVo = (this._eventManager as QuestManagerEventStrategy).updateChallenge(param1);
         if(_loc5_)
         {
            this.checkForCitySquareInvalidation(_loc3_.config.questElementSubType,_loc2_.elementState,param1.elementState);
         }
      }
      
      private function getStrategyByQuestType(param1:String) : IQuestManagerStrategy
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:IQuestManagerStrategy = null;
         var _loc3_:* = param1;
         if(_loc5_ || Boolean(param1))
         {
            §§push(QuestSystemTypeConstants.TUTORIAL);
            if(_loc5_)
            {
               §§push(_loc3_);
               if(_loc5_ || Boolean(this))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc5_)
                     {
                        §§push(0);
                        if(_loc4_ && Boolean(param1))
                        {
                        }
                     }
                     else
                     {
                        addr00cd:
                        §§push(1);
                        if(_loc4_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(QuestSystemTypeConstants.EVENT);
                     if(_loc5_ || Boolean(this))
                     {
                        addr00b4:
                        §§push(_loc3_);
                        if(_loc5_ || Boolean(this))
                        {
                           addr00c3:
                           if(§§pop() === §§pop())
                           {
                              if(!_loc4_)
                              {
                                 §§goto(addr00cd);
                              }
                              else
                              {
                                 addr00f1:
                                 §§push(2);
                                 if(_loc5_ || Boolean(param1))
                                 {
                                 }
                              }
                              §§goto(addr0111);
                           }
                           else
                           {
                              §§goto(addr00ed);
                           }
                        }
                        addr00ed:
                        §§goto(addr00ec);
                     }
                     addr00ec:
                     if(QuestSystemTypeConstants.SOCIAL === _loc3_)
                     {
                        §§goto(addr00f1);
                     }
                     else
                     {
                        §§push(3);
                     }
                     §§goto(addr0111);
                  }
                  addr0111:
                  switch(§§pop())
                  {
                     case 0:
                        _loc2_ = this._questManager;
                        break;
                     case 1:
                        _loc2_ = this._eventManager;
                        break;
                     case 2:
                        _loc2_ = this._socialManager;
                  }
                  return _loc2_;
               }
               §§goto(addr00c3);
            }
            §§goto(addr00b4);
         }
         §§goto(addr00f1);
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
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc2_:QuestTaskDTO = null;
         var _loc3_:* = null;
         var _loc4_:* = undefined;
         var _loc5_:Object = null;
         if(_loc9_)
         {
            §§push(param1 == null);
            if(_loc9_)
            {
               §§push(!§§pop());
               if(_loc9_)
               {
                  addr003c:
                  var _temp_1:* = §§pop();
                  §§push(_temp_1);
                  §§push(_temp_1);
                  if(!(_loc10_ && Boolean(_loc3_)))
                  {
                     if(§§pop())
                     {
                        if(!(_loc10_ && Boolean(_loc3_)))
                        {
                           §§pop();
                           if(_loc9_)
                           {
                              §§push(param1.type);
                              if(!(_loc10_ && Boolean(_loc2_)))
                              {
                                 §§push(QuestSystemTypeConstants.EVENT);
                                 if(!_loc10_)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(_loc9_ || Boolean(this))
                                    {
                                       §§push(!§§pop());
                                       if(_loc9_ || Boolean(param1))
                                       {
                                          addr00a0:
                                          var _temp_7:* = §§pop();
                                          addr00a1:
                                          §§push(_temp_7);
                                          if(_temp_7)
                                          {
                                             if(!(_loc10_ && Boolean(_loc3_)))
                                             {
                                                addr00b3:
                                                §§pop();
                                                if(_loc9_)
                                                {
                                                   §§goto(addr00c5);
                                                }
                                                §§goto(addr00c9);
                                             }
                                          }
                                          addr00c5:
                                          §§goto(addr00c4);
                                       }
                                    }
                                    §§goto(addr00b3);
                                 }
                                 addr00c4:
                                 §§goto(addr00be);
                              }
                              addr00be:
                              §§goto(addr00ba);
                           }
                           addr00ba:
                           if(param1.state == QuestSystemStateConst.VALID)
                           {
                              addr00c9:
                              for each(_loc2_ in param1.tasks)
                              {
                                 if(!_loc10_)
                                 {
                                    §§push(_loc2_.taskConfig.questElementSubType == QuestSystemTypeConstants.SCREEN);
                                    if(!(_loc10_ && Boolean(_loc3_)))
                                    {
                                       var _temp_10:* = §§pop();
                                       §§push(_temp_10);
                                       if(_temp_10)
                                       {
                                          if(!(_loc10_ && Boolean(_loc2_)))
                                          {
                                             addr0117:
                                             §§pop();
                                             if(!_loc10_)
                                             {
                                                addr0129:
                                                addr011e:
                                                if(_loc2_.elementState != QuestSystemStateConst.ACTIVE)
                                                {
                                                   continue;
                                                }
                                                if(_loc9_ || Boolean(this))
                                                {
                                                   addr013b:
                                                   this._currentScreenQuestConfigId = param1.config.id;
                                                   if(!_loc10_)
                                                   {
                                                      this._currentScreenTaskConfigId = _loc2_.taskConfig.id;
                                                   }
                                                }
                                                _loc5_ = {};
                                                if(!_loc10_)
                                                {
                                                   var _loc8_:* = _loc2_.taskConfig.gfxId;
                                                   if(_loc9_)
                                                   {
                                                      §§push(QuestGFXIDLayerConstants.TUTORIALREWARD);
                                                      if(_loc9_ || Boolean(_loc2_))
                                                      {
                                                         if(§§pop() === _loc8_)
                                                         {
                                                            if(_loc9_ || Boolean(_loc2_))
                                                            {
                                                               §§push(0);
                                                               if(_loc9_)
                                                               {
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr0523:
                                                               §§push(8);
                                                               if(_loc9_ || Boolean(this))
                                                               {
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(QuestGFXIDLayerConstants.INTRODUCTION);
                                                            if(_loc9_ || Boolean(param1))
                                                            {
                                                               if(§§pop() === _loc8_)
                                                               {
                                                                  if(!(_loc10_ && Boolean(this)))
                                                                  {
                                                                     §§push(1);
                                                                     if(_loc9_ || Boolean(this))
                                                                     {
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr04e7:
                                                                     §§push(7);
                                                                     if(_loc10_ && Boolean(this))
                                                                     {
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION);
                                                                  if(_loc9_ || Boolean(_loc3_))
                                                                  {
                                                                     if(§§pop() === _loc8_)
                                                                     {
                                                                        if(!(_loc10_ && Boolean(_loc2_)))
                                                                        {
                                                                           §§push(2);
                                                                           if(_loc9_ || Boolean(_loc3_))
                                                                           {
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr04ab:
                                                                           §§push(6);
                                                                           if(_loc10_ && Boolean(this))
                                                                           {
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION_KAIDEN);
                                                                        if(!(_loc10_ && Boolean(param1)))
                                                                        {
                                                                           if(§§pop() === _loc8_)
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§push(3);
                                                                                 if(_loc10_ && Boolean(_loc2_))
                                                                                 {
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr04e7);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION_KAIDEN_FRIENDS);
                                                                              if(_loc9_ || Boolean(_loc3_))
                                                                              {
                                                                                 if(§§pop() === _loc8_)
                                                                                 {
                                                                                    if(!(_loc10_ && Boolean(this)))
                                                                                    {
                                                                                       §§push(4);
                                                                                       if(_loc10_ && Boolean(_loc3_))
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr0693:
                                                                                       §§push(16);
                                                                                       if(_loc10_)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION_EDUCATION);
                                                                                    if(!(_loc10_ && Boolean(param1)))
                                                                                    {
                                                                                       if(§§pop() === _loc8_)
                                                                                       {
                                                                                          if(_loc9_ || Boolean(_loc2_))
                                                                                          {
                                                                                             §§push(5);
                                                                                             if(_loc9_ || Boolean(_loc3_))
                                                                                             {
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr0523);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION_POLICE);
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             addr0497:
                                                                                             if(§§pop() === _loc8_)
                                                                                             {
                                                                                                if(_loc9_ || Boolean(_loc2_))
                                                                                                {
                                                                                                   §§goto(addr04ab);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr0807:
                                                                                                   §§push(24);
                                                                                                   if(_loc10_ && Boolean(this))
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                                addr0827:
                                                                                                switch(§§pop())
                                                                                                {
                                                                                                   case 0:
                                                                                                      §§push(MiniLayerConstants.OPEN_MINI_TUTORIALREWARD);
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            addr0193:
                                                                                                            _loc3_ = §§pop();
                                                                                                            addr0192:
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               _loc4_ = param1.rewards;
                                                                                                               if(!(_loc10_ && Boolean(param1)))
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               addr01d0:
                                                                                                               _loc5_.screen = _loc2_.taskConfig.gfxId;
                                                                                                               if(!(_loc10_ && Boolean(_loc2_)))
                                                                                                               {
                                                                                                                  _loc5_.quest = true;
                                                                                                               }
                                                                                                               addr01f1:
                                                                                                               _loc4_ = _loc5_;
                                                                                                               if(_loc9_ || Boolean(this))
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               addr023e:
                                                                                                               _loc5_.quest = true;
                                                                                                               addr0244:
                                                                                                               _loc4_ = _loc5_;
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               addr026f:
                                                                                                               _loc5_.feature = FeatureScreenProxy.FEATURE_NEEDS;
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  addr0280:
                                                                                                                  _loc5_.quest = true;
                                                                                                               }
                                                                                                               _loc4_ = _loc5_;
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               addr02c0:
                                                                                                               _loc4_ = _loc5_;
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               addr02f3:
                                                                                                               _loc5_.feature = FeatureScreenProxy.FEATURE_BALANCE;
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  _loc5_.quest = true;
                                                                                                               }
                                                                                                               addr030a:
                                                                                                               _loc4_ = _loc5_;
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                      }
                                                                                                      _loc3_ = §§pop();
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                      }
                                                                                                      break;
                                                                                                   case 1:
                                                                                                      §§push(MiniLayerConstants.OPEN_MINI_INTRODUCTION);
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         §§goto(addr0192);
                                                                                                      }
                                                                                                      §§goto(addr0193);
                                                                                                   case 2:
                                                                                                   case 3:
                                                                                                   case 4:
                                                                                                   case 5:
                                                                                                   case 6:
                                                                                                   case 7:
                                                                                                   case 8:
                                                                                                      §§push(ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN);
                                                                                                      if(_loc9_ || Boolean(_loc2_))
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                      }
                                                                                                      _loc3_ = §§pop();
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         §§goto(addr01d0);
                                                                                                      }
                                                                                                      §§goto(addr01f1);
                                                                                                   case 9:
                                                                                                   case 10:
                                                                                                   case 11:
                                                                                                   case 12:
                                                                                                   case 13:
                                                                                                   case 14:
                                                                                                   case 15:
                                                                                                   case 16:
                                                                                                   case 17:
                                                                                                   case 18:
                                                                                                   case 19:
                                                                                                   case 20:
                                                                                                   case 21:
                                                                                                      §§push(ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN);
                                                                                                      if(!(_loc10_ && Boolean(param1)))
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                      }
                                                                                                      _loc3_ = §§pop();
                                                                                                      if(_loc9_ || Boolean(_loc2_))
                                                                                                      {
                                                                                                         _loc5_.feature = _loc2_.taskConfig.gfxId;
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            §§goto(addr023e);
                                                                                                         }
                                                                                                         §§goto(addr0244);
                                                                                                      }
                                                                                                      §§goto(addr023e);
                                                                                                   case 22:
                                                                                                      §§push(ApplicationNotificationConstants.OPEN_FEATURESCREEN);
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                      }
                                                                                                      _loc3_ = §§pop();
                                                                                                      if(!(_loc10_ && Boolean(_loc3_)))
                                                                                                      {
                                                                                                         §§goto(addr026f);
                                                                                                      }
                                                                                                      §§goto(addr0280);
                                                                                                   case 23:
                                                                                                      §§push(ApplicationNotificationConstants.OPEN_FEATURESCREEN);
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                      }
                                                                                                      _loc3_ = §§pop();
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         _loc5_.feature = FeatureScreenProxy.FEATURE_PERMISSIONS;
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            _loc5_.quest = true;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr02c0);
                                                                                                   case 24:
                                                                                                      §§push(ApplicationNotificationConstants.OPEN_FEATURESCREEN);
                                                                                                      if(!(_loc10_ && Boolean(_loc2_)))
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                      }
                                                                                                      _loc3_ = §§pop();
                                                                                                      if(!(_loc10_ && Boolean(this)))
                                                                                                      {
                                                                                                         §§goto(addr02f3);
                                                                                                      }
                                                                                                      §§goto(addr030a);
                                                                                                }
                                                                                                if(this._previousScreenTaskId != this._currentScreenTaskConfigId)
                                                                                                {
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      addr08ab:
                                                                                                      this._previousScreenTaskId = this._currentScreenTaskConfigId;
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                   }
                                                                                                   TweenMax.delayedCall(1,this.openScreenDelayed,[{
                                                                                                      "command":_loc3_,
                                                                                                      "feature":_loc4_
                                                                                                   }]);
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             §§push(QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION_POLICECHIEF);
                                                                                             if(!(_loc10_ && Boolean(_loc3_)))
                                                                                             {
                                                                                                addr04d3:
                                                                                                if(§§pop() === _loc8_)
                                                                                                {
                                                                                                   if(_loc9_ || Boolean(_loc2_))
                                                                                                   {
                                                                                                      §§goto(addr04e7);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr06bf:
                                                                                                      §§push(17);
                                                                                                      if(_loc10_ && Boolean(this))
                                                                                                      {
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(QuestGFXIDLayerConstants.CHARACTER_SARIKA_INTRODUCTION);
                                                                                                   if(_loc9_ || Boolean(_loc2_))
                                                                                                   {
                                                                                                      if(§§pop() === _loc8_)
                                                                                                      {
                                                                                                         if(!(_loc10_ && Boolean(this)))
                                                                                                         {
                                                                                                            §§goto(addr0523);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr059f:
                                                                                                            §§push(11);
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(QuestGFXIDLayerConstants.INFRASTRUCTURE_FEATURE_SECURITY_GRADES);
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            if(§§pop() === _loc8_)
                                                                                                            {
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  §§push(9);
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr05ff:
                                                                                                                  §§push(13);
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(QuestGFXIDLayerConstants.INFRASTRUCTURE_FEATURE_SUCCESS_CHANCE);
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  if(§§pop() === _loc8_)
                                                                                                                  {
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        addr0573:
                                                                                                                        §§push(10);
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr05ff);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(QuestGFXIDLayerConstants.INFRASTRUCTURE_FEATURE_SECURITY_DEVICES);
                                                                                                                     if(!(_loc10_ && Boolean(param1)))
                                                                                                                     {
                                                                                                                        addr0593:
                                                                                                                        if(§§pop() === _loc8_)
                                                                                                                        {
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              §§goto(addr059f);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr0623:
                                                                                                                              §§push(14);
                                                                                                                              if(_loc9_ || Boolean(this))
                                                                                                                              {
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(QuestGFXIDLayerConstants.IMPROVEMENT_FEATURE_BOOSTERPACKS);
                                                                                                                           if(!(_loc10_ && Boolean(param1)))
                                                                                                                           {
                                                                                                                              addr05bf:
                                                                                                                              if(§§pop() === _loc8_)
                                                                                                                              {
                                                                                                                                 if(_loc9_ || Boolean(_loc2_))
                                                                                                                                 {
                                                                                                                                    §§push(12);
                                                                                                                                    if(_loc10_ && Boolean(_loc3_))
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr0623);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(QuestGFXIDLayerConstants.IMPROVEMENT_FEATURE_CURSOR_MODE);
                                                                                                                                 if(!_loc10_)
                                                                                                                                 {
                                                                                                                                    addr05f3:
                                                                                                                                    if(§§pop() === _loc8_)
                                                                                                                                    {
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr05ff);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr06bf);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(QuestGFXIDLayerConstants.IMPROVEMENT_FEATURE_MANAGEMENT_LAYER);
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          addr0617:
                                                                                                                                          if(§§pop() === _loc8_)
                                                                                                                                          {
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr0623);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr06f3:
                                                                                                                                                §§push(18);
                                                                                                                                                if(_loc9_ || Boolean(_loc3_))
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§push(QuestGFXIDLayerConstants.IMPROVEMENT_FEATURE_EFFECTS);
                                                                                                                                             if(!_loc10_)
                                                                                                                                             {
                                                                                                                                                addr0643:
                                                                                                                                                if(§§pop() === _loc8_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc10_ && Boolean(param1)))
                                                                                                                                                   {
                                                                                                                                                      §§push(15);
                                                                                                                                                      if(_loc9_ || Boolean(_loc2_))
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr0787:
                                                                                                                                                      §§push(21);
                                                                                                                                                      if(_loc10_)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§push(QuestGFXIDLayerConstants.BIG_FEATURE_CAPITALISTS);
                                                                                                                                                   if(!(_loc10_ && Boolean(this)))
                                                                                                                                                   {
                                                                                                                                                      addr067f:
                                                                                                                                                      if(§§pop() === _loc8_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc9_ || Boolean(this))
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr0693);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr0787);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§push(QuestGFXIDLayerConstants.BIG_FEATURE_PRODUCTION_POINTS);
                                                                                                                                                         if(!_loc10_)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() === _loc8_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc10_ && Boolean(_loc2_)))
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr06bf);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr07b3:
                                                                                                                                                                  §§push(22);
                                                                                                                                                                  if(_loc10_ && Boolean(_loc2_))
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§push(QuestGFXIDLayerConstants.BIG_FEATURE_PF2_BRIDGE);
                                                                                                                                                               if(!(_loc10_ && Boolean(param1)))
                                                                                                                                                               {
                                                                                                                                                                  addr06e7:
                                                                                                                                                                  if(§§pop() === _loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr06f3);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        addr0727:
                                                                                                                                                                        §§push(19);
                                                                                                                                                                        if(_loc9_ || Boolean(this))
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§push(QuestGFXIDLayerConstants.BIG_FEATURE_PF2_COASTAL_BUILDINGS);
                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop() === _loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc10_ && Boolean(this)))
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr0727);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr0787);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§push(QuestGFXIDLayerConstants.BIG_FEATURE_SUBLEVEL);
                                                                                                                                                                           if(!_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() === _loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(20);
                                                                                                                                                                                    if(_loc10_ && Boolean(_loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr0787);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(QuestGFXIDLayerConstants.BIG_FEATURE_MASTERY);
                                                                                                                                                                                 if(_loc9_ || Boolean(_loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr077b:
                                                                                                                                                                                    if(§§pop() === _loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr0787);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr07b3);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(QuestGFXIDLayerConstants.FEATURE_NEEDS);
                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr079f:
                                                                                                                                                                                          if(§§pop() === _loc8_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc10_ && Boolean(_loc2_)))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr07b3);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr0807);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(QuestGFXIDLayerConstants.FEATURE_PERMISSIONS);
                                                                                                                                                                                             if(_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr07d3:
                                                                                                                                                                                                if(§§pop() === _loc8_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc9_ || Boolean(this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(23);
                                                                                                                                                                                                      if(_loc9_ || Boolean(_loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr0807);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr0801:
                                                                                                                                                                                                   if(QuestGFXIDLayerConstants.FEATURE_BALANCE === _loc8_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr0807);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(25);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr0827);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr0801);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr0807);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr07d3);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr0827);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0801);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0827);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0801);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0827);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr07d3);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0827);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr077b);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0827);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr079f);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0827);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr079f);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0827);
                                                                                                                                             }
                                                                                                                                             §§goto(addr06e7);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0827);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0801);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0827);
                                                                                                                                 }
                                                                                                                                 §§goto(addr079f);
                                                                                                                              }
                                                                                                                              §§goto(addr0827);
                                                                                                                           }
                                                                                                                           §§goto(addr05f3);
                                                                                                                        }
                                                                                                                        §§goto(addr0827);
                                                                                                                     }
                                                                                                                     §§goto(addr05bf);
                                                                                                                  }
                                                                                                                  §§goto(addr0827);
                                                                                                               }
                                                                                                               §§goto(addr06e7);
                                                                                                            }
                                                                                                            §§goto(addr0827);
                                                                                                         }
                                                                                                         §§goto(addr0643);
                                                                                                      }
                                                                                                      §§goto(addr0827);
                                                                                                   }
                                                                                                   §§goto(addr0801);
                                                                                                }
                                                                                                §§goto(addr0827);
                                                                                             }
                                                                                             §§goto(addr05bf);
                                                                                             §§goto(addr0807);
                                                                                          }
                                                                                          §§goto(addr0617);
                                                                                       }
                                                                                       §§goto(addr0827);
                                                                                    }
                                                                                    §§goto(addr07d3);
                                                                                 }
                                                                                 §§goto(addr0827);
                                                                              }
                                                                              §§goto(addr0643);
                                                                           }
                                                                           §§goto(addr0827);
                                                                        }
                                                                        §§goto(addr0593);
                                                                     }
                                                                     §§goto(addr0827);
                                                                  }
                                                                  §§goto(addr04d3);
                                                               }
                                                               §§goto(addr0827);
                                                            }
                                                            §§goto(addr067f);
                                                         }
                                                         §§goto(addr0827);
                                                      }
                                                      §§goto(addr0497);
                                                   }
                                                   §§goto(addr0573);
                                                }
                                                §§goto(addr08ab);
                                             }
                                             §§goto(addr013b);
                                          }
                                       }
                                       §§goto(addr0129);
                                    }
                                    §§goto(addr0117);
                                 }
                                 §§goto(addr011e);
                              }
                           }
                           return;
                        }
                     }
                     §§goto(addr00a0);
                  }
                  §§goto(addr00a1);
               }
               §§goto(addr00a0);
            }
            §§goto(addr003c);
         }
         §§goto(addr00c9);
      }
      
      private function openScreenDelayed(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            sendNotification(param1.command,param1.feature);
         }
      }
      
      public function activateVirtualTaskByLocaleId(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:QuestVirtualTaskVo = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.virtualTaskList;
         do
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc5_)
               {
                  if(_loc2_.localeId != param1)
                  {
                     continue;
                  }
                  if(!_loc6_)
                  {
                     break;
                  }
               }
               _loc2_.isActive = true;
            }
            return;
         }
         while(_loc5_ && Boolean(this));
         
      }
      
      private function get virtualTaskList() : Vector.<QuestVirtualTaskVo>
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc2_:Vector.<QuestVirtualTaskVo> = null;
         var _loc3_:QuestVirtualTaskVo = null;
         var _loc1_:Vector.<QuestVirtualTaskVo> = new Vector.<QuestVirtualTaskVo>();
         for each(_loc2_ in this._virtualTaskSolveDict)
         {
            if(!_loc8_)
            {
               var _loc6_:int = 0;
               if(_loc9_ || Boolean(_loc3_))
               {
                  for each(_loc3_ in _loc2_)
                  {
                     if(!_loc8_)
                     {
                        _loc1_.push(_loc3_);
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public function getQuestByID(param1:Number) : QuestPlayerVo
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:QuestPlayerVo = null;
         var _loc3_:QuestPlayerVo = null;
         var _loc4_:int = 0;
         var _loc5_:* = this._eventManager.questBook.quests;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc5_,_loc4_));
            if(_loc6_)
            {
               break;
            }
            if(§§pop())
            {
               _loc2_ = §§nextvalue(_loc4_,_loc5_);
               if(!_loc6_)
               {
                  if(_loc2_.id == param1)
                  {
                     if(_loc7_)
                     {
                        return _loc2_;
                     }
                  }
               }
               continue;
            }
            if(!(_loc6_ && Boolean(_loc3_)))
            {
               if(_loc7_)
               {
                  if(!_loc6_)
                  {
                     _loc4_ = 0;
                     if(!_loc6_)
                     {
                        _loc5_ = this._questManager.questBook.quests;
                        while(true)
                        {
                           §§push(§§hasnext(_loc5_,_loc4_));
                           break loop0;
                        }
                        addr00ea:
                        addr00e3:
                     }
                     addr00ec:
                  }
                  return null;
               }
               §§goto(addr00ec);
            }
            §§goto(addr00ea);
         }
         while(true)
         {
            if(§§pop())
            {
               _loc3_ = §§nextvalue(_loc4_,_loc5_);
               if(!(_loc7_ || Boolean(this)))
               {
                  break;
               }
               if(_loc3_.id == param1)
               {
                  if(!(_loc6_ && Boolean(_loc2_)))
                  {
                     break;
                  }
               }
               §§goto(addr00e3);
            }
            §§goto(addr00ea);
         }
         return _loc3_;
      }
      
      public function getEventByID(param1:Number) : QuestPlayerVo
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:QuestPlayerVo = null;
         var _loc3_:int = 0;
         var _loc4_:* = this._eventManager.questBook.quests;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc5_ && Boolean(_loc2_))
               {
                  break;
               }
               if(_loc2_.id == param1)
               {
                  if(!(_loc5_ && Boolean(param1)))
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public function getCurrentQuestByID(param1:Number) : QuestPlayerVo
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:QuestPlayerVo = null;
         var _loc3_:QuestPlayerVo = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.currentQuests;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc5_,_loc4_));
            if(_loc7_ && Boolean(_loc2_))
            {
               break;
            }
            if(§§pop())
            {
               _loc2_ = §§nextvalue(_loc4_,_loc5_);
               if(!(_loc7_ && Boolean(_loc3_)))
               {
                  if(_loc2_.id == param1)
                  {
                     if(!(_loc7_ && Boolean(this)))
                     {
                        return _loc2_;
                     }
                  }
               }
               continue;
            }
            if(_loc6_ || Boolean(this))
            {
               if(!_loc7_)
               {
                  if(!(_loc7_ && Boolean(param1)))
                  {
                     _loc4_ = 0;
                     if(_loc6_ || Boolean(_loc2_))
                     {
                        addr00b7:
                        _loc5_ = this._eventManager.questBook.quests;
                        while(true)
                        {
                           §§push(§§hasnext(_loc5_,_loc4_));
                           break loop0;
                        }
                        addr010c:
                        addr0105:
                     }
                  }
                  return null;
               }
               §§goto(addr00b7);
            }
            §§goto(addr010c);
         }
         while(§§pop())
         {
            _loc3_ = §§nextvalue(_loc4_,_loc5_);
            if(!(_loc7_ && Boolean(param1)))
            {
               if(_loc3_.id == param1)
               {
                  if(!(_loc7_ && Boolean(_loc3_)))
                  {
                     return _loc3_;
                  }
               }
            }
            §§goto(addr0105);
         }
         §§goto(addr010c);
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
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc4_:QuestChallengeDTO = null;
         var _loc3_:QuestPlayerVo = this.getQuestByID(param1);
         if(_loc8_ || Boolean(this))
         {
            if(_loc3_ == null)
            {
               if(!(_loc7_ && Boolean(param1)))
               {
                  §§push(-1);
                  if(!_loc7_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr005e:
                  §§push(0);
               }
               for each(_loc4_ in _loc3_.challenges)
               {
                  if(_loc4_.elementState == param2)
                  {
                     if(_loc8_ || Boolean(param1))
                     {
                        return _loc4_.config.id;
                     }
                  }
               }
               return -1;
            }
         }
         §§goto(addr005e);
      }
      
      public function get bridgeRepairQuestActive() : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:IQuestPlayerVo = null;
         var _loc2_:int = 0;
         var _loc3_:* = this._questManager.questBook.currentQuests;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc5_)
               {
                  if(_loc1_.config.localizationIdentifier != "1960")
                  {
                     continue;
                  }
                  if(_loc5_)
                  {
                     §§push(_loc1_.state);
                     if(_loc5_ || Boolean(_loc2_))
                     {
                        §§push(QuestSystemStateConst.VALID);
                        if(!_loc4_)
                        {
                           §§push(§§pop() == §§pop());
                           if(!_loc4_)
                           {
                              var _temp_3:* = §§pop();
                              §§push(_temp_3);
                              if(!_temp_3)
                              {
                                 if(_loc5_)
                                 {
                                    addr008c:
                                    §§pop();
                                    if(_loc4_ && Boolean(_loc2_))
                                    {
                                       continue;
                                    }
                                    addr00b2:
                                    addr00ac:
                                    addr00a8:
                                    §§push(_loc1_.state == QuestSystemStateConst.DONE);
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                 }
                              }
                              if(§§pop())
                              {
                                 if(_loc5_)
                                 {
                                    addr00c3:
                                    §§push(true);
                                    break;
                                 }
                              }
                              continue;
                           }
                           §§goto(addr008c);
                        }
                        §§goto(addr00b2);
                     }
                     §§goto(addr00ac);
                  }
                  §§goto(addr00c3);
               }
               §§goto(addr00a8);
            }
            return false;
         }
         return §§pop();
      }
      
      public function get getBridgeRepairQuestId() : Number
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:IQuestPlayerVo = null;
         var _loc2_:int = 0;
         var _loc3_:* = this._questManager.questBook.currentQuests;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc4_)
               {
                  break;
               }
               if(_loc1_.config.localizationIdentifier != "1960")
               {
                  continue;
               }
               if(!_loc5_)
               {
                  break;
               }
               §§push(_loc1_.state);
               if(!_loc4_)
               {
                  §§push(QuestSystemStateConst.VALID);
                  if(!_loc4_)
                  {
                     §§push(§§pop() == §§pop());
                     if(_loc5_)
                     {
                        var _temp_2:* = §§pop();
                        §§push(_temp_2);
                        if(!_temp_2)
                        {
                           if(_loc5_ || Boolean(this))
                           {
                              §§pop();
                              if(!(_loc5_ || Boolean(this)))
                              {
                                 break;
                              }
                              addr00b1:
                              addr00ab:
                              §§push(_loc1_.state == QuestSystemStateConst.DONE);
                           }
                        }
                     }
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                     }
                     continue;
                  }
                  §§goto(addr00b1);
               }
               §§goto(addr00ab);
            }
            return 0;
         }
         return _loc1_.id;
      }
      
      public function getActiveQuestByLocaleIdentifier(param1:String) : Boolean
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:IQuestPlayerVo = null;
         var _loc3_:int = 0;
         var _loc4_:* = this._questManager.questBook.currentQuests;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc6_)
               {
                  if(_loc2_.config.localizationIdentifier != param1)
                  {
                     continue;
                  }
                  if(_loc5_ || Boolean(_loc3_))
                  {
                     §§push(_loc2_.state);
                     if(!(_loc6_ && Boolean(_loc3_)))
                     {
                        §§push(QuestSystemStateConst.VALID);
                        if(_loc5_ || Boolean(param1))
                        {
                           §§push(§§pop() == §§pop());
                           if(!_loc5_)
                           {
                              break;
                           }
                           var _temp_4:* = §§pop();
                           §§push(_temp_4);
                           if(!_temp_4)
                           {
                              if(!(_loc6_ && Boolean(param1)))
                              {
                                 §§pop();
                                 if(_loc6_ && Boolean(_loc3_))
                                 {
                                    continue;
                                 }
                                 addr00c9:
                                 addr00c3:
                                 addr00bf:
                                 §§push(_loc2_.state == QuestSystemStateConst.DONE);
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                              }
                           }
                           if(§§pop())
                           {
                              if(!_loc6_)
                              {
                                 addr00da:
                                 §§push(true);
                                 break;
                              }
                           }
                           continue;
                        }
                        §§goto(addr00c9);
                     }
                     §§goto(addr00c3);
                  }
                  §§goto(addr00da);
               }
               §§goto(addr00bf);
            }
            return false;
         }
         return §§pop();
      }
      
      public function getActiveQuestIdByLocaleIdentifier(param1:String) : Number
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:IQuestPlayerVo = null;
         var _loc3_:int = 0;
         var _loc4_:* = this._questManager.questBook.currentQuests;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc5_ && Boolean(this))
               {
                  break;
               }
               if(_loc2_.config.localizationIdentifier != param1)
               {
                  continue;
               }
               if(!(_loc6_ || Boolean(this)))
               {
                  continue;
               }
               §§push(_loc2_.state);
               if(_loc6_ || Boolean(param1))
               {
                  §§push(QuestSystemStateConst.VALID);
                  if(_loc6_ || Boolean(param1))
                  {
                     §§push(§§pop() == §§pop());
                     if(!(_loc5_ && Boolean(_loc2_)))
                     {
                        var _temp_7:* = §§pop();
                        §§push(_temp_7);
                        if(!_temp_7)
                        {
                           if(!(_loc5_ && Boolean(param1)))
                           {
                              addr00b5:
                              §§pop();
                              if(_loc5_)
                              {
                                 break;
                              }
                              addr00d4:
                              addr00ce:
                              §§push(_loc2_.state == QuestSystemStateConst.DONE);
                           }
                        }
                        if(§§pop())
                        {
                           if(!(_loc5_ && Boolean(_loc3_)))
                           {
                              break;
                           }
                        }
                        continue;
                     }
                     §§goto(addr00b5);
                  }
                  §§goto(addr00d4);
               }
               §§goto(addr00ce);
            }
            return 0;
         }
         return _loc2_.id;
      }
   }
}

