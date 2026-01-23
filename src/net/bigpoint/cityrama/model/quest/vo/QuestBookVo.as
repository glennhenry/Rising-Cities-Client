package net.bigpoint.cityrama.model.quest.vo
{
   import net.bigpoint.cityrama.constants.quest.QuestSystemStateConst;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestChallengeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestEventPlayerVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestPlayerVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestTaskDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.interfaces.IQuestPlayerVo;
   import net.bigpoint.cityrama.model.server.vo.server.quest.QuestChallengeConfigDTO;
   
   public class QuestBookVo
   {
      
      private var _quests:Vector.<IQuestPlayerVo>;
      
      private var _type:String;
      
      public function QuestBookVo()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(!(_loc1_ && _loc2_))
            {
               addr0026:
               this._quests = new Vector.<IQuestPlayerVo>();
            }
            return;
         }
         §§goto(addr0026);
      }
      
      public function add(param1:QuestPlayerVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._quests.push(param1);
            if(_loc2_)
            {
               §§goto(addr0024);
            }
            §§goto(addr0031);
         }
         addr0024:
         if(!this._type)
         {
            if(_loc2_)
            {
               addr0031:
               this._type = param1.type;
            }
         }
      }
      
      public function get quests() : Vector.<IQuestPlayerVo>
      {
         return this._quests;
      }
      
      public function get currentQuests() : Vector.<IQuestPlayerVo>
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:QuestPlayerVo = null;
         var _loc1_:Vector.<IQuestPlayerVo> = new Vector.<IQuestPlayerVo>();
         var _loc3_:int = 0;
         for each(_loc2_ in this._quests)
         {
            if(_loc5_)
            {
               continue;
            }
            §§push(_loc2_.state);
            if(!(_loc5_ && Boolean(_loc1_)))
            {
               §§push(QuestSystemStateConst.ACTIVE);
               if(_loc6_ || Boolean(_loc3_))
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc5_ && Boolean(_loc1_)))
                  {
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     §§push(_temp_5);
                     if(!_loc5_)
                     {
                        if(!§§pop())
                        {
                           if(!(_loc5_ && Boolean(_loc3_)))
                           {
                              §§pop();
                              if(!(_loc5_ && Boolean(_loc3_)))
                              {
                                 §§push(_loc2_.state);
                                 if(_loc6_)
                                 {
                                    §§push(QuestSystemStateConst.DONE);
                                    if(_loc6_ || Boolean(_loc2_))
                                    {
                                       addr00cb:
                                       §§push(§§pop() == §§pop());
                                       if(_loc6_ || Boolean(_loc3_))
                                       {
                                          addr00da:
                                          var _temp_10:* = §§pop();
                                          addr00db:
                                          §§push(_temp_10);
                                          if(!_temp_10)
                                          {
                                             if(!(_loc5_ && Boolean(this)))
                                             {
                                                addr00ed:
                                                §§pop();
                                                if(_loc5_ && Boolean(_loc2_))
                                                {
                                                   continue;
                                                }
                                                addr0113:
                                                addr010d:
                                                addr0109:
                                                §§push(_loc2_.state == QuestSystemStateConst.VALID);
                                             }
                                          }
                                          addr0114:
                                          if(§§pop())
                                          {
                                             if(!_loc5_)
                                             {
                                                _loc1_.push(_loc2_);
                                             }
                                          }
                                          continue;
                                       }
                                       §§goto(addr00ed);
                                    }
                                    §§goto(addr0113);
                                 }
                                 §§goto(addr010d);
                              }
                              §§goto(addr0109);
                           }
                        }
                        §§goto(addr00da);
                     }
                     §§goto(addr00db);
                  }
                  §§goto(addr0114);
               }
               §§goto(addr00cb);
            }
            §§goto(addr010d);
         }
         return _loc1_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function getTaskByElementSubType(param1:String) : Vector.<QuestTaskDTO>
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc3_:QuestPlayerVo = null;
         var _loc4_:QuestTaskDTO = null;
         var _loc2_:Vector.<QuestTaskDTO> = new Vector.<QuestTaskDTO>();
         for each(_loc3_ in this.quests)
         {
            if(_loc10_)
            {
               var _loc7_:int = 0;
               if(!_loc9_)
               {
                  for each(_loc4_ in _loc3_.tasks)
                  {
                     if(_loc4_.taskConfig.questElementSubType == param1)
                     {
                        if(_loc10_)
                        {
                           _loc2_.push(_loc4_);
                        }
                     }
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public function updateQuestStateById(param1:Number, param2:String, param3:Number) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc4_:QuestPlayerVo = null;
         for each(_loc4_ in this.quests)
         {
            if(_loc4_.id == param1)
            {
               if(_loc8_)
               {
                  _loc4_.state = param2;
                  if(!_loc7_)
                  {
                     _loc4_.questDto.endTimeStamp = param3;
                  }
               }
            }
         }
      }
      
      public function deleteQuestById(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:QuestPlayerVo = null;
         for each(_loc2_ in this.quests)
         {
            if(!_loc5_)
            {
               if(_loc2_.id != param1)
               {
                  continue;
               }
               if(_loc5_ && Boolean(param1))
               {
                  continue;
               }
            }
            this.quests.splice(this.quests.indexOf(_loc2_),1);
         }
      }
      
      public function getQuestsById(param1:Number) : QuestPlayerVo
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:QuestPlayerVo = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.quests;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc6_)
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
      
      public function getChallengeConfigByCId(param1:Number) : QuestChallengeConfigDTO
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:QuestEventPlayerVo = null;
         var _loc3_:QuestChallengeDTO = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.quests;
         while(true)
         {
            loop0:
            for each(_loc2_ in _loc5_)
            {
               if(_loc8_)
               {
                  var _loc6_:int = 0;
                  if(_loc8_)
                  {
                     for each(_loc3_ in _loc2_.challenges)
                     {
                        if(!_loc9_)
                        {
                           §§push(_loc3_.config);
                           if(!_loc8_)
                           {
                              break loop0;
                           }
                           if(§§pop().id == param1)
                           {
                              if(!(_loc9_ && Boolean(param1)))
                              {
                                 §§push(_loc3_.config);
                                 break loop0;
                              }
                           }
                        }
                     }
                  }
               }
            }
            return null;
         }
         return §§pop();
      }
      
      public function getParentQuestConfigIdByTaskConfigId(param1:Number) : Number
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc2_:QuestPlayerVo = null;
         var _loc3_:QuestTaskDTO = null;
         for each(_loc2_ in this.quests)
         {
            if(_loc9_)
            {
               var _loc6_:int = 0;
               if(_loc9_ || Boolean(_loc2_))
               {
                  for each(_loc3_ in _loc2_.tasks)
                  {
                     if(!(_loc8_ && Boolean(_loc2_)))
                     {
                        if(_loc3_.taskConfig.id != param1)
                        {
                           continue;
                        }
                        if(!(_loc9_ || Boolean(_loc3_)))
                        {
                           continue;
                        }
                     }
                     return _loc2_.config.id;
                  }
               }
            }
         }
         return 0;
      }
      
      public function getQuestByConfigId(param1:Number) : QuestDTO
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:QuestEventPlayerVo = null;
         var _loc3_:QuestChallengeDTO = null;
         for each(_loc2_ in this.quests)
         {
            if(!(_loc9_ && Boolean(_loc3_)))
            {
               var _loc6_:int = 0;
               if(_loc8_ || Boolean(param1))
               {
                  for each(_loc3_ in _loc2_.challenges)
                  {
                     if(!_loc9_)
                     {
                        if(_loc3_.config.id == param1)
                        {
                           if(_loc8_)
                           {
                              return _loc2_.questDto;
                           }
                        }
                     }
                  }
               }
            }
         }
         return null;
      }
   }
}

