package net.bigpoint.cityrama.model.server.vo.server.player
{
   import net.bigpoint.cityrama.constants.quest.QuestSystemRewardTypeConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.preloader.CvTagProxy;
   import net.bigpoint.cityrama.model.server.vo.server.AbstractQuestSystemConfigDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.interfaces.IQuestRewardDTO;
   import net.bigpoint.cityrama.model.server.vo.server.quest.QuestTaskConfigDTO;
   
   public class QuestEventPlayerVo extends QuestPlayerVo
   {
      
      private var _challenges:Vector.<QuestChallengeDTO>;
      
      private var gcP:GameConfigProxy;
      
      private var pP:PlayerProxy;
      
      private var pfP:PlayfieldProxy;
      
      public function QuestEventPlayerVo(param1:QuestDTO, param2:GameConfigProxy, param3:CvTagProxy, param4:PlayerProxy, param5:PlayfieldProxy)
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc6_:QuestChallengeDTO = null;
         if(!(_loc9_ && Boolean(param1)))
         {
            _questDto = param1;
            if(!_loc9_)
            {
               addr0036:
               this._challenges = new Vector.<QuestChallengeDTO>();
            }
            for each(_loc6_ in param1.downstreamQuestElement)
            {
               if(_loc10_ || Boolean(param3))
               {
                  this._challenges.push(_loc6_);
               }
            }
            if(!(_loc9_ && Boolean(param3)))
            {
               this.gcP = param2;
               if(!(_loc9_ && Boolean(param3)))
               {
                  this.pP = param4;
                  if(!(_loc9_ && Boolean(this)))
                  {
                     addr00d3:
                     this.pfP = param5;
                     if(_loc10_ || Boolean(this))
                     {
                        addr00e7:
                        super(param1,param2,param3,param4,param5);
                     }
                     §§goto(addr00f1);
                  }
                  §§goto(addr00e7);
               }
               addr00f1:
               return;
            }
            §§goto(addr00d3);
         }
         §§goto(addr0036);
      }
      
      override public function get tasks() : Vector.<QuestTaskDTO>
      {
         return null;
      }
      
      override public function set tasks(param1:Vector.<QuestTaskDTO>) : void
      {
      }
      
      override public function get challenges() : Vector.<QuestChallengeDTO>
      {
         return this._challenges;
      }
      
      override public function set challenges(param1:Vector.<QuestChallengeDTO>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._challenges = param1;
            if(_loc2_)
            {
               _propertiesBuilt = false;
               if(!_loc3_)
               {
                  addr002e:
                  §§push(this.gcP == null);
                  if(!_loc3_)
                  {
                     §§push(!§§pop());
                     if(!(_loc3_ && _loc2_))
                     {
                        var _temp_2:* = §§pop();
                        §§push(_temp_2);
                        §§push(_temp_2);
                        if(_loc2_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§goto(addr006a);
                              }
                              §§goto(addr0093);
                           }
                           §§goto(addr0089);
                        }
                        §§goto(addr008a);
                     }
                     addr006a:
                     §§pop();
                     if(!_loc3_)
                     {
                        §§push(this.pP == null);
                        if(_loc2_ || _loc2_)
                        {
                           §§push(!§§pop());
                           if(_loc2_)
                           {
                              §§goto(addr0089);
                           }
                           §§goto(addr0093);
                        }
                        addr0089:
                        var _temp_5:* = §§pop();
                        addr008a:
                        §§push(_temp_5);
                        if(_temp_5)
                        {
                           if(_loc2_)
                           {
                              addr0093:
                              §§pop();
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 §§goto(addr00ba);
                              }
                              §§goto(addr00c3);
                           }
                        }
                        addr00ba:
                     }
                     §§goto(addr00ae);
                  }
                  §§goto(addr0093);
               }
               §§goto(addr00ae);
            }
            §§goto(addr002e);
         }
         addr00ae:
         §§push(this.pfP == null);
         if(_loc2_)
         {
            §§push(!§§pop());
         }
         if(§§pop())
         {
            if(!_loc3_)
            {
               addr00c3:
               this.buildProperties(this.gcP,null,this.pP,this.pfP);
            }
         }
      }
      
      override protected function buildProperties(param1:GameConfigProxy, param2:CvTagProxy, param3:PlayerProxy, param4:PlayfieldProxy) : void
      {
         §§push(false);
         var _loc17_:Boolean = true;
         var _loc18_:* = §§pop();
         var _loc5_:QuestChallengeDTO = null;
         var _loc6_:Boolean = false;
         var _loc7_:AbstractQuestSystemConfigDTO = null;
         var _loc8_:IQuestRewardDTO = null;
         var _loc9_:QuestTaskDTO = null;
         var _loc10_:ConfigPlayfieldItemDTO = null;
         if(!(_loc18_ && Boolean(param3)))
         {
            §§push(_propertiesBuilt);
            if(_loc17_ || Boolean(param1))
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               §§push(_temp_3);
               if(!_loc18_)
               {
                  if(!§§pop())
                  {
                     if(!_loc18_)
                     {
                        §§pop();
                        if(!(_loc18_ && Boolean(param2)))
                        {
                           §§push(this._challenges == null);
                           if(_loc17_ || Boolean(param1))
                           {
                              var _temp_6:* = §§pop();
                              addr008d:
                              §§push(_temp_6);
                              if(!_temp_6)
                              {
                                 if(_loc17_)
                                 {
                                    addr0097:
                                    §§pop();
                                    if(!(_loc18_ && Boolean(this)))
                                    {
                                       §§goto(addr00af);
                                    }
                                    §§goto(addr00b9);
                                 }
                              }
                              §§goto(addr00af);
                           }
                           §§goto(addr0097);
                        }
                        §§goto(addr00b9);
                     }
                     §§goto(addr0097);
                  }
                  §§goto(addr00af);
               }
               §§goto(addr008d);
            }
            addr00af:
            if(this._challenges.length == 0)
            {
               if(_loc17_)
               {
                  addr00b9:
                  return;
               }
            }
            §§goto(addr00ba);
         }
         addr00ba:
         loop0:
         for each(_loc5_ in this._challenges)
         {
            if(!(_loc18_ && Boolean(param1)))
            {
               _loc6_ = false;
               if(!(_loc18_ && Boolean(this)))
               {
                  addr00f3:
                  §§push(0);
                  if(_loc17_)
                  {
                     var _loc13_:* = §§pop();
                     if(_loc17_ || Boolean(this))
                     {
                        var _loc14_:* = _loc5_.config.downstreamQuestElements;
                        loop3:
                        while(true)
                        {
                           §§push(§§hasnext(_loc14_,_loc13_));
                           if(!_loc17_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              _loc7_ = §§nextvalue(_loc13_,_loc14_);
                              for each(_loc9_ in _loc5_.tasks)
                              {
                                 if(_loc9_.configQuestTaskID == _loc7_.id)
                                 {
                                    if(!_loc18_)
                                    {
                                       _loc6_ = true;
                                    }
                                    break;
                                 }
                              }
                              if(!(_loc18_ && Boolean(param1)))
                              {
                                 if(_loc7_)
                                 {
                                    continue;
                                 }
                                 if(!_loc17_)
                                 {
                                    continue;
                                 }
                              }
                              _loc5_.tasks.push(new QuestTaskDTO(null,QuestTaskConfigDTO(_loc7_)));
                              continue;
                           }
                           if(_loc17_)
                           {
                              if(!_loc18_)
                              {
                                 if(!(_loc18_ && Boolean(param1)))
                                 {
                                    addr01ce:
                                    _loc13_ = 0;
                                    addr01cc:
                                    if(!(_loc18_ && Boolean(param3)))
                                    {
                                       addr01de:
                                       _loc14_ = _loc5_.rewards;
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc14_,_loc13_));
                                          break loop3;
                                       }
                                       addr0395:
                                       addr038e:
                                    }
                                    addr0397:
                                 }
                                 continue loop0;
                              }
                              §§goto(addr01de);
                           }
                           §§goto(addr0395);
                        }
                        while(§§pop())
                        {
                           _loc8_ = §§nextvalue(_loc13_,_loc14_);
                           §§push(_loc8_.rewardType);
                           if(_loc17_ || Boolean(param3))
                           {
                              §§push(QuestSystemRewardTypeConstants.RESOURCE);
                              if(!(_loc18_ && Boolean(this)))
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(!_loc18_)
                                    {
                                       _loc8_.resourceConfig = param1.resources[_loc8_.rewardConfigID];
                                       if(!(_loc18_ && Boolean(param3)))
                                       {
                                          addr0244:
                                          §§push(_loc8_.rewardType);
                                          if(!(_loc18_ && Boolean(param1)))
                                          {
                                             §§push(QuestSystemRewardTypeConstants.GOOD);
                                             if(!_loc18_)
                                             {
                                                addr0263:
                                                if(§§pop() == §§pop())
                                                {
                                                   if(_loc17_)
                                                   {
                                                      _loc8_.goodConfig = param1.goods[_loc8_.rewardConfigID];
                                                      if(_loc17_)
                                                      {
                                                         addr0284:
                                                         §§push(_loc8_.rewardType);
                                                         if(!_loc18_)
                                                         {
                                                            addr028f:
                                                            §§push(QuestSystemRewardTypeConstants.PERMISSION);
                                                            if(!(_loc18_ && Boolean(param3)))
                                                            {
                                                               addr02a3:
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  if(!_loc18_)
                                                                  {
                                                                     addr02ad:
                                                                     var _loc15_:int = 0;
                                                                     if(!(_loc18_ && Boolean(param3)))
                                                                     {
                                                                        for each(_loc10_ in param1.getConfigPlayfieldItemsByPermissionId(_loc8_.rewardConfigID))
                                                                        {
                                                                           if(!_loc10_.isUpgrade)
                                                                           {
                                                                              if(_loc17_)
                                                                              {
                                                                                 _loc8_.configPlayfieldItem = _loc10_;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     if(!_loc18_)
                                                                     {
                                                                        addr0301:
                                                                        §§push(_loc8_.rewardType);
                                                                        if(_loc17_ || Boolean(param3))
                                                                        {
                                                                           addr0314:
                                                                           §§push(QuestSystemRewardTypeConstants.IMPROVEMENT);
                                                                           if(_loc17_)
                                                                           {
                                                                              addr0320:
                                                                              if(§§pop() == §§pop())
                                                                              {
                                                                                 if(!(_loc18_ && Boolean(this)))
                                                                                 {
                                                                                    addr0332:
                                                                                    _loc8_.improvementConfig = param1.config.improvements[_loc8_.rewardConfigID];
                                                                                    if(!(_loc18_ && Boolean(param3)))
                                                                                    {
                                                                                       addr0353:
                                                                                       addr035e:
                                                                                       addr0358:
                                                                                       if(_loc8_.rewardType == QuestSystemRewardTypeConstants.ASSIST)
                                                                                       {
                                                                                          if(_loc17_ || Boolean(param2))
                                                                                          {
                                                                                             addr037b:
                                                                                             _loc8_.assistConfig = param1.config.assists[_loc8_.rewardConfigID];
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr038e);
                                                                                 }
                                                                                 §§goto(addr037b);
                                                                              }
                                                                              §§goto(addr0353);
                                                                           }
                                                                           §§goto(addr035e);
                                                                        }
                                                                        §§goto(addr0358);
                                                                     }
                                                                     §§goto(addr0332);
                                                                  }
                                                                  §§goto(addr0353);
                                                               }
                                                               §§goto(addr0301);
                                                            }
                                                            §§goto(addr0320);
                                                         }
                                                         §§goto(addr0314);
                                                      }
                                                   }
                                                   §§goto(addr038e);
                                                }
                                                §§goto(addr0284);
                                             }
                                             §§goto(addr02a3);
                                          }
                                          §§goto(addr028f);
                                       }
                                       §§goto(addr02ad);
                                    }
                                    §§goto(addr0284);
                                 }
                                 §§goto(addr0244);
                              }
                              §§goto(addr0263);
                           }
                           §§goto(addr028f);
                        }
                        §§goto(addr0395);
                     }
                     §§goto(addr0397);
                  }
                  §§goto(addr01ce);
               }
               §§goto(addr01cc);
            }
            §§goto(addr00f3);
         }
         if(_loc17_)
         {
            _propertiesBuilt = true;
         }
      }
      
      override protected function validate() : void
      {
      }
   }
}

