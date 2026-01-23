package net.bigpoint.cityrama.model.field.vo
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerProfessionalConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructureVO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalAttributeThresholdDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigSecurityGradeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalAttributeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   
   public class InfrastructureBuildingFieldObjectVo extends BillboardObjectVo implements IEmergencyInfrastructureVO
   {
      
      private var _emergencyIsRunning:Boolean;
      
      public function InfrastructureBuildingFieldObjectVo(param1:ConfigPlayfieldItemDTO)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super(param1);
         }
      }
      
      public function get id() : Number
      {
         return buildingDTO.id;
      }
      
      public function get objectSize() : Point
      {
         return new Point(configPlayfieldItemVo.sizeX,configPlayfieldItemVo.sizeY);
      }
      
      public function get department() : Vector.<String>
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:ConfigSecurityGradeDTO = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         var _loc3_:int = 0;
         for each(_loc2_ in configPlayfieldItemVo.configSecurityGrades)
         {
            if(!(_loc5_ && Boolean(_loc1_)))
            {
               if(_loc1_.indexOf(_loc2_.type) == -1)
               {
                  if(!(_loc5_ && Boolean(_loc3_)))
                  {
                     _loc1_.push(_loc2_.type);
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public function getUpgradeInstantFinishCost() : Number
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc2_:ConfigPhaseDTO = null;
         var _loc3_:ConfigOutputDTO = null;
         var _loc1_:Number = 0;
         for each(_loc2_ in configPlayfieldItemVo.activePhases)
         {
            if(!(_loc8_ && Boolean(this)))
            {
               if(_loc2_.phaseType != ServerPhaseTypes.INSTANT_DEPARTMENT_UPGRADE)
               {
                  continue;
               }
            }
            for each(_loc3_ in _loc2_.listEntryOutputs)
            {
               if(!(_loc9_ || Boolean(this)))
               {
                  break;
               }
               §§push(_loc3_.resourceConfig);
               if(_loc9_ || Boolean(_loc2_))
               {
                  if(!§§pop())
                  {
                     continue;
                  }
                  if(_loc8_)
                  {
                     break;
                  }
                  §§push(_loc3_.resourceConfig);
               }
               if(§§pop().type == ServerResConst.RESOURCE_REALCURRENCY)
               {
                  if(!_loc8_)
                  {
                     _loc1_ = Math.abs(_loc3_.outputAmount);
                  }
                  break;
               }
            }
         }
         return Math.ceil(_loc1_);
      }
      
      public function get maxEmergenciesUpgradeCount() : int
      {
         return buildingDTO.config.maxHarvestCount;
      }
      
      public function get emergenciesUpgradeCount() : int
      {
         return buildingDTO.upgradeCount;
      }
      
      public function get maxUpgradeLevel() : int
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            if(buildingDTO.config.upgradeable)
            {
               addr002b:
               §§push(currentLevel + 1);
               if(_loc1_ || Boolean(this))
               {
               }
            }
            else
            {
               return currentLevel;
            }
            return §§pop();
         }
         §§goto(addr002b);
      }
      
      public function get listOfModifiedGrades() : Vector.<ConfigSecurityGradeDTO>
      {
         var _temp_1:* = true;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = _temp_1;
         var _loc2_:ConfigSecurityGradeDTO = null;
         var _loc3_:* = NaN;
         var _loc4_:ConfigProfessionalAttributeThresholdDTO = null;
         var _loc5_:ProfessionalDTO = null;
         var _loc6_:ProfessionalAttributeDTO = null;
         var _loc7_:ConfigProfessionalAttributeThresholdDTO = null;
         var _loc1_:Vector.<ConfigSecurityGradeDTO> = new Vector.<ConfigSecurityGradeDTO>();
         if(_loc17_)
         {
            §§push(this.listOfGrades.length == 0);
            if(!_loc16_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               §§push(_temp_2);
               if(!(_loc16_ && Boolean(_loc3_)))
               {
                  if(!§§pop())
                  {
                     if(!_loc16_)
                     {
                        §§pop();
                        if(_loc17_ || Boolean(_loc3_))
                        {
                           §§push(buildingDTO == null);
                           if(!_loc16_)
                           {
                              addr008c:
                              var _temp_5:* = §§pop();
                              addr008d:
                              §§push(_temp_5);
                              if(!_temp_5)
                              {
                                 if(_loc17_)
                                 {
                                    addr0097:
                                    §§pop();
                                    if(_loc17_ || Boolean(this))
                                    {
                                       addr00b1:
                                       addr00a6:
                                       if(buildingDTO.professionals.length == 0)
                                       {
                                          if(!(_loc16_ && Boolean(_loc3_)))
                                          {
                                             return this.listOfGrades;
                                          }
                                       }
                                    }
                                    §§goto(addr00c8);
                                 }
                              }
                           }
                           §§goto(addr00b1);
                        }
                        addr00c8:
                        for each(_loc2_ in this.listOfGrades)
                        {
                           if(!_loc16_)
                           {
                              §§push(0);
                              if(!_loc16_)
                              {
                                 _loc3_ = §§pop();
                                 if(!(_loc16_ && Boolean(this)))
                                 {
                                    addr0101:
                                    var _loc10_:int = 0;
                                    if(_loc17_ || Boolean(_loc3_))
                                    {
                                       for each(_loc5_ in buildingDTO.professionals)
                                       {
                                          if(!_loc16_)
                                          {
                                             var _loc12_:int = 0;
                                             if(_loc17_ || Boolean(_loc2_))
                                             {
                                                for each(_loc6_ in _loc5_.attributes)
                                                {
                                                   if(_loc6_.config.attributeType != ServerProfessionalConstants.ATTRIBUTE_PERCEPTION)
                                                   {
                                                      if(_loc17_)
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(_loc3_);
                                                      if(!_loc16_)
                                                      {
                                                         §§push(§§pop() + _loc6_.attributePoints);
                                                         if(_loc17_ || Boolean(_loc3_))
                                                         {
                                                            addr019b:
                                                            §§push(§§pop());
                                                         }
                                                         _loc3_ = §§pop();
                                                         if(_loc17_)
                                                         {
                                                            addr01a3:
                                                            var _loc14_:int = 0;
                                                            if(_loc17_)
                                                            {
                                                               for each(_loc7_ in _loc6_.config.attributeThresholds)
                                                               {
                                                                  §§push(_loc7_.optionalConfigId);
                                                                  if(!_loc16_)
                                                                  {
                                                                     if(§§pop() == _loc2_.id)
                                                                     {
                                                                        if(_loc17_)
                                                                        {
                                                                           addr01de:
                                                                           if(_loc3_ <= _loc7_.threshold)
                                                                           {
                                                                              continue;
                                                                           }
                                                                        }
                                                                        _loc4_ = _loc7_;
                                                                     }
                                                                     continue;
                                                                  }
                                                                  §§goto(addr01de);
                                                               }
                                                            }
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr019b);
                                                   }
                                                   §§goto(addr01a3);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    if(!_loc16_)
                                    {
                                       addr0215:
                                       if(_loc4_)
                                       {
                                          _loc1_.push(new ConfigSecurityGradeDTO({
                                             "rx":_loc2_.rangeX + _loc4_.value,
                                             "ry":_loc2_.rangeY + _loc4_.value,
                                             "v":_loc2_.value,
                                             "dt":_loc2_.type,
                                             "cid":_loc2_.id,
                                             "o":_loc2_.orderId
                                          }));
                                          continue;
                                       }
                                       if(!_loc17_)
                                       {
                                          continue;
                                       }
                                    }
                                    addr0221:
                                    _loc1_.push(new ConfigSecurityGradeDTO({
                                       "rx":_loc2_.rangeX,
                                       "ry":_loc2_.rangeY,
                                       "v":_loc2_.value,
                                       "dt":_loc2_.type,
                                       "cid":_loc2_.id,
                                       "o":_loc2_.orderId
                                    }));
                                    if(_loc16_ && Boolean(_loc1_))
                                    {
                                    }
                                    continue;
                                 }
                                 §§goto(addr0215);
                              }
                              §§goto(addr0101);
                           }
                           §§goto(addr0221);
                        }
                        return _loc1_;
                     }
                     §§goto(addr0097);
                  }
                  §§goto(addr008c);
               }
               §§goto(addr008d);
            }
            §§goto(addr0097);
         }
         §§goto(addr00a6);
      }
      
      public function get listOfGrades() : Vector.<ConfigSecurityGradeDTO>
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(!isConnectedToStreet);
            if(!_loc1_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(!_temp_2)
               {
                  if(!(_loc1_ && Boolean(this)))
                  {
                     §§goto(addr0045);
                  }
               }
               §§goto(addr0053);
            }
            addr0045:
            §§pop();
            if(_loc2_)
            {
               addr0053:
               if(isUnderConstruction())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     return new Vector.<ConfigSecurityGradeDTO>();
                  }
               }
            }
            §§goto(addr006f);
         }
         addr006f:
         return configPlayfieldItemVo.configSecurityGrades;
      }
      
      override public function interactionBlockedByEmergency() : Boolean
      {
         return this._emergencyIsRunning;
      }
      
      public function set emergencyIsRunning(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._emergencyIsRunning = param1;
         }
      }
      
      public function get professionalCanLevelUp() : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:ProfessionalDTO = null;
         if(!(_loc4_ && _loc2_))
         {
            if(buildingDTO)
            {
               addr0030:
               var _loc2_:int = 0;
               var _loc3_:* = buildingDTO.professionals;
               while(true)
               {
                  for each(_loc1_ in _loc3_)
                  {
                     if(_loc4_ && _loc3_)
                     {
                        break;
                     }
                     §§push(_loc1_.canLevelUp);
                     if(!(_loc5_ || _loc3_))
                     {
                        return §§pop();
                     }
                     if(§§pop())
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           break;
                        }
                     }
                     continue;
                  }
               }
               §§goto(addr0093);
               §§push(true);
            }
            return false;
         }
         §§goto(addr0030);
      }
   }
}

