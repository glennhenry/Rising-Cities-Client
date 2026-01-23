package net.bigpoint.cityrama.model.mastery
{
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   
   public class MasteryBonusVo
   {
      
      public static const clientTags:Vector.<String>;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         §§push(§§findproperty(clientTags));
         var _temp_2:* = new <String>[ServerTagConstants.IM_RESIDENTIAL_BASIC_EFFICIENCY,ServerTagConstants.IM_RESIDENTIAL_NEED_EFFICIENCY,ServerTagConstants.IM_RESIDENTIAL_XP_EFFICIENCY,ServerTagConstants.IM_ENERGY_CONSUMPTION_EFFICIENCY,ServerTagConstants.IM_MOOD_CONSUMPTION_EFFICIENCY,ServerTagConstants.IM_RESIDENTIAL_TIMER_EFFICIENCY];
         var _temp_3:* = new <String>[ServerTagConstants.IM_RESIDENTIAL_BASIC_EFFICIENCY,ServerTagConstants.IM_RESIDENTIAL_NEED_EFFICIENCY,ServerTagConstants.IM_RESIDENTIAL_XP_EFFICIENCY,ServerTagConstants.IM_ENERGY_CONSUMPTION_EFFICIENCY,ServerTagConstants.IM_MOOD_CONSUMPTION_EFFICIENCY,ServerTagConstants.IM_RESIDENTIAL_TIMER_EFFICIENCY];
         §§pop().clientTags = new <String>[ServerTagConstants.IM_RESIDENTIAL_BASIC_EFFICIENCY,ServerTagConstants.IM_RESIDENTIAL_NEED_EFFICIENCY,ServerTagConstants.IM_RESIDENTIAL_XP_EFFICIENCY,ServerTagConstants.IM_ENERGY_CONSUMPTION_EFFICIENCY,ServerTagConstants.IM_MOOD_CONSUMPTION_EFFICIENCY,ServerTagConstants.IM_RESIDENTIAL_TIMER_EFFICIENCY];
      }
      
      private var _valueXP:Number;
      
      private var _valueCC:Number;
      
      private var _valuePP:Number;
      
      private var _valueEP:Number;
      
      private var _valueEnergy:Number;
      
      private var _valueMood:Number;
      
      private var _valueTimer:Number;
      
      private var _tag:String;
      
      private var _baseResource:String;
      
      private var _needResource:String;
      
      public function MasteryBonusVo(param1:Vector.<ConfigOutputDTO>, param2:String, param3:String)
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc4_:ConfigOutputDTO = null;
         var _loc5_:* = null;
         if(_loc10_ || Boolean(this))
         {
            super();
            if(_loc10_ || Boolean(param2))
            {
               this._valueXP = 0;
               if(_loc10_)
               {
                  addr004c:
                  this._valueCC = 0;
                  if(_loc10_)
                  {
                     this._valuePP = 0;
                     if(!(_loc9_ && Boolean(this)))
                     {
                        this._valueEP = 0;
                        if(!(_loc9_ && Boolean(this)))
                        {
                           addr0080:
                           this._valueEnergy = 0;
                           if(_loc10_)
                           {
                              this._valueMood = 0;
                              if(!(_loc9_ && Boolean(param2)))
                              {
                                 addr00a0:
                                 this._valueTimer = 0;
                                 if(!_loc9_)
                                 {
                                    addr00ac:
                                    this._baseResource = param2;
                                    if(_loc10_)
                                    {
                                       addr00b7:
                                       this._needResource = param3;
                                    }
                                    §§goto(addr00bc);
                                 }
                                 §§goto(addr00b7);
                              }
                           }
                           §§goto(addr00bc);
                        }
                        §§goto(addr00ac);
                     }
                     §§goto(addr00bc);
                  }
                  §§goto(addr0080);
               }
               addr00bc:
               for each(_loc4_ in param1)
               {
                  §§push(_loc4_.type);
                  if(!(_loc9_ && Boolean(param2)))
                  {
                     §§push(ServerOutputConstants.TAG);
                     if(!_loc9_)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(_loc10_)
                           {
                              §§push(_loc4_.tagConfig.tagName);
                              if(_loc10_)
                              {
                                 §§push(§§pop());
                                 if(!(_loc9_ && Boolean(this)))
                                 {
                                    addr0116:
                                    _loc5_ = §§pop();
                                    if(_loc9_ && Boolean(param3))
                                    {
                                       continue;
                                    }
                                    addr0126:
                                    if(MasteryBonusVo.clientTags.indexOf(_loc5_) != -1)
                                    {
                                       if(_loc9_ && Boolean(this))
                                       {
                                          continue;
                                       }
                                       this._tag = _loc5_;
                                       if(_loc9_ && Boolean(this))
                                       {
                                          continue;
                                       }
                                       addr018a:
                                       §§push(_loc4_.type);
                                       if(!(_loc9_ && Boolean(param3)))
                                       {
                                          addr019c:
                                          addr01a2:
                                          if(§§pop() != ServerOutputConstants.RESOURCE)
                                          {
                                             continue;
                                          }
                                          if(_loc9_ && Boolean(this))
                                          {
                                             continue;
                                          }
                                          §§push(_loc4_.resourceConfig.type);
                                       }
                                       var _loc8_:* = §§pop();
                                       if(_loc10_)
                                       {
                                          §§push(ServerResConst.RESOURCE_EXPERIENCE);
                                          if(_loc10_)
                                          {
                                             §§push(_loc8_);
                                             if(_loc10_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      §§push(0);
                                                      if(_loc10_)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr03bb:
                                                      §§push(6);
                                                      if(_loc9_ && Boolean(this))
                                                      {
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(ServerResConst.RESOURCE_VIRTUALCURRENCY);
                                                   if(!_loc9_)
                                                   {
                                                      addr028c:
                                                      §§push(_loc8_);
                                                      if(_loc10_ || Boolean(param2))
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               §§push(1);
                                                               if(_loc9_)
                                                               {
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr0300:
                                                               §§push(3);
                                                               if(_loc9_ && Boolean(param2))
                                                               {
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(ServerResConst.RESOURCE_EDUCATIONPOINTS);
                                                            if(!_loc9_)
                                                            {
                                                               §§push(_loc8_);
                                                               if(_loc10_)
                                                               {
                                                                  addr02c5:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§push(2);
                                                                        if(_loc10_)
                                                                        {
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr0300);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(ServerResConst.RESOURCE_PRODUCTIONPOINTS);
                                                                     if(_loc10_ || Boolean(param1))
                                                                     {
                                                                        addr02ee:
                                                                        §§push(_loc8_);
                                                                        if(_loc10_)
                                                                        {
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §§goto(addr0300);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr03bb);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(ServerResConst.RESOURCE_ENERGY_NEGATIVE);
                                                                              if(!(_loc9_ && Boolean(param3)))
                                                                              {
                                                                                 addr0327:
                                                                                 §§push(_loc8_);
                                                                                 if(_loc10_ || Boolean(param1))
                                                                                 {
                                                                                    if(§§pop() === §§pop())
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          addr0341:
                                                                                          §§push(4);
                                                                                          if(_loc10_ || Boolean(param2))
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr037a:
                                                                                          §§push(5);
                                                                                          if(_loc9_ && Boolean(param2))
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(ServerResConst.RESOURCE_ENERGY_POSITIVE);
                                                                                       if(!(_loc9_ && Boolean(this)))
                                                                                       {
                                                                                          addr0368:
                                                                                          §§push(_loc8_);
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             addr0370:
                                                                                             if(§§pop() === §§pop())
                                                                                             {
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   §§goto(addr037a);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr03e6:
                                                                                                   §§push(7);
                                                                                                   if(_loc9_ && Boolean(param3))
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                                addr0406:
                                                                                                switch(§§pop())
                                                                                                {
                                                                                                   case 0:
                                                                                                      this._valueXP = _loc4_.outputAmount;
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                      }
                                                                                                      break;
                                                                                                   case 1:
                                                                                                      this._valueCC = _loc4_.outputAmount;
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                      }
                                                                                                      break;
                                                                                                   case 2:
                                                                                                      this._valueEP = _loc4_.outputAmount;
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                      }
                                                                                                      break;
                                                                                                   case 3:
                                                                                                      this._valuePP = _loc4_.outputAmount;
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                      }
                                                                                                      break;
                                                                                                   case 4:
                                                                                                   case 5:
                                                                                                      this._valueEnergy = _loc4_.outputAmount;
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                      }
                                                                                                      break;
                                                                                                   case 6:
                                                                                                   case 7:
                                                                                                      this._valueMood = _loc4_.outputAmount;
                                                                                                      if(_loc9_ && Boolean(param2))
                                                                                                      {
                                                                                                      }
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(ServerResConst.RESOURCE_HAPPINESS_NEGATIVE);
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   addr0399:
                                                                                                   §§push(_loc8_);
                                                                                                   if(_loc10_ || Boolean(param3))
                                                                                                   {
                                                                                                      addr03a9:
                                                                                                      if(§§pop() === §§pop())
                                                                                                      {
                                                                                                         if(_loc10_ || Boolean(this))
                                                                                                         {
                                                                                                            §§goto(addr03bb);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr03e6);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr03e2:
                                                                                                         addr03e0:
                                                                                                         if(ServerResConst.RESOURCE_HAPPINESS_POSITIVE === _loc8_)
                                                                                                         {
                                                                                                            §§goto(addr03e6);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(8);
                                                                                                         }
                                                                                                         §§goto(addr0406);
                                                                                                      }
                                                                                                      §§goto(addr03e6);
                                                                                                   }
                                                                                                   §§goto(addr03e2);
                                                                                                }
                                                                                                §§goto(addr03e0);
                                                                                             }
                                                                                             §§goto(addr03e6);
                                                                                          }
                                                                                          §§goto(addr03a9);
                                                                                       }
                                                                                       §§goto(addr0399);
                                                                                    }
                                                                                    §§goto(addr0406);
                                                                                 }
                                                                                 §§goto(addr0370);
                                                                              }
                                                                              §§goto(addr0368);
                                                                           }
                                                                           §§goto(addr0406);
                                                                        }
                                                                        §§goto(addr0370);
                                                                     }
                                                                     §§goto(addr0399);
                                                                  }
                                                                  §§goto(addr0406);
                                                               }
                                                               §§goto(addr03a9);
                                                            }
                                                            §§goto(addr0327);
                                                         }
                                                         §§goto(addr0406);
                                                      }
                                                      §§goto(addr02c5);
                                                   }
                                                   §§goto(addr02ee);
                                                }
                                                §§goto(addr0406);
                                             }
                                             §§goto(addr03e2);
                                          }
                                          §§goto(addr028c);
                                       }
                                       §§goto(addr0341);
                                    }
                                    else
                                    {
                                       §§push(_loc5_);
                                       if(_loc10_ || Boolean(param3))
                                       {
                                          addr016e:
                                          if(§§pop() == "TIME")
                                          {
                                             if(!_loc10_)
                                             {
                                                continue;
                                             }
                                             this._valueTimer = _loc4_.outputAmount;
                                             if(_loc9_)
                                             {
                                                continue;
                                             }
                                          }
                                          §§goto(addr018a);
                                       }
                                    }
                                    §§goto(addr019c);
                                 }
                                 §§goto(addr016e);
                              }
                              §§goto(addr0116);
                           }
                           §§goto(addr0126);
                        }
                        §§goto(addr018a);
                     }
                     §§goto(addr01a2);
                  }
                  §§goto(addr016e);
               }
               return;
            }
            §§goto(addr004c);
         }
         §§goto(addr00a0);
      }
      
      private static function resourceToIcon(param1:String) : String
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = param1;
         if(_loc4_ || _loc3_)
         {
            §§push(ServerResConst.RESOURCE_VIRTUALCURRENCY);
            if(_loc4_ || Boolean(param1))
            {
               §§push(_loc2_);
               if(!(_loc3_ && Boolean(param1)))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc3_)
                     {
                        §§push(0);
                        if(_loc3_ && Boolean(param1))
                        {
                        }
                     }
                     else
                     {
                        addr0108:
                        §§push(2);
                        if(_loc3_)
                        {
                        }
                     }
                     §§goto(addr011f);
                  }
                  else
                  {
                     §§push(ServerResConst.RESOURCE_PRODUCTIONPOINTS);
                     if(_loc4_ || MasteryBonusVo)
                     {
                        §§push(_loc2_);
                        if(!(_loc3_ && MasteryBonusVo))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc4_ || Boolean(_loc2_))
                              {
                                 §§push(1);
                                 if(_loc4_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr0108);
                              }
                              §§goto(addr011f);
                           }
                           else
                           {
                              §§goto(addr0104);
                           }
                        }
                        addr0104:
                     }
                     §§goto(addr0103);
                  }
               }
               §§goto(addr0104);
            }
            addr0103:
            if(ServerResConst.RESOURCE_EDUCATIONPOINTS === _loc2_)
            {
               §§goto(addr0108);
            }
            else
            {
               §§push(3);
            }
            addr011f:
            switch(§§pop())
            {
               case 0:
                  §§push("layer_cc_icon");
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     return §§pop();
                  }
                  §§goto(addr0039);
                  break;
               case 1:
                  §§push("pp_icon");
                  if(!_loc3_)
                  {
                     addr0039:
                     return §§pop();
                  }
                  break;
               case 2:
                  §§push("ep_icon");
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     return §§pop();
                  }
                  break;
               default:
                  return "";
            }
            return §§pop();
         }
         §§goto(addr0108);
      }
      
      public function get gfxId() : String
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(this._tag);
         loop0:
         while(true)
         {
            var _loc1_:* = §§pop();
            if(_loc2_)
            {
               §§push(ServerTagConstants.IM_RESIDENTIAL_BASIC_EFFICIENCY);
               if(!_loc3_)
               {
                  §§push(_loc1_);
                  if(_loc2_ || _loc2_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           §§push(0);
                           if(_loc2_)
                           {
                           }
                        }
                        else
                        {
                           addr0181:
                           §§push(3);
                           if(_loc3_)
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
                           if(!(_loc3_ && _loc1_))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    §§push(1);
                                    if(_loc2_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr01c9:
                                    §§push(5);
                                    if(_loc3_ && _loc1_)
                                    {
                                    }
                                 }
                                 §§goto(addr01e8);
                              }
                              §§push(ServerTagConstants.IM_RESIDENTIAL_XP_EFFICIENCY);
                              if(_loc2_)
                              {
                                 §§push(_loc1_);
                                 if(_loc2_)
                                 {
                                    addr013c:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc3_)
                                       {
                                          addr0145:
                                          §§push(2);
                                          if(_loc3_ && _loc2_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr01c9);
                                       }
                                       §§goto(addr01e8);
                                    }
                                    else
                                    {
                                       §§push(ServerTagConstants.IM_ENERGY_CONSUMPTION_EFFICIENCY);
                                       if(_loc2_)
                                       {
                                          addr0162:
                                          §§push(_loc1_);
                                          if(_loc2_ || Boolean(this))
                                          {
                                             addr0170:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   §§goto(addr0181);
                                                }
                                                else
                                                {
                                                   addr01a5:
                                                   §§push(4);
                                                   if(_loc3_)
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(ServerTagConstants.IM_MOOD_CONSUMPTION_EFFICIENCY);
                                                if(!_loc3_)
                                                {
                                                   addr0196:
                                                   §§push(_loc1_);
                                                   if(_loc2_)
                                                   {
                                                      addr019c:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            §§goto(addr01a5);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr01c9);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr01c5);
                                                      }
                                                      §§goto(addr01c9);
                                                   }
                                                   addr01c5:
                                                   §§goto(addr01c4);
                                                }
                                                addr01c4:
                                                if(ServerTagConstants.IM_RESIDENTIAL_TIMER_EFFICIENCY === _loc1_)
                                                {
                                                   §§goto(addr01c9);
                                                }
                                                else
                                                {
                                                   §§push(6);
                                                }
                                                §§goto(addr01e8);
                                             }
                                             §§goto(addr01e8);
                                          }
                                          §§goto(addr01c5);
                                       }
                                       §§goto(addr0196);
                                    }
                                 }
                                 §§goto(addr019c);
                              }
                              §§goto(addr0196);
                              §§goto(addr01c9);
                           }
                           §§goto(addr013c);
                        }
                        §§goto(addr0162);
                     }
                     addr01e8:
                     switch(§§pop())
                     {
                        case 0:
                           §§push(resourceToIcon(this._baseResource));
                           if(!(_loc3_ && _loc1_))
                           {
                              return §§pop();
                           }
                           addr0047:
                           return §§pop();
                           break;
                        case 1:
                           §§push(resourceToIcon(this._needResource));
                           if(_loc2_)
                           {
                              §§goto(addr0047);
                              break;
                           }
                           continue;
                        case 2:
                           §§push("xp_icon");
                           if(!(_loc3_ && _loc3_))
                           {
                              return §§pop();
                           }
                           break;
                        case 3:
                           §§push("layer_energy_icon");
                           if(_loc2_)
                           {
                              return §§pop();
                           }
                           break loop0;
                        case 4:
                           §§push("layer_sad_icon");
                           if(_loc2_ || Boolean(this))
                           {
                              return §§pop();
                           }
                           break loop0;
                        case 5:
                           §§push("timer_clock");
                           if(_loc2_ || _loc3_)
                           {
                              break loop0;
                           }
                           break;
                        default:
                           return "";
                     }
                     return §§pop();
                  }
                  §§goto(addr0170);
               }
               §§goto(addr0196);
            }
            §§goto(addr0145);
         }
         return §§pop();
      }
      
      public function get locaId() : String
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = this._tag;
         if(_loc3_ || _loc2_)
         {
            §§push(ServerTagConstants.IM_RESIDENTIAL_BASIC_EFFICIENCY);
            if(!(_loc2_ && Boolean(this)))
            {
               §§push(_loc1_);
               if(!(_loc2_ && _loc3_))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc2_)
                     {
                        §§push(0);
                        if(_loc2_)
                        {
                        }
                     }
                     else
                     {
                        addr010b:
                        §§push(1);
                        if(_loc2_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(ServerTagConstants.IM_RESIDENTIAL_NEED_EFFICIENCY);
                     if(!_loc2_)
                     {
                        §§push(_loc1_);
                        if(_loc3_ || _loc3_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc3_)
                              {
                                 §§goto(addr010b);
                              }
                              else
                              {
                                 addr015b:
                                 §§push(3);
                                 if(_loc2_ && _loc3_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(ServerTagConstants.IM_RESIDENTIAL_XP_EFFICIENCY);
                              if(_loc3_)
                              {
                                 addr0120:
                                 §§push(_loc1_);
                                 if(!_loc2_)
                                 {
                                    addr0126:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§push(2);
                                          if(_loc3_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr01b0:
                                          §§push(5);
                                          if(_loc3_ || _loc3_)
                                          {
                                          }
                                       }
                                       §§goto(addr01cf);
                                    }
                                    else
                                    {
                                       §§push(ServerTagConstants.IM_ENERGY_CONSUMPTION_EFFICIENCY);
                                       if(_loc3_)
                                       {
                                          addr014c:
                                          §§push(_loc1_);
                                          if(!_loc2_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc2_)
                                                {
                                                   §§goto(addr015b);
                                                }
                                                else
                                                {
                                                   addr018f:
                                                   §§push(4);
                                                   if(_loc2_)
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(ServerTagConstants.IM_MOOD_CONSUMPTION_EFFICIENCY);
                                                if(!(_loc2_ && Boolean(_loc1_)))
                                                {
                                                   addr0180:
                                                   §§push(_loc1_);
                                                   if(_loc3_)
                                                   {
                                                      addr0186:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            §§goto(addr018f);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr01b0);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr01ac);
                                                      }
                                                      §§goto(addr01b0);
                                                   }
                                                   addr01ac:
                                                   §§goto(addr01ab);
                                                }
                                                addr01ab:
                                                if(ServerTagConstants.IM_RESIDENTIAL_TIMER_EFFICIENCY === _loc1_)
                                                {
                                                   §§goto(addr01b0);
                                                }
                                                else
                                                {
                                                   §§push(6);
                                                }
                                                §§goto(addr01cf);
                                             }
                                             §§goto(addr01cf);
                                          }
                                          §§goto(addr01ac);
                                       }
                                       §§goto(addr0180);
                                    }
                                 }
                                 §§goto(addr0186);
                              }
                              §§goto(addr0180);
                           }
                           §§goto(addr01cf);
                        }
                        §§goto(addr01ac);
                     }
                     §§goto(addr0120);
                  }
                  addr01cf:
                  switch(§§pop())
                  {
                     case 0:
                        §§push("rent");
                        if(!_loc2_)
                        {
                           return §§pop();
                        }
                        §§goto(addr0050);
                        break;
                     case 1:
                        §§push("need");
                        if(!_loc2_)
                        {
                           return §§pop();
                        }
                        §§goto(addr005f);
                        break;
                     case 2:
                        §§push("xp");
                        if(_loc3_)
                        {
                           addr0050:
                           return §§pop();
                        }
                        §§goto(addr007e);
                        break;
                     case 3:
                        §§push("energy");
                        if(_loc3_)
                        {
                           addr005f:
                           return §§pop();
                        }
                        break;
                     case 4:
                        §§push("mood");
                        if(!(_loc2_ && _loc3_))
                        {
                           addr007e:
                           return §§pop();
                        }
                        break;
                     case 5:
                        §§push("time");
                        if(!_loc2_)
                        {
                           break;
                        }
                        §§goto(addr01ed);
                        break;
                     default:
                        addr01ed:
                        return §§pop();
                        return "";
                  }
                  return §§pop();
               }
               §§goto(addr0126);
            }
            §§goto(addr014c);
         }
         §§goto(addr010b);
      }
      
      public function get value() : Number
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:* = this._tag;
         if(_loc2_ || Boolean(this))
         {
            §§push(ServerTagConstants.IM_RESIDENTIAL_BASIC_EFFICIENCY);
            if(_loc2_ || Boolean(_loc1_))
            {
               §§push(_loc1_);
               if(!_loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc3_)
                     {
                        §§push(0);
                        if(_loc3_ && _loc2_)
                        {
                        }
                     }
                     else
                     {
                        addr0168:
                        §§push(2);
                        if(_loc2_ || _loc3_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(ServerTagConstants.IM_RESIDENTIAL_NEED_EFFICIENCY);
                     if(_loc2_ || _loc3_)
                     {
                        §§push(_loc1_);
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 §§push(1);
                                 if(_loc3_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr01d0:
                                 §§push(4);
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
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc2_ || Boolean(_loc1_))
                                       {
                                          §§goto(addr0168);
                                       }
                                       else
                                       {
                                          addr01f0:
                                          §§push(5);
                                          if(_loc3_ && Boolean(_loc1_))
                                          {
                                          }
                                       }
                                       §§goto(addr020f);
                                    }
                                    else
                                    {
                                       §§push(ServerTagConstants.IM_ENERGY_CONSUMPTION_EFFICIENCY);
                                       if(!(_loc3_ && Boolean(_loc1_)))
                                       {
                                          addr018d:
                                          §§push(_loc1_);
                                          if(_loc2_)
                                          {
                                             §§goto(addr0193);
                                          }
                                          §§goto(addr01ec);
                                       }
                                       §§goto(addr01c1);
                                    }
                                 }
                                 addr0193:
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc2_ || _loc3_)
                                    {
                                       §§push(3);
                                       if(_loc2_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr01d0);
                                    }
                                 }
                                 else
                                 {
                                    §§push(ServerTagConstants.IM_MOOD_CONSUMPTION_EFFICIENCY);
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       addr01c1:
                                       §§push(_loc1_);
                                       if(_loc2_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc2_)
                                             {
                                                §§goto(addr01d0);
                                             }
                                             else
                                             {
                                                §§goto(addr01f0);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr01ec);
                                          }
                                          §§goto(addr01f0);
                                       }
                                       addr01ec:
                                       §§goto(addr01eb);
                                    }
                                    addr01eb:
                                    if(ServerTagConstants.IM_RESIDENTIAL_TIMER_EFFICIENCY === _loc1_)
                                    {
                                       §§goto(addr01f0);
                                    }
                                    else
                                    {
                                       §§push(6);
                                    }
                                    §§goto(addr020f);
                                 }
                                 §§goto(addr020f);
                              }
                              §§goto(addr018d);
                           }
                           §§goto(addr020f);
                        }
                        §§goto(addr01ec);
                     }
                     §§goto(addr01eb);
                  }
                  addr020f:
                  if(_loc2_)
                  {
                     switch(§§pop())
                     {
                        case 0:
                           §§push(this.resourceToValue(this._baseResource));
                           if(!_loc3_)
                           {
                              return §§pop();
                           }
                           §§goto(addr0071);
                           break;
                        case 1:
                           §§push(this.resourceToValue(this._needResource));
                           if(_loc2_)
                           {
                              return §§pop();
                           }
                           §§goto(addr009c);
                           break;
                        case 2:
                           §§push(this._valueXP);
                           if(!(_loc3_ && _loc2_))
                           {
                              return §§pop();
                           }
                           break;
                        case 3:
                           §§push(this._valueEnergy);
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr0071:
                              return §§pop();
                           }
                           break;
                        case 4:
                           §§push(this._valueMood);
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              break;
                           }
                           §§goto(addr009c);
                           break;
                        case 5:
                           addr009c:
                           return §§pop();
                           return this._valueTimer;
                        default:
                           return 0;
                     }
                     return §§pop();
                  }
                  return §§pop();
               }
               §§goto(addr01ec);
            }
            §§goto(addr018d);
         }
         §§goto(addr0168);
      }
      
      private function resourceToValue(param1:String) : Number
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1;
         if(!_loc4_)
         {
            §§push(ServerResConst.RESOURCE_VIRTUALCURRENCY);
            if(!_loc4_)
            {
               §§push(_loc2_);
               if(!_loc4_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc4_)
                     {
                        addr0091:
                        §§push(0);
                        if(_loc3_ || Boolean(_loc2_))
                        {
                        }
                     }
                     else
                     {
                        addr00f8:
                        §§push(2);
                        if(_loc4_ && Boolean(_loc2_))
                        {
                        }
                     }
                     §§goto(addr0118);
                  }
                  else
                  {
                     §§push(ServerResConst.RESOURCE_PRODUCTIONPOINTS);
                     if(_loc3_ || Boolean(this))
                     {
                        §§push(_loc2_);
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr00c5:
                           if(§§pop() === §§pop())
                           {
                              if(!_loc4_)
                              {
                                 §§push(1);
                                 if(_loc4_ && Boolean(_loc2_))
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr00f8);
                              }
                              §§goto(addr0118);
                           }
                           else
                           {
                              §§goto(addr00f4);
                           }
                        }
                        addr00f4:
                     }
                     §§goto(addr00f3);
                  }
               }
               §§goto(addr00c5);
            }
            addr00f3:
            if(ServerResConst.RESOURCE_EDUCATIONPOINTS === _loc2_)
            {
               §§goto(addr00f8);
            }
            else
            {
               §§push(3);
            }
            addr0118:
            switch(§§pop())
            {
               case 0:
                  §§push(this._valueCC);
                  if(!_loc4_)
                  {
                     return §§pop();
                  }
                  §§goto(addr003c);
                  break;
               case 1:
                  §§push(this._valuePP);
                  if(!_loc4_)
                  {
                     addr003c:
                     return §§pop();
                  }
                  break;
               case 2:
                  §§push(this._valueEP);
                  if(_loc3_ || _loc3_)
                  {
                     return §§pop();
                  }
                  break;
               default:
                  return this._valueCC;
            }
            return §§pop();
         }
         §§goto(addr0091);
      }
      
      public function get tag() : String
      {
         return this._tag;
      }
   }
}

