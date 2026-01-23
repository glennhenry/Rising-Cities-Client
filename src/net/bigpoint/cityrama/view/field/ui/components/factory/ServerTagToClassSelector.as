package net.bigpoint.cityrama.view.field.ui.components.factory
{
   import flash.errors.IllegalOperationError;
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.factorys.InfrastructureDecorationFieldObjectVo;
   import net.bigpoint.cityrama.model.field.ground.vo.PierObjectVo;
   import net.bigpoint.cityrama.model.field.ground.vo.SquareObjectVo;
   import net.bigpoint.cityrama.model.field.ground.vo.StreetObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IBillboardObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.field.vo.AcademyFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BoulderObjectVo;
   import net.bigpoint.cityrama.model.field.vo.CinemaFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.CitySquareFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.DecorationFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ExpansionFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.InfrastructureBuildingFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.MysteryBuildingObjectVo;
   import net.bigpoint.cityrama.model.field.vo.PowerplantFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ProductionFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ResidentialFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ScheduledDropFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ShopFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.SpecialFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.TownHallFieldObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigTagDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.cityrama.view.field.ground.ui.components.SquareObject;
   import net.bigpoint.cityrama.view.field.ground.ui.components.StreetObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.AcademyFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ActivatorFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.BoulderFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.CinemaFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.CitySquareFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.DecorationFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ExpansionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.InfrastructureBuildingFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.MysteryBuildingFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.PowerplantFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ProductionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ScheduledDropFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.TownHallFieldObject;
   
   public class ServerTagToClassSelector
   {
      
      public function ServerTagToClassSelector()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function getFieldObjectClassByTags(param1:ConfigPlayfieldItemDTO, param2:Dictionary) : Class
      {
         var _temp_1:* = true;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = _temp_1;
         var _loc9_:Number = NaN;
         var _loc3_:* = false;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:* = false;
         var _loc7_:* = false;
         var _loc8_:Vector.<String> = new Vector.<String>(0);
         for each(_loc9_ in param1.tagIds)
         {
            if(_loc13_)
            {
               continue;
            }
            _loc8_.push(ConfigTagDTO(param2[_loc9_]).tagName);
            if(!(_loc14_ || Boolean(param2)))
            {
               continue;
            }
            var _loc12_:* = ConfigTagDTO(param2[_loc9_]).tagName;
            if(!_loc13_)
            {
               §§push(ServerTagConstants.BUILDING);
               if(!(_loc13_ && Boolean(param1)))
               {
                  §§push(_loc12_);
                  if(_loc14_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc14_)
                        {
                           §§push(0);
                           if(_loc13_ && Boolean(param2))
                           {
                           }
                        }
                        else
                        {
                           addr01b1:
                           §§push(2);
                           if(_loc13_ && ServerTagToClassSelector)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(ServerTagConstants.DECORATION);
                        if(_loc14_)
                        {
                           §§push(_loc12_);
                           if(_loc14_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc14_)
                                 {
                                    §§push(1);
                                    if(_loc14_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr01f2:
                                    §§push(3);
                                    if(_loc13_)
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(ServerTagConstants.GROUND);
                                 if(_loc14_)
                                 {
                                    addr0197:
                                    §§push(_loc12_);
                                    if(!(_loc13_ && Boolean(param1)))
                                    {
                                       addr01a7:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc13_)
                                          {
                                             §§goto(addr01b1);
                                          }
                                          else
                                          {
                                             addr0209:
                                             §§push(4);
                                             if(_loc14_ || Boolean(param2))
                                             {
                                             }
                                          }
                                          addr0229:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                §§push(true);
                                                if(!_loc13_)
                                                {
                                                   _loc3_ = §§pop();
                                                   if(_loc14_ || ServerTagToClassSelector)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr00a3:
                                                   _loc4_ = §§pop();
                                                   if(_loc14_ || ServerTagToClassSelector)
                                                   {
                                                   }
                                                }
                                                continue;
                                             case 1:
                                                §§push(true);
                                                if(!_loc14_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr00a3);
                                                break;
                                             case 2:
                                                §§push(true);
                                                if(!(_loc14_ || Boolean(param2)))
                                                {
                                                   break;
                                                }
                                                _loc5_ = §§pop();
                                                if(_loc14_ || ServerTagToClassSelector)
                                                {
                                                }
                                                continue;
                                             case 3:
                                                §§push(true);
                                                if(!(_loc14_ || Boolean(param1)))
                                                {
                                                   break;
                                                }
                                                _loc6_ = §§pop();
                                                if(_loc14_ || _loc3_)
                                                {
                                                }
                                                continue;
                                             case 4:
                                                §§push(true);
                                                break;
                                             default:
                                                continue;
                                          }
                                          _loc7_ = §§pop();
                                          if(_loc14_)
                                          {
                                          }
                                          continue;
                                       }
                                       §§push(ServerTagConstants.SPECIAL);
                                       if(_loc14_ || Boolean(param1))
                                       {
                                          §§push(_loc12_);
                                          if(!_loc13_)
                                          {
                                             addr01e0:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc13_ && _loc3_))
                                                {
                                                   §§goto(addr01f2);
                                                }
                                                else
                                                {
                                                   §§goto(addr0209);
                                                }
                                             }
                                             else
                                             {
                                                addr0205:
                                                addr0203:
                                                if(ServerTagConstants.BOULDER === _loc12_)
                                                {
                                                   §§goto(addr0209);
                                                }
                                                else
                                                {
                                                   §§push(5);
                                                }
                                                §§goto(addr0229);
                                             }
                                             §§goto(addr0209);
                                          }
                                          §§goto(addr0205);
                                       }
                                       §§goto(addr0203);
                                       §§goto(addr0209);
                                    }
                                    §§goto(addr01e0);
                                 }
                                 §§goto(addr0203);
                              }
                              §§goto(addr0229);
                           }
                           §§goto(addr01a7);
                        }
                        §§goto(addr0197);
                     }
                     §§goto(addr0229);
                  }
                  §§goto(addr0205);
               }
               §§goto(addr0203);
            }
            §§goto(addr0209);
         }
         if(_loc14_)
         {
            §§push(_loc3_);
            if(_loc14_ || _loc3_)
            {
               §§push(§§pop());
               if(_loc14_ || _loc3_)
               {
                  var _temp_18:* = §§pop();
                  §§push(_temp_18);
                  §§push(_temp_18);
                  if(!(_loc13_ && ServerTagToClassSelector))
                  {
                     if(§§pop())
                     {
                        if(_loc14_ || Boolean(param2))
                        {
                           §§pop();
                           if(_loc14_)
                           {
                              §§push(_loc6_);
                              if(!_loc13_)
                              {
                                 §§push(!§§pop());
                                 if(!_loc13_)
                                 {
                                    addr02a8:
                                    if(§§pop())
                                    {
                                       if(!_loc13_)
                                       {
                                          if(_loc8_.indexOf(ServerTagConstants.RESIDENTIAL) == -1)
                                          {
                                             if(_loc8_.indexOf(ServerTagConstants.SHOP) != -1)
                                             {
                                                if(_loc14_)
                                                {
                                                   return ShopFieldObject;
                                                }
                                             }
                                             else if(_loc8_.indexOf(ServerTagConstants.POWERPLANT) != -1)
                                             {
                                                if(_loc14_)
                                                {
                                                   return PowerplantFieldObject;
                                                }
                                             }
                                             else if(_loc8_.indexOf(ServerTagConstants.PRODUCTION) != -1)
                                             {
                                                if(_loc14_)
                                                {
                                                   return ProductionFieldObject;
                                                }
                                                §§goto(addr03f7);
                                             }
                                             else
                                             {
                                                §§goto(addr06d0);
                                             }
                                             addr046a:
                                             return MysteryBuildingFieldObject;
                                          }
                                          if(_loc14_ || _loc3_)
                                          {
                                             return ResidentialFieldObject;
                                          }
                                          addr0401:
                                          if(_loc8_.indexOf(ServerTagConstants.SCHOOL) != -1)
                                          {
                                             if(_loc14_ || Boolean(param1))
                                             {
                                                return AcademyFieldObject;
                                             }
                                          }
                                          else if(_loc8_.indexOf(ServerTagConstants.SECURITY_DEVICE) != -1)
                                          {
                                             if(_loc14_)
                                             {
                                                return InfrastructureBuildingFieldObject;
                                             }
                                          }
                                          else
                                          {
                                             if(_loc8_.indexOf(ServerTagConstants.MYSTERY) != -1)
                                             {
                                                if(!(_loc13_ && Boolean(param1)))
                                                {
                                                   §§goto(addr046a);
                                                }
                                             }
                                             else
                                             {
                                                addr047c:
                                                if(_loc8_.indexOf(ServerTagConstants.BUILDING_ACTIVATOR) != -1)
                                                {
                                                   if(!(_loc13_ && Boolean(param1)))
                                                   {
                                                      §§goto(addr049b);
                                                   }
                                                   else
                                                   {
                                                      addr053a:
                                                      §§push(_loc3_);
                                                      if(!_loc13_)
                                                      {
                                                         §§push(!§§pop());
                                                         if(_loc14_)
                                                         {
                                                            addr0548:
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc13_ && Boolean(param1)))
                                                               {
                                                                  if(_loc8_.indexOf(ServerTagConstants.SECURITY_DEVICE) == -1)
                                                                  {
                                                                     if(!(_loc13_ && Boolean(param1)))
                                                                     {
                                                                        return DecorationFieldObject;
                                                                     }
                                                                     addr0603:
                                                                     §§push(param1.driveable);
                                                                     if(_loc14_ || Boolean(param1))
                                                                     {
                                                                        addr0615:
                                                                        §§push(§§pop());
                                                                        if(!_loc13_)
                                                                        {
                                                                           addr061c:
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc13_)
                                                                              {
                                                                                 §§goto(addr0626);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(param1.walkable);
                                                                              if(!(_loc13_ && Boolean(param1)))
                                                                              {
                                                                                 addr064a:
                                                                                 §§push(§§pop());
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    addr0651:
                                                                                    var _temp_29:* = §§pop();
                                                                                    addr0652:
                                                                                    §§push(_temp_29);
                                                                                    if(_temp_29)
                                                                                    {
                                                                                       if(_loc14_ || Boolean(param2))
                                                                                       {
                                                                                          addr0664:
                                                                                          §§pop();
                                                                                          if(_loc14_)
                                                                                          {
                                                                                             addr066b:
                                                                                             §§push(param1.driveable);
                                                                                             if(_loc14_ || ServerTagToClassSelector)
                                                                                             {
                                                                                                §§goto(addr067d);
                                                                                             }
                                                                                             §§goto(addr06a6);
                                                                                          }
                                                                                          §§goto(addr0696);
                                                                                       }
                                                                                       addr067d:
                                                                                       §§push(!§§pop());
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          addr0684:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!(_loc13_ && ServerTagToClassSelector))
                                                                                             {
                                                                                                §§goto(addr0696);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr06d0);
                                                                                          }
                                                                                          §§goto(addr06eb);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr06a6:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc14_ || _loc3_)
                                                                                             {
                                                                                                return BoulderFieldObject;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr06d0);
                                                                                    }
                                                                                    §§goto(addr0684);
                                                                                 }
                                                                                 §§goto(addr06a6);
                                                                              }
                                                                              §§goto(addr0664);
                                                                           }
                                                                           §§goto(addr06d0);
                                                                        }
                                                                        §§goto(addr0684);
                                                                     }
                                                                     §§goto(addr06a6);
                                                                  }
                                                                  else if(_loc8_.indexOf(ServerTagConstants.SECURITY_DEVICE) != -1)
                                                                  {
                                                                     if(_loc14_)
                                                                     {
                                                                        return InfrastructureDecorationFieldObject;
                                                                     }
                                                                     §§goto(addr066b);
                                                                  }
                                                               }
                                                               §§goto(addr06d0);
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc5_);
                                                               if(_loc14_)
                                                               {
                                                                  addr05b8:
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc14_ || Boolean(param2))
                                                                     {
                                                                        §§push(param1.walkable);
                                                                        if(_loc14_ || Boolean(param1))
                                                                        {
                                                                           addr05dc:
                                                                           §§push(§§pop());
                                                                           if(_loc14_ || Boolean(param1))
                                                                           {
                                                                              var _temp_38:* = §§pop();
                                                                              §§push(_temp_38);
                                                                              §§push(_temp_38);
                                                                              if(_loc14_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       addr05fc:
                                                                                       §§pop();
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          §§goto(addr0603);
                                                                                       }
                                                                                       §§goto(addr06d0);
                                                                                    }
                                                                                    §§goto(addr0651);
                                                                                 }
                                                                                 §§goto(addr061c);
                                                                              }
                                                                              §§goto(addr0652);
                                                                           }
                                                                           §§goto(addr061c);
                                                                        }
                                                                        §§goto(addr067d);
                                                                     }
                                                                     addr0626:
                                                                     return StreetObject;
                                                                  }
                                                                  §§push(_loc7_);
                                                                  §§goto(addr06a6);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr061c);
                                                      }
                                                      §§goto(addr067d);
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr04ad);
                                                }
                                                §§goto(addr06d0);
                                             }
                                             addr04ad:
                                             if(_loc8_.indexOf(ServerTagConstants.CINEMA) != -1)
                                             {
                                                if(!_loc13_)
                                                {
                                                   return CinemaFieldObject;
                                                }
                                             }
                                             else
                                             {
                                                if(_loc8_.indexOf(ServerTagConstants.CLIENT_SCHEDULED_DROP) != -1)
                                                {
                                                   if(!(_loc13_ && Boolean(param1)))
                                                   {
                                                      return ScheduledDropFieldObject;
                                                   }
                                                   §§goto(addr053a);
                                                }
                                                §§goto(addr06d0);
                                             }
                                             §§goto(addr0696);
                                          }
                                          §§goto(addr047c);
                                          §§goto(addr06d0);
                                       }
                                       §§goto(addr049b);
                                    }
                                    else
                                    {
                                       §§push(_loc3_);
                                       if(!(_loc13_ && Boolean(param2)))
                                       {
                                          §§push(§§pop());
                                          if(!_loc13_)
                                          {
                                             var _temp_41:* = §§pop();
                                             §§push(_temp_41);
                                             §§push(_temp_41);
                                             if(!_loc13_)
                                             {
                                                addr0367:
                                                if(§§pop())
                                                {
                                                   if(_loc14_ || _loc3_)
                                                   {
                                                      §§goto(addr0387);
                                                   }
                                                   §§goto(addr05dc);
                                                }
                                                §§goto(addr03ad);
                                             }
                                             §§goto(addr0652);
                                          }
                                          §§goto(addr0615);
                                       }
                                    }
                                    §§goto(addr067d);
                                 }
                                 §§goto(addr06a6);
                              }
                              §§goto(addr02a8);
                           }
                           addr049b:
                           return ActivatorFieldObject;
                        }
                        addr0387:
                        §§pop();
                        if(_loc14_ || _loc3_)
                        {
                           §§push(_loc6_);
                           if(_loc14_ || Boolean(param1))
                           {
                              §§push(§§pop());
                              if(!_loc13_)
                              {
                                 addr03ad:
                                 if(§§pop())
                                 {
                                    if(_loc14_)
                                    {
                                       §§goto(addr03b7);
                                    }
                                    addr0696:
                                    return SquareObject;
                                 }
                                 §§push(_loc4_);
                                 if(_loc14_)
                                 {
                                    §§push(§§pop());
                                    if(_loc14_)
                                    {
                                       var _temp_46:* = §§pop();
                                       §§push(_temp_46);
                                       §§push(_temp_46);
                                       if(_loc14_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc14_ || _loc3_)
                                             {
                                                §§pop();
                                                if(!(_loc13_ && Boolean(param1)))
                                                {
                                                   §§goto(addr053a);
                                                }
                                                §§goto(addr0603);
                                             }
                                             §§goto(addr06a6);
                                          }
                                          §§goto(addr0548);
                                       }
                                       §§goto(addr0652);
                                    }
                                    §§goto(addr05fc);
                                 }
                                 §§goto(addr0664);
                              }
                              §§goto(addr05fc);
                           }
                           §§goto(addr05b8);
                        }
                        addr03b7:
                        if(_loc8_.indexOf(ServerTagConstants.BUILDING_TOWNHALL) != -1)
                        {
                           if(!(_loc13_ && Boolean(param1)))
                           {
                              return TownHallFieldObject;
                           }
                           §§goto(addr066b);
                        }
                        else if(_loc8_.indexOf(ServerTagConstants.BUILDING_EVENTSQUARE) != -1)
                        {
                           if(_loc14_)
                           {
                              addr03f7:
                              return CitySquareFieldObject;
                           }
                           §§goto(addr0603);
                        }
                        else
                        {
                           §§goto(addr0401);
                        }
                        §§goto(addr06d0);
                     }
                     §§goto(addr02a8);
                  }
                  §§goto(addr0367);
               }
               §§goto(addr0615);
            }
            §§goto(addr064a);
         }
         addr06d0:
         if(param1.virtualObjectOverride == ServerTagConstants.VIRTUAL_EXPANSION)
         {
            if(_loc14_ || Boolean(param1))
            {
               addr06eb:
               return ExpansionFieldObject;
            }
         }
         throw new IllegalOperationError("Class cannot be created, unknown config item");
      }
      
      public static function getFieldObjectVoClassByTags(param1:ConfigPlayfieldItemDTO, param2:Cuboid, param3:TimerProxy, param4:GameConfigProxy, param5:PlayfieldProxy) : IGameObjectVo
      {
         §§push(false);
         var _loc19_:Boolean = true;
         var _loc20_:* = §§pop();
         var _loc14_:Number = NaN;
         var _loc15_:IGameObjectVo = null;
         var _loc6_:Dictionary = param4.config.tags;
         var _loc7_:* = false;
         var _loc8_:* = false;
         var _loc9_:* = false;
         var _loc10_:* = false;
         var _loc11_:* = false;
         var _loc12_:* = false;
         var _loc13_:Vector.<String> = new Vector.<String>(0);
         for each(_loc14_ in param1.tagIds)
         {
            if(!(_loc19_ || Boolean(param2)))
            {
               continue;
            }
            _loc13_.push(ConfigTagDTO(_loc6_[_loc14_]).tagName);
            if(_loc20_)
            {
               continue;
            }
            var _loc18_:* = ConfigTagDTO(_loc6_[_loc14_]).tagName;
            if(_loc19_ || Boolean(param1))
            {
               §§push(ServerTagConstants.BUILDING);
               if(!_loc20_)
               {
                  §§push(_loc18_);
                  if(_loc19_ || Boolean(param1))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc19_ || Boolean(param2))
                        {
                           §§push(0);
                           if(_loc20_ && ServerTagToClassSelector)
                           {
                           }
                        }
                        else
                        {
                           addr0224:
                           §§push(2);
                           if(_loc20_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(ServerTagConstants.DECORATION);
                        if(_loc19_ || Boolean(param2))
                        {
                           §§push(_loc18_);
                           if(_loc19_ || Boolean(param2))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc19_)
                                 {
                                    §§push(1);
                                    if(_loc20_ && ServerTagToClassSelector)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr025d:
                                    §§push(3);
                                    if(_loc20_ && Boolean(param2))
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(ServerTagConstants.GROUND);
                                 if(_loc19_ || ServerTagToClassSelector)
                                 {
                                    addr0202:
                                    §§push(_loc18_);
                                    if(!(_loc20_ && Boolean(param3)))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc20_ && Boolean(param1)))
                                          {
                                             §§goto(addr0224);
                                          }
                                          else
                                          {
                                             addr029e:
                                             §§push(4);
                                             if(_loc20_ && ServerTagToClassSelector)
                                             {
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(ServerTagConstants.SPECIAL);
                                          if(!_loc20_)
                                          {
                                             addr023b:
                                             §§push(_loc18_);
                                             if(_loc19_ || Boolean(param2))
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!(_loc20_ && Boolean(param2)))
                                                   {
                                                      §§goto(addr025d);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr029e);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(ServerTagConstants.BOULDER);
                                                   if(!(_loc20_ && Boolean(param3)))
                                                   {
                                                      addr0284:
                                                      §§push(_loc18_);
                                                      if(_loc19_)
                                                      {
                                                         addr028c:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!(_loc20_ && ServerTagToClassSelector))
                                                            {
                                                               §§goto(addr029e);
                                                            }
                                                            else
                                                            {
                                                               addr02bd:
                                                               §§push(5);
                                                               if(_loc20_)
                                                               {
                                                               }
                                                            }
                                                            addr02d5:
                                                            switch(§§pop())
                                                            {
                                                               case 0:
                                                                  §§push(true);
                                                                  if(!_loc20_)
                                                                  {
                                                                     _loc7_ = §§pop();
                                                                     if(_loc20_ && ServerTagToClassSelector)
                                                                     {
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr00dd:
                                                                     _loc9_ = §§pop();
                                                                     if(_loc19_ || Boolean(param1))
                                                                     {
                                                                     }
                                                                  }
                                                                  continue;
                                                               case 1:
                                                                  §§push(true);
                                                                  if(!(_loc19_ || Boolean(param2)))
                                                                  {
                                                                     break;
                                                                  }
                                                                  _loc8_ = §§pop();
                                                                  if(_loc20_ && Boolean(param2))
                                                                  {
                                                                  }
                                                                  continue;
                                                               case 2:
                                                                  §§push(true);
                                                                  if(_loc19_)
                                                                  {
                                                                     §§goto(addr00dd);
                                                                     break;
                                                                  }
                                                                  addr00f9:
                                                                  _loc10_ = §§pop();
                                                                  if(_loc20_ && Boolean(param3))
                                                                  {
                                                                  }
                                                                  continue;
                                                               case 3:
                                                                  §§push(true);
                                                                  if(!_loc20_)
                                                                  {
                                                                     §§goto(addr00f9);
                                                                     break;
                                                                  }
                                                                  addr011d:
                                                                  _loc11_ = §§pop();
                                                                  if(_loc20_ && Boolean(param3))
                                                                  {
                                                                  }
                                                                  continue;
                                                               case 4:
                                                                  §§push(true);
                                                                  if(_loc20_ && Boolean(param2))
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr011d);
                                                                  break;
                                                               case 5:
                                                                  §§push(true);
                                                                  break;
                                                               default:
                                                                  continue;
                                                            }
                                                            _loc12_ = §§pop();
                                                            if(_loc19_ || Boolean(param1))
                                                            {
                                                            }
                                                            continue;
                                                         }
                                                         addr02b9:
                                                         addr02b7:
                                                         if(ServerTagConstants.DOCK === _loc18_)
                                                         {
                                                            §§goto(addr02bd);
                                                         }
                                                         else
                                                         {
                                                            §§push(6);
                                                         }
                                                         §§goto(addr02d5);
                                                         §§goto(addr02bd);
                                                      }
                                                      §§goto(addr02b9);
                                                   }
                                                   §§goto(addr02b7);
                                                }
                                                §§goto(addr02d5);
                                             }
                                             §§goto(addr028c);
                                          }
                                          §§goto(addr0284);
                                       }
                                       §§goto(addr02d5);
                                    }
                                    §§goto(addr028c);
                                 }
                                 §§goto(addr02b7);
                              }
                              §§goto(addr02d5);
                           }
                           §§goto(addr028c);
                        }
                        §§goto(addr023b);
                     }
                     §§goto(addr02d5);
                  }
                  §§goto(addr02b9);
               }
               §§goto(addr0202);
            }
            §§goto(addr029e);
         }
         if(!_loc20_)
         {
            §§push(_loc7_);
            if(_loc19_ || Boolean(param1))
            {
               §§push(§§pop());
               if(_loc19_ || Boolean(param3))
               {
                  var _temp_28:* = §§pop();
                  §§push(_temp_28);
                  §§push(_temp_28);
                  if(_loc19_ || ServerTagToClassSelector)
                  {
                     if(§§pop())
                     {
                        if(_loc19_ || ServerTagToClassSelector)
                        {
                           §§pop();
                           if(!_loc20_)
                           {
                              §§push(_loc10_);
                              if(!_loc20_)
                              {
                                 §§push(!§§pop());
                                 if(!_loc20_)
                                 {
                                    addr0358:
                                    if(§§pop())
                                    {
                                       if(_loc19_ || Boolean(param2))
                                       {
                                          if(_loc13_.indexOf(ServerTagConstants.RESIDENTIAL) != -1)
                                          {
                                             if(!(_loc20_ && Boolean(param3)))
                                             {
                                                _loc15_ = new ResidentialFieldObjectVo(param1);
                                                _loc15_.matrix3dCoordinates = param2;
                                                _loc15_ = ConfigFactory.buildResidentialFieldObjectVo(_loc15_ as ResidentialFieldObjectVo);
                                                if(_loc19_)
                                                {
                                                   addr07d0:
                                                   if(param1.virtualObjectOverride == ServerTagConstants.VIRTUAL_EXPANSION)
                                                   {
                                                      if(_loc19_ || ServerTagToClassSelector)
                                                      {
                                                         addr07eb:
                                                         _loc15_ = new ExpansionFieldObjectVo(param1);
                                                         addr07f8:
                                                         if(_loc15_ is IBillboardObjectVo)
                                                         {
                                                            if(!(_loc20_ && Boolean(param2)))
                                                            {
                                                               IBillboardObjectVo(_loc15_).currentTimeStamp = param3.currentTimeStamp;
                                                               if(_loc19_ || Boolean(param3))
                                                               {
                                                                  addr083a:
                                                                  if(_loc15_ == null)
                                                                  {
                                                                     if(_loc19_)
                                                                     {
                                                                        §§goto(addr0847);
                                                                     }
                                                                  }
                                                                  _loc15_.matrix3dCoordinates = param2;
                                                               }
                                                               return _loc15_;
                                                            }
                                                            §§goto(addr0847);
                                                         }
                                                         §§goto(addr083a);
                                                      }
                                                      addr0847:
                                                      throw new IllegalOperationError("Class cannot be created, unknown config item");
                                                   }
                                                   §§goto(addr07f8);
                                                }
                                                §§goto(addr07eb);
                                             }
                                             else
                                             {
                                                addr0790:
                                                _loc15_ = new StreetObjectVo(param1,param5.tileSize);
                                             }
                                          }
                                          else if(_loc13_.indexOf(ServerTagConstants.SHOP) != -1)
                                          {
                                             if(_loc19_)
                                             {
                                                _loc15_ = new ShopFieldObjectVo(param1);
                                                _loc15_.matrix3dCoordinates = param2;
                                                _loc15_ = ConfigFactory.buildShopFieldObjectVo(_loc15_ as ShopFieldObjectVo);
                                             }
                                             else
                                             {
                                                addr0732:
                                                _loc15_ = new PierObjectVo(param1,param5.tileSize);
                                             }
                                          }
                                          else if(_loc13_.indexOf(ServerTagConstants.POWERPLANT) != -1)
                                          {
                                             if(!_loc20_)
                                             {
                                                _loc15_ = new PowerplantFieldObjectVo(param1);
                                             }
                                             else
                                             {
                                                addr0710:
                                                §§push(_loc12_);
                                                if(!(_loc20_ && ServerTagToClassSelector))
                                                {
                                                   addr0720:
                                                   if(§§pop())
                                                   {
                                                      if(_loc19_ || Boolean(param3))
                                                      {
                                                         §§goto(addr0732);
                                                      }
                                                      else
                                                      {
                                                         addr0761:
                                                         _loc15_ = new SquareObjectVo(param1,param5.tileSize);
                                                      }
                                                   }
                                                   else if(param1.tags.indexOf(ServerTagConstants.SQUARE) != -1)
                                                   {
                                                      if(!_loc20_)
                                                      {
                                                         §§goto(addr0761);
                                                      }
                                                      else
                                                      {
                                                         addr07ac:
                                                         _loc15_ = new BoulderObjectVo(param1);
                                                         _loc15_.matrix3dCoordinates = param2;
                                                         _loc15_ = ConfigFactory.buildBoulderObjectVo(_loc15_ as BoulderObjectVo);
                                                      }
                                                   }
                                                   else if(param1.tags.indexOf(ServerTagConstants.STREET) != -1)
                                                   {
                                                      if(!_loc20_)
                                                      {
                                                         §§goto(addr0790);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr07ac);
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   addr07a8:
                                                   if(§§pop())
                                                   {
                                                      §§goto(addr07ac);
                                                   }
                                                }
                                             }
                                          }
                                          else if(_loc13_.indexOf(ServerTagConstants.PRODUCTION) != -1)
                                          {
                                             if(!_loc20_)
                                             {
                                                _loc15_ = new ProductionFieldObjectVo(param1);
                                                _loc15_.matrix3dCoordinates = param2;
                                                _loc15_ = ConfigFactory.buildProductionFieldObjectVo(_loc15_ as ProductionFieldObjectVo);
                                             }
                                             else
                                             {
                                                addr05fb:
                                                _loc15_ = new CinemaFieldObjectVo(param1);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          addr04bc:
                                          if(_loc13_.indexOf(ServerTagConstants.BUILDING_TOWNHALL) != -1)
                                          {
                                             if(_loc19_ || Boolean(param3))
                                             {
                                                _loc15_ = new TownHallFieldObjectVo(param1);
                                             }
                                             else
                                             {
                                                addr0543:
                                                _loc15_ = new AcademyFieldObjectVo(param1);
                                             }
                                          }
                                          else if(_loc13_.indexOf(ServerTagConstants.BUILDING_EVENTSQUARE) != -1)
                                          {
                                             if(!_loc20_)
                                             {
                                                _loc15_ = new CitySquareFieldObjectVo(param1);
                                                _loc15_.matrix3dCoordinates = param2;
                                                _loc15_ = ConfigFactory.buildCitySquareFieldObjectVo(_loc15_ as CitySquareFieldObjectVo);
                                             }
                                             else
                                             {
                                                addr06b5:
                                                _loc15_ = new DecorationFieldObjectVo(param1);
                                             }
                                          }
                                          else if(_loc13_.indexOf(ServerTagConstants.SCHOOL) != -1)
                                          {
                                             if(_loc19_)
                                             {
                                                §§goto(addr0543);
                                             }
                                             else
                                             {
                                                addr0696:
                                                if(_loc13_.indexOf(ServerTagConstants.SECURITY_DEVICE) == -1)
                                                {
                                                   if(_loc19_ || Boolean(param3))
                                                   {
                                                      §§goto(addr06b5);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr0732);
                                                   }
                                                }
                                                else if(_loc13_.indexOf(ServerTagConstants.SECURITY_DEVICE) != -1)
                                                {
                                                   if(_loc19_)
                                                   {
                                                      addr06dd:
                                                      _loc15_ = new InfrastructureDecorationFieldObjectVo(param1);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr0790);
                                                   }
                                                }
                                             }
                                          }
                                          else if(_loc13_.indexOf(ServerTagConstants.SECURITY_DEVICE) != -1)
                                          {
                                             if(!(_loc20_ && ServerTagToClassSelector))
                                             {
                                                addr0573:
                                                _loc15_ = new InfrastructureBuildingFieldObjectVo(param1);
                                             }
                                             else
                                             {
                                                addr059b:
                                                _loc15_ = new MysteryBuildingObjectVo(param1);
                                             }
                                          }
                                          else if(_loc13_.indexOf(ServerTagConstants.MYSTERY) != -1)
                                          {
                                             if(_loc19_)
                                             {
                                                §§goto(addr059b);
                                             }
                                             else
                                             {
                                                §§goto(addr07ac);
                                             }
                                          }
                                          else if(_loc13_.indexOf(ServerTagConstants.BUILDING_ACTIVATOR) != -1)
                                          {
                                             if(!(_loc20_ && Boolean(param1)))
                                             {
                                                _loc15_ = new SpecialFieldObjectVo(param1);
                                             }
                                             else
                                             {
                                                §§goto(addr06dd);
                                             }
                                          }
                                          else if(_loc13_.indexOf(ServerTagConstants.CINEMA) != -1)
                                          {
                                             if(_loc19_ || Boolean(param1))
                                             {
                                                §§goto(addr05fb);
                                             }
                                             else
                                             {
                                                addr0665:
                                                §§push(_loc7_);
                                                if(_loc19_ || Boolean(param1))
                                                {
                                                   addr0675:
                                                   §§push(!§§pop());
                                                   if(!(_loc20_ && Boolean(param3)))
                                                   {
                                                      addr0684:
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc20_ && ServerTagToClassSelector))
                                                         {
                                                            §§goto(addr0696);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr0761);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc9_);
                                                         if(_loc19_ || Boolean(param2))
                                                         {
                                                            addr06fe:
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc20_ && Boolean(param3)))
                                                               {
                                                                  §§goto(addr0710);
                                                               }
                                                               §§goto(addr0761);
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc11_);
                                                            }
                                                         }
                                                         §§goto(addr07a8);
                                                      }
                                                      §§goto(addr07d0);
                                                   }
                                                   §§goto(addr06fe);
                                                }
                                                §§goto(addr0684);
                                             }
                                          }
                                          else if(_loc13_.indexOf(ServerTagConstants.CLIENT_SCHEDULED_DROP) != -1)
                                          {
                                             if(!_loc20_)
                                             {
                                                _loc15_ = new ScheduledDropFieldObjectVo(param1);
                                             }
                                             else
                                             {
                                                §§goto(addr0790);
                                             }
                                          }
                                       }
                                       §§goto(addr07d0);
                                    }
                                    else
                                    {
                                       §§push(_loc7_);
                                       if(_loc19_)
                                       {
                                          §§push(§§pop());
                                          if(_loc19_)
                                          {
                                             var _temp_53:* = §§pop();
                                             §§push(_temp_53);
                                             §§push(_temp_53);
                                             if(_loc19_)
                                             {
                                                addr0482:
                                                if(§§pop())
                                                {
                                                   if(_loc19_)
                                                   {
                                                      addr048c:
                                                      §§pop();
                                                      if(!_loc20_)
                                                      {
                                                         §§push(_loc10_);
                                                         if(!(_loc20_ && Boolean(param1)))
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc19_)
                                                            {
                                                               addr04aa:
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc20_ && Boolean(param2)))
                                                                  {
                                                                     §§goto(addr04bc);
                                                                  }
                                                                  §§goto(addr06b5);
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc8_);
                                                                  if(!_loc20_)
                                                                  {
                                                                     addr063c:
                                                                     §§push(§§pop());
                                                                     if(!(_loc20_ && Boolean(param2)))
                                                                     {
                                                                        addr064b:
                                                                        var _temp_57:* = §§pop();
                                                                        addr064c:
                                                                        §§push(_temp_57);
                                                                        if(_temp_57)
                                                                        {
                                                                           if(_loc19_)
                                                                           {
                                                                              addr0656:
                                                                              §§pop();
                                                                              if(_loc19_ || ServerTagToClassSelector)
                                                                              {
                                                                                 §§goto(addr0665);
                                                                              }
                                                                              §§goto(addr06dd);
                                                                           }
                                                                           §§goto(addr0720);
                                                                        }
                                                                        §§goto(addr0684);
                                                                     }
                                                                     §§goto(addr06fe);
                                                                  }
                                                                  §§goto(addr0656);
                                                               }
                                                            }
                                                            §§goto(addr0675);
                                                         }
                                                         §§goto(addr06fe);
                                                      }
                                                      §§goto(addr06dd);
                                                   }
                                                   §§goto(addr063c);
                                                }
                                                §§goto(addr04aa);
                                             }
                                             §§goto(addr064c);
                                          }
                                          §§goto(addr0656);
                                       }
                                       §§goto(addr064b);
                                    }
                                 }
                                 §§goto(addr04aa);
                              }
                              §§goto(addr064b);
                           }
                           §§goto(addr0573);
                        }
                        §§goto(addr07a8);
                     }
                     §§goto(addr0358);
                  }
                  §§goto(addr0482);
               }
               §§goto(addr0358);
            }
            §§goto(addr048c);
         }
         §§goto(addr0543);
      }
   }
}

