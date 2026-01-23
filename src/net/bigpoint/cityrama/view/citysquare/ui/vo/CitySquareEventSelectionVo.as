package net.bigpoint.cityrama.view.citysquare.ui.vo
{
   import net.bigpoint.cityrama.constants.quest.QuestSystemStateConst;
   import net.bigpoint.cityrama.model.events.vo.EventQuestVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigUpcomingEventDTO;
   
   public class CitySquareEventSelectionVo
   {
      
      private var _listOfEvents:Vector.<EventQuestVo>;
      
      private var _currentTimestamp:Number;
      
      private var _listOfUpcomingEvents:Vector.<ConfigUpcomingEventDTO>;
      
      public function CitySquareEventSelectionVo(param1:Vector.<EventQuestVo>, param2:Vector.<ConfigUpcomingEventDTO>, param3:Number)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_ || Boolean(param1))
         {
            super();
            if(!_loc5_)
            {
               this._listOfEvents = param1;
               if(!_loc5_)
               {
                  §§goto(addr0045);
               }
               §§goto(addr0059);
            }
            addr0045:
            this._listOfUpcomingEvents = param2;
            if(_loc4_ || Boolean(param1))
            {
               addr0059:
               this._currentTimestamp = param3;
            }
            return;
         }
         §§goto(addr0059);
      }
      
      public function get allEvents() : Vector.<EventSelectionVo>
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:EventQuestVo = null;
         var _loc3_:ConfigUpcomingEventDTO = null;
         var _loc4_:EventSelectionVo = null;
         var _loc5_:EventSelectionVo = null;
         var _loc1_:Vector.<EventSelectionVo> = new Vector.<EventSelectionVo>(0);
         var _loc6_:int = 0;
         var _loc7_:* = this._listOfEvents;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc7_,_loc6_));
            if(_loc9_ && Boolean(_loc3_))
            {
               break;
            }
            if(!§§pop())
            {
               if(_loc8_ || Boolean(_loc3_))
               {
                  if(_loc8_)
                  {
                     if(!(_loc9_ && Boolean(_loc1_)))
                     {
                        _loc6_ = 0;
                        if(!(_loc9_ && Boolean(this)))
                        {
                           addr01af:
                           _loc7_ = this._listOfUpcomingEvents;
                           while(true)
                           {
                              §§push(§§hasnext(_loc7_,_loc6_));
                              break loop0;
                           }
                           addr0212:
                           addr020b:
                        }
                        if(_loc8_)
                        {
                           _loc1_.sort(this.sortEvents);
                           if(!_loc9_)
                           {
                              while(_loc1_.length < 3)
                              {
                                 _loc5_ = new EventSelectionVo(EventSelectionVo.EMPTY_SLOT,0,0,null,0,0,0);
                                 if(_loc8_ || Boolean(_loc3_))
                                 {
                                    _loc1_.push(_loc5_);
                                 }
                              }
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr01af);
               }
               §§goto(addr0212);
            }
            else
            {
               _loc2_ = §§nextvalue(_loc6_,_loc7_);
               if(_loc8_ || Boolean(this))
               {
                  §§push(_loc2_.currentState);
                  if(_loc8_ || Boolean(this))
                  {
                     §§push(QuestSystemStateConst.INACTIVE);
                     if(!(_loc9_ && Boolean(_loc2_)))
                     {
                        §§push(§§pop() == §§pop());
                        if(_loc8_)
                        {
                           var _temp_9:* = §§pop();
                           §§push(_temp_9);
                           if(_temp_9)
                           {
                              if(_loc8_ || Boolean(_loc1_))
                              {
                                 §§pop();
                                 if(!_loc9_)
                                 {
                                    §§push(_loc2_.configDto);
                                    if(_loc8_)
                                    {
                                       §§push(§§pop().availabilityTimeStart);
                                       if(_loc8_ || Boolean(_loc3_))
                                       {
                                          §§push(this._currentTimestamp);
                                          if(!_loc9_)
                                          {
                                             addr00d7:
                                             if(§§pop() <= §§pop())
                                             {
                                                if(!_loc9_)
                                                {
                                                   addr00e5:
                                                   addr00e1:
                                                   §§push(_loc2_.configDto.availabilityTimeStart);
                                                   if(_loc8_ || Boolean(_loc3_))
                                                   {
                                                      addr0108:
                                                      addr00f6:
                                                      §§push(_loc2_.configDto.totalAvailabilityTime);
                                                      if(_loc8_)
                                                      {
                                                         addr0104:
                                                         §§push(§§pop() + §§pop());
                                                         §§push(this._currentTimestamp);
                                                      }
                                                      if(§§pop() > §§pop())
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            _loc1_.push(this.getEventSelectionVo(_loc2_,EventSelectionVo.STATE_AVAILABLE));
                                                            if(!_loc9_)
                                                            {
                                                               addr0135:
                                                               addr013f:
                                                               addr0139:
                                                               if(_loc2_.currentState != QuestSystemStateConst.VALID)
                                                               {
                                                                  continue;
                                                               }
                                                               if(!(_loc8_ || Boolean(this)))
                                                               {
                                                                  continue;
                                                               }
                                                            }
                                                            _loc1_.push(this.getEventSelectionVo(_loc2_,EventSelectionVo.STATE_RUNNING));
                                                            continue;
                                                         }
                                                      }
                                                      §§goto(addr0135);
                                                   }
                                                   §§goto(addr0104);
                                                }
                                             }
                                             §§goto(addr0135);
                                          }
                                          §§goto(addr0108);
                                       }
                                       §§goto(addr00f6);
                                    }
                                    §§goto(addr00e5);
                                 }
                                 §§goto(addr0135);
                              }
                           }
                        }
                        §§goto(addr00d7);
                     }
                     §§goto(addr013f);
                  }
                  §§goto(addr0139);
               }
               §§goto(addr00e1);
            }
         }
         while(§§pop())
         {
            _loc3_ = §§nextvalue(_loc6_,_loc7_);
            §§push(§§findproperty(EventSelectionVo));
            §§push(EventSelectionVo.STATE_UPCOMING);
            §§push(-1);
            §§push(_loc3_.gfxId);
            §§push(_loc3_.locaId);
            §§push(-1);
            §§push(_loc3_.configEvent.availabilityTimeStart);
            if(_loc8_)
            {
               §§push(§§pop() - this._currentTimestamp);
            }
            _loc4_ = new §§pop().EventSelectionVo(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),0);
            if(_loc8_ || Boolean(_loc3_))
            {
               _loc1_.push(_loc4_);
            }
            §§goto(addr020b);
         }
         §§goto(addr0212);
      }
      
      private function sortEvents(param1:EventSelectionVo, param2:EventSelectionVo) : int
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            §§push(param1.state);
            if(!_loc3_)
            {
               §§push(EventSelectionVo.STATE_RUNNING);
               if(!_loc3_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc4_)
                     {
                        §§push(-1);
                        if(!(_loc3_ && Boolean(this)))
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr0092:
                        §§push(param1.state);
                        if(_loc4_ || Boolean(param1))
                        {
                           addr00a4:
                           §§push(EventSelectionVo.STATE_AVAILABLE);
                           if(!_loc3_)
                           {
                              §§push(§§pop() == §§pop());
                              if(!_loc3_)
                              {
                                 var _temp_4:* = §§pop();
                                 §§push(_temp_4);
                                 §§push(_temp_4);
                                 if(_loc4_ || _loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc4_ || Boolean(param2))
                                       {
                                          §§pop();
                                          if(_loc4_)
                                          {
                                             addr00dd:
                                             §§push(param2.state);
                                             if(_loc4_ || Boolean(param1))
                                             {
                                                addr00fb:
                                                §§push(EventSelectionVo.STATE_AVAILABLE);
                                                if(!_loc3_)
                                                {
                                                   addr0106:
                                                   §§push(§§pop() == §§pop());
                                                   if(!(_loc3_ && Boolean(param2)))
                                                   {
                                                      §§push(!§§pop());
                                                      if(_loc4_ || Boolean(param1))
                                                      {
                                                         addr0123:
                                                         var _temp_10:* = §§pop();
                                                         addr0124:
                                                         §§push(_temp_10);
                                                         if(_temp_10)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               addr012d:
                                                               §§pop();
                                                               if(_loc4_)
                                                               {
                                                                  §§push(param2.state);
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(EventSelectionVo.STATE_RUNNING);
                                                                     if(!(_loc3_ && Boolean(param1)))
                                                                     {
                                                                        addr0160:
                                                                        addr0151:
                                                                        §§push(§§pop() == §§pop());
                                                                        if(!(_loc3_ && Boolean(param2)))
                                                                        {
                                                                           addr015f:
                                                                           §§push(!§§pop());
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc4_ || _loc3_)
                                                                           {
                                                                              addr0172:
                                                                              §§push(-1);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§goto(addr0179);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr0203:
                                                                              §§push(0);
                                                                           }
                                                                           §§goto(addr0205);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr0187:
                                                                           addr0183:
                                                                           if(param1.state == param2.state)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§push(param1.remainingTime);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§push(param2.remainingTime);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       if(§§pop() > §§pop())
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§push(1);
                                                                                             if(_loc4_ || Boolean(this))
                                                                                             {
                                                                                                return §§pop();
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr01d8:
                                                                                             addr01e0:
                                                                                             addr01dc:
                                                                                             if(param1.remainingTime < param2.remainingTime)
                                                                                             {
                                                                                                if(_loc4_ || _loc3_)
                                                                                                {
                                                                                                   addr01f2:
                                                                                                   §§push(-1);
                                                                                                   if(_loc4_ || Boolean(param2))
                                                                                                   {
                                                                                                      §§goto(addr0202);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr0203);
                                                                                                }
                                                                                                §§goto(addr0205);
                                                                                             }
                                                                                             §§goto(addr0203);
                                                                                          }
                                                                                          addr0205:
                                                                                          return §§pop();
                                                                                       }
                                                                                       §§goto(addr01d8);
                                                                                    }
                                                                                    §§goto(addr01e0);
                                                                                 }
                                                                                 §§goto(addr01dc);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr0203);
                                                                     }
                                                                     §§goto(addr0187);
                                                                  }
                                                                  §§goto(addr0183);
                                                               }
                                                               §§goto(addr0172);
                                                            }
                                                         }
                                                         §§goto(addr0160);
                                                      }
                                                      §§goto(addr015f);
                                                   }
                                                   §§goto(addr0123);
                                                }
                                                §§goto(addr0151);
                                             }
                                             §§goto(addr0183);
                                          }
                                          §§goto(addr01f2);
                                       }
                                       §§goto(addr012d);
                                    }
                                    §§goto(addr0123);
                                 }
                                 §§goto(addr0124);
                              }
                              §§goto(addr0123);
                           }
                           §§goto(addr0106);
                        }
                        §§goto(addr00fb);
                     }
                     addr0179:
                     return §§pop();
                  }
                  §§push(param2.state);
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     §§push(EventSelectionVo.STATE_RUNNING);
                     if(!_loc3_)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(_loc4_)
                           {
                              §§push(1);
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 return §§pop();
                              }
                           }
                           else
                           {
                              §§goto(addr00dd);
                           }
                           addr0202:
                           return §§pop();
                        }
                        §§goto(addr0092);
                        §§goto(addr00fb);
                     }
                     §§goto(addr0187);
                  }
                  §§goto(addr00fb);
               }
               §§goto(addr0151);
            }
            §§goto(addr00a4);
         }
         §§goto(addr0203);
      }
      
      private function getEventSelectionVo(param1:EventQuestVo, param2:String) : EventSelectionVo
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:* = NaN;
         if(!(_loc5_ && Boolean(this)))
         {
            if(param2 == EventSelectionVo.STATE_RUNNING)
            {
               if(!(_loc5_ && Boolean(param2)))
               {
                  §§push(param1.currentActiveStage - 1);
                  if(_loc4_ || Boolean(_loc3_))
                  {
                     §§push(§§pop() / param1.numberOfChallenges);
                     if(!_loc5_)
                     {
                        addr005c:
                        §§push(§§pop());
                        if(_loc4_)
                        {
                           _loc3_ = §§pop();
                           if(_loc5_ && Boolean(param1))
                           {
                           }
                        }
                        else
                        {
                           addr00a0:
                           _loc3_ = §§pop();
                        }
                        return new EventSelectionVo(param2,param1.configDto.id,param1.quests[0].config.gfxId,param1.quests[0].config.localizationIdentifier,param1.configDto.totalAvailabilityTime,param1.configDto.totalAvailabilityTime - (this._currentTimestamp - param1.configDto.availabilityTimeStart),_loc3_);
                        addr00a1:
                     }
                     §§goto(addr00a0);
                  }
                  §§goto(addr005c);
               }
               §§goto(addr00a1);
            }
            else
            {
               §§push(Math.abs(1 - (this._currentTimestamp - param1.configDto.availabilityTimeStart) / param1.configDto.totalAvailabilityTime));
            }
            §§goto(addr00a0);
         }
         §§goto(addr00a1);
      }
   }
}

