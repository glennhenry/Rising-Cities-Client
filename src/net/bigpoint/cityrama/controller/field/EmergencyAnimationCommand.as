package net.bigpoint.cityrama.controller.field
{
   import com.baseoneonline.flash.geom.IntPoint;
   import flash.errors.IllegalOperationError;
   import flash.geom.Rectangle;
   import net.bigpoint.as3toolbox.pathwalkmanager.path.Terrain;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.SlotProfessionalVo;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.ground.vo.PlaneObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.EmergencyCitizenSpawnVo;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.model.urbies.PathWalkProxy;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.InfrastructureBuildingFieldObject;
   import org.puremvc.as3.interfaces.INotification;
   
   public class EmergencyAnimationCommand extends CitizenControlCommand
   {
      
      private var _soundProxy:SoundProxy;
      
      public function EmergencyAnimationCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc19_:Boolean = true;
         var _loc20_:* = §§pop();
         var _loc2_:EmergencyCitizenSpawnVo = null;
         var _loc4_:Rectangle = null;
         var _loc5_:int = 0;
         var _loc6_:IntPoint = null;
         var _loc7_:int = 0;
         var _loc8_:IntPoint = null;
         var _loc9_:* = null;
         var _loc10_:Rectangle = null;
         var _loc11_:BillboardObjectVo = null;
         var _loc12_:Vector.<PlaneObjectVo> = null;
         var _loc13_:PlayfieldObjectsProxy = null;
         var _loc14_:* = 0;
         var _loc15_:Number = NaN;
         var _loc16_:Vector.<InfrastructureBuildingFieldObject> = null;
         var _loc17_:SlotProfessionalVo = null;
         var _loc18_:PathWalkProxy = null;
         if(_loc19_ || Boolean(param1))
         {
            if(param1.getBody() != null)
            {
               addr007e:
               _loc2_ = EmergencyCitizenSpawnVo(param1.getBody());
               if(_loc19_ || _loc3_)
               {
                  _loc2_.slotProfessionalVos = _loc2_.slotProfessionalVos.sort(this.sortProfessionalsBySlotNr);
               }
               _loc4_ = _loc2_.billboardObjectVo.matrixCoordinates;
            }
            else
            {
               _loc4_ = PlayfieldObjectsProxy(facade.retrieveProxy(PlayfieldObjectsProxy.NAME)).getTownHall().billboardObjectVo.matrix3dCoordinates;
            }
            var _loc3_:Vector.<PlaneObjectVo> = this.getValidStreet(_loc4_);
            if(!(_loc20_ && Boolean(_loc2_)))
            {
               this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
               if(_loc19_ || Boolean(param1))
               {
                  if(_loc3_.length)
                  {
                     if(!_loc20_)
                     {
                        addr011f:
                        _loc5_ = Math.floor(_loc3_.length * Math.random());
                     }
                     _loc6_ = new IntPoint(_loc3_[_loc5_].matrixCoordinates.x,_loc3_[_loc5_].matrixCoordinates.y);
                     _loc13_ = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
                     if(!(_loc20_ && Boolean(_loc3_)))
                     {
                        if(_loc2_ != null)
                        {
                           if(!(_loc20_ && Boolean(param1)))
                           {
                              _loc17_ = _loc2_.slotProfessionalVos[0];
                              §§push(_loc17_.professional);
                              if(!(_loc20_ && Boolean(param1)))
                              {
                                 §§push(§§pop().configSpecialisation);
                                 if(_loc19_ || Boolean(_loc3_))
                                 {
                                    §§push(§§pop().department);
                                    if(!(_loc20_ && Boolean(_loc2_)))
                                    {
                                       §§push(§§pop());
                                    }
                                    _loc9_ = §§pop();
                                    if(_loc19_)
                                    {
                                       §§push(_loc17_.professional);
                                       if(_loc19_)
                                       {
                                          §§push(§§pop().configSpecialisation);
                                          if(_loc19_)
                                          {
                                             addr01f4:
                                             §§push(§§pop().rank);
                                             if(!(_loc20_ && Boolean(this)))
                                             {
                                                §§push(§§pop());
                                                if(_loc19_)
                                                {
                                                   _loc14_ = §§pop();
                                                   if(_loc19_)
                                                   {
                                                      addr021f:
                                                      _loc15_ = _loc17_.professional.configSpecialisation.gfxId;
                                                      addr021c:
                                                      addr0219:
                                                   }
                                                   §§goto(addr0257);
                                                }
                                             }
                                             §§goto(addr021f);
                                          }
                                          §§goto(addr021c);
                                       }
                                       §§goto(addr0219);
                                    }
                                    §§goto(addr0257);
                                 }
                                 §§goto(addr01f4);
                              }
                              §§goto(addr0219);
                           }
                        }
                        else
                        {
                           §§push(1);
                           if(!(_loc20_ && Boolean(param1)))
                           {
                              _loc14_ = §§pop();
                              if(_loc19_)
                              {
                                 §§goto(addr0240);
                              }
                              §§goto(addr0249);
                           }
                           addr0240:
                           _loc15_ = 1100002;
                           addr023e:
                           if(!_loc20_)
                           {
                              addr0249:
                              §§push(ServerTagConstants.FIRE_DEPARTMENT);
                              if(!_loc20_)
                              {
                                 §§push(§§pop());
                              }
                              _loc9_ = §§pop();
                           }
                           §§goto(addr0257);
                        }
                        addr0257:
                        _loc16_ = _loc13_.getInfrastructureBuildingByDepartmentTag(_loc9_);
                        §§push(_loc16_ == null);
                        if(_loc19_ || Boolean(param1))
                        {
                           var _temp_14:* = §§pop();
                           §§push(_temp_14);
                           if(!_temp_14)
                           {
                              if(!(_loc20_ && Boolean(param1)))
                              {
                                 §§pop();
                                 if(!_loc20_)
                                 {
                                    §§goto(addr0296);
                                 }
                                 §§goto(addr029a);
                              }
                           }
                        }
                        addr0296:
                        if(_loc16_.length == 0)
                        {
                           addr029a:
                           _loc18_ = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
                           _loc8_ = _loc18_.pathwalkManager.terrain.getDistanceBasedPath(_loc6_,5,Terrain.TYPE_ALL_TERRAINS)[0];
                           if(!(_loc20_ && Boolean(param1)))
                           {
                              §§goto(addr036a);
                           }
                           §§goto(addr0388);
                        }
                        else
                        {
                           _loc11_ = _loc16_[0].emergencyFieldObjectVo as BillboardObjectVo;
                           _loc10_ = _loc11_.matrixCoordinates;
                           _loc12_ = this.getValidStreet(_loc10_);
                           if(_loc12_.length == 0)
                           {
                              if(!(_loc20_ && Boolean(param1)))
                              {
                                 return;
                              }
                           }
                           _loc7_ = Math.floor(_loc12_.length * Math.random());
                           _loc8_ = new IntPoint(_loc12_[_loc7_].matrixCoordinates.x,_loc12_[_loc7_].matrixCoordinates.y);
                        }
                        addr036a:
                        if(this.spawnCarForMissionCitizen(_loc8_,_loc6_,this.urbieXmlBySpecialisation(_loc15_,_loc14_)))
                        {
                           if(!_loc20_)
                           {
                              addr0388:
                              this._soundProxy.playEmergencyCitizenSound(_loc9_);
                           }
                        }
                        §§goto(addr0394);
                     }
                     §§goto(addr023e);
                  }
                  addr0394:
                  return;
               }
            }
            §§goto(addr011f);
         }
         §§goto(addr007e);
      }
      
      private function urbieXmlBySpecialisation(param1:Number, param2:int) : String
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc3_:String = "";
         var _loc4_:* = param1;
         if(_loc5_)
         {
            §§push(1100002);
            if(_loc5_)
            {
               §§push(_loc4_);
               if(_loc5_ || Boolean(_loc3_))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc6_ && Boolean(_loc3_)))
                     {
                        §§push(0);
                        if(_loc6_)
                        {
                        }
                     }
                     else
                     {
                        addr0143:
                        §§push(3);
                        if(_loc5_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(1100003);
                     if(!(_loc6_ && Boolean(param1)))
                     {
                        §§push(_loc4_);
                        if(_loc5_ || Boolean(_loc3_))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc5_)
                              {
                                 §§push(1);
                                 if(_loc6_ && Boolean(param1))
                                 {
                                 }
                              }
                              else
                              {
                                 addr0319:
                                 §§push(11);
                                 if(!(_loc5_ || Boolean(_loc3_)))
                                 {
                                    addr033e:
                                    §§push(_loc4_);
                                    if(!_loc6_)
                                    {
                                       addr0346:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc6_ && Boolean(this)))
                                          {
                                             addr0358:
                                             §§push(12);
                                             if(_loc6_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr03c6:
                                             §§push(14);
                                             if(_loc5_ || Boolean(param1))
                                             {
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(1120005);
                                          if(_loc5_ || Boolean(param2))
                                          {
                                             addr0375:
                                             §§push(_loc4_);
                                             if(_loc5_ || Boolean(param2))
                                             {
                                                addr0385:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§push(13);
                                                      if(_loc5_ || Boolean(param1))
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr03c6);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(1112006);
                                                   if(_loc5_ || Boolean(param1))
                                                   {
                                                      addr03c2:
                                                      addr03c0:
                                                      if(§§pop() === _loc4_)
                                                      {
                                                         §§goto(addr03c6);
                                                      }
                                                      else
                                                      {
                                                         §§push(15);
                                                      }
                                                   }
                                                }
                                                §§goto(addr03e6);
                                             }
                                             §§goto(addr03c2);
                                          }
                                       }
                                       §§goto(addr03e6);
                                    }
                                    §§goto(addr0385);
                                 }
                              }
                              §§goto(addr03e6);
                           }
                           else
                           {
                              §§push(1100004);
                              if(!_loc6_)
                              {
                                 §§push(_loc4_);
                                 if(_loc5_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc6_ && Boolean(param2)))
                                       {
                                          §§push(2);
                                          if(!_loc5_)
                                          {
                                             addr026a:
                                             §§push(_loc4_);
                                             if(_loc5_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§push(8);
                                                      if(!_loc5_)
                                                      {
                                                         §§goto(addr033e);
                                                      }
                                                      §§goto(addr03e6);
                                                   }
                                                   §§goto(addr03c6);
                                                }
                                                else
                                                {
                                                   §§push(1110006);
                                                   if(_loc5_)
                                                   {
                                                      §§push(_loc4_);
                                                      if(!_loc6_)
                                                      {
                                                         §§goto(addr0299);
                                                      }
                                                      §§goto(addr030f);
                                                   }
                                                   §§goto(addr02ff);
                                                }
                                             }
                                             addr0299:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc6_)
                                                {
                                                   addr02a3:
                                                   §§push(9);
                                                   if(_loc5_ || Boolean(this))
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr0319);
                                                }
                                             }
                                             else
                                             {
                                                §§push(1120002);
                                                if(_loc5_ || Boolean(param1))
                                                {
                                                   §§push(_loc4_);
                                                   if(_loc5_)
                                                   {
                                                      addr02d0:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc6_ && Boolean(this)))
                                                         {
                                                            addr02e2:
                                                            §§push(10);
                                                            if(_loc6_)
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr03c6);
                                                         }
                                                         §§goto(addr03e6);
                                                      }
                                                      else
                                                      {
                                                         §§push(1120003);
                                                         if(!(_loc6_ && Boolean(param2)))
                                                         {
                                                            addr02ff:
                                                            §§push(_loc4_);
                                                            if(!(_loc6_ && Boolean(param1)))
                                                            {
                                                               §§goto(addr030f);
                                                            }
                                                            §§goto(addr03c2);
                                                         }
                                                         §§goto(addr03c0);
                                                      }
                                                   }
                                                   addr030f:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §§goto(addr0319);
                                                      }
                                                      §§goto(addr0358);
                                                   }
                                                   else
                                                   {
                                                      §§push(1120004);
                                                      if(!(_loc6_ && Boolean(param1)))
                                                      {
                                                         §§goto(addr033e);
                                                      }
                                                   }
                                                   §§goto(addr03e6);
                                                }
                                             }
                                          }
                                          §§goto(addr03e6);
                                       }
                                       else
                                       {
                                          §§goto(addr0245);
                                       }
                                    }
                                    else
                                    {
                                       §§push(1100005);
                                       if(!(_loc6_ && Boolean(_loc3_)))
                                       {
                                          §§push(_loc4_);
                                          if(!_loc6_)
                                          {
                                             §§goto(addr0139);
                                          }
                                          §§goto(addr0170);
                                       }
                                    }
                                    §§goto(addr02ff);
                                 }
                                 addr0139:
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc6_)
                                    {
                                       §§goto(addr0143);
                                    }
                                    else
                                    {
                                       addr0245:
                                       §§push(7);
                                       if(!(_loc5_ || Boolean(this)))
                                       {
                                          §§goto(addr026a);
                                       }
                                       §§goto(addr03e6);
                                    }
                                 }
                                 else
                                 {
                                    §§push(1100006);
                                    if(_loc5_ || Boolean(param1))
                                    {
                                       §§push(_loc4_);
                                       if(_loc5_ || Boolean(param1))
                                       {
                                          addr0170:
                                          if(§§pop() === §§pop())
                                          {
                                             if(!(_loc6_ && Boolean(param1)))
                                             {
                                                §§push(4);
                                                if(_loc5_ || Boolean(_loc3_))
                                                {
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr02a3);
                                             }
                                          }
                                          else
                                          {
                                             §§push(1110002);
                                             if(!_loc6_)
                                             {
                                                §§push(_loc4_);
                                                if(!(_loc6_ && Boolean(param1)))
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §§push(5);
                                                         if(_loc6_)
                                                         {
                                                            §§goto(addr026a);
                                                         }
                                                         §§goto(addr03e6);
                                                      }
                                                      §§goto(addr0358);
                                                   }
                                                   else
                                                   {
                                                      §§push(1110003);
                                                      if(!(_loc6_ && Boolean(_loc3_)))
                                                      {
                                                         §§push(_loc4_);
                                                         if(_loc5_ || Boolean(_loc3_))
                                                         {
                                                            addr01f4:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!(_loc6_ && Boolean(param2)))
                                                               {
                                                                  §§push(6);
                                                                  if(_loc6_)
                                                                  {
                                                                     §§goto(addr0375);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr02e2);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(1110004);
                                                               if(_loc5_ || Boolean(param2))
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(!(_loc6_ && Boolean(param1)))
                                                                  {
                                                                     addr0233:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(!(_loc6_ && Boolean(_loc3_)))
                                                                        {
                                                                           §§goto(addr0245);
                                                                        }
                                                                        §§goto(addr0319);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(1110005);
                                                                        if(!(_loc6_ && Boolean(_loc3_)))
                                                                        {
                                                                           §§goto(addr026a);
                                                                        }
                                                                     }
                                                                     §§goto(addr0375);
                                                                  }
                                                                  §§goto(addr02d0);
                                                               }
                                                            }
                                                            §§goto(addr03e6);
                                                         }
                                                         §§goto(addr0299);
                                                      }
                                                   }
                                                   §§goto(addr03e6);
                                                }
                                                §§goto(addr03c2);
                                             }
                                          }
                                          §§goto(addr03e6);
                                       }
                                       §§goto(addr0233);
                                    }
                                 }
                                 §§goto(addr03e6);
                              }
                              §§goto(addr02ff);
                           }
                        }
                        §§goto(addr0346);
                     }
                     §§goto(addr03c0);
                  }
                  §§goto(addr03e6);
               }
               §§goto(addr01f4);
            }
            addr03e6:
            switch(§§pop())
            {
               case 0:
               case 1:
               case 2:
               case 3:
               case 4:
                  §§push("emergency_firetruck");
                  if(_loc5_ || Boolean(param1))
                  {
                     return §§pop();
                  }
                  break;
               case 5:
               case 6:
               case 7:
               case 8:
               case 9:
                  §§push("emergency_policecar");
                  if(!_loc6_)
                  {
                     return §§pop();
                  }
                  break;
               case 10:
               case 11:
               case 12:
               case 13:
               case 14:
                  return "emergency_ambulance";
               default:
                  throw new IllegalOperationError(this + "unknown type of specialisation: " + param1);
            }
            return §§pop();
         }
         §§goto(addr0245);
      }
      
      private function sortProfessionalsBySlotNr(param1:SlotProfessionalVo, param2:SlotProfessionalVo) : int
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(param2)))
         {
            §§push(param1.slotNo);
            if(!(_loc4_ && Boolean(this)))
            {
               §§push(param2.slotNo);
               if(!(_loc4_ && Boolean(param1)))
               {
                  if(§§pop() > §§pop())
                  {
                     if(!(_loc4_ && Boolean(param2)))
                     {
                        §§push(-1);
                        if(_loc3_)
                        {
                           return §§pop();
                        }
                        §§goto(addr00a4);
                     }
                  }
                  else
                  {
                     addr008a:
                     addr0086:
                     if(param1.slotNo < param2.slotNo)
                     {
                        if(!_loc4_)
                        {
                           §§push(1);
                           if(!(_loc4_ && _loc3_))
                           {
                              addr00a4:
                              return §§pop();
                           }
                        }
                        else
                        {
                           addr00a5:
                           return 0;
                        }
                        return §§pop();
                     }
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr008a);
            }
            §§goto(addr0086);
         }
         §§goto(addr00a5);
      }
      
      override protected function getValidStreet(param1:Rectangle) : Vector.<PlaneObjectVo>
      {
         return super.getValidStreet(param1);
      }
      
      override protected function spawnCarForMissionCitizen(param1:IntPoint, param2:IntPoint, param3:String) : Boolean
      {
         return super.spawnCarForMissionCitizen(param1,param2,param3);
      }
      
      override protected function spawnNormalCitizen(param1:IntPoint, param2:IntPoint) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(this)))
         {
            super.spawnNormalCitizen(param1,param2);
         }
      }
   }
}

