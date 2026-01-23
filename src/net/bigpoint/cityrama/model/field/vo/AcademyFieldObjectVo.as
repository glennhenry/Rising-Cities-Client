package net.bigpoint.cityrama.model.field.vo
{
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.model.field.interfaces.ITimerInterest;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.EducationPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   
   public class AcademyFieldObjectVo extends SpecialFieldObjectVo implements ITimerInterest
   {
      
      public static const ACADEMY_MODE_START:uint = 0;
      
      public static const ACADEMY_MODE_FINISH:uint = 2;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc2_))
      {
         ACADEMY_MODE_START = 0;
         if(!_loc1_)
         {
            §§goto(addr0035);
         }
         §§goto(addr0042);
      }
      addr0035:
      
      public static const ACADEMY_MODE_WAIT:uint = 1;
      
      if(_loc2_)
      {
         addr0042:
         ACADEMY_MODE_FINISH = 2;
      }
      
      private var _currentAcademyMode:uint = 0;
      
      public function AcademyFieldObjectVo(param1:ConfigPlayfieldItemDTO)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            super(param1);
         }
      }
      
      public function get currentAcademyMode() : uint
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            §§push(this.educationIsDone);
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§push(ACADEMY_MODE_FINISH);
                     if(!(_loc2_ && _loc2_))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr0071:
                     addr0075:
                     if(this.educationIsIdle)
                     {
                        if(_loc1_ || _loc2_)
                        {
                           §§push(ACADEMY_MODE_START);
                           if(!(_loc2_ && _loc2_))
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           addr0097:
                           §§push(ACADEMY_MODE_WAIT);
                        }
                        §§goto(addr009a);
                     }
                     §§goto(addr0097);
                  }
                  addr009a:
                  return §§pop();
               }
               §§goto(addr0071);
            }
            §§goto(addr0075);
         }
         §§goto(addr0097);
      }
      
      public function get educationIsDone() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(buildingDTO == null);
            if(!_loc2_)
            {
               var _temp_1:* = §§pop();
               §§push(_temp_1);
               §§push(_temp_1);
               if(!(_loc2_ && _loc1_))
               {
                  if(!§§pop())
                  {
                     if(_loc1_ || _loc2_)
                     {
                        §§pop();
                        if(!(_loc2_ && _loc2_))
                        {
                           §§push(this.educationPhase);
                           if(_loc1_ || _loc1_)
                           {
                              §§push(§§pop() == null);
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr006c:
                                 if(§§pop())
                                 {
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       addr0087:
                                       §§push(false);
                                       if(_loc1_)
                                       {
                                          return §§pop();
                                       }
                                       addr0116:
                                       §§pop();
                                       addr0117:
                                       §§push(this.educationPhase);
                                    }
                                    else
                                    {
                                       addr0093:
                                       §§push(this.educationPhase);
                                       if(_loc1_)
                                       {
                                          addr009c:
                                          §§push(§§pop().behaviourEndTime);
                                          if(!_loc2_)
                                          {
                                             §§push(0);
                                             if(!(_loc2_ && Boolean(this)))
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(!_loc2_)
                                                {
                                                   §§push(!§§pop());
                                                   if(_loc1_)
                                                   {
                                                      addr00bf:
                                                      var _temp_9:* = §§pop();
                                                      §§push(_temp_9);
                                                      §§push(_temp_9);
                                                      if(!_loc2_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               addr00ce:
                                                               §§pop();
                                                               if(_loc1_)
                                                               {
                                                                  addr011b:
                                                                  §§push(this.educationPhase);
                                                                  if(_loc1_ || _loc2_)
                                                                  {
                                                                     §§push(§§pop().behaviourEndTime);
                                                                     if(_loc1_)
                                                                     {
                                                                        §§push(§§pop() < currentTimeStamp + 500);
                                                                        if(_loc1_ || _loc1_)
                                                                        {
                                                                           var _temp_12:* = §§pop();
                                                                           addr010d:
                                                                           §§push(_temp_12);
                                                                           if(!_temp_12)
                                                                           {
                                                                              if(_loc1_)
                                                                              {
                                                                                 §§goto(addr0116);
                                                                              }
                                                                           }
                                                                           §§goto(addr0121);
                                                                        }
                                                                        §§goto(addr0116);
                                                                     }
                                                                     addr011e:
                                                                     addr0120:
                                                                     addr0121:
                                                                     return §§pop();
                                                                     §§push(§§pop() == 0);
                                                                  }
                                                                  §§goto(addr011e);
                                                                  §§push(§§pop().behaviourTimeLeft);
                                                               }
                                                               §§goto(addr0117);
                                                            }
                                                         }
                                                         §§goto(addr0121);
                                                      }
                                                      §§goto(addr010d);
                                                   }
                                                   §§goto(addr0116);
                                                }
                                                §§goto(addr00ce);
                                             }
                                             §§goto(addr0120);
                                          }
                                          §§goto(addr011e);
                                       }
                                    }
                                    §§goto(addr011b);
                                 }
                                 §§goto(addr0093);
                              }
                              §§goto(addr00bf);
                           }
                           §§goto(addr009c);
                        }
                        §§goto(addr0093);
                     }
                  }
                  §§goto(addr006c);
               }
               §§goto(addr010d);
            }
            §§goto(addr0116);
         }
         §§goto(addr0087);
      }
      
      public function get educationIsIdle() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            §§push(buildingDTO == null);
            if(!_loc1_)
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               §§push(_temp_3);
               if(_loc2_ || Boolean(this))
               {
                  if(!§§pop())
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        §§pop();
                        if(_loc2_ || _loc1_)
                        {
                           §§push(this.educationPhase);
                           if(!_loc1_)
                           {
                              §§push(§§pop() == null);
                              if(_loc2_ || _loc1_)
                              {
                                 addr0077:
                                 if(§§pop())
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr0088:
                                       §§push(false);
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          §§goto(addr0096);
                                       }
                                    }
                                    else
                                    {
                                       addr009c:
                                       §§push(this.educationPhase);
                                       if(!(_loc1_ && Boolean(this)))
                                       {
                                          addr00ad:
                                          §§push(§§pop().behaviourEndTime);
                                          if(_loc2_ || Boolean(this))
                                          {
                                             §§push(0);
                                             if(!_loc1_)
                                             {
                                                §§goto(addr00f9);
                                             }
                                             §§goto(addr00f8);
                                          }
                                          §§goto(addr00f6);
                                       }
                                       §§goto(addr00f3);
                                    }
                                    addr00f9:
                                    §§push(§§pop() == §§pop());
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       addr00dc:
                                       var _temp_13:* = §§pop();
                                       addr00dd:
                                       §§push(_temp_13);
                                       if(_temp_13)
                                       {
                                          if(_loc2_ || _loc2_)
                                          {
                                             addr00ee:
                                             §§pop();
                                             addr00f8:
                                             addr00f6:
                                             addr00f3:
                                             addr00ef:
                                             return this.educationPhase.behaviourTimeLeft == 0;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr009c);
                              }
                              addr0096:
                              return §§pop();
                           }
                           §§goto(addr00ad);
                        }
                        §§goto(addr00ef);
                     }
                     §§goto(addr00dc);
                  }
                  §§goto(addr0077);
               }
               §§goto(addr00dd);
            }
            §§goto(addr00ee);
         }
         §§goto(addr0088);
      }
      
      public function get educationPhase() : EducationPhaseDTO
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:PhaseDTO = null;
         for each(_loc1_ in activePhases)
         {
            if(_loc5_ || Boolean(_loc1_))
            {
               if(_loc1_.config.phaseType == ServerPhaseTypes.EDUCATION)
               {
                  if(_loc5_)
                  {
                     return _loc1_ as EducationPhaseDTO;
                  }
               }
            }
         }
         return null;
      }
      
      override public function get percentageOfRemainingTimer() : Number
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         if(!(_loc5_ && Boolean(_loc1_)))
         {
            §§push(isConnectedToStreet);
            if(!(_loc5_ && Boolean(this)))
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(_temp_3)
               {
                  if(!_loc5_)
                  {
                     §§pop();
                     if(!(_loc5_ && Boolean(this)))
                     {
                        §§goto(addr005c);
                     }
                     §§goto(addr00bd);
                  }
               }
            }
            addr005c:
            §§goto(addr0054);
         }
         addr0054:
         if(!isUnderConstruction())
         {
            if(_loc4_)
            {
               §§push(this.educationPhase);
               if(!(_loc5_ && Boolean(_loc1_)))
               {
                  §§push(§§pop().behaviourEndTime);
                  if(_loc4_)
                  {
                     §§push(§§pop() - currentTimeStamp);
                     if(!(_loc5_ && Boolean(this)))
                     {
                        §§push(§§pop());
                        if(!(_loc5_ && Boolean(_loc2_)))
                        {
                           addr00ae:
                           _loc1_ = §§pop();
                           if(!(_loc5_ && Boolean(_loc3_)))
                           {
                              addr00c1:
                              addr00bd:
                              §§push(this.educationPhase.config.durationConfig.duration + buildingDTO.professionals[0].extendedCount * configPlayfieldItemVo.educationBasicTime);
                              if(!(_loc5_ && Boolean(_loc2_)))
                              {
                                 _loc2_ = §§pop();
                                 if(_loc4_)
                                 {
                                    §§push(_loc1_);
                                    if(_loc4_ || Boolean(_loc2_))
                                    {
                                       §§push(§§pop() / _loc2_);
                                       if(_loc4_)
                                       {
                                          addr010d:
                                          §§push(§§pop());
                                          if(!(_loc5_ && Boolean(_loc2_)))
                                          {
                                             _loc3_ = §§pop();
                                             if(_loc4_)
                                             {
                                                addr0132:
                                                return _loc3_;
                                             }
                                             else
                                             {
                                                §§goto(addr0153);
                                             }
                                          }
                                       }
                                    }
                                    return §§pop();
                                 }
                                 §§goto(addr0132);
                              }
                           }
                           else
                           {
                              §§goto(addr0158);
                           }
                        }
                        §§goto(addr010d);
                     }
                     §§goto(addr00ae);
                  }
                  §§goto(addr010d);
               }
               §§goto(addr00c1);
            }
            §§goto(addr0153);
         }
         else if(isUnderConstruction())
         {
            if(!_loc5_)
            {
               addr0153:
               return super.percentageOfRemainingTimer;
            }
         }
         addr0158:
         return -1;
      }
      
      public function tick(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            _currentTimestamp = param1;
         }
      }
   }
}

