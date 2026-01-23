package net.bigpoint.cityrama.model.field.vo
{
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.field.interfaces.IImprovable;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemImprovementSlotDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.model.shop.NeedVo;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IEventDrop;
   
   public class ResidentialFieldObjectVo extends BillboardObjectVo implements IEventDrop, IImprovable
   {
      
      private var _residentialNeeds:Vector.<NeedVo>;
      
      private var _hasThisNeed:Boolean;
      
      private var _shopRollOver:Boolean;
      
      private var _currentResidents:String = "unknown";
      
      private var _currentEventLocaleId:String;
      
      private var _currentImprovements:Vector.<ImprovementVo>;
      
      public function ResidentialFieldObjectVo(param1:ConfigPlayfieldItemDTO)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            super(param1);
         }
      }
      
      public function get maxLevel() : int
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            if(buildingDTO.config.upgradeable)
            {
               addr0034:
               §§push(currentLevel + 1);
               if(_loc2_ || _loc1_)
               {
               }
            }
            else
            {
               return currentLevel;
            }
            return §§pop();
         }
         §§goto(addr0034);
      }
      
      public function get upgradeReady() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            if(buildingDTO.config.nextConfigId != 0)
            {
               if(_loc1_)
               {
                  return Boolean(buildingDTO.upgradeCount >= buildingDTO.config.maxHarvestCount && buildingDTO.currentMasteryChallenge == null);
               }
            }
         }
         return false;
      }
      
      public function get willBeUpgradeReadyOnNextHarvest() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            if(buildingDTO.config.nextConfigId != 0)
            {
               if(!(_loc1_ && _loc1_))
               {
                  §§goto(addr0043);
               }
            }
            return false;
         }
         addr0043:
         return Boolean(buildingDTO.upgradeCount + 1 >= buildingDTO.config.maxHarvestCount);
      }
      
      public function get isInUpgradeMode() : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:PhaseDTO = null;
         var _loc2_:int = 0;
         var _loc3_:* = buildingDTO.activePhases;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!(_loc5_ || Boolean(_loc2_)))
               {
                  break;
               }
               if(_loc1_.config.phaseType == ServerPhaseTypes.UPGRADE)
               {
                  if(_loc5_)
                  {
                     break;
                  }
               }
            }
            return false;
         }
         return true;
      }
      
      public function get isInBuildMode() : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:PhaseDTO = null;
         var _loc2_:int = 0;
         var _loc3_:* = buildingDTO.activePhases;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc5_ || Boolean(this))
               {
                  §§push(_loc1_.config);
                  if(_loc5_)
                  {
                     §§push(§§pop().phaseType);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(ServerPhaseTypes.CREATE_CONSTRUCTION);
                        if(!_loc4_)
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc5_ || _loc3_)
                           {
                              var _temp_5:* = §§pop();
                              §§push(_temp_5);
                              §§push(_temp_5);
                              if(!_loc4_)
                              {
                                 if(!§§pop())
                                 {
                                    if(!(_loc4_ && Boolean(_loc2_)))
                                    {
                                       §§pop();
                                       if(_loc5_)
                                       {
                                          addr009e:
                                          §§push(_loc1_.config);
                                          if(_loc5_ || Boolean(_loc2_))
                                          {
                                             §§push(§§pop().phaseType);
                                             if(!_loc4_)
                                             {
                                                §§push(ServerPhaseTypes.CREATE_ACTIVATE);
                                                if(_loc5_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc5_ || Boolean(_loc1_))
                                                   {
                                                      addr00d3:
                                                      var _temp_9:* = §§pop();
                                                      addr00d4:
                                                      §§push(_temp_9);
                                                      if(!_temp_9)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            addr00de:
                                                            §§pop();
                                                            if(!_loc4_)
                                                            {
                                                               addr00fd:
                                                               addr00f7:
                                                               addr00f4:
                                                               addr00f1:
                                                               §§push(_loc1_.config.phaseType == ServerPhaseTypes.CREATE_PLACE_NORMAL);
                                                               if(_loc4_)
                                                               {
                                                                  break;
                                                               }
                                                               addr0104:
                                                               if(!§§pop())
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc4_ && Boolean(this))
                                                               {
                                                                  continue;
                                                               }
                                                            }
                                                            §§push(true);
                                                            break;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr0104);
                                                }
                                                §§goto(addr00fd);
                                             }
                                             §§goto(addr00f7);
                                          }
                                          §§goto(addr00f4);
                                       }
                                       §§goto(addr00f1);
                                    }
                                 }
                                 §§goto(addr00d3);
                              }
                              §§goto(addr00d4);
                           }
                           §§goto(addr00de);
                        }
                        §§goto(addr00fd);
                     }
                     §§goto(addr00f7);
                  }
                  §§goto(addr00f4);
               }
               §§goto(addr009e);
            }
            return false;
         }
         return §§pop();
      }
      
      public function get maxHarvestUpgradeCount() : int
      {
         return buildingDTO.config.maxHarvestCount;
      }
      
      public function get harvestUpgradeCount() : int
      {
         return buildingDTO.upgradeCount;
      }
      
      public function get residentialNeeds() : Vector.<NeedVo>
      {
         return this._residentialNeeds;
      }
      
      public function set residentialNeeds(param1:Vector.<NeedVo>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._residentialNeeds = param1;
         }
      }
      
      public function get residentialPhase() : PhaseDTO
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:PhaseDTO = null;
         var _loc2_:int = 0;
         var _loc3_:* = activePhases;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_ || Boolean(_loc2_))
            {
               if(_loc1_.config.phaseType == ServerPhaseTypes.RESIDENTIAL)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     return _loc1_;
                  }
               }
            }
         }
         return null;
      }
      
      public function getUpgradeInstantFinishCost() : Number
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc1_:Number = NaN;
         var _loc2_:ConfigPhaseDTO = null;
         var _loc3_:* = 0;
         var _loc4_:ConfigOutputDTO = null;
         for each(_loc2_ in configPlayfieldItemVo.activePhases)
         {
            if(!(_loc9_ && Boolean(_loc3_)))
            {
               if(_loc2_.phaseType != ServerPhaseTypes.INSTANT_UPGRADE)
               {
                  continue;
               }
            }
            for each(_loc4_ in _loc2_.listEntryOutputs)
            {
               §§push(_loc4_.resourceConfig);
               if(_loc10_ || Boolean(_loc3_))
               {
                  if(!§§pop())
                  {
                     continue;
                  }
                  if(!(_loc10_ || Boolean(_loc2_)))
                  {
                     break;
                  }
                  §§push(_loc4_.resourceConfig);
               }
               if(§§pop().type == ServerResConst.RESOURCE_REALCURRENCY)
               {
                  if(_loc10_ || Boolean(_loc1_))
                  {
                     _loc1_ = Math.abs(_loc4_.outputAmount);
                  }
                  break;
               }
            }
         }
         if(_loc10_)
         {
            §§push(this.maxHarvestUpgradeCount);
            if(!_loc9_)
            {
               §§push(this.harvestUpgradeCount);
               if(_loc10_)
               {
                  §§push(int(§§pop() - §§pop()));
                  if(_loc10_ || Boolean(_loc1_))
                  {
                     _loc3_ = §§pop();
                     if(!(_loc9_ && Boolean(_loc2_)))
                     {
                        §§push(_loc3_);
                        if(_loc10_)
                        {
                           addr0136:
                           if(§§pop() < 0)
                           {
                              if(_loc10_ || Boolean(_loc3_))
                              {
                                 addr014a:
                                 _loc3_ = 0;
                                 addr0148:
                              }
                           }
                           §§goto(addr014b);
                        }
                        §§goto(addr014a);
                     }
                     addr014b:
                     return Math.ceil(_loc1_ * Math.pow(_loc3_,0.73));
                  }
                  §§goto(addr014a);
               }
               §§goto(addr0136);
            }
            §§goto(addr014a);
         }
         §§goto(addr0148);
      }
      
      public function get hasThisNeed() : Boolean
      {
         return this._hasThisNeed;
      }
      
      public function setHasThisNeed(param1:Number = 0, param2:Boolean = false) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:NeedVo = null;
         if(!(_loc7_ && param2))
         {
            if(param1 != 0)
            {
               if(!(_loc7_ && Boolean(param1)))
               {
                  this._hasThisNeed = false;
               }
               addr0042:
               for each(_loc3_ in this._residentialNeeds)
               {
                  if(!(_loc7_ && Boolean(param1)))
                  {
                     if(_loc3_.shopConfigIds.indexOf(param1) == -1)
                     {
                        continue;
                     }
                     if(!(_loc6_ || Boolean(this)))
                     {
                        break;
                     }
                     this._hasThisNeed = true;
                     if(_loc7_ && Boolean(param1))
                     {
                        break;
                     }
                  }
                  this._shopRollOver = param2;
                  break;
               }
            }
            else
            {
               this._hasThisNeed = false;
               if(_loc6_ || Boolean(this))
               {
                  this._shopRollOver = false;
               }
            }
            return;
         }
         §§goto(addr0042);
      }
      
      public function get shopRollOver() : Boolean
      {
         return this._shopRollOver;
      }
      
      public function get currentResidentType() : String
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc1_:PhaseDTO = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.activePhases;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc6_)
               {
                  break;
               }
               if(_loc1_.config.phaseType == ServerPhaseTypes.RESIDENT)
               {
                  if(_loc5_ || Boolean(_loc2_))
                  {
                     break;
                  }
               }
            }
            return this._currentResidents;
         }
         return this._currentResidents = _loc1_.config.listEntryOutputs[0].resourceConfig.type;
      }
      
      public function set currentResidents(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this._currentResidents = param1;
         }
      }
      
      public function get currentResidents() : String
      {
         return this._currentResidents;
      }
      
      override public function get percentageOfRemainingTimer() : Number
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc1_:PhaseDTO = null;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         if(!_loc7_)
         {
            §§push(isConnectedToStreet);
            if(_loc6_ || Boolean(_loc3_))
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               §§push(_temp_2);
               if(!(_loc7_ && Boolean(_loc3_)))
               {
                  if(§§pop())
                  {
                     if(!_loc7_)
                     {
                        addr004f:
                        §§pop();
                        if(!(_loc7_ && Boolean(_loc3_)))
                        {
                           §§goto(addr005e);
                        }
                        §§goto(addr0086);
                     }
                  }
                  §§goto(addr006c);
               }
               §§goto(addr006d);
            }
            §§goto(addr004f);
         }
         addr005e:
         §§push(!isUnderConstruction());
         if(_loc6_)
         {
            addr006c:
            var _temp_5:* = §§pop();
            addr006d:
            §§push(_temp_5);
            if(_temp_5)
            {
               if(_loc6_)
               {
                  §§pop();
                  if(_loc6_)
                  {
                     §§goto(addr0082);
                  }
                  §§goto(addr0086);
               }
            }
         }
         addr0082:
         if(!isHarvestReady)
         {
            addr0086:
            var _loc4_:int = 0;
            var _loc5_:* = activePhases;
            while(true)
            {
               for each(_loc1_ in _loc5_)
               {
                  if(_loc7_ && Boolean(_loc2_))
                  {
                     break;
                  }
                  if(_loc1_.config.phaseType == ServerPhaseTypes.RESIDENTIAL)
                  {
                     if(_loc6_ || Boolean(_loc2_))
                     {
                        §§push(_loc1_.expirationTime);
                        if(!(_loc7_ && Boolean(_loc3_)))
                        {
                           §§push(§§pop() - currentTimeStamp);
                           if(_loc6_)
                           {
                              §§push(§§pop());
                              if(_loc6_)
                              {
                                 _loc2_ = §§pop();
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                                 §§goto(addr0100);
                              }
                           }
                        }
                        §§goto(addr013b);
                     }
                     addr0100:
                     §§push(_loc2_);
                     if(_loc6_)
                     {
                        §§push(§§pop() / _loc1_.config.durationConfig.duration);
                        if(_loc6_ || Boolean(_loc3_))
                        {
                           §§push(§§pop());
                           if(!(_loc6_ || Boolean(this)))
                           {
                              §§goto(addr0143);
                           }
                           addr013b:
                           _loc3_ = §§pop();
                           if(_loc6_)
                           {
                              break;
                           }
                           continue;
                           addr0143:
                        }
                        §§goto(addr013b);
                     }
                  }
                  continue;
                  addr0143:
                  return §§pop();
               }
            }
            §§goto(addr0143);
            §§push(_loc3_);
         }
         return super.percentageOfRemainingTimer;
      }
      
      public function get currentEventLocaleId() : String
      {
         return this._currentEventLocaleId;
      }
      
      public function set currentEventLocaleId(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this._currentEventLocaleId = param1;
         }
      }
      
      public function get numFreeImprovementSlots() : int
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            if(this.currentImprovements)
            {
               if(!_loc2_)
               {
                  §§goto(addr0034);
               }
            }
            return 0;
         }
         addr0034:
         return buildingDTO.improvementSlotIds.length - this.currentImprovements.length;
      }
      
      public function get currentImprovements() : Vector.<ImprovementVo>
      {
         return this._currentImprovements;
      }
      
      public function set currentImprovements(param1:Vector.<ImprovementVo>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this._currentImprovements = param1;
         }
      }
      
      public function get freeImprovementSlots() : Vector.<ConfigPlayfieldItemImprovementSlotDTO>
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc2_:Number = NaN;
         var _loc3_:ImprovementVo = null;
         var _loc4_:ConfigPlayfieldItemImprovementSlotDTO = null;
         var _loc5_:ConfigPlayfieldItemImprovementSlotDTO = null;
         var _loc1_:Vector.<ConfigPlayfieldItemImprovementSlotDTO> = new Vector.<ConfigPlayfieldItemImprovementSlotDTO>();
         var _loc6_:int = 0;
         var _loc7_:* = buildingDTO.improvementSlotIds;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc7_,_loc6_));
            if(_loc10_)
            {
               break;
            }
            if(§§pop())
            {
               _loc2_ = §§nextvalue(_loc6_,_loc7_);
               if(!(_loc10_ && Boolean(_loc1_)))
               {
                  var _loc8_:int = 0;
                  if(!(_loc10_ && Boolean(_loc2_)))
                  {
                     for each(_loc4_ in configPlayfieldItemVo.improvementSlots)
                     {
                        if(_loc11_ || Boolean(_loc2_))
                        {
                           if(_loc2_ != _loc4_.id)
                           {
                              continue;
                           }
                           if(!(_loc11_ || Boolean(_loc3_)))
                           {
                              continue;
                           }
                        }
                        _loc1_.push(_loc4_);
                     }
                  }
               }
               continue;
            }
            if(_loc11_ || Boolean(_loc2_))
            {
               if(!(_loc10_ && Boolean(_loc3_)))
               {
                  if(_loc11_)
                  {
                     _loc6_ = 0;
                     if(_loc11_)
                     {
                        addr0108:
                        _loc7_ = this.currentImprovements;
                        while(true)
                        {
                           §§push(§§hasnext(_loc7_,_loc6_));
                           break loop0;
                        }
                        addr019e:
                        addr0197:
                     }
                     if(_loc11_)
                     {
                        _loc1_.sort(this.sortSlotsByOrderId);
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0108);
            }
            §§goto(addr019e);
         }
         while(§§pop())
         {
            _loc3_ = §§nextvalue(_loc6_,_loc7_);
            if(_loc11_ || Boolean(_loc2_))
            {
               _loc8_ = 0;
               if(!_loc10_)
               {
                  for each(_loc5_ in _loc1_)
                  {
                     if(!(_loc10_ && Boolean(_loc3_)))
                     {
                        if(_loc3_.currentSlotId == _loc5_.id)
                        {
                           if(_loc11_ || Boolean(_loc2_))
                           {
                              _loc1_.splice(_loc1_.indexOf(_loc5_),1);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr0197);
         }
         §§goto(addr019e);
      }
      
      public function get currentActiveImprovements() : Vector.<ImprovementVo>
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:ImprovementVo = null;
         var _loc1_:Vector.<ImprovementVo> = new Vector.<ImprovementVo>();
         var _loc3_:int = 0;
         for each(_loc2_ in this.currentImprovements)
         {
            if(_loc6_)
            {
               §§push(_loc2_.expirationTime);
               if(!_loc5_)
               {
                  §§push(§§pop() > currentTimeStamp);
                  if(!_loc5_)
                  {
                     var _temp_2:* = §§pop();
                     §§push(_temp_2);
                     if(!_temp_2)
                     {
                        if(!(_loc5_ && Boolean(this)))
                        {
                           §§pop();
                           if(_loc5_ && Boolean(_loc3_))
                           {
                              continue;
                           }
                           addr0098:
                           addr0094:
                           §§push(_loc2_.runtime == -1);
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc6_)
                     {
                        _loc1_.push(_loc2_);
                     }
                  }
                  continue;
               }
               §§goto(addr0098);
            }
            §§goto(addr0094);
         }
         return _loc1_;
      }
      
      private function sortSlotsByOrderId(param1:ConfigPlayfieldItemImprovementSlotDTO, param2:ConfigPlayfieldItemImprovementSlotDTO) : int
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            §§push(param1.orderId);
            if(_loc3_ || Boolean(this))
            {
               §§push(param2.orderId);
               if(_loc3_)
               {
                  if(§§pop() < §§pop())
                  {
                     if(_loc3_ || _loc3_)
                     {
                        §§push(-1);
                        if(!_loc4_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr009a:
                        §§push(1);
                        if(!_loc3_)
                        {
                           §§goto(addr00a4);
                        }
                     }
                     §§goto(addr00a1);
                  }
                  else
                  {
                     §§push(param1.orderId);
                     if(_loc3_)
                     {
                        addr0089:
                        if(§§pop() > param2.orderId)
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              §§goto(addr009a);
                           }
                           else
                           {
                              addr00a2:
                              §§push(0);
                           }
                           §§goto(addr00a4);
                        }
                        §§goto(addr00a2);
                     }
                  }
                  addr00a4:
                  return §§pop();
               }
               §§goto(addr0089);
            }
            addr00a1:
            return §§pop();
         }
         §§goto(addr00a2);
      }
   }
}

