package net.bigpoint.cityrama.model.improvement.vo
{
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigEffectDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   
   public class ImprovementEfficiencyVo
   {
      
      private static const _clientTags:Vector.<String>;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && ImprovementEfficiencyVo))
      {
         §§push(§§findproperty(_clientTags));
         var _temp_4:* = new <String>[ServerTagConstants.IM_RESIDENTIAL_BASIC_EFFICIENCY,ServerTagConstants.IM_RESIDENTIAL_NEED_EFFICIENCY,ServerTagConstants.IM_RESIDENTIAL_XP_EFFICIENCY,ServerTagConstants.IM_ENERGY_CONSUMPTION_EFFICIENCY,ServerTagConstants.IM_MOOD_CONSUMPTION_EFFICIENCY,ServerTagConstants.IM_RESIDENTIAL_TIMER_EFFICIENCY];
         §§pop()._clientTags = new <String>[ServerTagConstants.IM_RESIDENTIAL_BASIC_EFFICIENCY,ServerTagConstants.IM_RESIDENTIAL_NEED_EFFICIENCY,ServerTagConstants.IM_RESIDENTIAL_XP_EFFICIENCY,ServerTagConstants.IM_ENERGY_CONSUMPTION_EFFICIENCY,ServerTagConstants.IM_MOOD_CONSUMPTION_EFFICIENCY,ServerTagConstants.IM_RESIDENTIAL_TIMER_EFFICIENCY];
      }
      
      private var _confDto:ConfigEffectDTO;
      
      private var _tag:String;
      
      public function ImprovementEfficiencyVo(param1:ConfigEffectDTO)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:ConfigOutputDTO = null;
         if(_loc5_ || Boolean(this))
         {
            super();
            if(!_loc6_)
            {
               addr0030:
               this._confDto = param1;
            }
            var _loc3_:int = 0;
            for each(_loc2_ in this._confDto.targetOutputList)
            {
               if(!_loc6_)
               {
                  §§push(_loc2_.tagConfig == null);
                  if(_loc5_)
                  {
                     §§push(!§§pop());
                     if(!_loc6_)
                     {
                        var _temp_2:* = §§pop();
                        §§push(_temp_2);
                        if(_temp_2)
                        {
                           if(!(_loc6_ && Boolean(_loc3_)))
                           {
                              addr0089:
                              §§pop();
                              if(_loc5_ || Boolean(this))
                              {
                                 addr00bb:
                                 §§push(_clientTags.indexOf(_loc2_.tagConfig.tagName) == -1);
                                 if(_loc5_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(!§§pop())
                                 {
                                    continue;
                                 }
                                 if(_loc6_ && Boolean(_loc3_))
                                 {
                                    continue;
                                 }
                              }
                              addr00cd:
                              this._tag = _loc2_.tagConfig.tagName;
                              continue;
                           }
                        }
                        §§goto(addr00bb);
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr00bb);
               }
               §§goto(addr00cd);
            }
            return;
         }
         §§goto(addr0030);
      }
      
      public function get moreIsGood() : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = this.tag;
         if(!_loc3_)
         {
            §§push(ServerTagConstants.IM_RESIDENTIAL_BASIC_EFFICIENCY);
            if(!_loc3_)
            {
               §§push(_loc1_);
               if(!(_loc3_ && Boolean(this)))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§push(0);
                        if(_loc3_)
                        {
                        }
                     }
                     else
                     {
                        addr0108:
                        §§push(3);
                        if(_loc3_ && Boolean(_loc1_))
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(ServerTagConstants.IM_RESIDENTIAL_NEED_EFFICIENCY);
                     if(_loc2_)
                     {
                        §§push(_loc1_);
                        if(!(_loc3_ && _loc2_))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc3_)
                              {
                                 §§push(1);
                                 if(_loc3_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr00dc:
                                 §§push(2);
                                 if(_loc3_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(ServerTagConstants.IM_RESIDENTIAL_XP_EFFICIENCY);
                              if(_loc2_)
                              {
                                 §§push(_loc1_);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr00d3:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc3_)
                                       {
                                          §§goto(addr00dc);
                                       }
                                       else
                                       {
                                          addr0144:
                                          §§push(4);
                                          if(_loc3_ && Boolean(this))
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(ServerTagConstants.IM_ENERGY_CONSUMPTION_EFFICIENCY);
                                       if(_loc2_)
                                       {
                                          §§push(_loc1_);
                                          if(_loc2_)
                                          {
                                             addr00f7:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc3_ && Boolean(this)))
                                                {
                                                   §§goto(addr0108);
                                                }
                                                else
                                                {
                                                   addr016c:
                                                   §§push(5);
                                                   if(_loc3_ && _loc2_)
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(ServerTagConstants.IM_MOOD_CONSUMPTION_EFFICIENCY);
                                                if(_loc2_ || Boolean(_loc1_))
                                                {
                                                   addr012d:
                                                   §§push(_loc1_);
                                                   if(!(_loc3_ && Boolean(this)))
                                                   {
                                                      addr013b:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            §§goto(addr0144);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr016c);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr0168);
                                                      }
                                                      §§goto(addr016c);
                                                   }
                                                   addr0168:
                                                   §§goto(addr0167);
                                                }
                                                addr0167:
                                                if(ServerTagConstants.IM_RESIDENTIAL_TIMER_EFFICIENCY === _loc1_)
                                                {
                                                   §§goto(addr016c);
                                                }
                                                else
                                                {
                                                   §§push(6);
                                                }
                                             }
                                             §§goto(addr018b);
                                          }
                                          §§goto(addr013b);
                                       }
                                       §§goto(addr012d);
                                    }
                                    §§goto(addr018b);
                                 }
                                 §§goto(addr0168);
                              }
                              §§goto(addr012d);
                           }
                           §§goto(addr018b);
                        }
                        §§goto(addr00f7);
                     }
                     §§goto(addr012d);
                  }
                  addr018b:
                  switch(§§pop())
                  {
                     case 0:
                     case 1:
                     case 2:
                        §§push(true);
                        if(_loc2_)
                        {
                           return §§pop();
                        }
                        break;
                     case 3:
                     case 4:
                     case 5:
                        §§push(false);
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           return §§pop();
                        }
                        break;
                     default:
                        return false;
                  }
                  return §§pop();
               }
               §§goto(addr00d3);
            }
            §§goto(addr0167);
         }
         §§goto(addr016c);
      }
      
      public function get tag() : String
      {
         return this._tag;
      }
      
      public function get value() : Number
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:ConfigOutputDTO = null;
         var _loc2_:int = 0;
         var _loc3_:* = this._confDto.targetOutputList;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc5_)
               {
                  break;
               }
               §§push(_loc1_.tagConfig == null);
               if(!(_loc5_ && _loc3_))
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(!_temp_2)
                  {
                     if(_loc4_ || Boolean(this))
                     {
                        addr0066:
                        §§pop();
                        if(_loc5_)
                        {
                           break;
                        }
                        §§push(_clientTags.indexOf(_loc1_.tagConfig.tagName) == -1);
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc4_ || _loc3_)
                     {
                        break;
                     }
                  }
                  continue;
               }
               §§goto(addr0066);
            }
            return -1;
         }
         return _loc1_.outputAmount;
      }
   }
}

