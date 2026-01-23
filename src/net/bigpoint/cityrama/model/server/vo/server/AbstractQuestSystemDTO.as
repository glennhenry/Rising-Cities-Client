package net.bigpoint.cityrama.model.server.vo.server
{
   import flash.utils.getTimer;
   import net.bigpoint.cityrama.constants.quest.QuestSystemCompositePatternSucksConstants;
   import net.bigpoint.cityrama.constants.quest.QuestSystemTypeConstants;
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestChallengeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestTaskDTO;
   import net.bigpoint.cityrama.model.server.vo.server.quest.QuestChallengeConfigDTO;
   import net.bigpoint.cityrama.model.server.vo.server.quest.QuestRequirementDTO;
   import net.bigpoint.cityrama.model.server.vo.server.quest.QuestTaskConfigDTO;
   
   public class AbstractQuestSystemDTO implements ILoggableObject
   {
      
      private var _elementState:String;
      
      protected var _downstreamQuestElement:Vector.<AbstractQuestSystemDTO>;
      
      private var _questRequirementvo:QuestRequirementDTO;
      
      private var _endTimeStamp:Number;
      
      private var _endTimeStampSetted:Number;
      
      private var _timeLeft:Number;
      
      public function AbstractQuestSystemDTO(param1:Object)
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc2_:AbstractQuestSystemConfigDTO = null;
         var _loc3_:Boolean = false;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         if(_loc11_)
         {
            super();
            if(_loc11_)
            {
               §§push(this);
               if(_loc11_)
               {
                  §§pop()._elementState = param1 == null ? "NEW" : String(param1.s);
                  if(_loc11_ || Boolean(this))
                  {
                     addr006c:
                     this._downstreamQuestElement = new Vector.<AbstractQuestSystemDTO>();
                     if(_loc11_)
                     {
                        if(param1 != null)
                        {
                           if(!_loc12_)
                           {
                              this.endTimeStamp = param1.et;
                              if(!(_loc12_ && _loc3_))
                              {
                                 §§push(param1.u == null);
                                 if(_loc11_ || Boolean(this))
                                 {
                                    §§push(!§§pop());
                                    if(!(_loc12_ && Boolean(this)))
                                    {
                                       var _temp_5:* = §§pop();
                                       §§push(_temp_5);
                                       §§push(_temp_5);
                                       if(_loc11_ || _loc3_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc12_)
                                             {
                                                §§pop();
                                                if(!(_loc12_ && Boolean(_loc2_)))
                                                {
                                                   addr00ef:
                                                   §§push(param1.u.et == null);
                                                   if(_loc11_ || _loc3_)
                                                   {
                                                      addr0107:
                                                      §§push(!§§pop());
                                                      if(!_loc12_)
                                                      {
                                                         addr010e:
                                                         var _temp_9:* = §§pop();
                                                         addr010f:
                                                         §§push(_temp_9);
                                                         if(_temp_9)
                                                         {
                                                            if(!_loc12_)
                                                            {
                                                               addr0119:
                                                               §§pop();
                                                               if(_loc11_)
                                                               {
                                                                  §§goto(addr012f);
                                                               }
                                                               §§goto(addr0156);
                                                            }
                                                         }
                                                         §§goto(addr012f);
                                                      }
                                                      §§goto(addr0119);
                                                   }
                                                   addr012f:
                                                   if(param1.u.et == QuestSystemCompositePatternSucksConstants.QUEST_REQUIREMENT)
                                                   {
                                                      if(!_loc12_)
                                                      {
                                                         addr0139:
                                                         this._questRequirementvo = new QuestRequirementDTO(param1.u);
                                                         if(_loc11_)
                                                         {
                                                            §§goto(addr014e);
                                                         }
                                                      }
                                                      §§goto(addr0156);
                                                   }
                                                   addr014e:
                                                   if(param1.c)
                                                   {
                                                      addr0156:
                                                      loop0:
                                                      for each(_loc4_ in param1.c.ds)
                                                      {
                                                         if(!(_loc12_ && _loc3_))
                                                         {
                                                            _loc3_ = false;
                                                            if(_loc11_ || Boolean(_loc2_))
                                                            {
                                                               if(_loc4_ == null)
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc11_)
                                                               {
                                                                  addr019d:
                                                                  if(_loc4_.t == QuestSystemTypeConstants.CHALLENGE)
                                                                  {
                                                                     if(_loc11_)
                                                                     {
                                                                        addr01b2:
                                                                        _loc2_ = new QuestChallengeConfigDTO(_loc4_);
                                                                        if(_loc11_ || Boolean(this))
                                                                        {
                                                                           addr01f8:
                                                                           §§push(0);
                                                                           if(_loc11_)
                                                                           {
                                                                              var _loc9_:* = §§pop();
                                                                              if(!_loc12_)
                                                                              {
                                                                                 var _loc10_:* = param1.ds;
                                                                                 loop1:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§hasnext(_loc10_,_loc9_));
                                                                                    if(_loc12_ && Boolean(this))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             if(_loc11_ || Boolean(this))
                                                                                             {
                                                                                                addr0307:
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                if(!(_loc11_ || _loc3_))
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                             }
                                                                                             addr031c:
                                                                                             _loc9_ = 0;
                                                                                             if(!(_loc12_ && _loc3_))
                                                                                             {
                                                                                                addr032c:
                                                                                                _loc10_ = param1.c.ds;
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§hasnext(_loc10_,_loc9_));
                                                                                                   break loop1;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr03ce:
                                                                                          continue loop0;
                                                                                       }
                                                                                       addr03cc:
                                                                                       §§goto(addr03ce);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       _loc5_ = §§nextvalue(_loc9_,_loc10_);
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          if(_loc4_.id != _loc5_.cid)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             addr0239:
                                                                                             _loc3_ = true;
                                                                                             if(_loc11_ || Boolean(_loc2_))
                                                                                             {
                                                                                                _loc5_.c = _loc4_;
                                                                                                if(!(_loc12_ && Boolean(param1)))
                                                                                                {
                                                                                                   if(_loc4_.t == QuestSystemTypeConstants.CHALLENGE)
                                                                                                   {
                                                                                                      if(!(_loc12_ && _loc3_))
                                                                                                      {
                                                                                                         addr027b:
                                                                                                         this._downstreamQuestElement.push(new QuestChallengeDTO(_loc5_,_loc2_ as QuestChallengeConfigDTO));
                                                                                                         if(_loc11_ || _loc3_)
                                                                                                         {
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      if(_loc4_.t != QuestSystemTypeConstants.TASK)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(_loc12_ && Boolean(param1))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                   }
                                                                                                   addr02bf:
                                                                                                   this._downstreamQuestElement.push(new QuestTaskDTO(_loc5_,_loc2_ as QuestTaskConfigDTO));
                                                                                                   continue;
                                                                                                }
                                                                                                §§goto(addr027b);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr02bf);
                                                                                       }
                                                                                       §§goto(addr0239);
                                                                                    }
                                                                                 }
                                                                                 for(; §§pop(); §§push(§§hasnext(_loc10_,_loc9_)))
                                                                                 {
                                                                                    _loc6_ = §§nextvalue(_loc9_,_loc10_);
                                                                                    if(_loc6_.id == _loc2_.id)
                                                                                    {
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          if(_loc6_.t == QuestSystemTypeConstants.CHALLENGE)
                                                                                          {
                                                                                             if(!_loc12_)
                                                                                             {
                                                                                                this._downstreamQuestElement.push(new QuestChallengeDTO(null,_loc2_ as QuestChallengeConfigDTO));
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             if(_loc6_.t != QuestSystemTypeConstants.TASK)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(!(_loc11_ || _loc3_))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       this._downstreamQuestElement.push(new QuestTaskDTO(null,_loc2_ as QuestTaskConfigDTO));
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr03cc);
                                                                              }
                                                                              §§goto(addr032c);
                                                                           }
                                                                           §§goto(addr031c);
                                                                        }
                                                                        §§goto(addr0307);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr01eb:
                                                                        _loc2_ = new QuestTaskConfigDTO(_loc4_);
                                                                     }
                                                                  }
                                                                  else if(_loc4_.t == QuestSystemTypeConstants.TASK)
                                                                  {
                                                                     §§goto(addr01eb);
                                                                  }
                                                                  §§goto(addr01f8);
                                                               }
                                                               §§goto(addr01b2);
                                                            }
                                                         }
                                                         §§goto(addr019d);
                                                      }
                                                   }
                                                   §§goto(addr03db);
                                                }
                                                §§goto(addr0139);
                                             }
                                             §§goto(addr0107);
                                          }
                                          §§goto(addr010e);
                                       }
                                       §§goto(addr010f);
                                    }
                                    §§goto(addr010e);
                                 }
                                 §§goto(addr0107);
                              }
                              §§goto(addr0156);
                           }
                           §§goto(addr0139);
                        }
                        addr03db:
                        return;
                     }
                     §§goto(addr00ef);
                  }
                  §§goto(addr014e);
               }
               §§goto(addr0049);
            }
            §§goto(addr0156);
         }
         §§goto(addr006c);
      }
      
      public function get elementState() : String
      {
         return this._elementState;
      }
      
      public function set elementState(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._elementState = param1;
         }
      }
      
      public function get downstreamQuestElement() : Vector.<AbstractQuestSystemDTO>
      {
         return this._downstreamQuestElement;
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
      
      public function get questRequirementvo() : QuestRequirementDTO
      {
         return this._questRequirementvo;
      }
      
      public function get endTimeStamp() : Number
      {
         return this._endTimeStamp;
      }
      
      public function set endTimeStamp(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._endTimeStampSetted = getTimer();
            if(!(_loc2_ && Boolean(param1)))
            {
               this._endTimeStamp = param1;
            }
         }
      }
   }
}

