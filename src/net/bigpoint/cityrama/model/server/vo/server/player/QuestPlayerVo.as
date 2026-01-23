package net.bigpoint.cityrama.model.server.vo.server.player
{
   import flash.errors.IllegalOperationError;
   import flash.events.EventDispatcher;
   import net.bigpoint.cityrama.constants.quest.*;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.game.*;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.preloader.*;
   import net.bigpoint.cityrama.model.server.vo.server.AbstractQuestSystemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.interfaces.*;
   import net.bigpoint.cityrama.model.server.vo.server.quest.*;
   
   public class QuestPlayerVo extends EventDispatcher implements IQuestPlayerVo
   {
      
      private static const _STATE:String = "_STATE";
      
      public static const DATA_CHANGED_EVENT:String = "DATA_CHANGED_EVENT";
      
      public static const _VIEWED:String = "_VIEWED";
      
      public static const _TASK:String = "_TASK";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc1_))
      {
         _STATE = "_STATE";
         if(!(_loc2_ && _loc2_))
         {
            DATA_CHANGED_EVENT = "DATA_CHANGED_EVENT";
            if(!_loc2_)
            {
               _VIEWED = "_VIEWED";
               if(!_loc2_)
               {
                  addr005b:
                  _TASK = "_TASK";
               }
               §§goto(addr0064);
            }
         }
         §§goto(addr005b);
      }
      addr0064:
      
      protected var _questDto:QuestDTO;
      
      private var _config:ConfigQuestDTO;
      
      protected var _propertiesBuilt:Boolean;
      
      private var _tasks:Vector.<QuestTaskDTO>;
      
      private var _rewards:Vector.<QuestRewardInfoVo>;
      
      public function QuestPlayerVo(param1:QuestDTO, param2:GameConfigProxy, param3:CvTagProxy, param4:PlayerProxy, param5:PlayfieldProxy)
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(!(_loc7_ && Boolean(param1)))
         {
            super();
            if(_loc6_)
            {
               this._questDto = param1;
               if(_loc6_ || Boolean(param1))
               {
                  addr004b:
                  this._config = this._questDto.config;
                  if(_loc6_ || Boolean(param3))
                  {
                     this._tasks = new Vector.<QuestTaskDTO>();
                     if(!(_loc7_ && Boolean(param1)))
                     {
                        addr008e:
                        this.buildProperties(param2,param3,param4,param5);
                     }
                     return;
                  }
               }
               §§goto(addr008e);
            }
            §§goto(addr004b);
         }
         §§goto(addr008e);
      }
      
      protected function buildProperties(param1:GameConfigProxy, param2:CvTagProxy, param3:PlayerProxy, param4:PlayfieldProxy) : void
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc5_:IQuestRewardDTO = null;
         var _loc6_:ConfigPlayfieldItemDTO = null;
         if(_loc12_ || Boolean(this))
         {
            if(this._propertiesBuilt)
            {
               if(_loc12_ || Boolean(param1))
               {
                  return;
               }
            }
            this._rewards = new Vector.<QuestRewardInfoVo>();
         }
         for each(_loc5_ in this.questDto.rewardList)
         {
            §§push(_loc5_.rewardType);
            if(!(_loc11_ && Boolean(param1)))
            {
               §§push(QuestSystemRewardTypeConstants.RESOURCE);
               if(_loc12_ || Boolean(param2))
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc12_)
                     {
                        _loc5_.resourceConfig = param1.resources[_loc5_.rewardConfigID];
                        if(!_loc11_)
                        {
                           addr00bf:
                           §§push(_loc5_.rewardType);
                           if(_loc12_ || Boolean(param1))
                           {
                              addr00d2:
                              §§push(QuestSystemRewardTypeConstants.GOOD);
                              if(_loc12_ || Boolean(param2))
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(_loc12_ || Boolean(param1))
                                    {
                                       _loc5_.goodConfig = param1.goods[_loc5_.rewardConfigID];
                                       if(!_loc11_)
                                       {
                                          addr010f:
                                          §§push(_loc5_.rewardType);
                                          if(_loc12_ || Boolean(param2))
                                          {
                                             addr012d:
                                             §§push(QuestSystemRewardTypeConstants.PERMISSION);
                                             if(!(_loc11_ && Boolean(param1)))
                                             {
                                                addr0141:
                                                if(§§pop() == §§pop())
                                                {
                                                   if(!_loc11_)
                                                   {
                                                      addr014b:
                                                      var _loc9_:int = 0;
                                                      if(!_loc11_)
                                                      {
                                                         for each(_loc6_ in param1.getConfigPlayfieldItemsByPermissionId(_loc5_.rewardConfigID))
                                                         {
                                                            if(!_loc6_.isUpgrade)
                                                            {
                                                               if(!(_loc11_ && Boolean(param2)))
                                                               {
                                                                  _loc5_.configPlayfieldItem = _loc6_;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      if(!(_loc11_ && Boolean(param1)))
                                                      {
                                                         addr01a7:
                                                         §§push(_loc5_.rewardType);
                                                         if(!(_loc11_ && Boolean(param2)))
                                                         {
                                                            addr01ba:
                                                            §§push(QuestSystemRewardTypeConstants.IMPROVEMENT);
                                                            if(_loc12_ || Boolean(param1))
                                                            {
                                                               addr01ce:
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  if(_loc12_)
                                                                  {
                                                                     addr01d8:
                                                                     _loc5_.improvementConfig = param1.config.improvements[_loc5_.rewardConfigID];
                                                                     if(!(_loc11_ && Boolean(param1)))
                                                                     {
                                                                        addr01f9:
                                                                        addr0204:
                                                                        addr01fe:
                                                                        if(_loc5_.rewardType == QuestSystemRewardTypeConstants.ASSIST)
                                                                        {
                                                                           if(_loc12_ || Boolean(param1))
                                                                           {
                                                                              _loc5_.assistConfig = param1.config.assists[_loc5_.rewardConfigID];
                                                                              addr0216:
                                                                              if(_loc11_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                           }
                                                                        }
                                                                        addr023d:
                                                                        this._rewards.push(new QuestRewardInfoVo(_loc5_));
                                                                        continue;
                                                                     }
                                                                  }
                                                                  §§goto(addr0216);
                                                               }
                                                               §§goto(addr01f9);
                                                            }
                                                            §§goto(addr0204);
                                                         }
                                                         §§goto(addr01fe);
                                                      }
                                                      §§goto(addr01d8);
                                                   }
                                                   §§goto(addr023d);
                                                }
                                                §§goto(addr01a7);
                                             }
                                             §§goto(addr01ce);
                                          }
                                          §§goto(addr01ba);
                                       }
                                       §§goto(addr014b);
                                    }
                                    §§goto(addr01d8);
                                 }
                                 §§goto(addr010f);
                              }
                              §§goto(addr0141);
                           }
                           §§goto(addr012d);
                        }
                        §§goto(addr01d8);
                     }
                     §§goto(addr01a7);
                  }
                  §§goto(addr00bf);
               }
               §§goto(addr0204);
            }
            §§goto(addr00d2);
         }
         if(_loc12_ || Boolean(param2))
         {
            this._propertiesBuilt = true;
         }
      }
      
      public function get type() : String
      {
         return this.config.questElementSubType;
      }
      
      public function get state() : String
      {
         return this.questDto.elementState;
      }
      
      public function set state(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this.questDto.elementState = param1;
         }
      }
      
      public function get id() : int
      {
         return this.config.id;
      }
      
      public function get tasks() : Vector.<QuestTaskDTO>
      {
         return this._tasks;
      }
      
      private function buildUserTasks() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:QuestTaskDTO = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this._questDto.downstreamQuestElement)
         {
            if(_loc4_)
            {
               if(_loc1_)
               {
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     this.modifyUserQuest(_loc1_);
                  }
               }
            }
         }
      }
      
      private function modifyUserQuest(param1:AbstractQuestSystemDTO) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:QuestTaskDTO = null;
         var _loc3_:AbstractQuestSystemDTO = null;
         var _loc4_:int = 0;
         var _loc5_:* = this._tasks;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc5_,_loc4_));
            if(_loc6_ && Boolean(_loc2_))
            {
               break;
            }
            if(§§pop())
            {
               _loc2_ = §§nextvalue(_loc4_,_loc5_);
               if(!_loc6_)
               {
                  if(!(param1 is QuestTaskDTO))
                  {
                     continue;
                  }
                  if(_loc6_)
                  {
                     continue;
                  }
                  if(_loc2_.configQuestTaskID != (param1 as QuestTaskDTO).configQuestTaskID)
                  {
                     continue;
                  }
                  if(_loc7_)
                  {
                     _loc2_.currentValue = (param1 as QuestTaskDTO).currentValue;
                     if(_loc6_ && Boolean(_loc2_))
                     {
                        continue;
                     }
                  }
               }
               _loc2_.elementState = (param1 as QuestTaskDTO).elementState;
               continue;
            }
            if(!(_loc6_ && Boolean(_loc3_)))
            {
               if(!(_loc6_ && Boolean(this)))
               {
                  if(_loc7_ || Boolean(_loc2_))
                  {
                     _loc4_ = 0;
                     if(!_loc6_)
                     {
                        addr00ef:
                        _loc5_ = param1.downstreamQuestElement;
                        while(true)
                        {
                           §§push(§§hasnext(_loc5_,_loc4_));
                           break loop0;
                        }
                        addr0117:
                        addr0110:
                     }
                  }
                  return;
               }
               §§goto(addr00ef);
            }
            §§goto(addr0117);
         }
         while(§§pop())
         {
            _loc3_ = §§nextvalue(_loc4_,_loc5_);
            if(!_loc6_)
            {
               this.modifyUserQuest(_loc3_);
            }
            §§goto(addr0110);
         }
         §§goto(addr0117);
      }
      
      public function get config() : ConfigQuestDTO
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this.validate();
         }
         return this._config;
      }
      
      protected function validate() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            §§push(this._questDto == null);
            if(!_loc2_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               §§push(_temp_2);
               if(_loc1_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        §§pop();
                        if(_loc1_ || Boolean(this))
                        {
                           §§goto(addr0057);
                        }
                        §§goto(addr0084);
                     }
                  }
                  §§goto(addr0062);
               }
               §§goto(addr0063);
            }
            §§goto(addr0095);
         }
         addr0057:
         §§push(this._config == null);
         if(!_loc2_)
         {
            addr0062:
            var _temp_5:* = §§pop();
            addr0063:
            §§push(_temp_5);
            if(!_temp_5)
            {
               if(!_loc2_)
               {
                  §§goto(addr006c);
               }
               §§goto(addr0095);
            }
            §§goto(addr0096);
         }
         addr006c:
         §§pop();
         if(_loc1_ || _loc1_)
         {
            addr0096:
            addr0084:
            §§push(this._propertiesBuilt);
            if(_loc1_ || Boolean(this))
            {
               addr0095:
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(!(_loc2_ && _loc2_))
               {
                  throw new Error("QuestVo Error data,config is null");
               }
            }
         }
      }
      
      public function get questDto() : QuestDTO
      {
         return this._questDto;
      }
      
      public function set questDto(param1:QuestDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._questDto = param1;
         }
      }
      
      public function get rewards() : Vector.<QuestRewardInfoVo>
      {
         return this._rewards;
      }
      
      public function set tasks(param1:Vector.<QuestTaskDTO>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._tasks = param1;
            if(!_loc2_)
            {
               addr0023:
               this.buildUserTasks();
            }
            return;
         }
         §§goto(addr0023);
      }
      
      public function get questGiverGfxId() : int
      {
         return this.questDto.config.questGiverGFXid;
      }
      
      public function get challenges() : Vector.<QuestChallengeDTO>
      {
         throw new IllegalOperationError("I am a quest and not an event !!");
      }
      
      public function set challenges(param1:Vector.<QuestChallengeDTO>) : void
      {
         throw new IllegalOperationError("I am a quest and not an event !!");
      }
      
      public function get lastUpdated() : Number
      {
         return this._questDto.lastUpdated;
      }
      
      public function set lastUpdated(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this._questDto.lastUpdated = param1;
         }
      }
   }
}

