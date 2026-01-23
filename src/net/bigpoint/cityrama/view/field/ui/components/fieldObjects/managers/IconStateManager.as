package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import com.greensock.TweenMax;
   import com.greensock.plugins.TransformAroundCenterPlugin;
   import com.greensock.plugins.TweenPlugin;
   import flash.display.Sprite;
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ServerRestrictionConstants;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IImprovable;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.CitySquareFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.DecorationFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.MysteryBuildingObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ProductionFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ResidentialFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ShopFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.TownHallFieldObjectVo;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigMasteryChallengeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.MasteryChallengeDTO;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IIconStateManager;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IIcondataVo;
   import net.bigpoint.util.RisingBitmap;
   
   public class IconStateManager implements IIconStateManager
   {
      
      protected static const LIB_FILE:String = "gui_infield_gui_mainmenue";
      
      protected static const LIB_DEFINITION:String = "gui_infield_buildingstates_icons";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         LIB_FILE = "gui_infield_gui_mainmenue";
         if(!_loc2_)
         {
            addr0023:
            LIB_DEFINITION = "gui_infield_buildingstates_icons";
         }
         return;
      }
      §§goto(addr0023);
      
      protected var _billboardObjectVo:BillboardObjectVo;
      
      protected var _iconData:IIcondataVo;
      
      protected var _iconContainer:Sprite;
      
      protected var _smartObjectContainer:SmartObjectContainer;
      
      protected var _isDirty:Boolean;
      
      protected var _currentIcon:Sprite;
      
      protected var _isPlaying:Boolean;
      
      private var _connectedToStreet:Boolean;
      
      private var _readyToActivate:Boolean;
      
      private var _readyToHarvest:Boolean;
      
      private var _masteryStepReady:Boolean;
      
      private var _readyToStepUp:Boolean;
      
      private var _idle:Boolean;
      
      private var _almostEmpty:Boolean;
      
      private var _townHallUpgradeReady:Boolean;
      
      private var _needsNeedIcon:Boolean;
      
      private var _improvement:Boolean;
      
      private var _improvementSlotsFull:Boolean;
      
      private var _improvementHasExpiredSlot:Boolean;
      
      private var _blockedByBoulder:Boolean;
      
      private var _blockedByObject:Boolean;
      
      private var _groundRestricted:Boolean;
      
      private var _harvestIcon:Sprite;
      
      private var _masteryIcon:Sprite;
      
      private var _groundRestrictedIcon:Sprite;
      
      private var _blockedByObjectIcon:Sprite;
      
      private var _notConnectedIcon:Sprite;
      
      private var _activationIcon:Sprite;
      
      private var _stepUpIcon:Sprite;
      
      private var _idleIcon:Sprite;
      
      private var _almostEmptyIcon:Sprite;
      
      private var _upgradeIcon:Sprite;
      
      private var _needBuildingIcon:Sprite;
      
      private var _emergencyIcon:Sprite;
      
      private var _improvementIcon:Sprite;
      
      private var _terrainTypeNeeded:String;
      
      public function IconStateManager()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
         }
      }
      
      protected static function clear(param1:Sprite) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         while(param1.numChildren)
         {
            param1.removeChildAt(0);
            if(_loc3_ && Boolean(param1))
            {
               break;
            }
         }
      }
      
      public function prepareIconStateManager(param1:IIcondataVo, param2:Sprite, param3:SmartObjectContainer) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!(_loc5_ && Boolean(this)))
         {
            TweenPlugin.activate([TransformAroundCenterPlugin]);
            if(_loc4_)
            {
               if(param1 is BillboardObjectVo)
               {
                  if(_loc4_ || Boolean(this))
                  {
                     this._billboardObjectVo = param1 as BillboardObjectVo;
                     if(_loc4_ || Boolean(this))
                     {
                        addr0064:
                        this._iconData = param1;
                        if(_loc4_ || Boolean(this))
                        {
                           this._iconContainer = param2;
                           if(!(_loc5_ && Boolean(param2)))
                           {
                              this._smartObjectContainer = param3;
                              if(!(_loc5_ && Boolean(param2)))
                              {
                                 §§goto(addr009d);
                              }
                              §§goto(addr015a);
                           }
                           addr009d:
                           this._smartObjectContainer.addEventListener(SmartObjectContainer.INVALIDATED,this.changeContainerHeight);
                           if(!(_loc5_ && Boolean(param2)))
                           {
                              this._billboardObjectVo.addEventListener(BillboardObjectVo.INVALIDATED,this.onDataChanged);
                              if(_loc4_)
                              {
                                 this._notConnectedIcon = new Sprite();
                                 if(!_loc5_)
                                 {
                                    addr00f1:
                                    this._groundRestrictedIcon = new Sprite();
                                    if(!_loc5_)
                                    {
                                       this._blockedByObjectIcon = new Sprite();
                                       if(!_loc5_)
                                       {
                                          this._activationIcon = new Sprite();
                                          if(_loc4_)
                                          {
                                             addr011e:
                                             this._harvestIcon = new Sprite();
                                             if(!_loc5_)
                                             {
                                                this._masteryIcon = new Sprite();
                                                if(_loc4_)
                                                {
                                                   this._stepUpIcon = new Sprite();
                                                   if(_loc4_)
                                                   {
                                                      addr014b:
                                                      this._idleIcon = new Sprite();
                                                      if(_loc4_)
                                                      {
                                                         addr015a:
                                                         this._almostEmptyIcon = new Sprite();
                                                         if(!(_loc5_ && Boolean(this)))
                                                         {
                                                            §§goto(addr0171);
                                                         }
                                                         §§goto(addr0180);
                                                      }
                                                      §§goto(addr01c2);
                                                   }
                                                   §§goto(addr01b3);
                                                }
                                                addr0171:
                                                this._upgradeIcon = new Sprite();
                                                if(!_loc5_)
                                                {
                                                   this._needBuildingIcon = new Sprite();
                                                   addr0180:
                                                   if(_loc4_)
                                                   {
                                                      §§goto(addr019b);
                                                   }
                                                   §§goto(addr01c2);
                                                }
                                                §§goto(addr019b);
                                             }
                                             addr019b:
                                             this._emergencyIcon = new Sprite();
                                             if(!(_loc5_ && Boolean(param2)))
                                             {
                                                addr01b3:
                                                this._improvementIcon = new Sprite();
                                                if(_loc4_)
                                                {
                                                   addr01c2:
                                                   this.invalidateIconStateManager();
                                                }
                                             }
                                             §§goto(addr01c7);
                                          }
                                          §§goto(addr01c2);
                                       }
                                       §§goto(addr01c7);
                                    }
                                 }
                                 §§goto(addr014b);
                              }
                              §§goto(addr00f1);
                           }
                           addr01c7:
                           return;
                        }
                     }
                     §§goto(addr01c2);
                  }
                  §§goto(addr011e);
               }
               §§goto(addr0064);
            }
            §§goto(addr01b3);
         }
         §§goto(addr019b);
      }
      
      protected function changeContainerHeight(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this.checkContainerPosition();
         }
      }
      
      protected function onDataChanged(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(!this._isPlaying)
            {
               if(!_loc3_)
               {
                  addr0024:
                  this.invalidateIconStateManager();
               }
            }
            return;
         }
         §§goto(addr0024);
      }
      
      public function invalidateIconStateManager(param1:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._improvement = false;
            if(!(_loc2_ && _loc3_))
            {
               §§push(this.useIcons());
               if(_loc3_ || _loc3_)
               {
                  §§push(!§§pop());
                  if(!(_loc2_ && _loc3_))
                  {
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     if(!_temp_5)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           §§pop();
                           if(_loc3_ || Boolean(this))
                           {
                              addr007f:
                              addr006a:
                              §§push(this._billboardObjectVo.userInteractionLocked);
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(§§pop());
                              }
                              if(§§pop())
                              {
                                 do
                                 {
                                    if(!this._iconContainer.numChildren)
                                    {
                                       if(!_loc2_)
                                       {
                                          return;
                                       }
                                       addr0242:
                                       addr03d5:
                                       this.checkAlmostIdle();
                                       if(_loc3_)
                                       {
                                          addr024d:
                                          this.setIcon();
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          addr0370:
                                          addr0370:
                                          this.checkNeedBuilding();
                                          if(!_loc2_)
                                          {
                                             addr037a:
                                             this.setIcon();
                                             if(_loc2_)
                                             {
                                             }
                                             break;
                                          }
                                          addr03c2:
                                          addr03c2:
                                          this.checkImprovements();
                                          if(_loc2_ && _loc2_)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          addr034a:
                                          §§push(this._billboardObjectVo);
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             addr035f:
                                             if(§§pop() is ShopFieldObjectVo)
                                             {
                                                if(_loc2_ && _loc3_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr0370);
                                             }
                                             §§goto(addr037a);
                                          }
                                          else
                                          {
                                             addr03b0:
                                             addr03b3:
                                             if(§§pop().currentMode != ApplicationModeProxy.MODE_IMPROVEMENT)
                                             {
                                                break;
                                             }
                                             if(!_loc2_)
                                             {
                                                §§goto(addr03c2);
                                             }
                                          }
                                       }
                                       this.setIcon();
                                       break;
                                    }
                                    this._iconContainer.removeChildAt(0);
                                 }
                                 while(_loc3_ || _loc2_);
                                 
                                 addr03da:
                                 return;
                                 addr009f:
                              }
                              else
                              {
                                 §§push(this._billboardObjectVo);
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop().currentMode);
                                    if(!_loc2_)
                                    {
                                       if(§§pop() == "")
                                       {
                                          if(_loc3_)
                                          {
                                             §§push(this._isPlaying);
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc2_ && param1))
                                                   {
                                                      TweenMax.delayedCall(1,this.invalidateIconStateManager,[param1]);
                                                      if(_loc2_ && Boolean(this))
                                                      {
                                                         addr0221:
                                                         this.checkMasteryStepReady();
                                                         if(!_loc2_)
                                                         {
                                                            this.checkStepUpReady();
                                                            if(!_loc2_)
                                                            {
                                                               this.checkIdle();
                                                               if(_loc3_)
                                                               {
                                                                  §§goto(addr0242);
                                                               }
                                                               §§goto(addr024d);
                                                            }
                                                            §§goto(addr037a);
                                                         }
                                                         §§goto(addr024d);
                                                      }
                                                      §§goto(addr03da);
                                                   }
                                                   else
                                                   {
                                                      addr020e:
                                                      this.checkHarvestReady();
                                                      if(_loc3_ || param1)
                                                      {
                                                         §§goto(addr0221);
                                                      }
                                                      else
                                                      {
                                                         addr02ea:
                                                         this.checkGroundRestrictions();
                                                         if(_loc3_ || Boolean(this))
                                                         {
                                                            addr02fc:
                                                            this.checkBlockedByGround();
                                                            if(!(_loc2_ && param1))
                                                            {
                                                               addr030e:
                                                               this.checkConnected();
                                                               if(!_loc2_)
                                                               {
                                                                  addr0318:
                                                                  §§push(this._billboardObjectVo);
                                                                  if(_loc3_)
                                                                  {
                                                                     addr0321:
                                                                     §§push(§§pop() is ResidentialFieldObjectVo);
                                                                     if(!(_loc2_ && _loc2_))
                                                                     {
                                                                        addr0332:
                                                                        var _temp_20:* = §§pop();
                                                                        addr0333:
                                                                        §§push(_temp_20);
                                                                        if(!_temp_20)
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              §§pop();
                                                                              if(_loc3_ || param1)
                                                                              {
                                                                                 §§goto(addr034a);
                                                                              }
                                                                              §§goto(addr03da);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr035f);
                                                                  }
                                                                  §§goto(addr03b0);
                                                               }
                                                               §§goto(addr03d5);
                                                            }
                                                            §§goto(addr0370);
                                                         }
                                                      }
                                                      §§goto(addr03d5);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(param1);
                                                   if(_loc3_)
                                                   {
                                                      §§push(!§§pop());
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         var _temp_23:* = §§pop();
                                                         §§push(_temp_23);
                                                         §§push(_temp_23);
                                                         if(!_loc2_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc2_ && Boolean(this)))
                                                               {
                                                                  §§pop();
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(this._billboardObjectVo);
                                                                     if(!(_loc2_ && _loc3_))
                                                                     {
                                                                        §§push(§§pop().hideIconsForMoveMode);
                                                                        if(_loc3_)
                                                                        {
                                                                           addr015d:
                                                                           §§push(!§§pop());
                                                                           if(_loc3_ || Boolean(this))
                                                                           {
                                                                              addr016b:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    addr0174:
                                                                                    this._isDirty = true;
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       addr017e:
                                                                                       this._iconContainer.visible = true;
                                                                                       if(_loc3_ || _loc3_)
                                                                                       {
                                                                                          §§push(this.checkRollOver());
                                                                                          if(!(_loc2_ && _loc2_))
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                if(!(_loc2_ && _loc3_))
                                                                                                {
                                                                                                   this.checkConnected();
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      this.checkGroundRestrictions();
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         this.checkBlockedByGround();
                                                                                                         addr01ca:
                                                                                                         if(_loc3_ || Boolean(this))
                                                                                                         {
                                                                                                            this.checkUpgradeReady();
                                                                                                            if(_loc3_ || _loc2_)
                                                                                                            {
                                                                                                               addr01fc:
                                                                                                               this.checkActivateReady();
                                                                                                               if(_loc3_ || _loc2_)
                                                                                                               {
                                                                                                                  §§goto(addr020e);
                                                                                                               }
                                                                                                               §§goto(addr0242);
                                                                                                            }
                                                                                                            §§goto(addr0318);
                                                                                                         }
                                                                                                         §§goto(addr03c2);
                                                                                                      }
                                                                                                      §§goto(addr0221);
                                                                                                   }
                                                                                                   §§goto(addr01fc);
                                                                                                }
                                                                                                §§goto(addr03c2);
                                                                                             }
                                                                                             §§goto(addr03da);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr02ad:
                                                                                             §§push(§§pop());
                                                                                             if(!(_loc2_ && _loc3_))
                                                                                             {
                                                                                                addr02bb:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc3_ || Boolean(this))
                                                                                                   {
                                                                                                      this._isDirty = true;
                                                                                                      if(_loc3_ || param1)
                                                                                                      {
                                                                                                         this._iconContainer.visible = false;
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            §§goto(addr02ea);
                                                                                                         }
                                                                                                         §§goto(addr03da);
                                                                                                      }
                                                                                                      §§goto(addr02fc);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   this.animateIcon();
                                                                                                   if(_loc3_ || _loc3_)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr03da);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr035f);
                                                                                       }
                                                                                       §§goto(addr01ca);
                                                                                    }
                                                                                    §§goto(addr030e);
                                                                                 }
                                                                                 §§goto(addr017e);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(param1);
                                                                                 if(!(_loc2_ && Boolean(this)))
                                                                                 {
                                                                                    addr0269:
                                                                                    §§push(!§§pop());
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       addr026f:
                                                                                       var _temp_38:* = §§pop();
                                                                                       §§push(_temp_38);
                                                                                       §§push(_temp_38);
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                addr027e:
                                                                                                §§pop();
                                                                                                if(_loc3_ || _loc3_)
                                                                                                {
                                                                                                   §§push(this._billboardObjectVo);
                                                                                                   if(_loc3_ || Boolean(this))
                                                                                                   {
                                                                                                      §§push(§§pop().hideIconsForMoveMode);
                                                                                                      if(!(_loc2_ && _loc3_))
                                                                                                      {
                                                                                                         §§goto(addr02ad);
                                                                                                      }
                                                                                                      §§goto(addr035f);
                                                                                                   }
                                                                                                   §§goto(addr0321);
                                                                                                }
                                                                                                §§goto(addr034a);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr02bb);
                                                                                       }
                                                                                       §§goto(addr0333);
                                                                                    }
                                                                                    §§goto(addr02ad);
                                                                                 }
                                                                              }
                                                                              §§goto(addr02bb);
                                                                           }
                                                                           §§goto(addr027e);
                                                                        }
                                                                        §§goto(addr02bb);
                                                                     }
                                                                     §§goto(addr03b0);
                                                                  }
                                                                  §§goto(addr02fc);
                                                               }
                                                               §§goto(addr0332);
                                                            }
                                                            §§goto(addr016b);
                                                         }
                                                         §§goto(addr0333);
                                                      }
                                                      §§goto(addr0269);
                                                   }
                                                   §§goto(addr015d);
                                                }
                                                §§goto(addr034a);
                                             }
                                             §§goto(addr026f);
                                          }
                                          §§goto(addr0174);
                                       }
                                       else
                                       {
                                          §§push(this._billboardObjectVo);
                                       }
                                       §§goto(addr03b0);
                                    }
                                    §§goto(addr03b3);
                                 }
                              }
                              §§goto(addr03b0);
                           }
                           §§goto(addr009f);
                        }
                     }
                  }
               }
               §§goto(addr007f);
            }
            §§goto(addr006a);
         }
         §§goto(addr009f);
      }
      
      private function checkRollOver() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            §§push(this._billboardObjectVo);
            if(_loc2_ || Boolean(this))
            {
               §§push(§§pop() is ResidentialFieldObjectVo);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        §§push(this._billboardObjectVo);
                        if(!(_loc1_ && Boolean(this)))
                        {
                           addr0052:
                           §§push((§§pop() as ResidentialFieldObjectVo).shopRollOver);
                           if(!(_loc1_ && Boolean(this)))
                           {
                              if(§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    addr006f:
                                    this._iconContainer.visible = false;
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       this.checkNeedBuilding();
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          §§goto(addr0095);
                                       }
                                       else
                                       {
                                          addr0118:
                                          this._iconContainer.visible = false;
                                          if(_loc2_ || _loc1_)
                                          {
                                             addr0136:
                                             this.checkNeedBuilding();
                                             if(!_loc1_)
                                             {
                                                §§goto(addr0140);
                                             }
                                             else
                                             {
                                                addr015e:
                                                this._needsNeedIcon = false;
                                             }
                                             §§goto(addr0163);
                                          }
                                       }
                                       §§goto(addr0140);
                                    }
                                    else
                                    {
                                       addr00f6:
                                       addr00fa:
                                       §§push((this._billboardObjectVo as ShopFieldObjectVo).residentialRollOver);
                                       if(!_loc1_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc1_ && _loc1_))
                                             {
                                                §§goto(addr0118);
                                             }
                                             §§goto(addr0163);
                                          }
                                          §§goto(addr015e);
                                       }
                                    }
                                    §§goto(addr0158);
                                 }
                                 §§goto(addr00f6);
                              }
                              else
                              {
                                 this._needsNeedIcon = false;
                                 if(_loc1_ && Boolean(this))
                                 {
                                 }
                              }
                              §§goto(addr0163);
                           }
                           §§goto(addr00af);
                        }
                        §§goto(addr00fa);
                     }
                     addr0095:
                     this.setIcon();
                     if(!_loc1_)
                     {
                        §§push(true);
                        if(!_loc1_)
                        {
                           addr00af:
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr0140:
                        this.setIcon();
                        if(_loc2_ || _loc2_)
                        {
                           §§push(true);
                           if(_loc2_)
                           {
                              §§goto(addr0158);
                           }
                        }
                        else
                        {
                           addr0163:
                           return false;
                        }
                     }
                     return §§pop();
                  }
                  §§push(this._billboardObjectVo);
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(§§pop() is ShopFieldObjectVo);
                     if(_loc2_)
                     {
                        if(§§pop())
                        {
                           if(_loc2_)
                           {
                              §§goto(addr00f6);
                           }
                           §§goto(addr0136);
                        }
                        §§goto(addr0163);
                     }
                     §§goto(addr0158);
                  }
                  §§goto(addr00fa);
               }
               addr0158:
               return §§pop();
            }
            §§goto(addr0052);
         }
         §§goto(addr006f);
      }
      
      protected function setIcon() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Sprite = null;
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            §§push(this._groundRestricted);
            if(_loc3_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0047:
                     this.setGroundRestrictedIcon();
                     if(_loc3_)
                     {
                        _loc1_ = this._groundRestrictedIcon;
                        if(!_loc2_)
                        {
                           §§goto(addr0474);
                        }
                        §§goto(addr0487);
                     }
                     else
                     {
                        addr046d:
                        _loc1_ = this._masteryIcon;
                     }
                  }
                  else
                  {
                     addr007f:
                     _loc1_ = this._blockedByObjectIcon;
                  }
               }
               else
               {
                  §§push(this._blockedByObject);
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           this.setBlockedIcon();
                           if(!_loc2_)
                           {
                              §§goto(addr007f);
                           }
                           else
                           {
                              addr0416:
                              _loc1_ = this._almostEmptyIcon;
                           }
                        }
                        else
                        {
                           addr0448:
                           addr0456:
                           addr044c:
                           §§push(this._billboardObjectVo.hasEmergency());
                           if(!_loc2_)
                           {
                              addr0455:
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              if(_loc3_ || Boolean(this))
                              {
                                 addr0467:
                                 this.setMasteryIcon();
                              }
                              §§goto(addr046d);
                           }
                        }
                        §§goto(addr0474);
                     }
                     else
                     {
                        §§push(this._connectedToStreet);
                        if(_loc3_)
                        {
                           if(!§§pop())
                           {
                              if(_loc3_)
                              {
                                 this.setNotConnectedIcon();
                                 if(!_loc2_)
                                 {
                                    _loc1_ = this._notConnectedIcon;
                                 }
                                 else
                                 {
                                    §§goto(addr0416);
                                 }
                              }
                              else
                              {
                                 addr0261:
                                 _loc1_ = this._upgradeIcon;
                              }
                           }
                           else
                           {
                              §§push(this._needsNeedIcon);
                              if(!_loc2_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       this.setNeedBuildingIcon();
                                       if(!(_loc2_ && Boolean(_loc1_)))
                                       {
                                          _loc1_ = this._needBuildingIcon;
                                       }
                                       else
                                       {
                                          §§goto(addr0448);
                                       }
                                    }
                                    else
                                    {
                                       addr0378:
                                       this.setIdleIcon();
                                       if(_loc3_)
                                       {
                                          _loc1_ = this._idleIcon;
                                       }
                                       else
                                       {
                                          §§goto(addr046d);
                                       }
                                    }
                                    §§goto(addr0474);
                                 }
                                 else
                                 {
                                    §§push(this._readyToActivate);
                                    if(_loc3_ || Boolean(_loc1_))
                                    {
                                       §§push(§§pop());
                                       if(_loc3_ || _loc2_)
                                       {
                                          var _temp_15:* = §§pop();
                                          §§push(_temp_15);
                                          §§push(_temp_15);
                                          if(_loc3_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc3_ || Boolean(this))
                                                {
                                                   §§pop();
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      §§push(this._billboardObjectVo);
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         §§push(§§pop().hasEmergency());
                                                         if(_loc3_ || Boolean(this))
                                                         {
                                                            addr0149:
                                                            §§push(!§§pop());
                                                            if(_loc3_)
                                                            {
                                                               addr014f:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     this.setActivationIcon();
                                                                     if(_loc3_ || _loc2_)
                                                                     {
                                                                        _loc1_ = this._activationIcon;
                                                                     }
                                                                     else
                                                                     {
                                                                        addr040b:
                                                                        this.setAlmostEmptyIcon();
                                                                        if(_loc3_)
                                                                        {
                                                                           §§goto(addr0416);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr0448);
                                                                        }
                                                                     }
                                                                     §§goto(addr0474);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr0225:
                                                                     §§push(this._billboardObjectVo);
                                                                     if(_loc3_ || Boolean(_loc1_))
                                                                     {
                                                                        §§push(§§pop().hasEmergency());
                                                                        if(!_loc2_)
                                                                        {
                                                                           addr023f:
                                                                           §§push(!§§pop());
                                                                           if(!(_loc2_ && Boolean(_loc1_)))
                                                                           {
                                                                              addr024d:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    this.setTownHallUpgradeIcon();
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       §§goto(addr0261);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr02f8:
                                                                                       _loc1_ = this._stepUpIcon;
                                                                                    }
                                                                                    §§goto(addr0474);
                                                                                 }
                                                                                 §§goto(addr02f8);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(this._readyToStepUp);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    addr0275:
                                                                                    §§push(§§pop());
                                                                                    if(_loc3_ || _loc3_)
                                                                                    {
                                                                                       var _temp_25:* = §§pop();
                                                                                       §§push(_temp_25);
                                                                                       §§push(_temp_25);
                                                                                       if(!(_loc2_ && Boolean(this)))
                                                                                       {
                                                                                          addr0291:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc3_ || _loc2_)
                                                                                             {
                                                                                                §§pop();
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   addr02b4:
                                                                                                   §§push(this._billboardObjectVo);
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      §§push(§§pop().hasEmergency());
                                                                                                      if(_loc3_ || Boolean(_loc1_))
                                                                                                      {
                                                                                                         addr02ce:
                                                                                                         §§push(!§§pop());
                                                                                                         if(!(_loc2_ && _loc2_))
                                                                                                         {
                                                                                                            §§goto(addr02dc);
                                                                                                         }
                                                                                                         §§goto(addr0361);
                                                                                                      }
                                                                                                      §§goto(addr0367);
                                                                                                   }
                                                                                                   §§goto(addr03e3);
                                                                                                }
                                                                                                §§goto(addr02e5);
                                                                                             }
                                                                                             §§goto(addr0442);
                                                                                          }
                                                                                          addr02dc:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                addr02e5:
                                                                                                this.setStepUpIcon();
                                                                                                if(!(_loc2_ && _loc2_))
                                                                                                {
                                                                                                   §§goto(addr02f8);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr046d);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr0467);
                                                                                             }
                                                                                             §§goto(addr046d);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(this._idle);
                                                                                             if(!(_loc2_ && Boolean(this)))
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   addr031a:
                                                                                                   var _temp_32:* = §§pop();
                                                                                                   §§push(_temp_32);
                                                                                                   §§push(_temp_32);
                                                                                                   if(!(_loc2_ && _loc2_))
                                                                                                   {
                                                                                                      addr0328:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!(_loc2_ && _loc2_))
                                                                                                         {
                                                                                                            addr0339:
                                                                                                            §§pop();
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               §§push(this._billboardObjectVo);
                                                                                                               if(_loc3_ || Boolean(this))
                                                                                                               {
                                                                                                                  §§push(§§pop().hasEmergency());
                                                                                                                  if(!(_loc2_ && Boolean(this)))
                                                                                                                  {
                                                                                                                     addr0361:
                                                                                                                     §§push(!§§pop());
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        addr0367:
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc3_ || Boolean(this))
                                                                                                                           {
                                                                                                                              §§goto(addr0378);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr03d2:
                                                                                                                              §§push(this._billboardObjectVo);
                                                                                                                              if(!(_loc2_ && Boolean(this)))
                                                                                                                              {
                                                                                                                                 addr03e3:
                                                                                                                                 §§push(§§pop().hasEmergency());
                                                                                                                                 if(!(_loc2_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(!§§pop());
                                                                                                                                    if(_loc3_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       addr0402:
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(!_loc2_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr040b);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0416);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push(this._masteryStepReady);
                                                                                                                                          if(!(_loc2_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             addr0432:
                                                                                                                                             §§push(§§pop());
                                                                                                                                             if(_loc3_)
                                                                                                                                             {
                                                                                                                                                addr0438:
                                                                                                                                                var _temp_42:* = §§pop();
                                                                                                                                                addr0439:
                                                                                                                                                §§push(_temp_42);
                                                                                                                                                if(_temp_42)
                                                                                                                                                {
                                                                                                                                                   if(_loc3_)
                                                                                                                                                   {
                                                                                                                                                      addr0442:
                                                                                                                                                      §§pop();
                                                                                                                                                      if(_loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr0448);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr046d);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr0456);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr0455);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0432);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0442);
                                                                                                                              }
                                                                                                                              §§goto(addr044c);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(this._almostEmpty);
                                                                                                                           if(_loc3_ || _loc3_)
                                                                                                                           {
                                                                                                                              addr039f:
                                                                                                                              §§push(§§pop());
                                                                                                                              if(_loc3_ || Boolean(this))
                                                                                                                              {
                                                                                                                                 var _temp_45:* = §§pop();
                                                                                                                                 §§push(_temp_45);
                                                                                                                                 §§push(_temp_45);
                                                                                                                                 if(!(_loc2_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    addr03bb:
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(!(_loc2_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          if(_loc3_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr03d2);
                                                                                                                                          }
                                                                                                                                          §§goto(addr040b);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0442);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0402);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0439);
                                                                                                                              }
                                                                                                                              §§goto(addr0456);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr0438);
                                                                                                                     }
                                                                                                                     §§goto(addr0456);
                                                                                                                  }
                                                                                                                  §§goto(addr039f);
                                                                                                               }
                                                                                                               §§goto(addr044c);
                                                                                                            }
                                                                                                            §§goto(addr0416);
                                                                                                         }
                                                                                                         §§goto(addr0442);
                                                                                                      }
                                                                                                      §§goto(addr0367);
                                                                                                   }
                                                                                                   §§goto(addr03bb);
                                                                                                }
                                                                                                §§goto(addr0432);
                                                                                             }
                                                                                             §§goto(addr0361);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr0328);
                                                                                    }
                                                                                    §§goto(addr0455);
                                                                                 }
                                                                                 §§goto(addr039f);
                                                                              }
                                                                           }
                                                                           §§goto(addr0367);
                                                                        }
                                                                        §§goto(addr031a);
                                                                     }
                                                                  }
                                                                  §§goto(addr044c);
                                                               }
                                                               else
                                                               {
                                                                  §§push(this._readyToHarvest);
                                                                  if(_loc3_ || Boolean(this))
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!_loc2_)
                                                                     {
                                                                        var _temp_49:* = §§pop();
                                                                        §§push(_temp_49);
                                                                        §§push(_temp_49);
                                                                        if(!(_loc2_ && _loc2_))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc2_ && Boolean(this)))
                                                                              {
                                                                                 §§pop();
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§push(this._billboardObjectVo);
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       §§push(§§pop().hasEmergency());
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§push(!§§pop());
                                                                                          if(!(_loc2_ && _loc2_))
                                                                                          {
                                                                                             addr01da:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   this.setHarvestIcon();
                                                                                                   if(_loc3_ || Boolean(_loc1_))
                                                                                                   {
                                                                                                      _loc1_ = this._harvestIcon;
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr02b4);
                                                                                                   }
                                                                                                   §§goto(addr0474);
                                                                                                }
                                                                                                §§goto(addr0378);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(this._townHallUpgradeReady);
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      addr0210:
                                                                                                      var _temp_54:* = §§pop();
                                                                                                      §§push(_temp_54);
                                                                                                      §§push(_temp_54);
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  §§goto(addr0225);
                                                                                                               }
                                                                                                               §§goto(addr0416);
                                                                                                            }
                                                                                                            §§goto(addr02ce);
                                                                                                         }
                                                                                                         §§goto(addr024d);
                                                                                                      }
                                                                                                      §§goto(addr0439);
                                                                                                   }
                                                                                                   §§goto(addr023f);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr0361);
                                                                                          }
                                                                                          §§goto(addr039f);
                                                                                       }
                                                                                       §§goto(addr024d);
                                                                                    }
                                                                                    §§goto(addr03e3);
                                                                                 }
                                                                                 §§goto(addr02e5);
                                                                              }
                                                                              §§goto(addr0361);
                                                                           }
                                                                           §§goto(addr01da);
                                                                        }
                                                                        §§goto(addr0291);
                                                                     }
                                                                     §§goto(addr031a);
                                                                  }
                                                               }
                                                               §§goto(addr0432);
                                                            }
                                                            §§goto(addr01da);
                                                         }
                                                         §§goto(addr0339);
                                                      }
                                                      §§goto(addr044c);
                                                   }
                                                   §§goto(addr02e5);
                                                }
                                                §§goto(addr024d);
                                             }
                                             §§goto(addr014f);
                                          }
                                          §§goto(addr0328);
                                       }
                                       §§goto(addr0275);
                                    }
                                    §§goto(addr01da);
                                 }
                              }
                              §§goto(addr0455);
                           }
                           §§goto(addr0474);
                        }
                        §§goto(addr023f);
                     }
                  }
                  §§goto(addr0210);
               }
               addr0474:
               if(this._improvement)
               {
                  if(!_loc2_)
                  {
                     this.setImprovementIcon();
                  }
                  addr0487:
                  _loc1_ = this._improvementIcon;
               }
               do
               {
                  if(this._iconContainer.numChildren)
                  {
                     continue;
                  }
                  if(!(_loc2_ && _loc3_))
                  {
                     if(_loc1_ != null)
                     {
                        if(_loc3_)
                        {
                           this._currentIcon = _loc1_;
                           if(_loc3_)
                           {
                              this._iconContainer.addChild(_loc1_);
                              if(!(_loc3_ || _loc3_))
                              {
                                 break;
                              }
                           }
                        }
                        this._iconContainer.mouseEnabled = !(this._currentIcon == this._needBuildingIcon || this._currentIcon == null);
                        addr0503:
                        if(!_loc2_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        this._currentIcon = null;
                        if(!(_loc2_ && _loc3_))
                        {
                           §§goto(addr0503);
                        }
                     }
                     §§goto(addr0548);
                  }
                  this.checkContainerPosition();
                  §§goto(addr0548);
               }
               while(this._iconContainer.removeChildAt(0), _loc3_ || Boolean(_loc1_));
               
               this._isDirty = false;
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr0543);
               }
               addr0548:
               return;
            }
            §§goto(addr0149);
         }
         §§goto(addr0047);
      }
      
      private function setImprovementIcon() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = null;
         do
         {
            if(this._improvementIcon.numChildren)
            {
               continue;
            }
            if(_loc3_ || _loc3_)
            {
               break;
            }
            if(this._improvementHasExpiredSlot)
            {
               if(!_loc2_)
               {
                  addr00cf:
                  _loc1_ += "AndExpired";
                  addr00c9:
                  if(!_loc2_)
                  {
                     addr00d5:
                     this._improvementIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,_loc1_,true));
                  }
               }
               §§goto(addr00ec);
            }
            §§goto(addr00d5);
         }
         while(this._improvementIcon.removeChildAt(0), !_loc2_);
         
         §§push(this._improvement);
         if(!_loc2_)
         {
            if(§§pop())
            {
               if(_loc3_)
               {
                  §§push(this._improvementSlotsFull);
                  if(!(_loc2_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           §§push("ImprovementSlotsFull");
                           if(_loc3_ || _loc3_)
                           {
                              _loc1_ = §§pop();
                              if(_loc3_ || _loc2_)
                              {
                                 §§goto(addr00bc);
                              }
                              §§goto(addr00d5);
                           }
                           §§goto(addr00cf);
                        }
                        §§goto(addr00ec);
                     }
                     else
                     {
                        §§push("ImprovementSlotsEmpty");
                        if(!_loc2_)
                        {
                           _loc1_ = §§pop();
                           if(!_loc2_)
                           {
                              §§goto(addr00bc);
                           }
                           §§goto(addr00ec);
                        }
                     }
                     §§goto(addr00cf);
                  }
                  §§goto(addr00c0);
               }
               §§goto(addr00c9);
            }
            addr00ec:
            return;
         }
         §§goto(addr00c0);
      }
      
      private function animateIcon() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._currentIcon == this._harvestIcon);
            if(!(_loc2_ && Boolean(this)))
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(!_temp_2)
               {
                  if(_loc1_ || _loc1_)
                  {
                     §§pop();
                     if(!_loc2_)
                     {
                        §§goto(addr004d);
                     }
                     §§goto(addr00e1);
                  }
               }
            }
            addr004d:
            if(this._currentIcon == this._emergencyIcon)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  this._isPlaying = true;
                  if(!_loc2_)
                  {
                     TweenMax.to(this._currentIcon.getChildAt(0),0.25,{"transformAroundCenter":{
                        "scaleX":1.3,
                        "scaleY":1.3
                     }});
                     if(_loc1_)
                     {
                        TweenMax.to(this._currentIcon.getChildAt(0),0.25,{
                           "transformAroundCenter":{
                              "scaleX":0,
                              "scaleY":0
                           },
                           "delay":0.25,
                           "onComplete":this.resetPlaying
                        });
                        addr009a:
                        if(_loc1_ || _loc2_)
                        {
                           addr00e1:
                           this._currentIcon = null;
                        }
                     }
                     §§goto(addr00e6);
                  }
                  §§goto(addr00e1);
               }
               §§goto(addr009a);
            }
            addr00e6:
            return;
         }
         §§goto(addr00e1);
      }
      
      private function resetPlaying() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this._isPlaying = false;
         }
      }
      
      protected function checkContainerPosition() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         if(_loc4_ || Boolean(_loc3_))
         {
            §§push(this._billboardObjectVo);
            if(_loc4_ || Boolean(_loc2_))
            {
               §§push(§§pop().isInBaseMode);
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        this._iconContainer.x = this._billboardObjectVo.baseIconOffset.x + this._iconContainer.width / 2;
                        if(!_loc5_)
                        {
                           this._iconContainer.y = this._billboardObjectVo.baseIconOffset.y;
                           if(_loc4_)
                           {
                           }
                           §§goto(addr01b4);
                        }
                        §§goto(addr021e);
                     }
                     §§goto(addr01b4);
                  }
                  else
                  {
                     §§push(this._billboardObjectVo);
                     if(!(_loc5_ && Boolean(_loc2_)))
                     {
                        §§push(§§pop().currentBuildAsset);
                        if(!_loc5_)
                        {
                           §§push(1);
                           if(_loc4_ || Boolean(_loc3_))
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(_loc4_ || Boolean(this))
                                 {
                                    this._iconContainer.x = this._billboardObjectVo.placementIconOffset.x + this._iconContainer.width / 2;
                                    if(_loc4_ || Boolean(_loc1_))
                                    {
                                       this._iconContainer.y = this._billboardObjectVo.placementIconOffset.y;
                                       if(!_loc4_)
                                       {
                                          addr012a:
                                          this._iconContainer.x = this._billboardObjectVo.constructionIconOffset.x + this._iconContainer.width / 2;
                                          if(!(_loc5_ && Boolean(_loc3_)))
                                          {
                                             this._iconContainer.y = this._billboardObjectVo.constructionIconOffset.y;
                                             if(!(_loc5_ && Boolean(this)))
                                             {
                                                addr01b4:
                                                §§push(this._iconContainer.x == this._iconContainer.width / 2);
                                                if(_loc4_)
                                                {
                                                   var _temp_3:* = §§pop();
                                                   §§push(_temp_3);
                                                   if(_temp_3)
                                                   {
                                                      if(!(_loc5_ && Boolean(_loc2_)))
                                                      {
                                                         §§pop();
                                                         if(!_loc5_)
                                                         {
                                                            §§goto(addr01ed);
                                                         }
                                                         §§goto(addr021e);
                                                      }
                                                   }
                                                }
                                                addr01ed:
                                                §§goto(addr01e4);
                                             }
                                             addr01e4:
                                             if(this._iconContainer.y == 0)
                                             {
                                                if(_loc4_)
                                                {
                                                   addr01f7:
                                                   §§push(this._smartObjectContainer);
                                                   if(_loc4_ || Boolean(_loc1_))
                                                   {
                                                      if(§§pop().currentImage)
                                                      {
                                                         if(_loc4_ || Boolean(_loc2_))
                                                         {
                                                            addr021e:
                                                            this._iconContainer.x = this._smartObjectContainer.currentImage.x + this._smartObjectContainer.currentImage.width / 2;
                                                            if(_loc4_ || Boolean(this))
                                                            {
                                                               this._iconContainer.y = this._smartObjectContainer.currentImage.y - 55;
                                                               if(_loc5_)
                                                               {
                                                                  addr027c:
                                                                  addr0280:
                                                                  §§push((this._billboardObjectVo.configPlayfieldItemVo.sizeX + this._billboardObjectVo.configPlayfieldItemVo.sizeY) / 2);
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(§§pop() * _loc1_);
                                                                     if(_loc4_ || Boolean(this))
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!_loc5_)
                                                                        {
                                                                           _loc2_ = §§pop();
                                                                           if(!_loc5_)
                                                                           {
                                                                              addr02b8:
                                                                              addr02bc:
                                                                              §§push(this._smartObjectContainer.height - _loc2_);
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§goto(addr02e4);
                                                                              }
                                                                              §§goto(addr02e3);
                                                                           }
                                                                           §§goto(addr02f9);
                                                                        }
                                                                        addr02e4:
                                                                        §§push(-§§pop());
                                                                        if(_loc4_ || Boolean(_loc1_))
                                                                        {
                                                                           addr02e3:
                                                                           §§push(§§pop());
                                                                        }
                                                                        _loc3_ = §§pop();
                                                                        if(_loc4_)
                                                                        {
                                                                           this._iconContainer.x = 0;
                                                                           if(_loc4_)
                                                                           {
                                                                              addr02f9:
                                                                              this._iconContainer.y = _loc3_ - 60;
                                                                           }
                                                                        }
                                                                        §§goto(addr0303);
                                                                     }
                                                                  }
                                                                  §§goto(addr02e3);
                                                               }
                                                               §§goto(addr0303);
                                                            }
                                                            §§goto(addr02f9);
                                                         }
                                                         §§goto(addr027c);
                                                      }
                                                      else
                                                      {
                                                         addr0266:
                                                         §§push(36);
                                                         if(!(_loc5_ && Boolean(_loc1_)))
                                                         {
                                                            _loc1_ = §§pop();
                                                            if(!_loc5_)
                                                            {
                                                               §§goto(addr027c);
                                                            }
                                                            §§goto(addr02b8);
                                                         }
                                                      }
                                                      §§goto(addr02e4);
                                                   }
                                                   §§goto(addr02bc);
                                                }
                                                §§goto(addr027c);
                                             }
                                             addr0303:
                                             return;
                                          }
                                          §§goto(addr01f7);
                                       }
                                       §§goto(addr01b4);
                                    }
                                    §§goto(addr01f7);
                                 }
                                 §§goto(addr012a);
                              }
                              else
                              {
                                 §§push(this._billboardObjectVo);
                                 if(!(_loc5_ && Boolean(this)))
                                 {
                                    §§push(§§pop().currentBuildAsset);
                                    if(_loc4_)
                                    {
                                       addr0120:
                                       if(§§pop() == 2)
                                       {
                                          if(_loc4_)
                                          {
                                             §§goto(addr012a);
                                          }
                                          §§goto(addr02f9);
                                       }
                                       else
                                       {
                                          this._iconContainer.x = this._billboardObjectVo.iconOffset.x + this._iconContainer.width / 2;
                                          if(!_loc5_)
                                          {
                                             this._iconContainer.y = this._billboardObjectVo.iconOffset.y;
                                             if(_loc4_)
                                             {
                                                §§goto(addr01b4);
                                             }
                                          }
                                       }
                                       §§goto(addr027c);
                                    }
                                    §§goto(addr0266);
                                 }
                              }
                              §§goto(addr0280);
                           }
                           §§goto(addr0120);
                        }
                        §§goto(addr0266);
                     }
                  }
                  §§goto(addr0280);
               }
               §§goto(addr01ed);
            }
            §§goto(addr0280);
         }
         §§goto(addr02f9);
      }
      
      protected function checkConnected() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._billboardObjectVo);
            if(_loc1_ || _loc2_)
            {
               §§push(§§pop() is DecorationFieldObjectVo);
               if(_loc1_ || _loc1_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(!_temp_3)
                  {
                     if(_loc1_)
                     {
                        addr0041:
                        §§pop();
                        if(!(_loc2_ && _loc1_))
                        {
                           §§push(this._billboardObjectVo);
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(§§pop() is CitySquareFieldObjectVo);
                              if(!_loc2_)
                              {
                                 addr0073:
                                 if(§§pop())
                                 {
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       addr0084:
                                       this._connectedToStreet = true;
                                       if(_loc2_)
                                       {
                                          addr00d0:
                                          addr00d7:
                                          addr00d4:
                                          if(this._billboardObjectVo.hideIconsForMoveMode)
                                          {
                                             if(!_loc2_)
                                             {
                                                this._iconContainer.visible = true;
                                                if(_loc2_ && _loc2_)
                                                {
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr00fd);
                                 }
                                 else
                                 {
                                    §§push(this._billboardObjectVo);
                                    if(!_loc2_)
                                    {
                                       addr009b:
                                       §§push(§§pop().isConnectedToStreet);
                                       if(_loc1_ || _loc2_)
                                       {
                                          §§goto(addr00ab);
                                       }
                                       §§goto(addr00d7);
                                    }
                                 }
                                 §§goto(addr00d4);
                              }
                              addr00ab:
                              if(!§§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    addr00b4:
                                    this._connectedToStreet = false;
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       §§goto(addr00d0);
                                    }
                                    §§goto(addr00fd);
                                 }
                                 §§goto(addr00d0);
                              }
                              else
                              {
                                 this._connectedToStreet = true;
                              }
                              addr00fd:
                              return;
                           }
                           §§goto(addr009b);
                        }
                        §§goto(addr00b4);
                     }
                     §§goto(addr00d7);
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0041);
            }
            §§goto(addr00d4);
         }
         §§goto(addr0084);
      }
      
      private function checkNeedBuilding() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this._needsNeedIcon = false;
            if(!(_loc2_ && Boolean(this)))
            {
               §§push(this._billboardObjectVo);
               if(!(_loc2_ && Boolean(this)))
               {
                  §§push(§§pop() is ResidentialFieldObjectVo);
                  if(!(_loc2_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        if(_loc1_)
                        {
                           §§push(this._billboardObjectVo);
                           if(!_loc2_)
                           {
                              §§push((§§pop() as ResidentialFieldObjectVo).hasThisNeed);
                              if(_loc1_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc1_ || _loc2_)
                                    {
                                       §§push(this._billboardObjectVo);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§push(§§pop().hideIconsForMoveMode);
                                          if(_loc1_)
                                          {
                                             addr0092:
                                             if(§§pop())
                                             {
                                                if(_loc1_)
                                                {
                                                   this._iconContainer.visible = true;
                                                   if(!_loc2_)
                                                   {
                                                      addr00a7:
                                                      this._needsNeedIcon = true;
                                                      if(_loc1_ || _loc2_)
                                                      {
                                                         addr00b9:
                                                         §§push(this._billboardObjectVo);
                                                         if(_loc1_)
                                                         {
                                                            §§push((§§pop() as ResidentialFieldObjectVo).shopRollOver);
                                                            if(!(_loc2_ && Boolean(this)))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     this._iconContainer.visible = true;
                                                                     if(!(_loc2_ && _loc1_))
                                                                     {
                                                                        this._needsNeedIcon = true;
                                                                        if(!(_loc1_ || _loc1_))
                                                                        {
                                                                           addr01ab:
                                                                           this._needsNeedIcon = true;
                                                                           if(!(_loc2_ && _loc2_))
                                                                           {
                                                                              addr01c7:
                                                                              addr01d3:
                                                                              addr01cb:
                                                                              if((this._billboardObjectVo as ShopFieldObjectVo).residentialRollOver)
                                                                              {
                                                                                 if(_loc1_ || Boolean(this))
                                                                                 {
                                                                                    addr01e4:
                                                                                    this._iconContainer.visible = true;
                                                                                    if(_loc1_)
                                                                                    {
                                                                                       addr01f0:
                                                                                       this._needsNeedIcon = true;
                                                                                    }
                                                                                    §§goto(addr01f5);
                                                                                 }
                                                                                 §§goto(addr01f0);
                                                                              }
                                                                              §§goto(addr01f5);
                                                                           }
                                                                           §§goto(addr01f0);
                                                                        }
                                                                        §§goto(addr01f5);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr016d:
                                                                        §§push(this._billboardObjectVo);
                                                                        if(!(_loc2_ && _loc2_))
                                                                        {
                                                                           addr017e:
                                                                           §§push(§§pop().hideIconsForMoveMode);
                                                                           if(_loc1_)
                                                                           {
                                                                              addr0186:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!(_loc2_ && Boolean(this)))
                                                                                 {
                                                                                    addr0197:
                                                                                    this._iconContainer.visible = true;
                                                                                    if(!(_loc2_ && Boolean(this)))
                                                                                    {
                                                                                       §§goto(addr01ab);
                                                                                    }
                                                                                    §§goto(addr01c7);
                                                                                 }
                                                                                 §§goto(addr01f0);
                                                                              }
                                                                              §§goto(addr01c7);
                                                                           }
                                                                           §§goto(addr01d3);
                                                                        }
                                                                     }
                                                                     §§goto(addr01cb);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr0136:
                                                                     §§push(this._billboardObjectVo);
                                                                     if(!(_loc2_ && _loc1_))
                                                                     {
                                                                        addr0147:
                                                                        §§push((§§pop() as ShopFieldObjectVo).satisfiesThisNeed);
                                                                        if(_loc1_ || Boolean(this))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc1_ || _loc1_)
                                                                              {
                                                                                 §§goto(addr016d);
                                                                              }
                                                                              §§goto(addr01e4);
                                                                           }
                                                                           §§goto(addr01f5);
                                                                        }
                                                                        §§goto(addr0186);
                                                                     }
                                                                  }
                                                                  §§goto(addr017e);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr0125:
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc2_ && _loc1_))
                                                                  {
                                                                     §§goto(addr0136);
                                                                  }
                                                                  §§goto(addr0197);
                                                               }
                                                            }
                                                            §§goto(addr01f5);
                                                         }
                                                         §§goto(addr01cb);
                                                      }
                                                      §§goto(addr01c7);
                                                   }
                                                   §§goto(addr01f5);
                                                }
                                                §§goto(addr0136);
                                             }
                                             §§goto(addr00b9);
                                          }
                                          §§goto(addr0186);
                                       }
                                       §§goto(addr0147);
                                    }
                                 }
                                 addr01f5:
                                 return;
                              }
                              §§goto(addr0092);
                           }
                           §§goto(addr0147);
                        }
                        §§goto(addr00a7);
                     }
                     else
                     {
                        §§push(this._billboardObjectVo);
                        if(!_loc2_)
                        {
                           addr011c:
                           §§push(§§pop() is ShopFieldObjectVo);
                           if(_loc1_)
                           {
                              §§goto(addr0125);
                           }
                           §§goto(addr01d3);
                        }
                     }
                     §§goto(addr0147);
                  }
                  §§goto(addr01d3);
               }
               §§goto(addr011c);
            }
            §§goto(addr01ab);
         }
         §§goto(addr01f0);
      }
      
      protected function useIcons() : Boolean
      {
         return this._iconData.useIcons;
      }
      
      protected function checkActivateReady() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            this._readyToActivate = this._billboardObjectVo.isReadyToInaugurate;
         }
      }
      
      private function checkHarvestReady() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            this._readyToHarvest = this._billboardObjectVo.isHarvestReady;
         }
      }
      
      private function checkMasteryStepReady() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:MasteryChallengeDTO = null;
         var _loc2_:ConfigMasteryChallengeDTO = null;
         if(_loc3_ || Boolean(_loc1_))
         {
            §§push(this._billboardObjectVo);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop() is ResidentialFieldObjectVo)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr0051:
                     §§push(this._billboardObjectVo);
                     if(!(_loc4_ && Boolean(this)))
                     {
                        addr0063:
                        if((§§pop() as ResidentialFieldObjectVo).buildingDTO)
                        {
                           addr007d:
                           _loc1_ = (this._billboardObjectVo as ResidentialFieldObjectVo).buildingDTO.currentMasteryChallenge;
                           addr0079:
                           if(!_loc4_)
                           {
                              if(_loc1_)
                              {
                                 addr0096:
                                 _loc2_ = (this._billboardObjectVo as ResidentialFieldObjectVo).buildingDTO.config.configMasteryChallengeDTO;
                                 for(; _loc2_ != null; _loc2_ = _loc2_.nextChallenge)
                                 {
                                    if(_loc2_.id == _loc1_.id)
                                    {
                                       if(!_loc4_)
                                       {
                                          if(_loc1_.currentProgress < _loc2_.targetProgress)
                                          {
                                             continue;
                                          }
                                          if(_loc4_ && Boolean(_loc2_))
                                          {
                                             break;
                                          }
                                       }
                                       this._masteryStepReady = true;
                                       if(_loc3_)
                                       {
                                          return;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr010a);
                           }
                           §§goto(addr0096);
                        }
                        §§goto(addr010a);
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr0079);
               }
               addr010a:
               this._masteryStepReady = false;
               return;
            }
            §§goto(addr0063);
         }
         §§goto(addr0051);
      }
      
      private function checkUpgradeReady() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            if(this._billboardObjectVo is TownHallFieldObjectVo)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr0036:
                  §§push(this);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§push(this._billboardObjectVo);
                     if(_loc1_)
                     {
                        §§push((§§pop() as TownHallFieldObjectVo).isReadyForUpgrade());
                        if(!(_loc2_ && Boolean(this)))
                        {
                           §§push(§§pop());
                           if(_loc1_ || _loc2_)
                           {
                              var _temp_6:* = §§pop();
                              §§push(_temp_6);
                              if(_temp_6)
                              {
                                 if(!_loc2_)
                                 {
                                    §§pop();
                                    addr0093:
                                    addr008f:
                                    §§push(this._billboardObjectVo.isUnderConstruction());
                                    if(!_loc2_)
                                    {
                                       addr009c:
                                       §§push(!§§pop());
                                    }
                                 }
                              }
                              §§pop()._townHallUpgradeReady = §§pop();
                              if(_loc2_ && _loc2_)
                              {
                              }
                              §§goto(addr00b6);
                           }
                        }
                        §§goto(addr009c);
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr008f);
               }
            }
            else
            {
               this._townHallUpgradeReady = false;
            }
            addr00b6:
            return;
         }
         §§goto(addr0036);
      }
      
      private function checkStepUpReady() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this._readyToStepUp = this._billboardObjectVo.isReadyForNextConstructionStep();
         }
      }
      
      private function checkIdle() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            §§push(this._billboardObjectVo);
            if(_loc2_ || _loc1_)
            {
               if(§§pop().buildingDTO == null)
               {
                  if(!(_loc1_ && Boolean(this)))
                  {
                     this._idle = false;
                     if(_loc2_ || _loc2_)
                     {
                        return;
                     }
                  }
                  else
                  {
                     addr0099:
                     §§push(this._billboardObjectVo);
                     if(_loc2_)
                     {
                        §§push(§§pop() is ProductionFieldObjectVo);
                        if(_loc2_)
                        {
                           addr00ab:
                           if(§§pop())
                           {
                              if(_loc2_ || _loc1_)
                              {
                                 this._idle = (this._billboardObjectVo as ProductionFieldObjectVo).isIdle;
                                 if(_loc1_ && Boolean(this))
                                 {
                                 }
                              }
                           }
                           else
                           {
                              addr00e4:
                              addr00e0:
                              if(this._billboardObjectVo is ShopFieldObjectVo)
                              {
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    addr00ff:
                                    this._idle = (this._billboardObjectVo as ShopFieldObjectVo).isIdle;
                                    if(_loc1_ && Boolean(this))
                                    {
                                    }
                                 }
                              }
                           }
                           §§goto(addr0124);
                        }
                        §§goto(addr00e4);
                     }
                     §§goto(addr00e0);
                  }
                  §§goto(addr0124);
               }
               else
               {
                  §§push(this._billboardObjectVo);
                  if(_loc2_ || _loc1_)
                  {
                     §§push(§§pop().isUnderConstruction());
                     if(!(_loc1_ && Boolean(this)))
                     {
                        if(!§§pop())
                        {
                           if(!_loc1_)
                           {
                              §§goto(addr0099);
                           }
                           §§goto(addr00ff);
                        }
                        else
                        {
                           this._idle = false;
                        }
                        §§goto(addr0124);
                     }
                     §§goto(addr00ab);
                  }
               }
            }
            §§goto(addr00e0);
         }
         addr0124:
      }
      
      private function checkAlmostIdle() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            if(this._billboardObjectVo is ShopFieldObjectVo)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  this._almostEmpty = (this._billboardObjectVo as ShopFieldObjectVo).isAlmostEmpty;
               }
            }
         }
      }
      
      private function checkImprovements() : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc1_:IImprovable = null;
         var _loc2_:ImprovementVo = null;
         if(!(_loc5_ && Boolean(_loc1_)))
         {
            §§push(this._billboardObjectVo);
            if(!(_loc5_ && Boolean(_loc2_)))
            {
               §§push(§§pop() is IImprovable);
               if(_loc6_ || Boolean(_loc1_))
               {
                  var _temp_5:* = §§pop();
                  §§push(_temp_5);
                  §§push(_temp_5);
                  if(!(_loc5_ && Boolean(_loc2_)))
                  {
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           §§pop();
                           if(_loc6_ || _loc3_)
                           {
                              addr0079:
                              §§push(this._billboardObjectVo);
                              if(!_loc5_)
                              {
                                 addr0083:
                                 §§push(§§pop().isConnectedToStreet);
                                 if(!_loc5_)
                                 {
                                    addr008c:
                                    §§push(§§pop());
                                    if(_loc6_ || Boolean(_loc2_))
                                    {
                                       addr009b:
                                       var _temp_9:* = §§pop();
                                       §§push(_temp_9);
                                       §§push(_temp_9);
                                       if(!_loc5_)
                                       {
                                          §§goto(addr00a2);
                                       }
                                       §§goto(addr00dd);
                                    }
                                    §§goto(addr011d);
                                 }
                                 §§goto(addr00cf);
                              }
                              §§goto(addr017b);
                           }
                           §§goto(addr013e);
                        }
                        §§goto(addr012f);
                     }
                     §§goto(addr009b);
                  }
                  addr00a2:
                  if(§§pop())
                  {
                     if(_loc6_)
                     {
                        §§pop();
                        if(!_loc5_)
                        {
                           §§push(this._billboardObjectVo);
                           if(!(_loc5_ && Boolean(this)))
                           {
                              §§push(§§pop().isUnderConstruction());
                              if(_loc6_)
                              {
                                 addr00cf:
                                 §§push(!§§pop());
                                 if(!_loc5_)
                                 {
                                    §§goto(addr00d6);
                                 }
                              }
                              §§goto(addr015a);
                           }
                           §§goto(addr017b);
                        }
                        §§goto(addr0177);
                     }
                     §§goto(addr00cf);
                  }
                  addr00d6:
                  var _temp_11:* = §§pop();
                  §§push(_temp_11);
                  §§push(_temp_11);
                  if(!_loc5_)
                  {
                     addr00dd:
                     if(§§pop())
                     {
                        if(!(_loc5_ && Boolean(_loc1_)))
                        {
                           §§pop();
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(this._billboardObjectVo);
                              if(_loc6_)
                              {
                                 §§push(§§pop().isExpansionObject);
                                 if(!_loc5_)
                                 {
                                    addr011d:
                                    §§push(!§§pop());
                                    if(_loc6_)
                                    {
                                       §§goto(addr0124);
                                    }
                                    §§goto(addr012f);
                                 }
                                 §§goto(addr015a);
                              }
                              §§goto(addr017b);
                           }
                           §§goto(addr0177);
                        }
                     }
                     addr0124:
                     var _temp_14:* = §§pop();
                     §§goto(addr0125);
                  }
                  addr0125:
                  §§push(_temp_14);
                  if(_temp_14)
                  {
                     if(!_loc5_)
                     {
                        addr012f:
                        §§pop();
                        if(!(_loc5_ && Boolean(_loc1_)))
                        {
                           addr013e:
                           §§push(this._billboardObjectVo);
                           if(!_loc5_)
                           {
                              §§goto(addr015b);
                           }
                           §§goto(addr017b);
                        }
                        §§goto(addr0165);
                     }
                     §§goto(addr015a);
                  }
                  addr015b:
                  §§push(§§pop().hasEmergency());
                  if(_loc6_ || Boolean(_loc1_))
                  {
                     addr015a:
                     §§push(!§§pop());
                  }
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        addr0165:
                        this._improvement = true;
                        if(_loc6_)
                        {
                           this._iconContainer.visible = true;
                        }
                     }
                     addr017b:
                     _loc1_ = this._billboardObjectVo as IImprovable;
                     addr0177:
                     if(!_loc5_)
                     {
                        this._improvementSlotsFull = _loc1_.numFreeImprovementSlots == 0;
                        if(_loc6_ || _loc3_)
                        {
                           this._improvementHasExpiredSlot = false;
                        }
                     }
                     for each(_loc2_ in _loc1_.currentImprovements)
                     {
                        if(_loc6_ || Boolean(this))
                        {
                           §§push(_loc2_.runtime);
                           if(!(_loc5_ && Boolean(_loc1_)))
                           {
                              if(§§pop() != -1)
                              {
                                 if(_loc6_)
                                 {
                                    addr01ef:
                                    addr01eb:
                                    if(_loc2_.expirationTime > this._billboardObjectVo.currentTimeStamp)
                                    {
                                       continue;
                                    }
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                 }
                                 this._improvementHasExpiredSlot = true;
                                 break;
                              }
                              continue;
                           }
                           §§goto(addr01ef);
                        }
                        §§goto(addr01eb);
                     }
                  }
                  else
                  {
                     this._improvement = false;
                     if(_loc6_ || Boolean(this))
                     {
                        this._iconContainer.visible = false;
                     }
                  }
                  return;
               }
               §§goto(addr008c);
            }
            §§goto(addr0083);
         }
         §§goto(addr0079);
      }
      
      protected function checkGroundRestrictions() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this._groundRestricted = this._billboardObjectVo.isRestrictedByGround;
            if(_loc1_ || Boolean(this))
            {
               §§push(this._groundRestricted);
               if(!(_loc2_ && Boolean(this)))
               {
                  if(§§pop())
                  {
                     if(_loc1_ || _loc1_)
                     {
                        this._terrainTypeNeeded = this._billboardObjectVo.terrainTypeNeeded;
                        if(_loc1_)
                        {
                           §§push(this._terrainTypeNeeded);
                           if(!_loc2_)
                           {
                              §§push(ServerRestrictionConstants.BUILDINGLAND);
                              if(_loc1_)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§push(!§§pop());
                                    if(_loc1_ || Boolean(this))
                                    {
                                       var _temp_6:* = §§pop();
                                       §§push(_temp_6);
                                       §§push(_temp_6);
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc1_)
                                             {
                                                §§pop();
                                                if(!_loc2_)
                                                {
                                                   §§push(this._terrainTypeNeeded);
                                                   if(!_loc2_)
                                                   {
                                                      §§push(ServerRestrictionConstants.SEA);
                                                      if(_loc1_)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         if(_loc1_ || _loc2_)
                                                         {
                                                            §§push(!§§pop());
                                                            if(_loc1_ || _loc1_)
                                                            {
                                                               addr00dc:
                                                               var _temp_10:* = §§pop();
                                                               §§push(_temp_10);
                                                               §§push(_temp_10);
                                                               if(!_loc2_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc2_ && _loc1_))
                                                                     {
                                                                        §§pop();
                                                                        if(!_loc2_)
                                                                        {
                                                                           addr00f9:
                                                                           §§push(this._terrainTypeNeeded);
                                                                           if(_loc1_)
                                                                           {
                                                                              §§push(ServerRestrictionConstants.COAST);
                                                                              if(_loc1_ || Boolean(this))
                                                                              {
                                                                                 §§push(§§pop() == §§pop());
                                                                                 if(_loc1_ || _loc1_)
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                    if(_loc1_ || _loc1_)
                                                                                    {
                                                                                       addr0131:
                                                                                       var _temp_15:* = §§pop();
                                                                                       §§push(_temp_15);
                                                                                       §§push(_temp_15);
                                                                                       if(_loc1_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!(_loc2_ && Boolean(this)))
                                                                                             {
                                                                                                §§pop();
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   §§push(this._terrainTypeNeeded);
                                                                                                   if(!(_loc2_ && Boolean(this)))
                                                                                                   {
                                                                                                      addr015f:
                                                                                                      §§push(ServerRestrictionConstants.RIVER);
                                                                                                      if(_loc1_ || _loc1_)
                                                                                                      {
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            §§push(!§§pop());
                                                                                                            if(_loc1_)
                                                                                                            {
                                                                                                               addr017e:
                                                                                                               var _temp_19:* = §§pop();
                                                                                                               §§push(_temp_19);
                                                                                                               §§push(_temp_19);
                                                                                                               if(_loc1_ || Boolean(this))
                                                                                                               {
                                                                                                                  addr018c:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc1_)
                                                                                                                     {
                                                                                                                        addr0195:
                                                                                                                        §§pop();
                                                                                                                        if(_loc1_)
                                                                                                                        {
                                                                                                                           addr019b:
                                                                                                                           §§push(this._terrainTypeNeeded);
                                                                                                                           if(!_loc2_)
                                                                                                                           {
                                                                                                                              §§push(ServerRestrictionConstants.FARMLAND);
                                                                                                                              if(!(_loc2_ && _loc1_))
                                                                                                                              {
                                                                                                                                 addr01c1:
                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                 if(!_loc2_)
                                                                                                                                 {
                                                                                                                                    addr01c7:
                                                                                                                                    §§push(!§§pop());
                                                                                                                                    if(!(_loc2_ && Boolean(this)))
                                                                                                                                    {
                                                                                                                                       addr01d5:
                                                                                                                                       var _temp_23:* = §§pop();
                                                                                                                                       §§push(_temp_23);
                                                                                                                                       §§push(_temp_23);
                                                                                                                                       if(_loc1_)
                                                                                                                                       {
                                                                                                                                          addr01db:
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             if(!_loc2_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr01e4);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0361);
                                                                                                                                          }
                                                                                                                                          §§goto(addr022a);
                                                                                                                                       }
                                                                                                                                       §§goto(addr02da);
                                                                                                                                    }
                                                                                                                                    §§goto(addr021c);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0333);
                                                                                                                              }
                                                                                                                              §§goto(addr0263);
                                                                                                                           }
                                                                                                                           §§goto(addr02a5);
                                                                                                                        }
                                                                                                                        §§goto(addr0388);
                                                                                                                     }
                                                                                                                     §§goto(addr01c7);
                                                                                                                  }
                                                                                                                  §§goto(addr01d5);
                                                                                                               }
                                                                                                               §§goto(addr02da);
                                                                                                            }
                                                                                                            §§goto(addr01e4);
                                                                                                         }
                                                                                                         §§goto(addr022a);
                                                                                                      }
                                                                                                      §§goto(addr0305);
                                                                                                   }
                                                                                                   §§goto(addr0250);
                                                                                                }
                                                                                                §§goto(addr0388);
                                                                                             }
                                                                                             §§goto(addr01d5);
                                                                                          }
                                                                                          §§goto(addr017e);
                                                                                       }
                                                                                       §§goto(addr0238);
                                                                                    }
                                                                                    addr01e4:
                                                                                    §§pop();
                                                                                    if(!(_loc2_ && _loc2_))
                                                                                    {
                                                                                       §§push(this._terrainTypeNeeded);
                                                                                       if(!(_loc2_ && Boolean(this)))
                                                                                       {
                                                                                          addr0203:
                                                                                          §§push(ServerRestrictionConstants.CLAYPIT);
                                                                                          if(!(_loc2_ && Boolean(this)))
                                                                                          {
                                                                                             §§push(§§pop() == §§pop());
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                addr021c:
                                                                                                §§push(!§§pop());
                                                                                                if(!(_loc2_ && Boolean(this)))
                                                                                                {
                                                                                                   addr022a:
                                                                                                   var _temp_28:* = §§pop();
                                                                                                   §§push(_temp_28);
                                                                                                   §§push(_temp_28);
                                                                                                   if(!(_loc2_ && _loc1_))
                                                                                                   {
                                                                                                      addr0238:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc1_)
                                                                                                         {
                                                                                                            addr0241:
                                                                                                            §§pop();
                                                                                                            if(_loc1_)
                                                                                                            {
                                                                                                               §§push(this._terrainTypeNeeded);
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  addr0250:
                                                                                                                  §§push(ServerRestrictionConstants.SPRING);
                                                                                                                  if(!(_loc2_ && _loc1_))
                                                                                                                  {
                                                                                                                     addr0263:
                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                     if(!(_loc2_ && _loc2_))
                                                                                                                     {
                                                                                                                        addr0271:
                                                                                                                        §§push(!§§pop());
                                                                                                                        if(!_loc2_)
                                                                                                                        {
                                                                                                                           addr0277:
                                                                                                                           var _temp_32:* = §§pop();
                                                                                                                           §§push(_temp_32);
                                                                                                                           §§push(_temp_32);
                                                                                                                           if(!(_loc2_ && Boolean(this)))
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(!_loc2_)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    if(_loc1_)
                                                                                                                                    {
                                                                                                                                       §§push(this._terrainTypeNeeded);
                                                                                                                                       if(_loc1_ || _loc1_)
                                                                                                                                       {
                                                                                                                                          addr02a5:
                                                                                                                                          §§push(ServerRestrictionConstants.FISHINGGROUND);
                                                                                                                                          if(_loc1_ || _loc1_)
                                                                                                                                          {
                                                                                                                                             addr02b8:
                                                                                                                                             §§push(§§pop() == §§pop());
                                                                                                                                             if(!(_loc2_ && _loc1_))
                                                                                                                                             {
                                                                                                                                                addr02c6:
                                                                                                                                                §§push(!§§pop());
                                                                                                                                                if(!(_loc2_ && _loc1_))
                                                                                                                                                {
                                                                                                                                                   addr02d4:
                                                                                                                                                   var _temp_38:* = §§pop();
                                                                                                                                                   §§push(_temp_38);
                                                                                                                                                   §§push(_temp_38);
                                                                                                                                                   if(_loc1_)
                                                                                                                                                   {
                                                                                                                                                      addr02da:
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(_loc1_)
                                                                                                                                                         {
                                                                                                                                                            addr02e3:
                                                                                                                                                            §§pop();
                                                                                                                                                            if(!_loc2_)
                                                                                                                                                            {
                                                                                                                                                               addr02e9:
                                                                                                                                                               §§push(this._terrainTypeNeeded);
                                                                                                                                                               if(!_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  addr02f2:
                                                                                                                                                                  §§push(ServerRestrictionConstants.SNOW);
                                                                                                                                                                  if(!(_loc2_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     addr0305:
                                                                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                                                                     if(!(_loc2_ && _loc1_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(!§§pop());
                                                                                                                                                                        if(!(_loc2_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           addr0321:
                                                                                                                                                                           var _temp_42:* = §§pop();
                                                                                                                                                                           addr0322:
                                                                                                                                                                           §§push(_temp_42);
                                                                                                                                                                           if(_temp_42)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc2_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 addr0333:
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 if(_loc1_ || Boolean(this))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr034b:
                                                                                                                                                                                    addr0345:
                                                                                                                                                                                    addr0341:
                                                                                                                                                                                    §§push(this._terrainTypeNeeded == ServerRestrictionConstants.MOUNTAIN);
                                                                                                                                                                                    if(!_loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr035b:
                                                                                                                                                                                       §§push(!§§pop());
                                                                                                                                                                                       if(_loc1_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr0361);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr037f);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr0361:
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          this._groundRestricted = false;
                                                                                                                                                                                          if(_loc1_)
                                                                                                                                                                                          {
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          addr0388:
                                                                                                                                                                                          this._iconContainer.visible = true;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       addr037f:
                                                                                                                                                                                       if(this._billboardObjectVo.hideIconsForMoveMode)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr0388);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr038f);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0361);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr035b);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr037f);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr034b);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0345);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0388);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0321);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0322);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0321);
                                                                                                                                             }
                                                                                                                                             §§goto(addr035b);
                                                                                                                                          }
                                                                                                                                          §§goto(addr034b);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0345);
                                                                                                                                    }
                                                                                                                                    §§goto(addr038f);
                                                                                                                                 }
                                                                                                                                 §§goto(addr02c6);
                                                                                                                              }
                                                                                                                              §§goto(addr02d4);
                                                                                                                           }
                                                                                                                           §§goto(addr02da);
                                                                                                                        }
                                                                                                                        §§goto(addr02e3);
                                                                                                                     }
                                                                                                                     §§goto(addr037f);
                                                                                                                  }
                                                                                                                  §§goto(addr02b8);
                                                                                                               }
                                                                                                               §§goto(addr02f2);
                                                                                                            }
                                                                                                            §§goto(addr0341);
                                                                                                         }
                                                                                                         §§goto(addr035b);
                                                                                                      }
                                                                                                      §§goto(addr0277);
                                                                                                   }
                                                                                                   §§goto(addr0322);
                                                                                                }
                                                                                                §§goto(addr0361);
                                                                                             }
                                                                                             §§goto(addr0333);
                                                                                          }
                                                                                          §§goto(addr0263);
                                                                                       }
                                                                                       §§goto(addr0345);
                                                                                    }
                                                                                    §§goto(addr038f);
                                                                                 }
                                                                                 §§goto(addr0241);
                                                                              }
                                                                              §§goto(addr0305);
                                                                           }
                                                                           §§goto(addr0203);
                                                                        }
                                                                        §§goto(addr02e9);
                                                                     }
                                                                     §§goto(addr01c7);
                                                                  }
                                                                  §§goto(addr0131);
                                                               }
                                                               §§goto(addr018c);
                                                            }
                                                            §§goto(addr0333);
                                                         }
                                                         §§goto(addr0361);
                                                      }
                                                      §§goto(addr01c1);
                                                   }
                                                   §§goto(addr015f);
                                                }
                                                §§goto(addr019b);
                                             }
                                             §§goto(addr02e3);
                                          }
                                          §§goto(addr00dc);
                                       }
                                       §§goto(addr01db);
                                    }
                                    §§goto(addr0271);
                                 }
                                 §§goto(addr02c6);
                              }
                              §§goto(addr02b8);
                           }
                           §§goto(addr02a5);
                        }
                        §§goto(addr0388);
                     }
                     §§goto(addr0341);
                  }
                  addr038f:
                  return;
               }
               §§goto(addr0195);
            }
         }
         §§goto(addr00f9);
      }
      
      protected function checkBlockedByGround() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this._blockedByObject = this._billboardObjectVo.isBlockedByObject;
            if(!(_loc2_ && Boolean(this)))
            {
               addr002d:
               this._blockedByBoulder = this._billboardObjectVo.isBlockedByBoulder;
               if(_loc1_ || _loc2_)
               {
                  §§push(this._billboardObjectVo.hideIconsForMoveMode);
                  if(!_loc2_)
                  {
                     §§push(§§pop());
                     if(!(_loc2_ && _loc1_))
                     {
                        var _temp_4:* = §§pop();
                        §§push(_temp_4);
                        if(_temp_4)
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              §§goto(addr0086);
                           }
                        }
                        §§goto(addr009e);
                     }
                     addr0086:
                     §§pop();
                     if(!_loc2_)
                     {
                        addr009e:
                        §§push(this._blockedByObject);
                        if(!(_loc2_ && _loc1_))
                        {
                           addr009d:
                           §§push(§§pop());
                        }
                        if(§§pop())
                        {
                           if(_loc1_)
                           {
                              addr00a7:
                              this._iconContainer.visible = true;
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr009d);
               }
            }
            §§goto(addr00a7);
         }
         §§goto(addr002d);
      }
      
      private function setGroundRestrictedIcon() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         do
         {
            if(this._groundRestrictedIcon.numChildren)
            {
               continue;
            }
            if(_loc3_ && Boolean(this))
            {
               break;
            }
            var _loc1_:* = this._terrainTypeNeeded;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               §§push(ServerRestrictionConstants.SEA);
               if(_loc2_ || Boolean(_loc1_))
               {
                  §§push(_loc1_);
                  if(!_loc3_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc2_ || _loc3_)
                        {
                           §§push(0);
                           if(_loc3_)
                           {
                           }
                        }
                        else
                        {
                           addr03cd:
                           §§push(7);
                           if(_loc3_ && _loc2_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(ServerRestrictionConstants.COAST);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(_loc1_);
                           if(!(_loc3_ && Boolean(this)))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc2_)
                                 {
                                    §§push(1);
                                    if(_loc3_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr03cd);
                                 }
                              }
                              else
                              {
                                 §§push(ServerRestrictionConstants.FARMLAND);
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    §§push(_loc1_);
                                    if(_loc2_ || _loc3_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc3_)
                                          {
                                             §§push(2);
                                             if(_loc2_ || _loc2_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr0357:
                                             §§push(5);
                                             if(_loc2_ || Boolean(_loc1_))
                                             {
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(ServerRestrictionConstants.RIVER);
                                          if(_loc2_)
                                          {
                                             addr02ce:
                                             §§push(_loc1_);
                                             if(!(_loc3_ && Boolean(_loc1_)))
                                             {
                                                addr02dc:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc2_)
                                                   {
                                                      §§push(3);
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr03cd);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(ServerRestrictionConstants.CLAYPIT);
                                                   if(!_loc3_)
                                                   {
                                                      addr0303:
                                                      §§push(_loc1_);
                                                      if(_loc2_)
                                                      {
                                                         addr0309:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               §§push(4);
                                                               if(_loc2_ || _loc3_)
                                                               {
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr03eb:
                                                               §§push(8);
                                                               if(_loc2_)
                                                               {
                                                               }
                                                            }
                                                            addr0402:
                                                            switch(§§pop())
                                                            {
                                                               case 0:
                                                                  this._groundRestrictedIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"NeedsSeaGround",true));
                                                                  if(_loc3_ && Boolean(_loc1_))
                                                                  {
                                                                  }
                                                                  break loop0;
                                                               case 1:
                                                                  this._groundRestrictedIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"NeedsCoastGround",true));
                                                                  if(_loc2_)
                                                                  {
                                                                  }
                                                                  break loop0;
                                                               case 2:
                                                                  this._groundRestrictedIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"NeedsFarmlandGround",true));
                                                                  if(_loc3_ && _loc3_)
                                                                  {
                                                                  }
                                                                  break loop0;
                                                               case 3:
                                                                  this._groundRestrictedIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"NeedsDockGround",true));
                                                                  if(_loc3_ && _loc2_)
                                                                  {
                                                                  }
                                                                  break loop0;
                                                               case 4:
                                                                  this._groundRestrictedIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"NeedsClayGround",true));
                                                                  if(_loc2_ || Boolean(this))
                                                                  {
                                                                  }
                                                                  break loop0;
                                                               case 5:
                                                                  this._groundRestrictedIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"NeedsSpringGround",true));
                                                                  if(_loc3_ && _loc2_)
                                                                  {
                                                                  }
                                                                  break loop0;
                                                               case 6:
                                                                  this._groundRestrictedIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"NeedsFishingGround",true));
                                                                  if(_loc2_ || _loc3_)
                                                                  {
                                                                  }
                                                                  break loop0;
                                                               case 7:
                                                                  this._groundRestrictedIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"NeedsMountainGround",true));
                                                                  if(_loc3_ && _loc3_)
                                                                  {
                                                                  }
                                                                  break loop0;
                                                               case 8:
                                                                  this._groundRestrictedIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"NeedsSnowGround",true));
                                                                  if(_loc3_ && _loc2_)
                                                                  {
                                                                  }
                                                                  break loop0;
                                                               default:
                                                                  this._groundRestrictedIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"NeedsNormalGround",true));
                                                                  if(_loc2_ || Boolean(this))
                                                                  {
                                                                  }
                                                                  break loop0;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(ServerRestrictionConstants.SPRING);
                                                            if(_loc2_ || _loc2_)
                                                            {
                                                               addr0338:
                                                               §§push(_loc1_);
                                                               if(_loc2_ || Boolean(this))
                                                               {
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(_loc2_ || Boolean(_loc1_))
                                                                     {
                                                                        §§goto(addr0357);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr03cd);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(ServerRestrictionConstants.FISHINGGROUND);
                                                                     if(_loc2_ || _loc2_)
                                                                     {
                                                                        addr037d:
                                                                        §§push(_loc1_);
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr0383:
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 addr038c:
                                                                                 §§push(6);
                                                                                 if(_loc3_ && Boolean(this))
                                                                                 {
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr03eb);
                                                                              }
                                                                              §§goto(addr0402);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(ServerRestrictionConstants.MOUNTAIN);
                                                                              if(_loc2_)
                                                                              {
                                                                                 §§push(_loc1_);
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    if(§§pop() === §§pop())
                                                                                    {
                                                                                       if(!(_loc3_ && _loc3_))
                                                                                       {
                                                                                          §§goto(addr03cd);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr03eb);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr03e7:
                                                                                       addr03e6:
                                                                                       if(ServerRestrictionConstants.SNOW === _loc1_)
                                                                                       {
                                                                                          §§goto(addr03eb);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(9);
                                                                                       }
                                                                                       §§goto(addr0402);
                                                                                    }
                                                                                    §§goto(addr03eb);
                                                                                 }
                                                                                 §§goto(addr03e7);
                                                                              }
                                                                              §§goto(addr03e6);
                                                                           }
                                                                        }
                                                                        §§goto(addr03e7);
                                                                     }
                                                                     §§goto(addr03e6);
                                                                  }
                                                                  §§goto(addr0402);
                                                               }
                                                               §§goto(addr03e7);
                                                            }
                                                            §§goto(addr037d);
                                                         }
                                                         §§goto(addr03eb);
                                                      }
                                                      §§goto(addr03e7);
                                                   }
                                                   §§goto(addr037d);
                                                }
                                                §§goto(addr0402);
                                             }
                                             §§goto(addr0383);
                                          }
                                          §§goto(addr0303);
                                       }
                                       §§goto(addr0402);
                                    }
                                    §§goto(addr02dc);
                                 }
                                 §§goto(addr0303);
                              }
                              §§goto(addr0402);
                           }
                           §§goto(addr02dc);
                        }
                        §§goto(addr0338);
                     }
                     §§goto(addr0402);
                  }
                  §§goto(addr0309);
               }
               §§goto(addr02ce);
            }
            §§goto(addr038c);
         }
         while(this._groundRestrictedIcon.removeChildAt(0), _loc2_ || _loc2_);
         
      }
      
      private function setBlockedIcon() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         do
         {
            if(!this._blockedByObjectIcon.numChildren)
            {
               if(!(_loc2_ && _loc2_))
               {
                  if(!this._blockedByBoulder)
                  {
                     this._blockedByObjectIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"BlockedByObject",true));
                     break;
                  }
                  if(_loc2_ && _loc2_)
                  {
                     break;
                  }
               }
               this._blockedByObjectIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"BlockedByBoulder",true));
               if(_loc1_)
               {
               }
               break;
            }
            this._blockedByObjectIcon.removeChildAt(0);
         }
         while(!(_loc2_ && _loc2_));
         
      }
      
      private function setNotConnectedIcon() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         do
         {
            if(!this._notConnectedIcon.numChildren)
            {
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr0060);
            }
            this._notConnectedIcon.removeChildAt(0);
         }
         while(!(_loc2_ && _loc2_));
         
         this._notConnectedIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"NoStreetConnection",true));
         addr0060:
      }
      
      private function setActivationIcon() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         do
         {
            if(!this._activationIcon.numChildren)
            {
               if(_loc2_ || _loc2_)
               {
                  if(this._billboardObjectVo is ResidentialFieldObjectVo)
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        this._activationIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"MoveIn",true));
                        if(_loc2_ || _loc2_)
                        {
                        }
                     }
                     break;
                  }
                  this._activationIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"Inaugurate",true));
               }
               break;
            }
            this._activationIcon.removeChildAt(0);
         }
         while(!_loc1_);
         
      }
      
      private function setHarvestIcon() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         do
         {
            if(this._harvestIcon.numChildren)
            {
               continue;
            }
            if(_loc2_ || Boolean(this))
            {
               §§push(this._billboardObjectVo);
               if(!_loc1_)
               {
                  §§push(§§pop() is ResidentialFieldObjectVo);
                  if(_loc2_ || Boolean(this))
                  {
                     if(§§pop())
                     {
                        if(!_loc1_)
                        {
                           §§push(this._billboardObjectVo);
                           if(!_loc1_)
                           {
                              §§push((§§pop() as ResidentialFieldObjectVo).willBeUpgradeReadyOnNextHarvest);
                              if(_loc2_)
                              {
                                 §§push(!§§pop());
                                 if(!_loc1_)
                                 {
                                    var _temp_4:* = §§pop();
                                    §§push(_temp_4);
                                    if(!_temp_4)
                                    {
                                       if(!_loc1_)
                                       {
                                          §§pop();
                                          if(!(_loc2_ || Boolean(this)))
                                          {
                                             break;
                                          }
                                          §§push(this._billboardObjectVo);
                                          if(_loc2_ || Boolean(this))
                                          {
                                             addr00a5:
                                             §§push((§§pop() as ResidentialFieldObjectVo).buildingDTO.currentMasteryChallenge == null);
                                             if(_loc2_ || _loc2_)
                                             {
                                                §§push(!§§pop());
                                                if(_loc2_)
                                                {
                                                   addr00c4:
                                                   if(§§pop())
                                                   {
                                                      if(_loc2_ || _loc1_)
                                                      {
                                                         §§push(this._masteryStepReady);
                                                         if(_loc2_)
                                                         {
                                                            addr00de:
                                                            if(!§§pop())
                                                            {
                                                               this._harvestIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"ResidentialHarvestReady",true));
                                                               if(_loc2_ || _loc1_)
                                                               {
                                                                  break;
                                                               }
                                                               addr01bc:
                                                               this._harvestIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"ProductionHarvestReady",true));
                                                               if(_loc1_)
                                                               {
                                                               }
                                                               break;
                                                            }
                                                            if(!_loc1_)
                                                            {
                                                               this._harvestIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"ResidentialMasteryReady",true));
                                                               if(_loc2_ || _loc2_)
                                                               {
                                                               }
                                                               break;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr01ab:
                                                            if(!§§pop())
                                                            {
                                                               if(!(_loc1_ && _loc2_))
                                                               {
                                                                  §§goto(addr01bc);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               this._harvestIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"ProductionUpgradeHarvest",true));
                                                               if(!(_loc1_ && _loc2_))
                                                               {
                                                                  break;
                                                               }
                                                               this._harvestIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"TownHallHarvestReady",true));
                                                               addr022d:
                                                               if(!_loc1_)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                         }
                                                         addr026a:
                                                         this._harvestIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"MysteryBuildingHarvestReady",true));
                                                      }
                                                      break;
                                                   }
                                                   this._harvestIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"ResidentialUpgradeHarvest",true));
                                                   if(_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr022d);
                                                }
                                                §§goto(addr01ab);
                                             }
                                             §§goto(addr00c4);
                                          }
                                          else
                                          {
                                             addr019e:
                                             §§push((§§pop() as ProductionFieldObjectVo).upgradeReadyOnNextHarvest);
                                             if(_loc2_)
                                             {
                                                §§goto(addr01ab);
                                             }
                                             else
                                             {
                                                addr0224:
                                                if(§§pop())
                                                {
                                                   if(_loc1_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr022d);
                                                }
                                                else
                                                {
                                                   addr0261:
                                                   addr025d:
                                                   if(!(this._billboardObjectVo is MysteryBuildingObjectVo))
                                                   {
                                                      break;
                                                   }
                                                   if(!_loc2_)
                                                   {
                                                      break;
                                                   }
                                                }
                                             }
                                             §§goto(addr026a);
                                          }
                                       }
                                       §§goto(addr0261);
                                    }
                                    §§goto(addr00c4);
                                 }
                                 §§goto(addr0224);
                              }
                              §§goto(addr00de);
                           }
                           else
                           {
                              addr021b:
                              §§push(§§pop() is TownHallFieldObjectVo);
                              if(_loc2_)
                              {
                                 §§goto(addr0224);
                              }
                           }
                           §§goto(addr0261);
                        }
                        §§goto(addr026a);
                     }
                     else
                     {
                        §§push(this._billboardObjectVo);
                        if(!(_loc1_ && _loc2_))
                        {
                           §§push(§§pop() is ProductionFieldObjectVo);
                           if(_loc2_)
                           {
                              if(§§pop())
                              {
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 §§push(this._billboardObjectVo);
                                 if(_loc2_ || Boolean(this))
                                 {
                                    §§goto(addr019e);
                                 }
                                 else
                                 {
                                    §§goto(addr021b);
                                 }
                              }
                              else
                              {
                                 §§push(this._billboardObjectVo);
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    §§goto(addr021b);
                                 }
                              }
                              §§goto(addr025d);
                           }
                           §§goto(addr01ab);
                        }
                     }
                     §§goto(addr025d);
                  }
                  §§goto(addr00c4);
               }
               §§goto(addr00a5);
            }
            §§goto(addr01bc);
         }
         while(this._harvestIcon.removeChildAt(0), !_loc1_);
         
      }
      
      private function setMasteryIcon() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         do
         {
            if(!this._masteryIcon.numChildren)
            {
               if(_loc2_ || _loc2_)
               {
                  break;
               }
               §§goto(addr0062);
            }
            this._masteryIcon.removeChildAt(0);
         }
         while(_loc2_);
         
         if(this._billboardObjectVo is ResidentialFieldObjectVo)
         {
            if(_loc2_)
            {
               addr0062:
               this._masteryIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"MasteryStepFinished",true));
               §§goto(addr007c);
            }
         }
         addr007c:
      }
      
      private function setTownHallUpgradeIcon() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            if(this._billboardObjectVo is TownHallFieldObjectVo)
            {
               do
               {
                  if(!this._upgradeIcon.numChildren)
                  {
                     if(_loc2_)
                     {
                        this._upgradeIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"TownHallUpgrade",true));
                     }
                     break;
                  }
                  this._upgradeIcon.removeChildAt(0);
               }
               while(_loc2_ || _loc2_);
               
               addr005a:
            }
            return;
         }
         §§goto(addr005a);
      }
      
      private function setStepUpIcon() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         do
         {
            if(!this._stepUpIcon.numChildren)
            {
               if(_loc1_)
               {
                  break;
               }
               §§goto(addr0060);
            }
            this._stepUpIcon.removeChildAt(0);
         }
         while(_loc1_ || _loc2_);
         
         this._stepUpIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"ConstructionStepReady",true));
         addr0060:
      }
      
      private function setIdleIcon() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         do
         {
            if(this._idleIcon.numChildren)
            {
               continue;
            }
            if(!(_loc2_ || Boolean(this)))
            {
               break;
            }
            §§push(this._billboardObjectVo);
            if(!(_loc1_ && _loc1_))
            {
               §§push(§§pop() is ProductionFieldObjectVo);
               if(!(_loc1_ && Boolean(this)))
               {
                  if(§§pop())
                  {
                     if(_loc1_)
                     {
                        break;
                     }
                     §§push(this._billboardObjectVo);
                     if(_loc2_ || _loc2_)
                     {
                        addr008b:
                        §§push((§§pop() as ProductionFieldObjectVo).upgradeReady);
                        if(!_loc1_)
                        {
                           if(!§§pop())
                           {
                              this._idleIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"ProductionIdle",true));
                              if(_loc1_)
                              {
                              }
                              break;
                           }
                           if(_loc2_ || Boolean(this))
                           {
                              this._idleIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"ProductionUpgradeIdle",true));
                              if(_loc1_ && Boolean(this))
                              {
                              }
                              break;
                           }
                        }
                        else
                        {
                           addr0108:
                           if(!§§pop())
                           {
                              break;
                           }
                           if(_loc1_ && _loc2_)
                           {
                              break;
                           }
                        }
                        this._idleIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"ShopIdle",true));
                        break;
                     }
                     addr0104:
                     §§push(§§pop() is ShopFieldObjectVo);
                     §§goto(addr0108);
                  }
                  else
                  {
                     §§push(this._billboardObjectVo);
                  }
                  §§goto(addr0104);
               }
               §§goto(addr0108);
            }
            §§goto(addr008b);
         }
         while(this._idleIcon.removeChildAt(0), _loc2_ || Boolean(this));
         
      }
      
      private function setAlmostEmptyIcon() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         do
         {
            if(!this._almostEmptyIcon.numChildren)
            {
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr0059);
            }
            this._almostEmptyIcon.removeChildAt(0);
         }
         while(_loc2_);
         
         this._almostEmptyIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"ShopAlmostEmpty",true));
         addr0059:
      }
      
      private function setNeedBuildingIcon() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         do
         {
            if(!this._needBuildingIcon.numChildren)
            {
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr0059);
            }
            this._needBuildingIcon.removeChildAt(0);
         }
         while(!_loc1_);
         
         this._needBuildingIcon.addChild(new RisingBitmap(LIB_FILE,LIB_DEFINITION,"NeedBuildingIcon",true));
         addr0059:
      }
   }
}

