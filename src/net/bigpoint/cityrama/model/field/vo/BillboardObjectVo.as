package net.bigpoint.cityrama.model.field.vo
{
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.clearInterval;
   import flash.utils.setInterval;
   import net.bigpoint.cityrama.constants.EmergencyConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.field.interfaces.IBillboardObjectVo;
   import net.bigpoint.cityrama.model.server.vo.server.BuildingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.MasteryBonusDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ExpansionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IFloaterObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IIcondataVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   
   public class BillboardObjectVo extends GameObjectVo implements IBillboardObjectVo, IFloaterObjectVo, IIcondataVo
   {
      
      public static const INVALIDATED:String = "INVALIDATED";
      
      public static const EMERGENCY_PROGRESS_CHANGED:String = "EMERGENCY_PROGRESS_CHANGED";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         INVALIDATED = "INVALIDATED";
         if(_loc1_ || _loc1_)
         {
            addr002b:
            EMERGENCY_PROGRESS_CHANGED = "EMERGENCY_PROGRESS_CHANGED";
         }
         return;
      }
      §§goto(addr002b);
      
      protected var _currentTimestamp:Number;
      
      protected var _buildingDTO:BuildingDTO;
      
      private var _showPlacementPreview:Boolean;
      
      private var _showFinalAsset:Boolean;
      
      private var _isInBaseMode:Boolean;
      
      private var _isConnectedToStreet:Boolean;
      
      private var _isRestrictedByGround:Boolean;
      
      private var _terrainTypeNeeded:String;
      
      private var _isBlockedByBoulder:Boolean;
      
      private var _isBlockedByObject:Boolean;
      
      private var _informationFloaterPhase:ConfigPhaseDTO;
      
      private var _informationFloaterCustomText:String;
      
      private var _useIcons:Boolean = true;
      
      private var _hideIconsForMoveMode:Boolean;
      
      private var _userInteractionLocked:Boolean;
      
      private var _iconOffset:Point;
      
      private var _baseIconOffset:Point;
      
      private var _constructionIconOffset:Point;
      
      private var _placementIconOffset:Point;
      
      private var _currentApplicationMode:String = "";
      
      private var _emergencyInProgress:Boolean;
      
      private var _emergencyProgressInterval:uint;
      
      private var _happinessModifier:Number = 1;
      
      private var _energyModifier:Number = 1;
      
      private var _doubleBonusDayModifier:Number = 0;
      
      private var _isExpansionObject:Boolean = false;
      
      private var _expansionObject:ExpansionFieldObject;
      
      private var _currentLevel:int = 1;
      
      public function BillboardObjectVo(param1:ConfigPlayfieldItemDTO)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super(param1);
            if(_loc2_)
            {
               this._iconOffset = new Point();
               if(_loc2_)
               {
                  addr0045:
                  this._baseIconOffset = new Point();
                  if(_loc2_ || _loc3_)
                  {
                     §§goto(addr005b);
                  }
                  §§goto(addr0069);
               }
               §§goto(addr005b);
            }
            §§goto(addr0045);
         }
         addr005b:
         this._constructionIconOffset = new Point();
         if(!_loc3_)
         {
            addr0069:
            this._placementIconOffset = new Point();
         }
      }
      
      public function get currentLevel() : int
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.buildingDTO);
            if(_loc1_ || _loc2_)
            {
               if(§§pop() == null)
               {
                  if(_loc1_ || _loc2_)
                  {
                     return this._currentLevel;
                  }
               }
               addr0052:
               §§push(this.buildingDTO);
            }
            §§push(§§pop().buildingLevel);
            if(!(_loc2_ && _loc2_))
            {
               return §§pop() + 1;
            }
         }
         §§goto(addr0052);
      }
      
      public function set currentLevel(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._currentLevel = param1;
         }
      }
      
      public function get buildingDTO() : BuildingDTO
      {
         return this._buildingDTO;
      }
      
      public function set buildingDTO(param1:BuildingDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._buildingDTO = param1;
            if(_loc2_ || Boolean(this))
            {
               §§goto(addr0036);
            }
            §§goto(addr004e);
         }
         addr0036:
         this._isConnectedToStreet = this._buildingDTO.active;
         if(!(_loc3_ && Boolean(this)))
         {
            addr004e:
            this.invalidate();
         }
      }
      
      public function set currentTimeStamp(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._currentTimestamp = param1;
         }
      }
      
      public function get currentTimeStamp() : Number
      {
         return this._currentTimestamp;
      }
      
      public function get useConstructionAsset() : Boolean
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc1_:PhaseDTO = null;
         var _loc2_:ConfigPhaseDTO = null;
         if(!(_loc5_ && Boolean(this)))
         {
            §§push(this._showPlacementPreview);
            if(_loc6_)
            {
               if(§§pop())
               {
                  if(!(_loc5_ && Boolean(_loc1_)))
                  {
                     §§push(true);
                     if(_loc6_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     §§goto(addr008e);
                  }
               }
               else
               {
                  §§push(this._showFinalAsset);
                  if(!_loc5_)
                  {
                     §§goto(addr006c);
                  }
               }
               §§goto(addr007f);
            }
            addr006c:
            if(§§pop())
            {
               if(!(_loc5_ && Boolean(_loc3_)))
               {
                  addr007f:
                  return false;
               }
            }
            §§goto(addr008e);
         }
         addr008e:
         if(this._buildingDTO != null)
         {
            var _loc3_:int = 0;
            var _loc4_:* = this._buildingDTO.activePhases;
            while(true)
            {
               §§push(§§hasnext(_loc4_,_loc3_));
               if(_loc6_ || Boolean(_loc1_))
               {
                  if(!§§pop())
                  {
                     if(!(_loc5_ && Boolean(_loc1_)))
                     {
                        if(!_loc5_)
                        {
                           if(_loc6_)
                           {
                              §§push(false);
                              if(!_loc5_)
                              {
                                 return §§pop();
                              }
                           }
                           else
                           {
                              addr02bb:
                              §§push(this is ScheduledDropFieldObjectVo);
                              if(_loc6_)
                              {
                                 addr02c6:
                                 if(§§pop())
                                 {
                                    if(!_loc5_)
                                    {
                                       addr02d0:
                                       §§push(false);
                                       if(_loc6_ || Boolean(_loc1_))
                                       {
                                          §§goto(addr02df);
                                       }
                                    }
                                    else
                                    {
                                       addr03bf:
                                       §§push(false);
                                       if(!_loc6_)
                                       {
                                          §§goto(addr03c8);
                                       }
                                    }
                                    §§goto(addr03c6);
                                 }
                                 if(configPlayfieldItemVo)
                                 {
                                    if(!(_loc5_ && Boolean(_loc2_)))
                                    {
                                       _loc3_ = 0;
                                       if(!_loc5_)
                                       {
                                          addr0304:
                                          _loc4_ = configPlayfieldItemVo.constructionPhases;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc4_,_loc3_));
                                             §§goto(addr03a9);
                                          }
                                          addr03ad:
                                       }
                                       if(_loc6_ || Boolean(this))
                                       {
                                          §§goto(addr03bf);
                                       }
                                       else
                                       {
                                          addr03c7:
                                          §§push(true);
                                       }
                                       §§goto(addr03c8);
                                    }
                                 }
                                 §§goto(addr03c7);
                              }
                           }
                           §§goto(addr03c8);
                        }
                        §§goto(addr0304);
                     }
                     §§goto(addr03ad);
                  }
                  else
                  {
                     _loc1_ = §§nextvalue(_loc3_,_loc4_);
                     if(_loc6_)
                     {
                        if(!_loc1_)
                        {
                           continue;
                        }
                        if(!(_loc5_ && Boolean(_loc1_)))
                        {
                           §§push(_loc1_.config);
                           if(_loc6_ || Boolean(this))
                           {
                              §§push(§§pop().phaseType);
                              if(!_loc5_)
                              {
                                 §§push(ServerPhaseTypes.CREATE_CONSTRUCTION);
                                 if(!(_loc5_ && Boolean(_loc3_)))
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(_loc6_ || Boolean(_loc3_))
                                    {
                                       var _temp_18:* = §§pop();
                                       §§push(_temp_18);
                                       §§push(_temp_18);
                                       if(_loc6_)
                                       {
                                          if(!§§pop())
                                          {
                                             if(!(_loc5_ && Boolean(_loc2_)))
                                             {
                                                §§pop();
                                                if(_loc6_ || Boolean(_loc2_))
                                                {
                                                   §§push(_loc1_.config);
                                                   if(!_loc5_)
                                                   {
                                                      §§push(§§pop().phaseType);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(ServerPhaseTypes.CREATE_PLACE_NORMAL);
                                                         if(_loc6_)
                                                         {
                                                            addr014d:
                                                            §§push(§§pop() == §§pop());
                                                            if(!_loc5_)
                                                            {
                                                               addr0154:
                                                               var _temp_21:* = §§pop();
                                                               §§push(_temp_21);
                                                               §§push(_temp_21);
                                                               if(_loc6_ || Boolean(_loc3_))
                                                               {
                                                                  addr0163:
                                                                  if(!§§pop())
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr016d:
                                                                        §§pop();
                                                                        if(_loc5_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        addr0174:
                                                                        §§push(_loc1_.config);
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(§§pop().phaseType);
                                                                           if(!(_loc5_ && Boolean(this)))
                                                                           {
                                                                              addr018e:
                                                                              §§push(ServerPhaseTypes.CREATE_PLACE_PERMISSION);
                                                                              if(_loc6_ || Boolean(this))
                                                                              {
                                                                                 §§goto(addr01a2);
                                                                              }
                                                                              §§goto(addr01dc);
                                                                           }
                                                                           §§goto(addr01d6);
                                                                        }
                                                                        §§goto(addr01d3);
                                                                     }
                                                                     §§goto(addr01b4);
                                                                  }
                                                                  §§goto(addr01a9);
                                                               }
                                                               §§goto(addr01aa);
                                                            }
                                                            §§goto(addr01b4);
                                                         }
                                                         addr01a2:
                                                         §§push(§§pop() == §§pop());
                                                         if(_loc6_)
                                                         {
                                                            addr01a9:
                                                            var _temp_25:* = §§pop();
                                                            addr01aa:
                                                            §§push(_temp_25);
                                                            if(!_temp_25)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  addr01b4:
                                                                  §§pop();
                                                                  if(!(_loc5_ && Boolean(_loc3_)))
                                                                  {
                                                                     addr01dc:
                                                                     addr01d6:
                                                                     addr01d3:
                                                                     addr01c3:
                                                                     §§push(_loc1_.config.phaseType == ServerPhaseTypes.MYSTERY_CONSTRUCTION);
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr01e3:
                                                                        if(!§§pop())
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(_loc5_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        addr01ed:
                                                                        §§push(true);
                                                                     }
                                                                     §§goto(addr01ee);
                                                                  }
                                                                  §§goto(addr01ed);
                                                               }
                                                            }
                                                            §§goto(addr01e3);
                                                         }
                                                         addr01ee:
                                                         return §§pop();
                                                      }
                                                      §§goto(addr018e);
                                                   }
                                                   §§goto(addr01d3);
                                                }
                                                §§goto(addr0174);
                                             }
                                             §§goto(addr01b4);
                                          }
                                          §§goto(addr0154);
                                       }
                                       §§goto(addr0163);
                                    }
                                    §§goto(addr016d);
                                 }
                                 §§goto(addr014d);
                              }
                              §§goto(addr01d6);
                           }
                           §§goto(addr01d3);
                        }
                        §§goto(addr01ed);
                     }
                     §§goto(addr01c3);
                  }
               }
               addr03a9:
               while(true)
               {
                  if(!§§pop())
                  {
                     break loop0;
                  }
                  _loc2_ = §§nextvalue(_loc3_,_loc4_);
                  if(_loc6_ || Boolean(_loc2_))
                  {
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                     if(!_loc5_)
                     {
                        addr0333:
                        §§push(_loc2_.phaseType);
                        if(_loc6_ || Boolean(this))
                        {
                           §§push(ServerPhaseTypes.CREATE_CONSTRUCTION);
                           if(_loc6_)
                           {
                              §§push(§§pop() == §§pop());
                              if(!_loc5_)
                              {
                                 var _temp_10:* = §§pop();
                                 §§push(_temp_10);
                                 if(!_temp_10)
                                 {
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    §§pop();
                                    if(!(_loc6_ || Boolean(_loc3_)))
                                    {
                                       continue loop0;
                                    }
                                    addr037c:
                                    addr0376:
                                    §§push(_loc2_.phaseType == ServerPhaseTypes.MYSTERY_CONSTRUCTION);
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                 }
                              }
                              if(§§pop())
                              {
                                 if(_loc6_ || Boolean(_loc2_))
                                 {
                                    addr03a4:
                                    §§push(true);
                                    break;
                                 }
                              }
                              continue loop0;
                           }
                           §§goto(addr037c);
                        }
                        §§goto(addr0376);
                     }
                     §§goto(addr03a4);
                  }
                  §§goto(addr0333);
               }
               return §§pop();
            }
         }
         else
         {
            §§push(this is DecorationFieldObjectVo);
            if(_loc6_ || Boolean(this))
            {
               var _temp_28:* = §§pop();
               §§push(_temp_28);
               §§push(_temp_28);
               if(_loc6_)
               {
                  if(!§§pop())
                  {
                     if(_loc6_)
                     {
                        §§pop();
                        if(_loc6_)
                        {
                           §§push(this is CitySquareFieldObjectVo);
                           if(!(_loc5_ && Boolean(_loc3_)))
                           {
                              addr0276:
                              var _temp_30:* = §§pop();
                              §§push(_temp_30);
                              §§push(_temp_30);
                              if(!_loc5_)
                              {
                                 addr027d:
                                 if(!§§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       §§pop();
                                       if(_loc6_)
                                       {
                                          §§push(this is CinemaFieldObjectVo);
                                          if(!(_loc5_ && Boolean(_loc1_)))
                                          {
                                             addr02a1:
                                             var _temp_32:* = §§pop();
                                             addr02a2:
                                             §§push(_temp_32);
                                             if(!_temp_32)
                                             {
                                                if(!(_loc5_ && Boolean(_loc1_)))
                                                {
                                                   §§pop();
                                                   if(_loc6_)
                                                   {
                                                      §§goto(addr02bb);
                                                   }
                                                   §§goto(addr02d0);
                                                }
                                                §§goto(addr03c8);
                                             }
                                             §§goto(addr02c6);
                                          }
                                          addr03c8:
                                          return §§pop();
                                       }
                                       §§goto(addr02d0);
                                    }
                                 }
                                 §§goto(addr02a1);
                              }
                              §§goto(addr02a2);
                           }
                           addr03c6:
                           return §§pop();
                        }
                        §§goto(addr02bb);
                     }
                     §§goto(addr02c6);
                  }
                  §§goto(addr0276);
               }
               §§goto(addr027d);
            }
         }
         addr02df:
         return §§pop();
      }
      
      public function get openConstructionLayer() : Boolean
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:PhaseDTO = null;
         if(!(_loc5_ && _loc3_))
         {
            if(this._buildingDTO != null)
            {
               §§goto(addr002f);
            }
            return false;
         }
         addr002f:
         var _loc2_:int = 0;
         var _loc3_:* = this._buildingDTO.activePhases;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc4_)
               {
                  §§push(_loc1_.config);
                  if(_loc4_)
                  {
                     §§push(§§pop().phaseType);
                     if(_loc4_)
                     {
                        §§push(ServerPhaseTypes.CREATE_CONSTRUCTION);
                        if(_loc4_ || Boolean(this))
                        {
                           §§push(§§pop() == §§pop());
                           if(!(_loc5_ && Boolean(_loc2_)))
                           {
                              var _temp_4:* = §§pop();
                              §§push(_temp_4);
                              §§push(_temp_4);
                              if(_loc4_)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc4_ || Boolean(_loc2_))
                                    {
                                       §§pop();
                                       if(!(_loc5_ && Boolean(_loc1_)))
                                       {
                                          §§push(_loc1_.config);
                                          if(_loc4_ || _loc3_)
                                          {
                                             §§push(§§pop().phaseType);
                                             if(!(_loc5_ && Boolean(this)))
                                             {
                                                §§push(ServerPhaseTypes.CREATE_PLACE_NORMAL);
                                                if(!_loc5_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   addr00eb:
                                                   var _temp_9:* = §§pop();
                                                   §§push(_temp_9);
                                                   §§push(_temp_9);
                                                   if(!_loc5_)
                                                   {
                                                      addr00f2:
                                                      if(!§§pop())
                                                      {
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            §§pop();
                                                            if(!_loc5_)
                                                            {
                                                               addr010b:
                                                               §§push(_loc1_.config);
                                                               if(_loc4_)
                                                               {
                                                                  addr0114:
                                                                  §§push(§§pop().phaseType);
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     addr0125:
                                                                     §§push(ServerPhaseTypes.CREATE_PLACE_PERMISSION);
                                                                     if(_loc4_ || Boolean(_loc1_))
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        if(!_loc4_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr0140);
                                                                     }
                                                                     §§goto(addr0164);
                                                                  }
                                                                  §§goto(addr015e);
                                                               }
                                                               §§goto(addr015b);
                                                            }
                                                            §§goto(addr018d);
                                                         }
                                                         §§goto(addr01d3);
                                                      }
                                                      §§goto(addr0140);
                                                   }
                                                   §§goto(addr0174);
                                                }
                                                §§goto(addr0164);
                                             }
                                             §§goto(addr0125);
                                          }
                                          §§goto(addr0114);
                                       }
                                       §§goto(addr01bc);
                                    }
                                    addr0140:
                                    if(§§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          continue;
                                       }
                                       §§push(true);
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       addr0197:
                                       §§push(!§§pop());
                                       if(_loc4_)
                                       {
                                          addr019e:
                                          if(§§pop())
                                          {
                                             if(_loc4_ || _loc3_)
                                             {
                                                addr01bc:
                                                §§push(true);
                                                if(!(_loc5_ && Boolean(_loc2_)))
                                                {
                                                   §§goto(addr01cb);
                                                }
                                             }
                                             else
                                             {
                                                addr01d2:
                                                §§push(false);
                                             }
                                             addr01d3:
                                             return §§pop();
                                          }
                                          §§goto(addr01d2);
                                       }
                                    }
                                    else
                                    {
                                       addr0164:
                                       addr015e:
                                       addr015b:
                                       §§push(_loc1_.config.phaseType == ServerPhaseTypes.MYSTERY_CONSTRUCTION);
                                       if(!(_loc5_ && Boolean(this)))
                                       {
                                          var _temp_16:* = §§pop();
                                          addr0174:
                                          §§push(_temp_16);
                                          if(_temp_16)
                                          {
                                             if(!_loc5_)
                                             {
                                                §§pop();
                                                if(!(_loc5_ && Boolean(_loc1_)))
                                                {
                                                   addr018d:
                                                   §§push(this.isHarvestReady);
                                                   if(_loc4_)
                                                   {
                                                      §§goto(addr0197);
                                                   }
                                                   §§goto(addr019e);
                                                }
                                                §§goto(addr01bc);
                                             }
                                          }
                                          §§goto(addr019e);
                                       }
                                    }
                                    addr01cb:
                                    return §§pop();
                                 }
                                 §§goto(addr00eb);
                              }
                              §§goto(addr00f2);
                           }
                           §§goto(addr0197);
                        }
                        §§goto(addr0164);
                     }
                     §§goto(addr0125);
                  }
                  §§goto(addr015b);
               }
               §§goto(addr010b);
            }
         }
         return §§pop();
      }
      
      public function set showPlacementPreview(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._showPlacementPreview = param1;
         }
      }
      
      public function set showFinalAsset(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._showFinalAsset = param1;
         }
      }
      
      public function get currentBuildAsset() : int
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:PhaseDTO = null;
         if(!(_loc5_ && _loc3_))
         {
            if(this._buildingDTO != null)
            {
               addr0030:
               var _loc2_:int = 0;
               var _loc3_:* = this._buildingDTO.activePhases;
               while(true)
               {
                  for each(_loc1_ in _loc3_)
                  {
                     if(!(_loc5_ && Boolean(_loc2_)))
                     {
                        §§push(_loc1_.config);
                        if(!(_loc5_ && Boolean(this)))
                        {
                           §§push(§§pop().phaseType);
                           if(!_loc5_)
                           {
                              §§push(ServerPhaseTypes.CREATE_PLACE_NORMAL);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(!(_loc5_ && Boolean(_loc1_)))
                                 {
                                    var _temp_6:* = §§pop();
                                    §§push(_temp_6);
                                    §§push(_temp_6);
                                    if(!_loc5_)
                                    {
                                       if(!§§pop())
                                       {
                                          if(_loc4_)
                                          {
                                             §§goto(addr009c);
                                          }
                                       }
                                       §§goto(addr00e0);
                                    }
                                    §§goto(addr01e2);
                                 }
                                 addr009c:
                                 §§pop();
                                 if(!(_loc5_ && Boolean(_loc1_)))
                                 {
                                    §§push(_loc1_.config);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop().phaseType);
                                       if(_loc4_ || Boolean(_loc1_))
                                       {
                                          §§push(ServerPhaseTypes.CREATE_PLACE_PERMISSION);
                                          if(_loc4_)
                                          {
                                             addr00d1:
                                             §§push(§§pop() == §§pop());
                                             if(!(_loc5_ && Boolean(_loc2_)))
                                             {
                                                addr00e0:
                                                var _temp_10:* = §§pop();
                                                §§push(_temp_10);
                                                §§push(_temp_10);
                                                if(!_loc5_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         §§pop();
                                                         if(!_loc5_)
                                                         {
                                                            §§push(this._buildingDTO);
                                                            if(!_loc5_)
                                                            {
                                                               §§push(§§pop().buildingLevel);
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(0);
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     if(_loc4_ || Boolean(this))
                                                                     {
                                                                        addr0136:
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc4_ || Boolean(_loc1_))
                                                                           {
                                                                              §§push(1);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 return §§pop();
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr01b4:
                                                                              §§push(_loc1_.config);
                                                                              if(!(_loc5_ && Boolean(_loc2_)))
                                                                              {
                                                                                 addr01c5:
                                                                                 §§push(§§pop().phaseType);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    addr01ce:
                                                                                    §§push(ServerPhaseTypes.CREATE_PLACE_PERMISSION);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §§push(§§pop() == §§pop());
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr01e1:
                                                                                          var _temp_15:* = §§pop();
                                                                                          addr01e2:
                                                                                          §§push(_temp_15);
                                                                                          if(_temp_15)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                addr01ec:
                                                                                                §§pop();
                                                                                                if(_loc5_ && Boolean(_loc2_))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                addr01fb:
                                                                                                addr0204:
                                                                                                addr0202:
                                                                                                addr01ff:
                                                                                                §§push(this._buildingDTO.buildingLevel > 0);
                                                                                             }
                                                                                          }
                                                                                          addr0205:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!(_loc5_ && Boolean(_loc1_)))
                                                                                             {
                                                                                                §§goto(addr0217);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr024e:
                                                                                             addr023c:
                                                                                             addr0239:
                                                                                             addr0236:
                                                                                             if(_loc1_.config.phaseType == ServerPhaseTypes.CREATE_CONSTRUCTION)
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr01ec);
                                                                                    }
                                                                                    §§goto(addr024e);
                                                                                 }
                                                                                 §§goto(addr023c);
                                                                              }
                                                                              §§goto(addr0239);
                                                                           }
                                                                           §§goto(addr025a);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(_loc1_.config);
                                                                           if(_loc4_ || Boolean(this))
                                                                           {
                                                                              §§push(§§pop().phaseType);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 addr0179:
                                                                                 §§push(ServerPhaseTypes.CREATE_PLACE_NORMAL);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§push(§§pop() == §§pop());
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       var _temp_20:* = §§pop();
                                                                                       §§push(_temp_20);
                                                                                       §§push(_temp_20);
                                                                                       if(!(_loc5_ && Boolean(this)))
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                addr01a5:
                                                                                                §§pop();
                                                                                                if(_loc4_ || Boolean(this))
                                                                                                {
                                                                                                   §§goto(addr01b4);
                                                                                                }
                                                                                                §§goto(addr01fb);
                                                                                             }
                                                                                             §§goto(addr0205);
                                                                                          }
                                                                                          §§goto(addr01e1);
                                                                                       }
                                                                                       §§goto(addr01e2);
                                                                                    }
                                                                                    §§goto(addr0205);
                                                                                 }
                                                                                 §§goto(addr024e);
                                                                              }
                                                                              §§goto(addr01ce);
                                                                           }
                                                                        }
                                                                        §§goto(addr0239);
                                                                     }
                                                                     §§goto(addr01e1);
                                                                  }
                                                                  §§goto(addr0204);
                                                               }
                                                               §§goto(addr0202);
                                                            }
                                                            §§goto(addr01ff);
                                                         }
                                                         §§goto(addr0236);
                                                      }
                                                      §§goto(addr0205);
                                                   }
                                                   §§goto(addr0136);
                                                }
                                                §§goto(addr01e2);
                                             }
                                             §§goto(addr01a5);
                                          }
                                          §§goto(addr024e);
                                       }
                                       §§goto(addr023c);
                                    }
                                    §§goto(addr0239);
                                 }
                                 §§goto(addr0217);
                              }
                              §§goto(addr00d1);
                           }
                           §§goto(addr0179);
                        }
                        §§goto(addr01c5);
                     }
                     addr0217:
                     §§push(2);
                     if(!(_loc5_ && Boolean(this)))
                     {
                        return §§pop();
                     }
                     addr025a:
                     addr025a:
                     return §§pop();
                  }
                  if(_loc5_ && Boolean(_loc1_))
                  {
                  }
                  §§push(-1);
               }
               §§goto(addr025a);
               return 2;
            }
            else
            {
               §§push(1);
               if(!_loc5_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr0030);
      }
      
      public function get activePhases() : Vector.<PhaseDTO>
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Vector.<PhaseDTO> = new Vector.<PhaseDTO>();
         if(_loc3_ || _loc3_)
         {
            §§push(this._buildingDTO);
            if(_loc3_)
            {
               if(§§pop())
               {
                  addr004b:
                  _loc1_ = this._buildingDTO.activePhases;
                  addr0047:
               }
               return _loc1_;
            }
            §§goto(addr004b);
         }
         §§goto(addr0047);
      }
      
      public function get isInBaseMode() : Boolean
      {
         return this._isInBaseMode;
      }
      
      public function set isInBaseMode(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._isInBaseMode = param1;
         }
      }
      
      public function invalidate() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            dispatchEvent(new Event(INVALIDATED));
         }
      }
      
      public function resetHarvestTimer() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:PhaseDTO = null;
         if(_loc4_)
         {
            if(this._buildingDTO)
            {
               addr0028:
               var _loc2_:int = 0;
               for each(_loc1_ in this._buildingDTO.activePhases)
               {
                  if(!_loc5_)
                  {
                     if(!_loc1_)
                     {
                        continue;
                     }
                     if(!_loc5_)
                     {
                        addr0051:
                        §§push(_loc1_.config);
                        if(_loc4_)
                        {
                           §§push(§§pop().phaseType);
                           if(!(_loc5_ && Boolean(_loc2_)))
                           {
                              §§push(ServerPhaseTypes.RESIDENTIAL);
                              if(_loc4_)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(!(_loc5_ && Boolean(_loc2_)))
                                 {
                                    var _temp_3:* = §§pop();
                                    §§push(_temp_3);
                                    if(!_temp_3)
                                    {
                                       if(!_loc5_)
                                       {
                                          §§pop();
                                          if(_loc4_)
                                          {
                                             addr00b1:
                                             addr00b0:
                                             addr00aa:
                                             addr00a7:
                                             addr00a4:
                                             if(_loc1_.config.phaseType != ServerPhaseTypes.PRODUCTION)
                                             {
                                                continue;
                                             }
                                             if(!(_loc5_ && Boolean(this)))
                                             {
                                                _loc1_.expirationTime = Number.MAX_VALUE;
                                                if(!(_loc4_ || Boolean(_loc2_)))
                                                {
                                                   continue;
                                                }
                                             }
                                          }
                                          _loc1_.timeLeft = Number.MAX_VALUE;
                                          continue;
                                       }
                                    }
                                 }
                                 §§goto(addr00b1);
                              }
                              §§goto(addr00b0);
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr00a7);
                     }
                     §§goto(addr00a4);
                  }
                  §§goto(addr0051);
               }
            }
            return;
         }
         §§goto(addr0028);
      }
      
      public function get isHarvestReady() : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:PhaseDTO = null;
         if(!_loc4_)
         {
            if(this._buildingDTO)
            {
               addr002b:
               var _loc2_:int = 0;
               var _loc3_:* = this._buildingDTO.activePhases;
               while(true)
               {
                  for each(_loc1_ in _loc3_)
                  {
                     if(!_loc4_)
                     {
                        if(!_loc1_)
                        {
                           continue;
                        }
                        if(!_loc4_)
                        {
                           §§push(_loc1_.config);
                           if(!_loc4_)
                           {
                              §§push(§§pop().phaseType);
                              if(!_loc4_)
                              {
                                 §§push(ServerPhaseTypes.RESIDENTIAL);
                                 if(!(_loc4_ && Boolean(this)))
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(!_loc4_)
                                    {
                                       var _temp_3:* = §§pop();
                                       §§push(_temp_3);
                                       §§push(_temp_3);
                                       if(_loc5_ || Boolean(_loc1_))
                                       {
                                          if(!§§pop())
                                          {
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                §§pop();
                                                if(!_loc5_)
                                                {
                                                   continue;
                                                }
                                                addr00c2:
                                                addr00bc:
                                                addr00b9:
                                                addr00a9:
                                                §§push(_loc1_.config.phaseType == ServerPhaseTypes.PRODUCTION);
                                                if(!_loc4_)
                                                {
                                                   addr00c9:
                                                   if(!§§pop())
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(_loc1_.timeLeft);
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      §§push(§§pop() == 0);
                                                      if(!(_loc4_ && Boolean(_loc1_)))
                                                      {
                                                         var _temp_8:* = §§pop();
                                                         §§push(_temp_8);
                                                         §§push(_temp_8);
                                                         if(_loc5_)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  addr0107:
                                                                  §§pop();
                                                                  if(!(_loc5_ || Boolean(_loc2_)))
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr011a:
                                                                  addr0116:
                                                                  §§push(_loc1_.expirationTime <= this.currentTimeStamp);
                                                                  if(_loc5_)
                                                                  {
                                                                     addr0125:
                                                                     var _temp_10:* = §§pop();
                                                                     addr0126:
                                                                     §§push(_temp_10);
                                                                     if(_temp_10)
                                                                     {
                                                                        if(_loc5_ || Boolean(_loc1_))
                                                                        {
                                                                           addr0138:
                                                                           §§pop();
                                                                           if(_loc4_ && Boolean(this))
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(this.isConnectedToStreet);
                                                                           if(_loc5_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§goto(addr0179);
                                                                              }
                                                                              addr0166:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!(_loc4_ && Boolean(this)))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                              }
                                                                              continue;
                                                                              addr0179:
                                                                           }
                                                                           §§goto(addr0166);
                                                                        }
                                                                        addr0179:
                                                                        return §§pop();
                                                                     }
                                                                     §§goto(addr0166);
                                                                  }
                                                                  §§goto(addr0179);
                                                               }
                                                               §§goto(addr0138);
                                                            }
                                                            §§goto(addr0166);
                                                         }
                                                         §§goto(addr0126);
                                                      }
                                                      §§goto(addr0138);
                                                   }
                                                   §§goto(addr011a);
                                                }
                                                §§goto(addr0107);
                                             }
                                             §§goto(addr0125);
                                          }
                                          §§goto(addr00c9);
                                       }
                                       §§goto(addr0126);
                                    }
                                    §§goto(addr0138);
                                 }
                                 §§goto(addr00c2);
                              }
                              §§goto(addr00bc);
                           }
                           §§goto(addr00b9);
                        }
                        §§goto(addr0116);
                     }
                     §§goto(addr00a9);
                  }
               }
               §§goto(addr0179);
               §§push(true);
            }
            return false;
         }
         §§goto(addr002b);
      }
      
      public function userCanAffordPlacement(param1:ConfigPlayfieldItemDTO, param2:Number, param3:Number, param4:Boolean) : Boolean
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc5_:ConfigOutputDTO = null;
         if(!_loc8_)
         {
            if(!param4)
            {
               addr0026:
               for each(_loc5_ in param1.constructionPhases[0].listEntryOutputs)
               {
                  §§push(_loc5_.resourceConfig);
                  if(_loc9_)
                  {
                     if(!§§pop())
                     {
                        continue;
                     }
                     if(!_loc9_)
                     {
                        continue;
                     }
                     §§push(_loc5_.resourceConfig);
                  }
                  if(§§pop().type == ServerResConst.RESOURCE_VIRTUALCURRENCY)
                  {
                     if(_loc9_ || Boolean(param2))
                     {
                        if(Math.abs(_loc5_.outputAmount) > param2)
                        {
                           if(_loc9_ || Boolean(param1))
                           {
                              return false;
                           }
                        }
                     }
                  }
               }
            }
            return true;
         }
         §§goto(addr0026);
      }
      
      public function set activePhases(param1:Vector.<PhaseDTO>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.buildingDTO.activePhases = param1;
            if(!_loc3_)
            {
               addr0025:
               this.invalidate();
            }
            return;
         }
         §§goto(addr0025);
      }
      
      public function get isConnectedToStreet() : Boolean
      {
         return this._isConnectedToStreet;
      }
      
      public function set isConnectedToStreet(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || param1)
         {
            this._isConnectedToStreet = param1;
            if(_loc3_ || _loc2_)
            {
               this.invalidate();
            }
         }
      }
      
      public function get uprgadePhase() : PhaseDTO
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:PhaseDTO = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.activePhases;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc5_)
               {
                  break;
               }
               if(_loc1_.config.phaseType == ServerPhaseTypes.UPGRADE)
               {
                  if(_loc4_ || _loc3_)
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc1_;
      }
      
      public function get inaugurationPhase() : ConfigPhaseDTO
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:ConfigPhaseDTO = null;
         var _loc3_:* = configPlayfieldItemVo.constructionPhases;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_ || _loc3_)
            {
               if(_loc1_.phaseType == ServerPhaseTypes.CREATE_ACTIVATE)
               {
                  if(_loc5_ || Boolean(_loc1_))
                  {
                     return _loc1_;
                  }
               }
            }
         }
         return null;
      }
      
      public function get isReadyToInaugurate() : Boolean
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:PhaseDTO = null;
         if(!(_loc5_ && Boolean(_loc1_)))
         {
            if(this.buildingDTO != null)
            {
               §§goto(addr0030);
            }
            return false;
         }
         addr0030:
         var _loc2_:int = 0;
         var _loc3_:* = this.activePhases;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc4_)
               {
                  if(_loc1_)
                  {
                     if(_loc5_ && Boolean(this))
                     {
                        break;
                     }
                     if(_loc1_.config.phaseType == ServerPhaseTypes.CREATE_ACTIVATE)
                     {
                        if(!_loc5_)
                        {
                           break;
                        }
                     }
                  }
               }
               continue;
            }
         }
         return true;
      }
      
      public function isReadyForNextConstructionStep() : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:PhaseDTO = null;
         if(!(_loc4_ && _loc2_))
         {
            if(this.buildingDTO != null)
            {
               §§goto(addr0033);
            }
            return false;
         }
         addr0033:
         var _loc2_:int = 0;
         var _loc3_:* = this.activePhases;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc4_)
               {
                  continue;
               }
               if(_loc1_ == null)
               {
                  if(_loc5_)
                  {
                     §§push(§§findproperty(RamaCityError));
                     §§push("Phase is null in item id:");
                     if(!(_loc4_ && Boolean(this)))
                     {
                        §§push(this.buildingDTO);
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(§§pop().id);
                           if(!_loc4_)
                           {
                              §§push(§§pop() + §§pop());
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 addr0098:
                                 §§push(" cid:");
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc4_)
                                    {
                                       §§goto(addr00a9);
                                    }
                                    §§goto(addr010c);
                                 }
                                 §§goto(addr0110);
                              }
                              addr00a9:
                              §§push(this.buildingDTO);
                              if(_loc5_)
                              {
                                 §§push(§§pop().configId);
                                 if(_loc5_ || Boolean(_loc2_))
                                 {
                                    addr00c4:
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc4_ && Boolean(_loc1_)))
                                    {
                                       §§push(" gfxid:");
                                       if(!(_loc4_ && Boolean(this)))
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc5_ || Boolean(_loc2_))
                                          {
                                             §§goto(addr00fd);
                                          }
                                          §§goto(addr011f);
                                       }
                                       §§goto(addr0110);
                                    }
                                    §§goto(addr010c);
                                 }
                                 addr00fd:
                              }
                              §§goto(addr00f8);
                           }
                           §§goto(addr00c4);
                        }
                        addr00f8:
                        §§push(§§pop() + this.buildingDTO.config.gfxId);
                        if(!(_loc4_ && _loc3_))
                        {
                           addr0110:
                           addr010c:
                           §§push(§§pop() + " localename:");
                           if(!(_loc4_ && _loc3_))
                           {
                              addr011f:
                              §§push(LocaUtils);
                              §§push("rcl.playfielditems.name");
                              §§push("rcl.playfielditems.name.");
                              if(!_loc4_)
                              {
                                 §§push(§§pop() + this.buildingDTO.config.localeId);
                              }
                              §§push(§§pop() + §§pop().getString(§§pop(),§§pop()));
                           }
                        }
                        throw new §§pop().RamaCityError(§§pop());
                     }
                     §§goto(addr0098);
                  }
                  else
                  {
                     §§goto(addr0241);
                  }
               }
               else
               {
                  §§push(_loc1_.config);
                  if(_loc5_)
                  {
                     §§push(§§pop().phaseType);
                     if(_loc5_ || Boolean(_loc1_))
                     {
                        §§push(ServerPhaseTypes.CREATE_CONSTRUCTION);
                        if(_loc5_ || Boolean(_loc1_))
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc5_)
                           {
                              var _temp_15:* = §§pop();
                              §§push(_temp_15);
                              §§push(_temp_15);
                              if(_loc5_ || _loc3_)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc5_ || Boolean(this))
                                    {
                                       addr01b0:
                                       §§pop();
                                       if(_loc5_)
                                       {
                                          §§push(_loc1_.config);
                                          if(!(_loc4_ && Boolean(_loc1_)))
                                          {
                                             §§push(§§pop().phaseType);
                                             if(!_loc4_)
                                             {
                                                §§push(ServerPhaseTypes.MYSTERY_CONSTRUCTION);
                                                if(_loc5_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(!(_loc4_ && Boolean(this)))
                                                   {
                                                      addr01ec:
                                                      if(§§pop())
                                                      {
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            §§push(_loc1_.timeLeft);
                                                            if(_loc5_ || Boolean(this))
                                                            {
                                                               §§push(§§pop() == 0);
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  var _temp_23:* = §§pop();
                                                                  §§push(_temp_23);
                                                                  §§push(_temp_23);
                                                                  if(_loc5_)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        if(_loc5_ || Boolean(_loc2_))
                                                                        {
                                                                           §§pop();
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr0241:
                                                                              §§goto(addr0245);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr02e9:
                                                                              addr02f5:
                                                                              addr02ef:
                                                                              addr02ec:
                                                                              §§push(_loc1_.config.phaseType == ServerPhaseTypes.CREATE_PLACE_PERMISSION);
                                                                              if(_loc4_ && Boolean(_loc2_))
                                                                              {
                                                                                 break;
                                                                              }
                                                                           }
                                                                           §§goto(addr0311);
                                                                        }
                                                                        §§goto(addr0332);
                                                                     }
                                                                     §§goto(addr0250);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr02d0:
                                                                     if(!§§pop())
                                                                     {
                                                                        if(_loc4_ && Boolean(_loc1_))
                                                                        {
                                                                           break;
                                                                        }
                                                                        addr02e2:
                                                                        §§pop();
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§goto(addr02e9);
                                                                        }
                                                                        §§goto(addr0331);
                                                                     }
                                                                  }
                                                                  §§goto(addr0311);
                                                               }
                                                               §§goto(addr02e2);
                                                            }
                                                            addr0245:
                                                            §§push(_loc1_.expirationTime <= this.currentTimeStamp);
                                                            if(!_loc4_)
                                                            {
                                                               addr0250:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(true);
                                                                  if(_loc5_)
                                                                  {
                                                                     §§goto(addr0261);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr0268:
                                                                  §§push(false);
                                                                  if(!(_loc4_ && Boolean(this)))
                                                                  {
                                                                     §§goto(addr0277);
                                                                  }
                                                               }
                                                               addr0311:
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(true);
                                                                     if(_loc5_)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr0331:
                                                                     §§push(false);
                                                                  }
                                                                  §§goto(addr0332);
                                                               }
                                                               §§goto(addr0331);
                                                            }
                                                            addr0261:
                                                            return §§pop();
                                                         }
                                                         §§goto(addr0268);
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc1_.config);
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            §§push(§§pop().phaseType);
                                                            if(_loc5_ || Boolean(_loc1_))
                                                            {
                                                               addr02ac:
                                                               §§push(ServerPhaseTypes.CREATE_PLACE_NORMAL);
                                                               if(!(_loc4_ && Boolean(this)))
                                                               {
                                                                  addr02c0:
                                                                  §§push(§§pop() == §§pop());
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     var _temp_31:* = §§pop();
                                                                     §§goto(addr02d0);
                                                                     §§push(_temp_31);
                                                                     §§push(_temp_31);
                                                                  }
                                                                  §§goto(addr0332);
                                                               }
                                                               §§goto(addr02f5);
                                                            }
                                                            §§goto(addr02ef);
                                                         }
                                                      }
                                                      §§goto(addr02ec);
                                                   }
                                                   addr0277:
                                                   return §§pop();
                                                }
                                                §§goto(addr02f5);
                                             }
                                             §§goto(addr02ac);
                                          }
                                          §§goto(addr02ec);
                                       }
                                       §§goto(addr0268);
                                    }
                                    addr0332:
                                    return §§pop();
                                 }
                                 §§goto(addr01ec);
                              }
                              §§goto(addr02d0);
                           }
                           §§goto(addr01b0);
                        }
                        §§goto(addr02c0);
                     }
                     §§goto(addr02ef);
                  }
                  §§goto(addr02ec);
               }
               §§goto(addr0311);
            }
         }
         return §§pop();
      }
      
      public function get isReadyForMasteryTraitSelection() : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MasteryBonusDTO = null;
         if(!_loc2_)
         {
            §§push(this is ResidentialFieldObjectVo);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr0030:
                     §§push(this.buildingDTO);
                     if(_loc3_ || Boolean(this))
                     {
                        if(§§pop() != null)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              addr0053:
                              if((this as ResidentialFieldObjectVo).currentLevel == (this as ResidentialFieldObjectVo).maxLevel)
                              {
                                 addr0078:
                                 _loc1_ = this.buildingDTO.currentMasteryBonus;
                                 addr0074:
                                 if(!_loc2_)
                                 {
                                    if(_loc1_)
                                    {
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr0096:
                                          §§push(_loc1_.highestUnlockedBonusGroup);
                                          if(!_loc2_)
                                          {
                                             §§push(5);
                                             if(!(_loc2_ && Boolean(_loc1_)))
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(!(_loc2_ && Boolean(this)))
                                                {
                                                   var _temp_7:* = §§pop();
                                                   §§push(_temp_7);
                                                   if(_temp_7)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         §§pop();
                                                         if(!_loc2_)
                                                         {
                                                            addr00e0:
                                                            addr00de:
                                                            §§push(_loc1_.selectedBonus == 0);
                                                            if(_loc3_)
                                                            {
                                                               addr00e6:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     addr00f0:
                                                                     return true;
                                                                     addr00ef:
                                                                  }
                                                               }
                                                               addr00f2:
                                                               return false;
                                                               addr00f1:
                                                            }
                                                            §§goto(addr00f0);
                                                         }
                                                         §§goto(addr00ef);
                                                      }
                                                   }
                                                }
                                                §§goto(addr00e6);
                                             }
                                             §§goto(addr00e0);
                                          }
                                          §§goto(addr00de);
                                       }
                                    }
                                    §§goto(addr00f1);
                                 }
                                 §§goto(addr0096);
                              }
                              §§goto(addr00f1);
                           }
                           §§goto(addr0074);
                        }
                        §§goto(addr00f1);
                     }
                     §§goto(addr0078);
                  }
                  §§goto(addr0053);
               }
               §§goto(addr00f1);
            }
            §§goto(addr00f2);
         }
         §§goto(addr0030);
      }
      
      public function get informationFloaterPhase() : ConfigPhaseDTO
      {
         return this._informationFloaterPhase;
      }
      
      public function set informationFloaterPhase(param1:ConfigPhaseDTO) : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc2_:ConfigPhaseDTO = null;
         var _loc3_:ConfigPhaseDTO = null;
         var _loc4_:ConfigOutputDTO = null;
         if(_loc9_ || Boolean(_loc3_))
         {
            if(param1 != null)
            {
               if(!(_loc10_ && Boolean(_loc2_)))
               {
                  if(param1.phaseType == ServerPhaseTypes.CREATE_ACTIVATE)
                  {
                     §§goto(addr0055);
                  }
                  else
                  {
                     this._informationFloaterPhase = param1;
                     if(_loc9_ || Boolean(_loc3_))
                     {
                     }
                  }
                  §§goto(addr0163);
               }
               §§goto(addr0055);
            }
            else
            {
               this._informationFloaterPhase = null;
            }
            addr0163:
            return;
         }
         addr0055:
         var _loc5_:int = 0;
         var _loc6_:* = configPlayfieldItemVo.activePhases;
         while(true)
         {
            for each(_loc2_ in _loc6_)
            {
               if(_loc9_ || Boolean(this))
               {
                  if(_loc2_.phaseType != ServerPhaseTypes.ACTIVATION)
                  {
                     continue;
                  }
               }
               _loc3_ = param1.clone();
               if(!_loc10_)
               {
                  var _loc7_:int = 0;
                  if(!(_loc10_ && Boolean(_loc3_)))
                  {
                     for each(_loc4_ in _loc2_.listEntryOutputs)
                     {
                        if(_loc9_)
                        {
                           _loc3_.listEntryOutputs.push(_loc4_);
                        }
                     }
                  }
                  if(_loc10_ && Boolean(_loc3_))
                  {
                     break;
                  }
               }
               this._informationFloaterPhase = _loc3_;
               if(!(_loc10_ && Boolean(this)))
               {
                  break;
               }
               continue;
            }
            if(!(_loc10_ && Boolean(this)))
            {
               this._informationFloaterPhase = param1;
               if(_loc9_ || Boolean(_loc3_))
               {
               }
            }
         }
      }
      
      public function get informationFloaterCustomText() : String
      {
         return this._informationFloaterCustomText;
      }
      
      public function set informationFloaterCustomText(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._informationFloaterCustomText = param1;
         }
      }
      
      public function get useIcons() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(this.buildingDTO);
            if(!_loc2_)
            {
               §§push(§§pop() == null);
               if(_loc1_ || _loc2_)
               {
                  §§push(!§§pop());
                  if(!_loc2_)
                  {
                     addr0045:
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     if(_temp_3)
                     {
                        if(!_loc2_)
                        {
                           §§pop();
                           if(!(_loc2_ && _loc2_))
                           {
                              addr0061:
                              addr005d:
                              §§push(this.buildingDTO.emergencyDTO == null);
                              if(!_loc2_)
                              {
                                 §§goto(addr0075);
                              }
                              §§goto(addr007b);
                           }
                           §§goto(addr009b);
                        }
                        addr0075:
                        §§push(!§§pop());
                        if(_loc1_)
                        {
                           addr007b:
                           if(§§pop())
                           {
                              if(_loc1_ || _loc1_)
                              {
                                 §§push(false);
                                 if(_loc1_ || _loc2_)
                                 {
                                    §§goto(addr009a);
                                 }
                              }
                              else
                              {
                                 addr009b:
                                 return this._useIcons;
                              }
                              return §§pop();
                           }
                           §§goto(addr009b);
                        }
                        addr009a:
                        return §§pop();
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0045);
            }
            §§goto(addr0061);
         }
         §§goto(addr005d);
      }
      
      public function set useIcons(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._useIcons = param1;
         }
      }
      
      public function getConstructionInstantFinishCost() : Number
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc1_:PhaseDTO = null;
         var _loc2_:ConfigOutputDTO = null;
         var _loc3_:int = 0;
         for each(_loc1_ in this.activePhases)
         {
            if(_loc7_)
            {
               §§push(_loc1_.config);
               if(!(_loc8_ && Boolean(_loc1_)))
               {
                  §§push(§§pop().phaseType);
                  if(_loc7_)
                  {
                     §§push(ServerPhaseTypes.CREATE_PLACE_NORMAL);
                     if(_loc7_)
                     {
                        §§push(§§pop() == §§pop());
                        if(_loc7_)
                        {
                           var _temp_2:* = §§pop();
                           §§push(_temp_2);
                           §§push(_temp_2);
                           if(!_loc8_)
                           {
                              if(!§§pop())
                              {
                                 if(_loc7_ || Boolean(_loc3_))
                                 {
                                    §§pop();
                                    if(_loc7_ || Boolean(this))
                                    {
                                       §§push(_loc1_.config);
                                       if(!(_loc8_ && Boolean(_loc2_)))
                                       {
                                          §§push(§§pop().phaseType);
                                          if(!(_loc8_ && Boolean(_loc3_)))
                                          {
                                             addr00b2:
                                             §§push(ServerPhaseTypes.CREATE_PLACE_PERMISSION);
                                             if(_loc7_ || Boolean(this))
                                             {
                                                addr00c6:
                                                §§push(§§pop() == §§pop());
                                                if(!(_loc8_ && Boolean(_loc1_)))
                                                {
                                                   addr00d5:
                                                   var _temp_9:* = §§pop();
                                                   §§push(_temp_9);
                                                   §§push(_temp_9);
                                                   if(!_loc8_)
                                                   {
                                                      addr00e9:
                                                      if(!§§pop())
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            addr00f3:
                                                            §§pop();
                                                            if(_loc8_ && Boolean(this))
                                                            {
                                                               continue;
                                                            }
                                                            §§push(_loc1_.config);
                                                            if(!_loc8_)
                                                            {
                                                               §§push(§§pop().phaseType);
                                                               if(!(_loc8_ && Boolean(_loc2_)))
                                                               {
                                                                  §§push(ServerPhaseTypes.CREATE_CONSTRUCTION);
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     if(!(_loc8_ && Boolean(_loc3_)))
                                                                     {
                                                                        addr0137:
                                                                        var _temp_13:* = §§pop();
                                                                        addr0138:
                                                                        §§push(_temp_13);
                                                                        if(!_temp_13)
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              addr0142:
                                                                              §§pop();
                                                                              if(_loc8_ && Boolean(_loc3_))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              addr015d:
                                                                              addr0157:
                                                                              addr0154:
                                                                              addr0151:
                                                                              §§push(_loc1_.config.phaseType == ServerPhaseTypes.MYSTERY_CONSTRUCTION);
                                                                           }
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              addr0168:
                                                                              var _loc5_:int = 0;
                                                                              if(_loc7_ || Boolean(this))
                                                                              {
                                                                                 for each(_loc2_ in _loc1_.config.instantFinshOutput)
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       §§push(_loc2_.resourceConfig);
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          if(§§pop() == null)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          addr01ab:
                                                                                          §§push(_loc2_.resourceConfig);
                                                                                       }
                                                                                       if(§§pop().type == ServerResConst.RESOURCE_REALCURRENCY)
                                                                                       {
                                                                                          if(!(_loc8_ && Boolean(_loc3_)))
                                                                                          {
                                                                                             return Math.abs(_loc2_.outputAmount);
                                                                                          }
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr01ab);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        continue;
                                                                     }
                                                                     §§goto(addr0142);
                                                                  }
                                                                  §§goto(addr015d);
                                                               }
                                                               §§goto(addr0157);
                                                            }
                                                            §§goto(addr0154);
                                                         }
                                                         §§goto(addr0142);
                                                      }
                                                      §§goto(addr0137);
                                                   }
                                                   §§goto(addr0138);
                                                }
                                                §§goto(addr0142);
                                             }
                                             §§goto(addr015d);
                                          }
                                          §§goto(addr0157);
                                       }
                                       §§goto(addr0154);
                                    }
                                    §§goto(addr0168);
                                 }
                                 §§goto(addr0137);
                              }
                              §§goto(addr00d5);
                           }
                           §§goto(addr00e9);
                        }
                        §§goto(addr00f3);
                     }
                     §§goto(addr00c6);
                  }
                  §§goto(addr00b2);
               }
               §§goto(addr0154);
            }
            §§goto(addr0151);
         }
         return 0;
      }
      
      public function isUnderConstruction() : Boolean
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:PhaseDTO = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.activePhases;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!(_loc5_ && Boolean(this)))
               {
                  §§push(_loc1_.config);
                  if(_loc4_ || Boolean(this))
                  {
                     §§push(§§pop().phaseType);
                     if(_loc4_)
                     {
                        §§push(ServerPhaseTypes.CREATE_CONSTRUCTION);
                        if(_loc4_ || Boolean(_loc1_))
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc4_ || Boolean(this))
                           {
                              var _temp_5:* = §§pop();
                              §§push(_temp_5);
                              §§push(_temp_5);
                              if(_loc4_ || Boolean(_loc2_))
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       §§pop();
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          addr00a2:
                                          §§push(_loc1_.config);
                                          if(!_loc5_)
                                          {
                                             addr00ab:
                                             §§push(§§pop().phaseType);
                                             if(_loc4_)
                                             {
                                                §§push(ServerPhaseTypes.CREATE_PLACE_NORMAL);
                                                if(_loc4_ || Boolean(_loc2_))
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc4_ || Boolean(this))
                                                   {
                                                      addr00d7:
                                                      var _temp_10:* = §§pop();
                                                      §§push(_temp_10);
                                                      §§push(_temp_10);
                                                      if(_loc4_)
                                                      {
                                                         addr00ea:
                                                         if(!§§pop())
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               addr00f4:
                                                               §§pop();
                                                               if(!_loc5_)
                                                               {
                                                                  addr00fb:
                                                                  §§push(_loc1_.config);
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr0104:
                                                                     §§push(§§pop().phaseType);
                                                                     if(_loc4_ || Boolean(_loc1_))
                                                                     {
                                                                        addr0115:
                                                                        §§push(ServerPhaseTypes.CREATE_PLACE_PERMISSION);
                                                                        if(_loc4_ || Boolean(this))
                                                                        {
                                                                           addr0129:
                                                                           §§push(§§pop() == §§pop());
                                                                           if(_loc4_)
                                                                           {
                                                                              addr0130:
                                                                              var _temp_13:* = §§pop();
                                                                              §§push(_temp_13);
                                                                              §§push(_temp_13);
                                                                              if(!(_loc5_ && _loc3_))
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    if(_loc4_ || Boolean(_loc1_))
                                                                                    {
                                                                                       addr0151:
                                                                                       §§pop();
                                                                                       if(_loc5_ && Boolean(_loc1_))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§push(_loc1_.config);
                                                                                       if(_loc4_ || Boolean(this))
                                                                                       {
                                                                                          §§push(§§pop().phaseType);
                                                                                          if(!(_loc5_ && Boolean(this)))
                                                                                          {
                                                                                             addr0182:
                                                                                             §§push(ServerPhaseTypes.CREATE_ACTIVATE);
                                                                                             if(!(_loc5_ && _loc3_))
                                                                                             {
                                                                                                addr0196:
                                                                                                §§push(§§pop() == §§pop());
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr019d:
                                                                                                   var _temp_20:* = §§pop();
                                                                                                   addr019e:
                                                                                                   §§push(_temp_20);
                                                                                                   if(!_temp_20)
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         addr01a8:
                                                                                                         §§pop();
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            addr01c6:
                                                                                                            addr01c0:
                                                                                                            addr01bd:
                                                                                                            addr01ba:
                                                                                                            §§push(_loc1_.config.phaseType == ServerPhaseTypes.MYSTERY_CONSTRUCTION);
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            addr01cd:
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            if(_loc5_ && Boolean(_loc2_))
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                         }
                                                                                                         §§push(true);
                                                                                                         break;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr01cd);
                                                                                             }
                                                                                             §§goto(addr01c6);
                                                                                          }
                                                                                          §§goto(addr01c0);
                                                                                       }
                                                                                       §§goto(addr01bd);
                                                                                    }
                                                                                    §§goto(addr01a8);
                                                                                 }
                                                                                 §§goto(addr019d);
                                                                              }
                                                                              §§goto(addr019e);
                                                                           }
                                                                           §§goto(addr01cd);
                                                                        }
                                                                        §§goto(addr01c6);
                                                                     }
                                                                     §§goto(addr0182);
                                                                  }
                                                                  §§goto(addr01bd);
                                                               }
                                                               §§goto(addr01ba);
                                                            }
                                                         }
                                                         §§goto(addr0130);
                                                      }
                                                      §§goto(addr019e);
                                                   }
                                                   §§goto(addr0151);
                                                }
                                                §§goto(addr0196);
                                             }
                                             §§goto(addr0182);
                                          }
                                          §§goto(addr0104);
                                       }
                                       §§goto(addr00fb);
                                    }
                                    §§goto(addr00f4);
                                 }
                                 §§goto(addr00d7);
                              }
                              §§goto(addr00ea);
                           }
                           §§goto(addr0151);
                        }
                        §§goto(addr0129);
                     }
                     §§goto(addr0115);
                  }
                  §§goto(addr00ab);
               }
               §§goto(addr00a2);
            }
            return false;
         }
         return §§pop();
      }
      
      public function set hideIconsForMoveMode(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._hideIconsForMoveMode = param1;
         }
      }
      
      public function get currentMode() : String
      {
         return this._currentApplicationMode;
      }
      
      public function get hideIconsForMoveMode() : Boolean
      {
         return this._hideIconsForMoveMode;
      }
      
      public function get userInteractionLocked() : Boolean
      {
         return this._userInteractionLocked;
      }
      
      public function set userInteractionLocked(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._userInteractionLocked = param1;
         }
      }
      
      public function set iconOffset(param1:Point) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._iconOffset = param1;
         }
      }
      
      public function get iconOffset() : Point
      {
         return this._iconOffset;
      }
      
      public function set baseIconOffset(param1:Point) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._baseIconOffset = param1;
         }
      }
      
      public function get baseIconOffset() : Point
      {
         return this._baseIconOffset;
      }
      
      public function set constructionIconOffset(param1:Point) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._constructionIconOffset = param1;
         }
      }
      
      public function get constructionIconOffset() : Point
      {
         return this._constructionIconOffset;
      }
      
      public function set placementIconOffset(param1:Point) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._placementIconOffset = param1;
         }
      }
      
      public function get placementIconOffset() : Point
      {
         return this._placementIconOffset;
      }
      
      public function get percentageOfRemainingTimer() : Number
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc1_:PhaseDTO = null;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         if(_loc6_)
         {
            §§push(this.isConnectedToStreet);
            if(_loc6_ || Boolean(_loc1_))
            {
               §§push(§§pop());
               if(_loc6_ || Boolean(this))
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(!_loc7_)
                     {
                        §§pop();
                        if(!_loc7_)
                        {
                           §§goto(addr0062);
                        }
                        §§goto(addr0066);
                     }
                     §§goto(addr0061);
                  }
               }
               addr0062:
               §§push(this.isUnderConstruction());
               if(!_loc7_)
               {
                  addr0061:
                  §§push(§§pop());
               }
               if(§§pop())
               {
                  §§goto(addr0066);
               }
               return -1;
            }
            §§goto(addr0061);
         }
         addr0066:
         var _loc4_:int = 0;
         var _loc5_:* = this.activePhases;
         while(true)
         {
            for each(_loc1_ in _loc5_)
            {
               if(!(_loc7_ && Boolean(_loc2_)))
               {
                  §§push(_loc1_.config);
                  if(_loc6_ || Boolean(this))
                  {
                     §§push(§§pop().phaseType);
                     if(!(_loc7_ && Boolean(this)))
                     {
                        §§push(ServerPhaseTypes.CREATE_CONSTRUCTION);
                        if(_loc6_ || Boolean(_loc3_))
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc6_ || Boolean(_loc1_))
                           {
                              var _temp_9:* = §§pop();
                              §§push(_temp_9);
                              if(!_temp_9)
                              {
                                 if(_loc6_)
                                 {
                                    addr00ea:
                                    §§pop();
                                    if(!_loc7_)
                                    {
                                       addr00fe:
                                       addr00fd:
                                       addr00f7:
                                       addr00f4:
                                       if(_loc1_.config.phaseType != ServerPhaseTypes.MYSTERY_CONSTRUCTION)
                                       {
                                          continue;
                                       }
                                       if(_loc7_)
                                       {
                                          continue;
                                       }
                                       §§push(_loc1_.expirationTime);
                                       if(_loc6_ || Boolean(_loc3_))
                                       {
                                          §§push(this.currentTimeStamp);
                                          if(!_loc7_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(_loc7_ && Boolean(_loc1_))
                                             {
                                                break;
                                             }
                                             §§push(§§pop());
                                             if(!(_loc7_ && Boolean(_loc1_)))
                                             {
                                                _loc2_ = §§pop();
                                                if(_loc6_)
                                                {
                                                   addr0149:
                                                   §§push(_loc2_);
                                                   if(!_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   addr0159:
                                                   §§push(§§pop() / _loc1_.config.durationConfig.duration);
                                                   if(_loc6_ || Boolean(_loc2_))
                                                   {
                                                      addr0176:
                                                      §§push(§§pop());
                                                      if(_loc7_ && Boolean(_loc1_))
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   _loc3_ = §§pop();
                                                   if(_loc7_ && Boolean(this))
                                                   {
                                                      continue;
                                                   }
                                                }
                                                addr0194:
                                                §§push(_loc3_);
                                                break;
                                             }
                                             §§goto(addr0176);
                                          }
                                          §§goto(addr0159);
                                       }
                                       §§goto(addr0176);
                                    }
                                    §§goto(addr0194);
                                 }
                              }
                              §§goto(addr00fe);
                           }
                           §§goto(addr00ea);
                        }
                        §§goto(addr00fd);
                     }
                     §§goto(addr00f7);
                  }
                  §§goto(addr00f4);
               }
               §§goto(addr0149);
            }
         }
         return §§pop();
      }
      
      public function set currentApplicationMode(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._currentApplicationMode = param1;
         }
      }
      
      public function get emergencyState() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            §§push(this.buildingDTO);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§push(this.buildingDTO);
                     if(!_loc2_)
                     {
                        addr0054:
                        §§push(§§pop().emergencyDTO);
                        if(!_loc2_)
                        {
                           if(§§pop() != null)
                           {
                              if(_loc1_ || _loc1_)
                              {
                                 addr0075:
                                 return this.buildingDTO.emergencyDTO.status;
                                 addr0072:
                                 addr006e:
                              }
                           }
                           §§goto(addr0079);
                        }
                        §§goto(addr0075);
                     }
                     §§goto(addr0072);
                  }
               }
               addr0079:
               return null;
            }
            §§goto(addr0054);
         }
         §§goto(addr006e);
      }
      
      public function get emergencyInProgress() : Boolean
      {
         return this._emergencyInProgress;
      }
      
      public function set emergencyInProgress(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && param1))
         {
            clearInterval(this._emergencyProgressInterval);
            if(!_loc2_)
            {
               §§push(RandomUtilities.isEqual(param1,this._emergencyInProgress));
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     if(_loc3_)
                     {
                        this._emergencyInProgress = param1;
                        if(!_loc2_)
                        {
                           dispatchEvent(new Event(EMERGENCY_PROGRESS_CHANGED));
                           §§goto(addr005e);
                        }
                        §§goto(addr007d);
                     }
                     addr005e:
                     if(!_loc2_)
                     {
                        addr007d:
                        addr0081:
                        if(this._emergencyInProgress)
                        {
                           if(!(_loc2_ && param1))
                           {
                              this._emergencyProgressInterval = setInterval(this.onEmergencyProgressDone,10000);
                           }
                        }
                     }
                     §§goto(addr00a5);
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0081);
            }
            addr00a5:
            return;
         }
         §§goto(addr007d);
      }
      
      private function onEmergencyProgressDone() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            this.emergencyInProgress = false;
         }
      }
      
      public function hasEmergency() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(this.emergencyState == null);
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function interactionBlockedByEmergency() : Boolean
      {
         return this.emergencyState == EmergencyConstants.EMERGENCY_STATUS_STARTED;
      }
      
      public function get isRestrictedByGround() : Boolean
      {
         return this._isRestrictedByGround;
      }
      
      public function set isRestrictedByGround(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._isRestrictedByGround = param1;
         }
      }
      
      public function get isBlockedByBoulder() : Boolean
      {
         return this._isBlockedByBoulder;
      }
      
      public function set isBlockedByBoulder(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && param1))
         {
            this._isBlockedByBoulder = param1;
         }
      }
      
      public function get isBlockedByObject() : Boolean
      {
         return this._isBlockedByObject;
      }
      
      public function set isBlockedByObject(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._isBlockedByObject = param1;
         }
      }
      
      public function get terrainTypeNeeded() : String
      {
         return this._terrainTypeNeeded;
      }
      
      public function set terrainTypeNeeded(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._terrainTypeNeeded = param1;
         }
      }
      
      public function get happinessModifier() : Number
      {
         return this._happinessModifier;
      }
      
      public function set happinessModifier(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._happinessModifier = param1;
         }
      }
      
      public function get energyModifier() : Number
      {
         return this._energyModifier;
      }
      
      public function set energyModifier(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this._energyModifier = param1;
         }
      }
      
      public function get doubleBonusDayModifier() : Number
      {
         return this._doubleBonusDayModifier;
      }
      
      public function set doubleBonusDayModifier(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._doubleBonusDayModifier = param1;
         }
      }
      
      public function get isExpansionObject() : Boolean
      {
         return this._isExpansionObject;
      }
      
      public function set isExpansionObject(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._isExpansionObject = param1;
         }
      }
      
      public function set expansionObject(param1:ExpansionFieldObject) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._expansionObject = param1;
         }
      }
      
      public function get expansionObject() : ExpansionFieldObject
      {
         return this._expansionObject;
      }
   }
}

