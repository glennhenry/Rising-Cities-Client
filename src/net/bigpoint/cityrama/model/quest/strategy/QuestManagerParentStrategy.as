package net.bigpoint.cityrama.model.quest.strategy
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.quest.QuestSystemStateConst;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.preloader.CvTagProxy;
   import net.bigpoint.cityrama.model.quest.vo.QuestBookVo;
   import net.bigpoint.cityrama.model.server.vo.server.AbstractQuestSystemConfigDTO;
   import net.bigpoint.cityrama.model.server.vo.server.QuestCompleteCostVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestPlayerVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestTaskDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.interfaces.IQuestPlayerVo;
   import net.bigpoint.cityrama.model.server.vo.server.quest.QuestTaskConfigDTO;
   import org.puremvc.as3.interfaces.IFacade;
   
   public class QuestManagerParentStrategy implements IQuestManagerStrategy
   {
      
      protected var _facade:IFacade;
      
      protected var _questBook:QuestBookVo;
      
      protected var _cvTagProxy:CvTagProxy;
      
      private var _gameConfigProxy:GameConfigProxy;
      
      protected var _playerProxy:PlayerProxy;
      
      protected var _tempTasks:Vector.<QuestTaskDTO>;
      
      protected var _playfieldProxy:PlayfieldProxy;
      
      public function QuestManagerParentStrategy()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
      
      public function updateTask(param1:Number, param2:String, param3:Number, param4:Number, param5:QuestCompleteCostVo) : void
      {
         var _temp_1:* = true;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = _temp_1;
         var _loc7_:QuestPlayerVo = null;
         var _loc8_:QuestTaskDTO = null;
         var _loc6_:* = false;
         var _loc9_:int = 0;
         var _loc10_:* = this._questBook.quests;
         do
         {
            for each(_loc7_ in _loc10_)
            {
               §§push(_loc7_.id);
               if(!_loc13_)
               {
                  §§push(§§pop() == param4);
                  if(!_loc13_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     if(!_temp_3)
                     {
                        if(_loc14_)
                        {
                           addr005e:
                           §§pop();
                           if(_loc13_)
                           {
                              break;
                           }
                           §§push(param4 == 0);
                           if(!_loc14_)
                           {
                              continue;
                           }
                        }
                     }
                     if(§§pop())
                     {
                        if(_loc13_)
                        {
                           break;
                        }
                        addr007c:
                        for each(_loc8_ in _loc7_.tasks)
                        {
                           if(_loc8_.taskConfig.id != param1)
                           {
                              continue;
                           }
                           if(!_loc13_)
                           {
                              if(_loc8_.currentValue != param3)
                              {
                                 if(!(_loc13_ && Boolean(param2)))
                                 {
                                    _loc8_.currentValue = param3;
                                    if(_loc14_ || Boolean(param3))
                                    {
                                       §§push(true);
                                       if(_loc14_)
                                       {
                                          _loc6_ = §§pop();
                                          if(_loc14_)
                                          {
                                             addr00e1:
                                             §§push(param5 == null);
                                             if(!(_loc13_ && Boolean(param2)))
                                             {
                                                §§push(!§§pop());
                                                if(_loc14_ || Boolean(param3))
                                                {
                                                   addr010d:
                                                   var _temp_9:* = §§pop();
                                                   §§push(_temp_9);
                                                   if(_temp_9)
                                                   {
                                                      if(_loc14_ || Boolean(param3))
                                                      {
                                                         §§pop();
                                                         if(_loc14_)
                                                         {
                                                            §§push(_loc8_.questCompleteCostVo == param5);
                                                            if(_loc14_ || Boolean(param2))
                                                            {
                                                               addr013d:
                                                               §§push(!§§pop());
                                                               if(_loc14_ || Boolean(param1))
                                                               {
                                                                  addr014c:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc14_)
                                                                     {
                                                                        _loc8_.questCompleteCostVo = param5;
                                                                        if(!(_loc13_ && Boolean(param3)))
                                                                        {
                                                                           addr016b:
                                                                           if(_loc8_.elementState != param2)
                                                                           {
                                                                              if(!(_loc13_ && Boolean(param2)))
                                                                              {
                                                                                 addr0183:
                                                                                 _loc8_.elementState = param2;
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    addr018f:
                                                                                    §§push(true);
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       addr0196:
                                                                                       _loc6_ = §§pop();
                                                                                       if(!(_loc13_ && Boolean(param2)))
                                                                                       {
                                                                                          addr01a8:
                                                                                          addr01a6:
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(_loc13_ && Boolean(this))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                       }
                                                                                       addr01c8:
                                                                                       this._facade.sendNotification(ApplicationNotificationConstants.QUEST_STATE_CHANGED);
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr01a8);
                                                                                 }
                                                                                 §§goto(addr01c8);
                                                                              }
                                                                              §§goto(addr018f);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr01a6);
                                                                  }
                                                                  §§goto(addr016b);
                                                               }
                                                            }
                                                            §§goto(addr01a8);
                                                         }
                                                         §§goto(addr01a6);
                                                      }
                                                      §§goto(addr013d);
                                                   }
                                                   §§goto(addr014c);
                                                }
                                                §§goto(addr01a8);
                                             }
                                             §§goto(addr0196);
                                          }
                                          §§goto(addr018f);
                                       }
                                       §§goto(addr010d);
                                    }
                                    §§goto(addr018f);
                                 }
                                 §§goto(addr016b);
                              }
                              §§goto(addr00e1);
                           }
                           §§goto(addr0183);
                        }
                     }
                     §§push(_loc6_);
                     continue;
                  }
                  §§goto(addr005e);
               }
               §§goto(addr007c);
            }
            break;
         }
         while(!§§pop());
         
      }
      
      public function updateQuestState(param1:Number, param2:String, param3:Number, param4:Boolean = false) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(_loc6_)
         {
            §§push(param2);
            if(_loc6_)
            {
               §§push(QuestSystemStateConst.DELETED);
               if(!(_loc7_ && Boolean(param3)))
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc7_ && Boolean(param1)))
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     if(!_temp_3)
                     {
                        if(!(_loc7_ && Boolean(param2)))
                        {
                           §§pop();
                           if(!_loc7_)
                           {
                              addr0067:
                              addr0066:
                              addr0060:
                              if(param2 == QuestSystemStateConst.CANCELLED)
                              {
                                 if(!_loc7_)
                                 {
                                    §§push(this._questBook);
                                    if(!_loc7_)
                                    {
                                       §§push(param1);
                                       if(!(_loc7_ && Boolean(param2)))
                                       {
                                          §§pop().deleteQuestById(§§pop());
                                          if(!_loc7_)
                                          {
                                             this._facade.sendNotification(ApplicationNotificationConstants.QUEST_DELETED);
                                             if(_loc7_)
                                             {
                                             }
                                          }
                                       }
                                       else
                                       {
                                          addr00c5:
                                          §§pop().updateQuestStateById(§§pop(),param2,param3);
                                       }
                                       addr00cc:
                                       addr00d0:
                                       §§push(this._questBook);
                                       §§push(param1);
                                    }
                                    else
                                    {
                                       addr00be:
                                       §§push(param1);
                                       if(!_loc7_)
                                       {
                                          §§goto(addr00c5);
                                       }
                                    }
                                    var _loc5_:QuestPlayerVo = §§pop().getQuestsById(§§pop());
                                    if(_loc6_)
                                    {
                                       §§push(param4);
                                       if(_loc6_)
                                       {
                                          §§push(!§§pop());
                                          if(!(_loc7_ && Boolean(param1)))
                                          {
                                             var _temp_7:* = §§pop();
                                             §§push(_temp_7);
                                             §§push(_temp_7);
                                             if(!(_loc7_ && Boolean(param1)))
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      §§pop();
                                                      if(_loc6_ || Boolean(this))
                                                      {
                                                         addr012b:
                                                         §§push(_loc5_ == null);
                                                         if(_loc6_ || Boolean(this))
                                                         {
                                                            §§push(!§§pop());
                                                            if(!_loc7_)
                                                            {
                                                               addr0144:
                                                               var _temp_11:* = §§pop();
                                                               §§push(_temp_11);
                                                               §§push(_temp_11);
                                                               if(_loc6_)
                                                               {
                                                                  addr014b:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        §§pop();
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§push(param2);
                                                                           if(_loc6_ || Boolean(param2))
                                                                           {
                                                                              §§push(QuestSystemStateConst.DONE);
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§push(§§pop() == §§pop());
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    addr017e:
                                                                                    var _temp_13:* = §§pop();
                                                                                    addr017f:
                                                                                    §§push(_temp_13);
                                                                                    if(_temp_13)
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          §§goto(addr0189);
                                                                                       }
                                                                                       §§goto(addr01b8);
                                                                                    }
                                                                                    §§goto(addr01b9);
                                                                                 }
                                                                                 §§goto(addr01b8);
                                                                              }
                                                                              §§goto(addr01e3);
                                                                           }
                                                                           §§goto(addr01dd);
                                                                        }
                                                                        §§goto(addr0190);
                                                                     }
                                                                     §§goto(addr01b9);
                                                                  }
                                                                  §§goto(addr017e);
                                                               }
                                                               §§goto(addr017f);
                                                            }
                                                         }
                                                         addr0189:
                                                         §§pop();
                                                         if(_loc6_)
                                                         {
                                                            addr01b9:
                                                            addr0190:
                                                            §§push(_loc5_.questDto.rewardList.length == 0);
                                                            if(_loc6_ || Boolean(param1))
                                                            {
                                                               addr01b8:
                                                               §§push(!§§pop());
                                                            }
                                                            if(§§pop())
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  this._facade.sendNotification(ApplicationNotificationConstants.QUEST_REWARD_OPEN,_loc5_);
                                                                  if(_loc7_)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr01e3:
                                                               addr01dd:
                                                               if(param2 == QuestSystemStateConst.DONE)
                                                               {
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr01e7);
                                                      }
                                                      addr01e7:
                                                      return;
                                                   }
                                                   §§goto(addr01b8);
                                                }
                                                §§goto(addr0144);
                                             }
                                             §§goto(addr014b);
                                          }
                                          §§goto(addr0144);
                                       }
                                       §§goto(addr017e);
                                    }
                                    §§goto(addr012b);
                                 }
                                 §§goto(addr00cc);
                              }
                              else
                              {
                                 §§push(this._questBook);
                                 if(_loc6_ || Boolean(param2))
                                 {
                                    §§goto(addr00be);
                                 }
                              }
                              §§goto(addr00d0);
                           }
                           §§goto(addr00cc);
                        }
                     }
                  }
                  §§goto(addr0067);
               }
               §§goto(addr0066);
            }
            §§goto(addr0060);
         }
         §§goto(addr00cc);
      }
      
      public function set questBook(param1:QuestBookVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            this._questBook = param1;
         }
      }
      
      public function get questBook() : QuestBookVo
      {
         return this._questBook;
      }
      
      public function addQuest(param1:QuestDTO) : IQuestPlayerVo
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:AbstractQuestSystemConfigDTO = null;
         var _loc2_:QuestPlayerVo = new QuestPlayerVo(param1,this.gameConfigProxy,this.cvTagProxy,this.playerProxy,this.playfieldProxy);
         if(!(_loc7_ && Boolean(param1)))
         {
            if(_loc2_.tasks.length < _loc2_.config.downstreamQuestElements.length)
            {
               if(_loc6_ || Boolean(_loc3_))
               {
                  addr0073:
                  this._tempTasks = new Vector.<QuestTaskDTO>();
               }
               for each(_loc3_ in _loc2_.config.downstreamQuestElements)
               {
                  if(!_loc7_)
                  {
                     this.gatherDownStreamElementsRecursive(_loc3_);
                  }
               }
               if(_loc6_)
               {
                  _loc2_.tasks = this._tempTasks;
                  if(_loc6_)
                  {
                     addr00d9:
                     this._questBook.add(_loc2_);
                     if(!_loc7_)
                     {
                        addr00e8:
                        this._facade.sendNotification(ApplicationNotificationConstants.QUEST_NEW_ADDED,_loc2_);
                     }
                  }
                  return _loc2_;
               }
               §§goto(addr00e8);
            }
            §§goto(addr00d9);
         }
         §§goto(addr0073);
      }
      
      private function gatherDownStreamElementsRecursive(param1:AbstractQuestSystemConfigDTO) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:AbstractQuestSystemConfigDTO = null;
         if(_loc6_)
         {
            this._tempTasks.push(new QuestTaskDTO(null,param1 as QuestTaskConfigDTO));
            if(_loc6_)
            {
               if(param1.downstreamQuestElements.length != 0)
               {
                  addr0053:
                  var _loc3_:int = 0;
                  for each(_loc2_ in param1.downstreamQuestElements)
                  {
                     if(!(_loc5_ && Boolean(_loc3_)))
                     {
                        this.gatherDownStreamElementsRecursive(_loc2_);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr0053);
      }
      
      public function prepare(param1:IFacade, param2:GameConfigProxy, param3:CvTagProxy, param4:PlayerProxy, param5:PlayfieldProxy) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(!_loc7_)
         {
            this._facade = param1;
            if(!(_loc7_ && Boolean(param1)))
            {
               this._gameConfigProxy = param2;
               if(!_loc7_)
               {
                  §§goto(addr0054);
               }
            }
            §§goto(addr0073);
         }
         addr0054:
         this._cvTagProxy = param3;
         if(_loc6_ || Boolean(this))
         {
            this._playerProxy = param4;
            if(!_loc7_)
            {
               addr0073:
               this._playfieldProxy = param5;
            }
         }
      }
      
      protected function get facade() : IFacade
      {
         return this._facade;
      }
      
      protected function get cvTagProxy() : CvTagProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this._cvTagProxy);
            if(!_loc1_)
            {
               if(§§pop() == null)
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     this._cvTagProxy = this.facade.retrieveProxy(CvTagProxy.NAME) as CvTagProxy;
                  }
               }
               addr0058:
               return this._cvTagProxy;
            }
         }
         §§goto(addr0058);
      }
      
      protected function get gameConfigProxy() : GameConfigProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            §§push(this._gameConfigProxy);
            if(!_loc1_)
            {
               if(§§pop() == null)
               {
                  if(!(_loc1_ && Boolean(this)))
                  {
                     this._gameConfigProxy = this._facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                  }
               }
               addr0055:
               return this._gameConfigProxy;
            }
         }
         §§goto(addr0055);
      }
      
      protected function get playerProxy() : PlayerProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            §§push(this._playerProxy);
            if(_loc1_)
            {
               if(§§pop() == null)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0042:
                     this._playerProxy = this._facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
                  }
               }
               return this._playerProxy;
            }
         }
         §§goto(addr0042);
      }
      
      protected function get playfieldProxy() : PlayfieldProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._playfieldProxy);
            if(!_loc1_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_)
                  {
                     addr0033:
                     this._playfieldProxy = this._facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
                  }
               }
               return this._playfieldProxy;
            }
         }
         §§goto(addr0033);
      }
   }
}

