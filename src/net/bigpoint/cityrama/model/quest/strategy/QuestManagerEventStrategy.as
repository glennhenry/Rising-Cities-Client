package net.bigpoint.cityrama.model.quest.strategy
{
   import com.greensock.TweenMax;
   import flash.utils.getTimer;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.preloader.CvTagProxy;
   import net.bigpoint.cityrama.model.server.vo.server.AbstractQuestSystemConfigDTO;
   import net.bigpoint.cityrama.model.server.vo.server.QuestCompleteCostVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestChallengeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestEventPlayerVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestTaskDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.interfaces.IQuestPlayerVo;
   import net.bigpoint.cityrama.model.server.vo.server.quest.QuestChallengeConfigDTO;
   import net.bigpoint.cityrama.model.server.vo.server.quest.QuestTaskConfigDTO;
   import org.puremvc.as3.interfaces.IFacade;
   
   public class QuestManagerEventStrategy extends QuestManagerParentStrategy
   {
      
      private var _tempChallenges:Vector.<QuestChallengeDTO>;
      
      private var _lastChange:int = -1;
      
      public function QuestManagerEventStrategy()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      override public function updateTask(param1:Number, param2:String, param3:Number, param4:Number, param5:QuestCompleteCostVo) : void
      {
         var _temp_1:* = true;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = _temp_1;
         var _loc7_:QuestEventPlayerVo = null;
         var _loc8_:QuestChallengeDTO = null;
         var _loc9_:QuestTaskDTO = null;
         var _loc6_:* = false;
         var _loc10_:int = 0;
         var _loc11_:* = _questBook.quests;
         do
         {
            for each(_loc7_ in _loc11_)
            {
               §§push(_loc7_.id == param4);
               if(_loc17_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(!_temp_3)
                  {
                     if(!_loc16_)
                     {
                        §§pop();
                        if(_loc16_ && Boolean(param2))
                        {
                           break;
                        }
                        §§push(param4 == 0);
                        if(_loc16_)
                        {
                           continue;
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc16_ && Boolean(param3))
                     {
                        break;
                     }
                     var _loc12_:int = 0;
                     if(!(_loc16_ && Boolean(param1)))
                     {
                        for each(_loc8_ in _loc7_.challenges)
                        {
                           for each(_loc9_ in _loc8_.tasks)
                           {
                              if(_loc9_.taskConfig.id != param1)
                              {
                                 continue;
                              }
                              if(!_loc16_)
                              {
                                 if(_loc9_.currentValue != param3)
                                 {
                                    if(_loc17_)
                                    {
                                       _loc9_.currentValue = param3;
                                       if(_loc17_ || Boolean(this))
                                       {
                                          §§push(true);
                                          if(_loc17_)
                                          {
                                             _loc6_ = §§pop();
                                             if(!_loc16_)
                                             {
                                                addr011d:
                                                §§push(param5 == null);
                                                if(_loc17_)
                                                {
                                                   §§push(!§§pop());
                                                   if(_loc17_ || Boolean(param1))
                                                   {
                                                      var _temp_10:* = §§pop();
                                                      §§push(_temp_10);
                                                      if(_temp_10)
                                                      {
                                                         if(!_loc16_)
                                                         {
                                                            addr0141:
                                                            §§pop();
                                                            if(_loc17_)
                                                            {
                                                               §§push(_loc9_.questCompleteCostVo == param5);
                                                               if(!_loc16_)
                                                               {
                                                                  §§push(!§§pop());
                                                                  if(_loc17_ || Boolean(param3))
                                                                  {
                                                                     addr0165:
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc16_)
                                                                        {
                                                                           addr016f:
                                                                           _loc9_.questCompleteCostVo = param5;
                                                                           if(!_loc16_)
                                                                           {
                                                                              addr017c:
                                                                              if(_loc9_.elementState != param2)
                                                                              {
                                                                                 if(_loc17_ || Boolean(this))
                                                                                 {
                                                                                    addr0194:
                                                                                    _loc9_.elementState = param2;
                                                                                    if(!(_loc17_ || Boolean(param1)))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(true);
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       addr01af:
                                                                                       _loc6_ = §§pop();
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                          addr01b9:
                                                                                          addr01b7:
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(!(_loc16_ && Boolean(param2)))
                                                                                          {
                                                                                             if(getTimer() - this._lastChange < 500)
                                                                                             {
                                                                                                if(_loc17_ || Boolean(this))
                                                                                                {
                                                                                                   addr01ec:
                                                                                                   TweenMax.killDelayedCallsTo(this.sendChangeDelayed);
                                                                                                   if(!(_loc16_ && Boolean(param3)))
                                                                                                   {
                                                                                                      addr0204:
                                                                                                      TweenMax.delayedCall(0.5,this.sendChangeDelayed);
                                                                                                      if(!_loc17_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr0216:
                                                                                                this._lastChange = getTimer();
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr0204);
                                                                                          }
                                                                                          §§goto(addr0216);
                                                                                       }
                                                                                       §§goto(addr01ec);
                                                                                    }
                                                                                    §§goto(addr01b9);
                                                                                 }
                                                                                 §§goto(addr0204);
                                                                              }
                                                                              §§goto(addr01b7);
                                                                           }
                                                                           §§goto(addr0194);
                                                                        }
                                                                        §§goto(addr0204);
                                                                     }
                                                                     §§goto(addr017c);
                                                                  }
                                                                  §§goto(addr01af);
                                                               }
                                                               §§goto(addr0165);
                                                            }
                                                            §§goto(addr016f);
                                                         }
                                                      }
                                                      §§goto(addr0165);
                                                   }
                                                }
                                                §§goto(addr01b9);
                                             }
                                             §§goto(addr0216);
                                          }
                                          §§goto(addr0141);
                                       }
                                       §§goto(addr0216);
                                    }
                                    §§goto(addr0204);
                                 }
                                 §§goto(addr011d);
                              }
                              §§goto(addr01ec);
                           }
                        }
                     }
                     if(_loc16_ && Boolean(param3))
                     {
                        break;
                     }
                  }
                  §§push(_loc6_);
               }
            }
            break;
         }
         while(!§§pop());
         
      }
      
      private function sendChangeDelayed() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            _facade.sendNotification(ApplicationNotificationConstants.EVENT_QUEST_STATE_CHANGED);
         }
      }
      
      override public function updateQuestState(param1:Number, param2:String, param3:Number, param4:Boolean = false) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(_loc5_ || Boolean(this))
         {
            super.updateQuestState(param1,param2,param3,param4);
         }
      }
      
      public function getChallengeByCid(param1:Number) : QuestChallengeDTO
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:QuestEventPlayerVo = null;
         var _loc3_:QuestChallengeDTO = null;
         for each(_loc2_ in _questBook.quests)
         {
            if(!(_loc9_ && Boolean(param1)))
            {
               var _loc6_:int = 0;
               if(_loc8_ || Boolean(_loc2_))
               {
                  for each(_loc3_ in _loc2_.challenges)
                  {
                     if(!(_loc9_ && Boolean(param1)))
                     {
                        if(param1 != _loc3_.config.id)
                        {
                           continue;
                        }
                        if(!_loc8_)
                        {
                           continue;
                        }
                     }
                     return _loc3_;
                  }
               }
            }
         }
         return null;
      }
      
      public function updateChallenge(param1:QuestChallengeDTO) : QuestEventPlayerVo
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc2_:QuestEventPlayerVo = null;
         var _loc3_:QuestChallengeDTO = null;
         for each(_loc2_ in _questBook.quests)
         {
            if(_loc9_ || Boolean(_loc3_))
            {
               var _loc6_:int = 0;
               if(!(_loc8_ && Boolean(_loc2_)))
               {
                  for each(_loc3_ in _loc2_.challenges)
                  {
                     if(!(_loc8_ && Boolean(this)))
                     {
                        if(param1.config.id == _loc3_.config.id)
                        {
                           if(!(_loc8_ && Boolean(param1)))
                           {
                              if(_loc3_.elementState == param1.elementState)
                              {
                                 continue;
                              }
                              if(_loc9_)
                              {
                                 addr00b5:
                                 _loc3_.elementState = param1.elementState;
                                 if(_loc9_)
                                 {
                                    addr00d1:
                                    this.facade.sendNotification(ApplicationNotificationConstants.EVENTS_CHANGED);
                                    if(!(_loc9_ || Boolean(this)))
                                    {
                                       continue;
                                    }
                                 }
                                 §§goto(addr00ec);
                              }
                              §§goto(addr00d1);
                           }
                           addr00ec:
                        }
                        continue;
                        return _loc2_;
                     }
                     §§goto(addr00b5);
                  }
               }
            }
         }
         return null;
      }
      
      override public function addQuest(param1:QuestDTO) : IQuestPlayerVo
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:AbstractQuestSystemConfigDTO = null;
         var _loc2_:QuestEventPlayerVo = new QuestEventPlayerVo(param1,this.gameConfigProxy,this.cvTagProxy,this.playerProxy,playfieldProxy);
         if(_loc7_)
         {
            if(this.newQuestMustBeBuild(_loc2_))
            {
               if(_loc7_ || Boolean(_loc3_))
               {
                  this._tempChallenges = _loc2_.challenges;
               }
               addr0060:
               for each(_loc3_ in _loc2_.config.downstreamQuestElements)
               {
                  if(_loc7_)
                  {
                     this.buildChallenges(_loc3_);
                  }
               }
               if(!_loc6_)
               {
                  _loc2_.challenges = this._tempChallenges;
                  if(_loc7_)
                  {
                     this._tempChallenges = new Vector.<QuestChallengeDTO>();
                     if(_loc7_)
                     {
                        _tempTasks = new Vector.<QuestTaskDTO>(0);
                        if(_loc7_)
                        {
                           addr00e4:
                           _questBook.add(_loc2_);
                           if(_loc7_)
                           {
                              addr00f2:
                              if(getTimer() - this._lastChange < 500)
                              {
                                 if(_loc7_)
                                 {
                                    addr0117:
                                    TweenMax.killDelayedCallsTo(this.sendChangeDelayed);
                                    if(_loc7_ || Boolean(this))
                                    {
                                       addr012f:
                                       TweenMax.delayedCall(0.5,this.sendChangeDelayed);
                                       if(!_loc6_)
                                       {
                                          addr0141:
                                          this._lastChange = getTimer();
                                       }
                                       §§goto(addr014c);
                                    }
                                    §§goto(addr0141);
                                 }
                                 §§goto(addr014c);
                              }
                              §§goto(addr012f);
                           }
                        }
                        §§goto(addr0117);
                     }
                     addr014c:
                     return _loc2_;
                  }
                  §§goto(addr00f2);
               }
               §§goto(addr0117);
            }
            §§goto(addr00e4);
         }
         §§goto(addr0060);
      }
      
      private function newQuestMustBeBuild(param1:QuestEventPlayerVo) : Boolean
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:QuestChallengeDTO = null;
         if(!(_loc6_ && _loc3_))
         {
            if(param1.challenges.length != param1.config.downstreamQuestElements.length)
            {
               if(_loc5_)
               {
                  §§goto(addr004e);
               }
            }
            for each(_loc2_ in param1.challenges)
            {
               if(_loc5_)
               {
                  if(_loc2_.tasks.length != _loc2_.config.downstreamQuestElements.length)
                  {
                     if(!_loc6_)
                     {
                        return true;
                     }
                  }
               }
            }
            return false;
         }
         addr004e:
         return true;
      }
      
      private function buildChallenges(param1:AbstractQuestSystemConfigDTO) : void
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc2_:QuestChallengeDTO = null;
         var _loc3_:AbstractQuestSystemConfigDTO = null;
         var _loc4_:Boolean = false;
         var _loc5_:QuestChallengeDTO = null;
         _loc2_ = new QuestChallengeDTO(null,param1 as QuestChallengeConfigDTO);
         if(_loc9_)
         {
            _tempTasks = new Vector.<QuestTaskDTO>(0);
         }
         var _loc6_:int = 0;
         var _loc7_:* = _loc2_.config.downstreamQuestElements;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc7_,_loc6_));
            if(_loc8_ && Boolean(_loc2_))
            {
               break;
            }
            if(§§pop())
            {
               _loc3_ = §§nextvalue(_loc6_,_loc7_);
               if(_loc9_)
               {
                  this.gatherDownStreamElementsRecursive(_loc3_);
               }
               continue;
            }
            if(_loc9_)
            {
               if(!(_loc8_ && Boolean(_loc2_)))
               {
                  if(_loc9_ || Boolean(this))
                  {
                     _loc2_.tasks = _tempTasks;
                     if(!(_loc8_ && Boolean(param1)))
                     {
                        addr00d8:
                        _loc4_ = false;
                     }
                     _loc6_ = 0;
                     addr00df:
                     _loc7_ = this._tempChallenges;
                     while(true)
                     {
                        §§push(§§hasnext(_loc7_,_loc6_));
                        break loop0;
                     }
                     addr0148:
                     if(_loc9_ || Boolean(_loc3_))
                     {
                        if(!_loc4_)
                        {
                           if(_loc9_ || Boolean(_loc2_))
                           {
                              this._tempChallenges.push(_loc2_);
                           }
                        }
                     }
                     return;
                     addr0136:
                  }
                  §§goto(addr00d8);
               }
               §§goto(addr00df);
            }
            §§goto(addr0148);
         }
         while(§§pop())
         {
            _loc5_ = §§nextvalue(_loc6_,_loc7_);
            if(_loc5_.config.id == _loc2_.config.id)
            {
               if(_loc9_)
               {
                  if(_loc5_.tasks.length != _loc2_.tasks.length)
                  {
                     if(_loc9_)
                     {
                        addr0120:
                        _loc5_.tasks = _loc2_.tasks;
                        if(!_loc9_)
                        {
                           break;
                        }
                     }
                  }
                  _loc4_ = true;
                  break;
               }
               §§goto(addr0120);
            }
            else
            {
               §§goto(addr0136);
            }
         }
         §§goto(addr0148);
      }
      
      private function gatherDownStreamElementsRecursive(param1:AbstractQuestSystemConfigDTO) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:AbstractQuestSystemConfigDTO = null;
         if(!(_loc5_ && _loc3_))
         {
            _tempTasks.push(new QuestTaskDTO(null,param1 as QuestTaskConfigDTO));
            if(!(_loc5_ && Boolean(_loc2_)))
            {
               §§goto(addr0057);
            }
            §§goto(addr0071);
         }
         addr0057:
         if(param1.downstreamQuestElements.length != 0)
         {
            addr0071:
            for each(_loc2_ in param1.downstreamQuestElements)
            {
               if(_loc6_)
               {
                  this.gatherDownStreamElementsRecursive(_loc2_);
               }
            }
         }
      }
      
      override public function prepare(param1:IFacade, param2:GameConfigProxy, param3:CvTagProxy, param4:PlayerProxy, param5:PlayfieldProxy) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(_loc6_)
         {
            super.prepare(param1,param2,param3,param4,param5);
         }
      }
      
      override protected function get facade() : IFacade
      {
         return super.facade;
      }
      
      override protected function get cvTagProxy() : CvTagProxy
      {
         return super.cvTagProxy;
      }
      
      override protected function get gameConfigProxy() : GameConfigProxy
      {
         return super.gameConfigProxy;
      }
      
      override protected function get playerProxy() : PlayerProxy
      {
         return super.playerProxy;
      }
   }
}

