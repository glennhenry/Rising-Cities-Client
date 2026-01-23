package net.bigpoint.cityrama.model.events.vo
{
   import net.bigpoint.cityrama.constants.quest.QuestSystemStateConst;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigEventDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestChallengeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestEventPlayerVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestPlayerVo;
   
   public class EventQuestVo
   {
      
      private var _configDto:ConfigEventDTO;
      
      private var _quests:Vector.<QuestEventPlayerVo>;
      
      public function EventQuestVo()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super();
            if(!_loc1_)
            {
               addr0026:
               this._quests = new Vector.<QuestEventPlayerVo>();
            }
            return;
         }
         §§goto(addr0026);
      }
      
      public function get currentState() : String
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc1_:QuestPlayerVo = null;
         var _loc2_:QuestChallengeDTO = null;
         if(_loc7_)
         {
            if(this._quests.length == 0)
            {
               if(_loc7_)
               {
                  §§goto(addr0039);
               }
            }
            var _loc3_:int = 0;
            var _loc4_:* = this._quests;
            while(true)
            {
               for each(_loc1_ in _loc4_)
               {
                  if(!_loc8_)
                  {
                     if(_loc1_ == null)
                     {
                        if(_loc7_ || Boolean(_loc1_))
                        {
                           §§goto(addr006d);
                        }
                        else
                        {
                           addr0157:
                        }
                        addr00d4:
                        §§push(_loc1_.state);
                        if(_loc8_)
                        {
                           addr0157:
                           return §§pop();
                        }
                        addr00e4:
                        if(§§pop() == QuestSystemStateConst.EXPIRED)
                        {
                           if(!(_loc7_ || Boolean(_loc2_)))
                           {
                              break;
                           }
                           var _loc5_:int = 0;
                           if(!_loc8_)
                           {
                              for each(_loc2_ in _loc1_.challenges)
                              {
                                 if(!_loc8_)
                                 {
                                    if(_loc2_.elementState == QuestSystemStateConst.DONE)
                                    {
                                       if(_loc7_)
                                       {
                                          return QuestSystemStateConst.DONE;
                                       }
                                    }
                                 }
                              }
                           }
                           if(_loc7_)
                           {
                              break;
                           }
                        }
                        continue;
                     }
                     §§push(_loc1_.state);
                     if(!_loc8_)
                     {
                        §§push(QuestSystemStateConst.VALID);
                        if(_loc7_ || Boolean(this))
                        {
                           if(§§pop() == §§pop())
                           {
                              if(!(_loc8_ && Boolean(_loc1_)))
                              {
                                 §§push(_loc1_.state);
                                 if(_loc7_ || Boolean(_loc3_))
                                 {
                                    §§goto(addr00cd);
                                 }
                              }
                              else
                              {
                                 §§goto(addr00d4);
                              }
                              §§goto(addr0157);
                           }
                           §§goto(addr00d4);
                        }
                        §§goto(addr00e4);
                     }
                     addr00cd:
                     return §§pop();
                     §§goto(addr00e4);
                  }
                  addr006d:
                  return "";
               }
               return _loc1_.state;
            }
            §§goto(addr0157);
            §§push(_loc1_.state);
         }
         addr0039:
         return "";
      }
      
      public function get configDto() : ConfigEventDTO
      {
         return this._configDto;
      }
      
      public function set configDto(param1:ConfigEventDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._configDto = param1;
         }
      }
      
      public function get quests() : Vector.<QuestEventPlayerVo>
      {
         return this._quests;
      }
      
      public function set quests(param1:Vector.<QuestEventPlayerVo>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._quests = param1;
         }
      }
      
      public function get hasFinishedChallenge() : Boolean
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc1_:QuestEventPlayerVo = null;
         var _loc2_:QuestChallengeDTO = null;
         for each(_loc1_ in this.quests)
         {
            if(!(_loc8_ && Boolean(_loc1_)))
            {
               if(_loc1_ != null)
               {
                  if(!_loc8_)
                  {
                     var _loc5_:int = 0;
                     if(!(_loc8_ && Boolean(_loc2_)))
                     {
                        for each(_loc2_ in _loc1_.challenges)
                        {
                           if(!(_loc8_ && Boolean(_loc2_)))
                           {
                              if(_loc2_.elementState != QuestSystemStateConst.DONE)
                              {
                                 continue;
                              }
                              if(!_loc7_)
                              {
                                 continue;
                              }
                           }
                           return true;
                        }
                     }
                  }
               }
            }
         }
         return false;
      }
      
      public function get currentChallenge() : QuestChallengeDTO
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc1_:QuestEventPlayerVo = null;
         var _loc2_:QuestChallengeDTO = null;
         for each(_loc1_ in this.quests)
         {
            if(!_loc7_)
            {
               var _loc5_:int = 0;
               if(!_loc7_)
               {
                  for each(_loc2_ in _loc1_.challenges)
                  {
                     if(!_loc7_)
                     {
                        if(_loc2_.elementState != QuestSystemStateConst.VALID)
                        {
                           continue;
                        }
                        if(!_loc8_)
                        {
                           continue;
                        }
                     }
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public function get currentActiveStage() : int
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:QuestEventPlayerVo = null;
         var _loc3_:QuestChallengeDTO = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.quests)
         {
            if(_loc8_)
            {
               if(_loc2_.state == QuestSystemStateConst.DONE)
               {
                  if(_loc8_)
                  {
                     return _loc2_.challenges.length;
                  }
               }
               var _loc6_:int = 0;
               if(!_loc9_)
               {
                  for each(_loc3_ in _loc2_.challenges)
                  {
                     if(!(_loc9_ && Boolean(_loc1_)))
                     {
                        §§push(_loc3_.elementState == QuestSystemStateConst.VALID);
                        if(_loc8_)
                        {
                           var _temp_2:* = §§pop();
                           §§push(_temp_2);
                           §§push(_temp_2);
                           if(_loc8_)
                           {
                              if(!§§pop())
                              {
                                 if(_loc8_ || Boolean(_loc3_))
                                 {
                                    §§pop();
                                    if(_loc8_ || Boolean(_loc3_))
                                    {
                                       addr00d4:
                                       §§push(_loc3_.elementState == QuestSystemStateConst.DONE);
                                       if(_loc8_)
                                       {
                                          addr00e5:
                                          var _temp_5:* = §§pop();
                                          addr00e6:
                                          §§push(_temp_5);
                                          if(!_temp_5)
                                          {
                                             if(_loc8_ || Boolean(_loc3_))
                                             {
                                                addr00f8:
                                                §§pop();
                                                if(_loc8_ || Boolean(_loc2_))
                                                {
                                                   addr0112:
                                                   if(_loc3_.elementState == QuestSystemStateConst.SUBMITTED)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         _loc1_++;
                                                         if(!_loc9_)
                                                         {
                                                            addr012f:
                                                            if(_loc3_.elementState != QuestSystemStateConst.VALID)
                                                            {
                                                               continue;
                                                            }
                                                            if(!(_loc8_ || Boolean(_loc3_)))
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                         return _loc1_;
                                                      }
                                                   }
                                                }
                                                §§goto(addr012f);
                                             }
                                          }
                                          §§goto(addr0112);
                                       }
                                       §§goto(addr00f8);
                                    }
                                    §§goto(addr012f);
                                 }
                                 §§goto(addr0112);
                              }
                              §§goto(addr00e5);
                           }
                           §§goto(addr00e6);
                        }
                        §§goto(addr00e5);
                     }
                     §§goto(addr00d4);
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public function get currentRewardStage() : int
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:QuestEventPlayerVo = null;
         var _loc3_:QuestChallengeDTO = null;
         var _loc1_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:* = this.quests;
         while(true)
         {
            for each(_loc2_ in _loc5_)
            {
               if(_loc8_)
               {
                  if(_loc2_.state == QuestSystemStateConst.DONE)
                  {
                     if(_loc8_ || Boolean(_loc2_))
                     {
                        return _loc2_.challenges.length;
                     }
                  }
                  else
                  {
                     §§push(0);
                     if(_loc9_ && Boolean(_loc3_))
                     {
                        break;
                     }
                     var _loc6_:* = §§pop();
                     if(_loc8_ || Boolean(_loc1_))
                     {
                        for each(_loc3_ in _loc2_.challenges)
                        {
                           if(!(_loc9_ && Boolean(_loc2_)))
                           {
                              _loc1_++;
                              if(!_loc9_)
                              {
                                 if(_loc3_.elementState != QuestSystemStateConst.DONE)
                                 {
                                    continue;
                                 }
                                 if(_loc9_)
                                 {
                                    continue;
                                 }
                              }
                              return _loc1_;
                           }
                        }
                     }
                     if(_loc9_)
                     {
                        continue;
                     }
                  }
                  §§push(_loc1_);
                  break;
               }
            }
            return _loc1_;
         }
         return §§pop();
      }
      
      public function get numberOfChallenges() : int
      {
         return this.quests[0].challenges.length;
      }
   }
}

