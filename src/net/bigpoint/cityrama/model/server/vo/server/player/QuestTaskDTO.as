package net.bigpoint.cityrama.model.server.vo.server.player
{
   import net.bigpoint.cityrama.constants.quest.QuestSystemCompositePatternSucksConstants;
   import net.bigpoint.cityrama.model.server.vo.server.AbstractQuestSystemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.QuestCompleteCostVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.interfaces.IQuestTaskDTO;
   import net.bigpoint.cityrama.model.server.vo.server.quest.QuestTaskConfigDTO;
   
   public class QuestTaskDTO extends AbstractQuestSystemDTO implements IQuestTaskDTO
   {
      
      private var _currentValue:uint;
      
      private var _taskConfig:QuestTaskConfigDTO;
      
      private var _questCompleteCostVo:QuestCompleteCostVo;
      
      public function QuestTaskDTO(param1:Object, param2:QuestTaskConfigDTO = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || _loc3_)
         {
            super(param1);
            if(_loc4_ || _loc3_)
            {
               §§push(this);
               if(!(_loc3_ && Boolean(this)))
               {
                  if(param1 == null)
                  {
                     addr004b:
                     §§push(0);
                     if(_loc4_ || _loc3_)
                     {
                     }
                  }
                  else
                  {
                     §§push(uint(param1.v));
                  }
                  §§pop()._currentValue = §§pop();
                  if(_loc4_ || _loc3_)
                  {
                     §§push(!param2);
                     if(!_loc3_)
                     {
                        var _temp_7:* = §§pop();
                        §§push(_temp_7);
                        §§push(_temp_7);
                        if(_loc4_ || Boolean(param1))
                        {
                           if(§§pop())
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§pop();
                                 if(_loc4_ || Boolean(param2))
                                 {
                                    §§push(param1 == null);
                                    if(_loc4_)
                                    {
                                       §§push(!§§pop());
                                       if(!(_loc3_ && Boolean(param1)))
                                       {
                                          addr00cf:
                                          if(§§pop())
                                          {
                                             if(!(_loc3_ && Boolean(param2)))
                                             {
                                                addr00e0:
                                                this._taskConfig = new QuestTaskConfigDTO(param1.c);
                                                if(!_loc3_)
                                                {
                                                   §§goto(addr010b);
                                                }
                                                §§goto(addr0157);
                                             }
                                             §§goto(addr0191);
                                          }
                                          else
                                          {
                                             this._taskConfig = param2;
                                             if(!(_loc3_ && Boolean(param1)))
                                             {
                                                §§goto(addr010b);
                                             }
                                          }
                                          §§goto(addr0157);
                                       }
                                       §§goto(addr0166);
                                    }
                                    §§goto(addr0150);
                                 }
                                 §§goto(addr00e0);
                              }
                              §§goto(addr0150);
                           }
                           §§goto(addr00cf);
                        }
                        §§goto(addr013f);
                     }
                     §§goto(addr0122);
                  }
                  addr010b:
                  if(param1 != null)
                  {
                     if(!_loc3_)
                     {
                        §§push(param1.u == null);
                        if(_loc4_)
                        {
                           addr0122:
                           §§push(!§§pop());
                           if(!(_loc3_ && Boolean(param1)))
                           {
                              var _temp_14:* = §§pop();
                              §§push(_temp_14);
                              §§push(_temp_14);
                              if(_loc4_ || Boolean(param1))
                              {
                                 addr013f:
                                 if(§§pop())
                                 {
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       addr0150:
                                       §§pop();
                                       if(_loc4_)
                                       {
                                          addr0157:
                                          §§push(param1.u.et == null);
                                          if(!_loc3_)
                                          {
                                             addr0166:
                                             §§push(!§§pop());
                                             if(_loc4_ || Boolean(this))
                                             {
                                                addr0175:
                                                var _temp_18:* = §§pop();
                                                addr0176:
                                                §§push(_temp_18);
                                                if(_temp_18)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      addr018b:
                                                      §§pop();
                                                      if(!_loc3_)
                                                      {
                                                         §§goto(addr01a0);
                                                      }
                                                      §§goto(addr01b1);
                                                   }
                                                }
                                             }
                                          }
                                          addr01a0:
                                          addr0191:
                                          if(param1.u.et == QuestSystemCompositePatternSucksConstants.COST)
                                          {
                                             if(!(_loc3_ && Boolean(param2)))
                                             {
                                                addr01b1:
                                                this._questCompleteCostVo = new QuestCompleteCostVo(param1.u);
                                             }
                                          }
                                       }
                                       §§goto(addr01c0);
                                    }
                                    §§goto(addr01a0);
                                 }
                                 §§goto(addr0175);
                              }
                              §§goto(addr0176);
                           }
                           §§goto(addr0175);
                        }
                        §§goto(addr018b);
                     }
                     §§goto(addr0191);
                  }
                  §§goto(addr01c0);
               }
               §§goto(addr004b);
            }
            §§goto(addr0157);
         }
         addr01c0:
      }
      
      public function get currentValue() : uint
      {
         return this._currentValue;
      }
      
      public function get configQuestTaskID() : uint
      {
         return this._taskConfig.id;
      }
      
      public function get taskConfig() : QuestTaskConfigDTO
      {
         return this._taskConfig;
      }
      
      public function set currentValue(param1:uint) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._currentValue = param1;
         }
      }
      
      public function get questCompleteCostVo() : QuestCompleteCostVo
      {
         return this._questCompleteCostVo;
      }
      
      public function set questCompleteCostVo(param1:QuestCompleteCostVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._questCompleteCostVo = param1;
         }
      }
   }
}

