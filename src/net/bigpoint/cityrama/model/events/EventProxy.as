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
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || EventProxy)
      {
         NAME = "EventProxy";
      }
      
      private var _qproxy:QuestProxy;
      
      private var _cproxy:GameConfigProxy;
      
      private var _timerProxy:TimerProxy;
      
      private var _gSP:PlayerGoodsStockProxy;
      
      private var _prpproxy:PlayerResourceProxy;
      
      public function EventProxy(param1:String = null, param2:Object = null)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(this))
         {
            super(param1,param2);
            if(_loc3_ || Boolean(param1))
            {
               addr0040:
               this._timerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
            }
            return;
         }
         §§goto(addr0040);
      }
      
      public function get targetAvailableTime() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            if(this.availableEventQuests.length)
            {
               if(!_loc2_)
               {
                  addr0036:
                  if(this.availableEventQuests[0])
                  {
                     if(_loc1_ || _loc2_)
                     {
                        return this.availableEventQuests[0].configDto.availabilityTimeStart + this.availableEventQuests[0].configDto.totalAvailabilityTime;
                     }
                  }
               }
            }
            return 0;
         }
         §§goto(addr0036);
      }
      
      public function get targetRunningTime() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            §§push(this.runningEventQuest);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr0046:
                     return this.runningEventQuest.quests[0].questDto.endTimeStamp;
                     addr0042:
                  }
               }
               return 0;
            }
            §§goto(addr0046);
         }
         §§goto(addr0042);
      }
      
      public function get allEventQuests() : Vector.<EventQuestVo>
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:IQuestPlayerVo = null;
         var _loc3_:EventQuestVo = null;
         var _loc1_:Vector.<EventQuestVo> = new Vector.<EventQuestVo>();
         for each(_loc2_ in this.questProxy.getAllQuestsByType(QuestSystemTypeConstants.EVENT))
         {
            if(!_loc7_)
            {
               if(_loc2_.state == QuestSystemStateConst.SUBMITTED)
               {
                  continue;
               }
            }
            _loc3_ = new EventQuestVo();
            if(_loc6_ || Boolean(_loc3_))
            {
               _loc3_.configDto = _loc2_.questDto.eventConfig;
               if(!(_loc6_ || Boolean(this)))
               {
                  continue;
               }
               _loc3_.quests.push(_loc2_);
               if(_loc7_ && Boolean(_loc1_))
               {
                  continue;
               }
            }
            _loc1_.push(_loc3_);
         }
         return _loc1_;
      }
      
      public function get availableEventQuests() : Vector.<EventQuestVo>
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:EventQuestVo = null;
         var _loc1_:Vector.<EventQuestVo> = new Vector.<EventQuestVo>();
         for each(_loc2_ in this.allEventQuests)
         {
            if(_loc6_)
            {
               if(_loc2_.currentState != QuestSystemStateConst.INACTIVE)
               {
                  continue;
               }
               if(!_loc6_)
               {
                  continue;
               }
            }
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function get runningEventQuest() : EventQuestVo
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc1_:EventQuestVo = null;
         var _loc3_:QuestPlayerVo = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.allEventQuests;
         while(true)
         {
            for each(_loc1_ in _loc5_)
            {
               if(!_loc6_)
               {
                  break;
               }
               if(_loc1_.currentState == QuestSystemStateConst.VALID)
               {
                  if(_loc6_ || Boolean(_loc2_))
                  {
                     break;
                  }
               }
               continue;
               return null;
            }
            if(_loc6_)
            {
               if(this.questProxy.getAllQuestsByType(QuestSystemTypeConstants.EVENT).length == 0)
               {
                  if(_loc6_)
                  {
                     §§goto(addr009b);
                  }
               }
               var _loc2_:EventQuestVo = new EventQuestVo();
               if(!(_loc7_ && Boolean(_loc2_)))
               {
                  _loc4_ = 0;
                  if(_loc6_)
                  {
                     for each(_loc3_ in this.questProxy.getAllQuestsByType(QuestSystemTypeConstants.EVENT))
                     {
                        if(_loc6_)
                        {
                           if(_loc3_.questDto.elementState == QuestSystemStateConst.VALID)
                           {
                              if(!(_loc7_ && Boolean(_loc1_)))
                              {
                                 _loc2_.quests.push(_loc3_);
                              }
                           }
                        }
                     }
                  }
                  if(!_loc7_)
                  {
                     if(_loc2_.quests.length == 0)
                     {
                        if(!(_loc7_ && Boolean(_loc2_)))
                        {
                           §§goto(addr0143);
                        }
                     }
                     return _loc2_;
                  }
               }
               addr0143:
               return null;
            }
            addr009b:
         }
         return _loc1_;
      }
      
      public function get expiredEventQuest() : EventQuestVo
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc1_:EventQuestVo = null;
         var _loc2_:EventQuestVo = null;
         var _loc3_:Boolean = false;
         var _loc4_:QuestPlayerVo = null;
         for each(_loc1_ in this.allEventQuests)
         {
            if(_loc8_)
            {
               if(_loc1_.currentState == QuestSystemStateConst.EXPIRED)
               {
                  if(!_loc7_)
                  {
                     return _loc1_;
                  }
               }
            }
         }
         _loc2_ = new EventQuestVo();
         if(_loc8_ || Boolean(this))
         {
            _loc3_ = false;
         }
         for each(_loc4_ in this.questProxy.getAllQuestsByType(QuestSystemTypeConstants.EVENT))
         {
            if(_loc4_.state == QuestSystemStateConst.EXPIRED)
            {
               if(!(_loc7_ && Boolean(this)))
               {
                  _loc2_.quests.push(_loc4_);
                  if(!_loc7_)
                  {
                     _loc3_ = true;
                  }
               }
               break;
            }
         }
         if(_loc8_ || Boolean(_loc1_))
         {
            if(_loc3_)
            {
               if(!_loc7_)
               {
                  return _loc2_;
               }
            }
         }
         return null;
      }
      
      public function get finishedEventQuest() : EventQuestVo
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc1_:EventQuestVo = null;
         var _loc3_:QuestPlayerVo = null;
         var _loc4_:QuestChallengeDTO = null;
         var _loc5_:int = 0;
         var _loc6_:* = this.allEventQuests;
         while(true)
         {
            for each(_loc1_ in _loc6_)
            {
               if(_loc10_)
               {
                  break;
               }
               if(_loc1_.currentState == QuestSystemStateConst.DONE)
               {
                  if(_loc9_)
                  {
                     break;
                  }
               }
               if(_loc1_.hasFinishedChallenge)
               {
                  if(!_loc10_)
                  {
                     return _loc1_;
                  }
               }
               continue;
               return null;
            }
            if(!_loc10_)
            {
               if(this.questProxy.getAllQuestsByType(QuestSystemTypeConstants.EVENT).length == 0)
               {
                  if(!_loc10_)
                  {
                     §§goto(addr00aa);
                  }
               }
               var _loc2_:EventQuestVo = new EventQuestVo();
               if(_loc9_)
               {
                  _loc5_ = 0;
                  if(_loc9_)
                  {
                     for each(_loc3_ in this.questProxy.getAllQuestsByType(QuestSystemTypeConstants.EVENT))
                     {
                        for each(_loc4_ in _loc3_.challenges)
                        {
                           if(_loc4_.elementState == QuestSystemStateConst.DONE)
                           {
                              if(!_loc10_)
                              {
                                 _loc2_.quests.push(_loc3_);
                              }
                              break;
                           }
                        }
                     }
                  }
                  if(_loc9_)
                  {
                     if(_loc2_.quests.length == 0)
                     {
                        if(!_loc10_)
                        {
                           return null;
                        }
                     }
                  }
               }
               return _loc2_;
            }
            addr00aa:
         }
         return _loc1_;
      }
      
      public function get availableEventQuestStartTime() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            if(this.availableEventQuests.length)
            {
               if(!(_loc1_ && Boolean(this)))
               {
                  return this.availableEventQuests[0].configDto.availabilityTimeStart;
               }
            }
         }
         return 0;
      }
      
      public function get runningEventQuestStartTime() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.runningEventQuest);
            if(!(_loc2_ && Boolean(this)))
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     §§goto(addr004f);
                  }
               }
               §§goto(addr0070);
            }
            addr004f:
            return this.runningEventQuest.quests[0].questDto.endTimeStamp - this.runningEventQuest.quests[0].config.runtimeFull;
         }
         addr0070:
         return 0;
      }
      
      public function get runningEventQuestTimeLeft() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.runningEventQuest);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§goto(addr003d);
                  }
               }
               §§goto(addr0054);
            }
            addr003d:
            return this.runningEventQuest.quests[0].questDto.endTimeStamp - this._timerProxy.currentTimeStamp;
         }
         addr0054:
         return 0;
      }
      
      public function get availableEventQuestTotalDuration() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            if(this.availableEventQuests.length)
            {
               if(!_loc2_)
               {
                  return this.availableEventQuests[0].configDto.totalAvailabilityTime;
               }
            }
         }
         return 0;
      }
      
      public function get runningEventQuestTotalDuration() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.runningEventQuest);
            if(!(_loc2_ && Boolean(this)))
            {
               if(§§pop())
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§goto(addr004d);
                  }
               }
               §§goto(addr005b);
            }
            addr004d:
            return this.runningEventQuest.quests[0].config.runtimeFull;
         }
         addr005b:
         return 0;
      }
      
      public function get currentRunningEventQuestGfxId() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.runningEventQuest);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr0036:
                     return this.runningEventQuest.quests[0].config.gfxId;
                     addr0032:
                  }
               }
               return 0;
            }
            §§goto(addr0036);
         }
         §§goto(addr0032);
      }
      
      public function get currentRunningEventID() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this.runningEventQuest);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     §§goto(addr003e);
                  }
               }
               §§goto(addr004b);
            }
            addr003e:
            return this.runningEventQuest.quests[0].config.id;
         }
         addr004b:
         return 0;
      }
      
      public function get currentRunningEventStepProgress() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.runningEventQuest);
            if(!(_loc2_ && Boolean(this)))
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0045:
                     addr0041:
                     §§push(this.runningEventQuest.currentActiveStage);
                     if(_loc1_)
                     {
                        return §§pop() / this.runningEventQuest.numberOfChallenges;
                     }
                  }
                  else
                  {
                     addr0057:
                     return 0;
                  }
                  return §§pop();
               }
               §§goto(addr0057);
            }
            §§goto(addr0045);
         }
         §§goto(addr0041);
      }
      
      public function get currentListOfAvailableEventQuestGoodIds() : Vector.<Number>
      {
         §§push(false);
         var _loc16_:Boolean = true;
         var _loc17_:* = §§pop();
         var _loc2_:Vector.<QuestEventPlayerVo> = null;
         var _loc3_:Vector.<Number> = null;
         var _loc4_:QuestEventPlayerVo = null;
         var _loc5_:QuestEventPlayerVo = null;
         var _loc6_:Number = NaN;
         var _loc7_:QuestChallengeDTO = null;
         var _loc8_:ConfigGoodDTO = null;
         var _loc9_:* = NaN;
         var _loc1_:Vector.<Number> = new Vector.<Number>();
         if(!(_loc17_ && Boolean(_loc2_)))
         {
            if(this.runningEventQuest)
            {
               addr0060:
               _loc2_ = new Vector.<QuestEventPlayerVo>();
               _loc3_ = new Vector.<Number>();
               var _loc10_:* = 0;
               var _loc11_:* = this.runningEventQuest.quests;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc11_,_loc10_));
                  if(!_loc16_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     _loc4_ = §§nextvalue(_loc10_,_loc11_);
                     if(_loc4_.state == QuestSystemStateConst.VALID)
                     {
                        if(!_loc17_)
                        {
                           _loc2_.push(_loc4_);
                           if(!_loc16_)
                           {
                              continue;
                           }
                        }
                        _loc3_.push(_loc4_.id);
                     }
                     continue;
                  }
                  if(!(_loc17_ && Boolean(_loc3_)))
                  {
                     if(_loc16_ || Boolean(_loc3_))
                     {
                        if(!_loc17_)
                        {
                           §§push(0);
                           if(_loc16_ || Boolean(this))
                           {
                              _loc10_ = §§pop();
                              if(_loc16_ || Boolean(_loc2_))
                              {
                                 _loc11_ = _loc2_;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc11_,_loc10_));
                                    if(_loc17_ && Boolean(_loc3_))
                                    {
                                       break loop0;
                                    }
                                    if(§§pop())
                                    {
                                       _loc5_ = §§nextvalue(_loc10_,_loc11_);
                                       if(_loc16_ || Boolean(_loc2_))
                                       {
                                          var _loc12_:int = 0;
                                          if(!(_loc17_ && Boolean(_loc1_)))
                                          {
                                             for each(_loc7_ in _loc5_.challenges)
                                             {
                                                if(_loc7_.elementState == QuestSystemStateConst.VALID)
                                                {
                                                   if(!(_loc17_ && Boolean(_loc2_)))
                                                   {
                                                      _loc3_.push(_loc7_.config.id);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       continue;
                                    }
                                    if(!_loc17_)
                                    {
                                       if(!(_loc17_ && Boolean(this)))
                                       {
                                          §§goto(addr01c6);
                                       }
                                    }
                                    §§goto(addr02c3);
                                 }
                              }
                              §§goto(addr01c6);
                           }
                           §§goto(addr01d8);
                        }
                        §§goto(addr01d6);
                     }
                     addr01c6:
                     if(!(_loc17_ && Boolean(_loc3_)))
                     {
                        addr01d8:
                        _loc10_ = 0;
                        addr01d6:
                        if(_loc16_)
                        {
                           _loc11_ = _loc3_;
                           if(_loc16_ || Boolean(_loc2_))
                           {
                              while(true)
                              {
                                 §§push(§§hasnext(_loc11_,_loc10_));
                                 break loop0;
                              }
                              addr02ba:
                           }
                           while(true)
                           {
                              _loc12_ = 0;
                              if(!_loc17_)
                              {
                                 for each(_loc8_ in this.configProxy.config.goods)
                                 {
                                    if(!(_loc17_ && Boolean(_loc2_)))
                                    {
                                       var _loc14_:int = 0;
                                       if(!_loc17_)
                                       {
                                          var _loc15_:* = _loc8_.associatedEventIds;
                                          if(_loc17_ && Boolean(this))
                                          {
                                          }
                                          for each(_loc14_ in _loc15_)
                                          {
                                             §§push(_loc14_);
                                             if(_loc16_ || Boolean(_loc2_))
                                             {
                                                var _temp_13:* = §§pop();
                                                §§push(_temp_13);
                                                §§push(_temp_13);
                                                if(_loc16_ || Boolean(this))
                                                {
                                                   _loc9_ = §§pop();
                                                   addr0290:
                                                   §§push(_loc6_);
                                                }
                                                if(§§pop() == §§pop())
                                                {
                                                   if(_loc16_)
                                                   {
                                                      _loc1_.push(_loc8_.id);
                                                   }
                                                }
                                                continue;
                                             }
                                             §§goto(addr0290);
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr02ba);
                           }
                           addr0205:
                        }
                        addr02c3:
                     }
                     §§goto(addr02c5);
                  }
                  §§goto(addr02c1);
               }
               for(; §§pop(); §§push(§§hasnext(_loc11_,_loc10_)))
               {
                  _loc6_ = §§nextvalue(_loc10_,_loc11_);
                  if(!_loc16_)
                  {
                     continue;
                  }
                  §§goto(addr0205);
               }
               §§goto(addr02c1);
            }
            addr02c5:
            return _loc1_;
         }
         §§goto(addr0060);
      }
      
      public function get currentRunningEventQuestLocaleId() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.runningEventQuest);
            if(_loc1_ || _loc2_)
            {
               if(§§pop() != null)
               {
                  if(!_loc2_)
                  {
                     addr003e:
                     return this.runningEventQuest.quests[0].config.localizationIdentifier as String;
                     addr003a:
                  }
               }
               return "0";
            }
            §§goto(addr003e);
         }
         §§goto(addr003a);
      }
      
      public function get listOfRunningGlobalEvents() : Vector.<ConfigEventDTO>
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:ConfigEventDTO = null;
         var _loc1_:Vector.<ConfigEventDTO> = new Vector.<ConfigEventDTO>();
         var _loc3_:int = 0;
         for each(_loc2_ in this.configProxy.config.runningEvents)
         {
            if(_loc5_)
            {
               if(_loc2_.availabilityTimeStart > this._timerProxy.currentTimeStamp)
               {
                  continue;
               }
               if(_loc6_ && Boolean(_loc3_))
               {
                  continue;
               }
            }
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function mayShowItem(param1:ConfigPlayfieldItemPermissionDTO) : Boolean
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:Number = NaN;
         var _loc3_:ConfigEventDTO = null;
         if(!(_loc9_ && Boolean(this)))
         {
            if(param1.eventIdList.length == 0)
            {
               if(_loc8_ || Boolean(_loc2_))
               {
                  §§goto(addr0046);
               }
            }
            for each(_loc2_ in param1.eventIdList)
            {
               if(!_loc9_)
               {
                  var _loc6_:int = 0;
                  if(_loc8_)
                  {
                     for each(_loc3_ in this.listOfRunningGlobalEvents)
                     {
                        if(!(_loc9_ && Boolean(param1)))
                        {
                           if(_loc3_.id == _loc2_)
                           {
                              if(!(_loc9_ && Boolean(_loc2_)))
                              {
                                 return true;
                              }
                           }
                        }
                     }
                  }
               }
            }
            if(_loc8_ || Boolean(param1))
            {
               if(this.goodStockProxy.getPermissionAmountByConfigId(param1.id) > 0)
               {
                  if(_loc8_)
                  {
                     §§push(true);
                     if(_loc8_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr0106:
                     return false;
                  }
                  return §§pop();
               }
            }
            §§goto(addr0106);
         }
         addr0046:
         return true;
      }
      
      public function mayBuyItem(param1:ConfigPlayfieldItemPermissionDTO) : Boolean
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:Number = NaN;
         var _loc3_:ConfigEventDTO = null;
         if(!(_loc9_ && Boolean(this)))
         {
            if(param1.eventIdList.length == 0)
            {
               if(!_loc9_)
               {
                  §§goto(addr003c);
               }
            }
            for each(_loc2_ in param1.eventIdList)
            {
               if(!(_loc9_ && Boolean(this)))
               {
                  var _loc6_:int = 0;
                  if(_loc8_ || Boolean(_loc2_))
                  {
                     for each(_loc3_ in this.listOfRunningGlobalEvents)
                     {
                        if(_loc8_)
                        {
                           if(_loc3_.id == _loc2_)
                           {
                              if(_loc8_ || Boolean(this))
                              {
                                 return true;
                              }
                           }
                        }
                     }
                  }
               }
            }
            return false;
         }
         addr003c:
         return true;
      }
      
      public function eventById(param1:Number) : EventQuestVo
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:EventQuestVo = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.allEventQuests;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc6_)
               {
                  break;
               }
               if(_loc2_.configDto.id == param1)
               {
                  if(_loc5_ || Boolean(_loc2_))
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public function get upcomingEventQuests() : Vector.<ConfigUpcomingEventDTO>
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         var _loc2_:ConfigUpcomingEventDTO = null;
         var _loc3_:ConfigEventLevel = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc1_:Vector.<ConfigUpcomingEventDTO> = new Vector.<ConfigUpcomingEventDTO>(0);
         for each(_loc2_ in this.configProxy.config.upcomingEvents)
         {
            if(!(_loc12_ && Boolean(this)))
            {
               if(_loc2_.configEvent.eventType == ServerEventTypeConst.EVENTSQUARE)
               {
                  if(_loc13_ || Boolean(_loc2_))
                  {
                     var _loc10_:int = 0;
                     if(!(_loc12_ && Boolean(_loc1_)))
                     {
                        for each(_loc3_ in _loc2_.configEvent.levelRestricts)
                        {
                           if(_loc13_ || Boolean(_loc2_))
                           {
                              §§push(_loc3_.minimum);
                              if(!_loc12_)
                              {
                                 §§push(§§pop());
                                 if(_loc13_ || Boolean(_loc3_))
                                 {
                                    _loc4_ = §§pop();
                                    if(!(_loc13_ || Boolean(_loc3_)))
                                    {
                                       continue;
                                    }
                                    §§push(_loc3_.maximum);
                                    if(!(_loc12_ && Boolean(_loc1_)))
                                    {
                                       §§push(§§pop());
                                       if(!_loc12_)
                                       {
                                          _loc5_ = §§pop();
                                          if(!_loc12_)
                                          {
                                             §§push(_loc4_);
                                             if(!_loc12_)
                                             {
                                                addr0112:
                                                if(§§pop() == 0)
                                                {
                                                   if(_loc13_)
                                                   {
                                                      §§push(0);
                                                      if(!_loc12_)
                                                      {
                                                         §§push(§§pop());
                                                         if(!(_loc12_ && Boolean(_loc1_)))
                                                         {
                                                            _loc6_ = §§pop();
                                                            if(_loc13_ || Boolean(_loc3_))
                                                            {
                                                               addr019c:
                                                               §§push(_loc5_);
                                                               if(!_loc12_)
                                                               {
                                                                  if(§§pop() == int.MAX_VALUE)
                                                                  {
                                                                     if(!_loc12_)
                                                                     {
                                                                        addr01b3:
                                                                        §§push(int.MAX_VALUE);
                                                                        if(_loc13_ || Boolean(this))
                                                                        {
                                                                           addr01c7:
                                                                           _loc7_ = §§pop();
                                                                           if(_loc13_ || Boolean(_loc1_))
                                                                           {
                                                                           }
                                                                           addr0202:
                                                                           §§push(this.playerResourceProxy);
                                                                           if(!(_loc12_ && Boolean(_loc1_)))
                                                                           {
                                                                              §§push(§§pop().userLevel);
                                                                              if(!(_loc12_ && Boolean(this)))
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    §§push(§§pop() <= §§pop());
                                                                                    if(!(_loc12_ && Boolean(_loc3_)))
                                                                                    {
                                                                                       var _temp_16:* = §§pop();
                                                                                       §§push(_temp_16);
                                                                                       if(_temp_16)
                                                                                       {
                                                                                          if(!(_loc12_ && Boolean(this)))
                                                                                          {
                                                                                             addr0250:
                                                                                             §§pop();
                                                                                             if(_loc12_ && Boolean(this))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             addr0278:
                                                                                             addr0276:
                                                                                             addr0273:
                                                                                             addr026e:
                                                                                             §§push(this.playerResourceProxy.userLevel >= _loc6_);
                                                                                          }
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc12_)
                                                                                          {
                                                                                             addr0283:
                                                                                             _loc1_.push(_loc2_);
                                                                                          }
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr0250);
                                                                                 }
                                                                                 §§goto(addr0278);
                                                                              }
                                                                              §§goto(addr0276);
                                                                           }
                                                                           §§goto(addr0273);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr01fa:
                                                                           _loc7_ = §§pop();
                                                                           addr01f9:
                                                                           if(!_loc12_)
                                                                           {
                                                                              §§goto(addr0202);
                                                                           }
                                                                        }
                                                                        §§goto(addr026e);
                                                                     }
                                                                     §§goto(addr0202);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(ConfigUserLevelDTO(this.configProxy.config.levels[_loc5_]).level);
                                                                     if(!_loc12_)
                                                                     {
                                                                        §§goto(addr01f9);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr01fa);
                                                            }
                                                            §§goto(addr0283);
                                                         }
                                                         else
                                                         {
                                                            addr018c:
                                                            _loc6_ = §§pop();
                                                            if(!(_loc12_ && Boolean(this)))
                                                            {
                                                               §§goto(addr019c);
                                                            }
                                                         }
                                                         §§goto(addr01b3);
                                                      }
                                                      §§goto(addr0276);
                                                   }
                                                   §§goto(addr0283);
                                                }
                                                else
                                                {
                                                   §§push(ConfigUserLevelDTO(this.configProxy.config.levels[_loc4_]).level);
                                                   if(!(_loc12_ && Boolean(_loc1_)))
                                                   {
                                                      addr017d:
                                                      §§push(§§pop());
                                                      if(!(_loc12_ && Boolean(_loc1_)))
                                                      {
                                                         §§goto(addr018c);
                                                      }
                                                      §§goto(addr01f9);
                                                   }
                                                }
                                                §§goto(addr01fa);
                                             }
                                             §§goto(addr01c7);
                                          }
                                          §§goto(addr019c);
                                       }
                                       §§goto(addr01fa);
                                    }
                                    §§goto(addr0112);
                                 }
                                 §§goto(addr01fa);
                              }
                              §§goto(addr017d);
                           }
                           §§goto(addr0283);
                        }
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function get questProxy() : QuestProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._qproxy);
            if(!_loc1_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_ || _loc2_)
                  {
                     this._qproxy = facade.retrieveProxy(QuestProxy.NAME) as QuestProxy;
                  }
               }
               addr004d:
               return this._qproxy;
            }
         }
         §§goto(addr004d);
      }
      
      private function get goodStockProxy() : PlayerGoodsStockProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._gSP);
            if(!(_loc2_ && Boolean(this)))
            {
               if(§§pop() == null)
               {
                  if(_loc1_ || _loc2_)
                  {
                     addr0042:
                     this._gSP = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
                  }
               }
               return this._gSP;
            }
         }
         §§goto(addr0042);
      }
      
      private function get configProxy() : GameConfigProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            §§push(this._cproxy);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop() == null)
               {
                  if(!_loc1_)
                  {
                     this._cproxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                  }
               }
               addr0053:
               return this._cproxy;
            }
         }
         §§goto(addr0053);
      }
      
      private function get playerResourceProxy() : PlayerResourceProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            §§push(this._prpproxy);
            if(!_loc2_)
            {
               if(§§pop() == null)
               {
                  if(_loc1_ || Boolean(this))
                  {
                     addr0042:
                     this._prpproxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
                  }
               }
               return this._prpproxy;
            }
         }
         §§goto(addr0042);
      }
   }
}

