package net.bigpoint.cityrama.model.inventory
{
   import net.bigpoint.cityrama.constants.ServerImprovementConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.baseView.emergency.EmergencyProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.improvement.ImprovementProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.inventory.vo.InventoryItemBagVo;
   import net.bigpoint.cityrama.model.inventory.vo.InventoryPlayfieldItemVo;
   import net.bigpoint.cityrama.model.inventory.vo.PlayfieldItemInventoryBagVo;
   import net.bigpoint.cityrama.model.inventory.vo.PlayfieldItemInventoryListItemVo;
   import net.bigpoint.cityrama.model.inventory.vo.PlayfieldItemInventoryViewVo;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.BuildingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemImprovementSlotDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemPlayfieldRestrictionDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ImprovementDTO;
   import net.bigpoint.cityrama.model.server.vo.server.InventoryItemDTO;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.DecorationFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class PlayfieldItemInventoryViewProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "PlayfieldItemInventoryViewProxy";
      
      public static const CATEGORY_EMERGENCY_INVENTORY:String = "EMERGENCY";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc1_))
      {
         NAME = "PlayfieldItemInventoryViewProxy";
         if(_loc2_ || _loc2_)
         {
            addr003c:
            CATEGORY_EMERGENCY_INVENTORY = "EMERGENCY";
         }
         return;
      }
      §§goto(addr003c);
      
      private var _currentSelectedInventoryItem:PlayfieldItemInventoryListItemVo;
      
      private var _iP:InventoryProxy;
      
      private var _resP:PlayerResourceProxy;
      
      private var _confP:GameConfigProxy;
      
      private var _impP:ImprovementProxy;
      
      private var _pfP:PlayfieldProxy;
      
      private var _lSP:LocalStorageProxy;
      
      private var _fP:FeatureProxy;
      
      private var _eP:EmergencyProxy;
      
      public function PlayfieldItemInventoryViewProxy()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super(NAME);
         }
      }
      
      public function get playfieldItemInventoryViewVo() : PlayfieldItemInventoryViewVo
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:PlayfieldItemInventoryViewVo = new PlayfieldItemInventoryViewVo();
         if(!_loc2_)
         {
            _loc1_.bags = this.getInventoryBags();
            if(!_loc2_)
            {
               _loc1_.realCurrencyStock = this.resourceProxy.realCurrency;
               if(!_loc2_)
               {
                  addr005b:
                  _loc1_.minimized = this.localStorageProxy.userdata.inventoryMinimised;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0077:
                     _loc1_.emergencyRunning = this.emergencyProxy.emergencyActivelyRunning;
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0077);
            }
            addr0083:
            return _loc1_;
         }
         §§goto(addr005b);
      }
      
      public function buildInventoryPlayfieldItemVo(param1:BillboardObject) : InventoryPlayfieldItemVo
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:InventoryPlayfieldItemVo = new InventoryPlayfieldItemVo();
         if(!_loc3_)
         {
            if(param1 is DecorationFieldObject)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc2_.decorationVo = DecorationFieldObject(param1).decorationFieldObjectVo.decorationVo;
                  addr003b:
                  if(_loc3_ && Boolean(this))
                  {
                     §§goto(addr008e);
                  }
               }
            }
            else
            {
               _loc2_.buildingDTO = param1.billboardObjectVo.buildingDTO;
               if(_loc4_ || Boolean(_loc2_))
               {
                  addr008e:
                  _loc2_.improvementVector = this.getImprovementGfxVector(_loc2_.buildingDTO);
                  if(_loc4_)
                  {
                     addr00a2:
                     _loc2_.canBePlacedOnCurrentPlayfield = this.itemAllowedOnPlayfield(param1.billboardObjectVo.configPlayfieldItemVo);
                  }
                  return _loc2_;
               }
            }
            §§goto(addr00a2);
         }
         §§goto(addr003b);
      }
      
      public function get currentSelectedInventoryItem() : PlayfieldItemInventoryListItemVo
      {
         return this._currentSelectedInventoryItem;
      }
      
      public function set currentSelectedInventoryItem(param1:PlayfieldItemInventoryListItemVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._currentSelectedInventoryItem = param1;
         }
      }
      
      private function getInventoryBags() : Vector.<PlayfieldItemInventoryBagVo>
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:PlayfieldItemInventoryBagVo = null;
         var _loc3_:InventoryItemBagVo = null;
         var _loc1_:Vector.<PlayfieldItemInventoryBagVo> = new Vector.<PlayfieldItemInventoryBagVo>();
         for each(_loc3_ in this.inventoryProxy.getInventoryBagsByType(InventoryProxy.INVENTORY_BAG_TYPE_PLAYFIELDITEM))
         {
            _loc2_ = new PlayfieldItemInventoryBagVo();
            if(_loc7_)
            {
               _loc2_.source = _loc3_;
               if(_loc7_ || Boolean(_loc3_))
               {
                  _loc2_.category = this.getBagCategory(_loc3_);
                  if(_loc6_)
                  {
                     continue;
                  }
               }
               _loc2_.inventoryItems = this.getInventoryItems(_loc3_);
               if(_loc7_)
               {
                  _loc1_.push(_loc2_);
               }
            }
         }
         return _loc1_;
      }
      
      private function getInventoryItems(param1:InventoryItemBagVo) : Vector.<InventoryPlayfieldItemVo>
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc3_:InventoryPlayfieldItemVo = null;
         var _loc4_:InventoryItemDTO = null;
         var _loc2_:Vector.<InventoryPlayfieldItemVo> = new Vector.<InventoryPlayfieldItemVo>();
         for each(_loc4_ in param1.bagItems)
         {
            _loc3_ = new InventoryPlayfieldItemVo();
            if(_loc8_ || Boolean(this))
            {
               if(_loc4_.buildingDTO)
               {
                  if(_loc7_ && Boolean(_loc3_))
                  {
                     continue;
                  }
                  _loc3_.buildingDTO = _loc4_.buildingDTO;
                  if(!(_loc8_ || Boolean(this)))
                  {
                     continue;
                  }
                  _loc3_.improvementVector = this.getImprovementGfxVector(_loc4_.buildingDTO);
                  if(!_loc8_)
                  {
                     addr00db:
                     _loc3_.decorationVo = _loc4_.decorationVo;
                     if(!_loc7_)
                     {
                        addr00ea:
                        _loc3_.canBePlacedOnCurrentPlayfield = this.itemAllowedOnPlayfield(_loc3_.configItem);
                        if(!_loc8_)
                        {
                           continue;
                        }
                     }
                     _loc2_.push(_loc3_);
                     continue;
                  }
               }
               else if(_loc4_.decorationVo)
               {
                  if(!(_loc8_ || Boolean(this)))
                  {
                     continue;
                  }
                  §§goto(addr00db);
               }
            }
            §§goto(addr00ea);
         }
         return _loc2_;
      }
      
      private function itemAllowedOnPlayfield(param1:ConfigPlayfieldItemDTO) : Boolean
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:ConfigPlayfieldItemPlayfieldRestrictionDTO = null;
         for each(_loc2_ in param1.playfieldRestrictions)
         {
            if(!_loc6_)
            {
               if(_loc2_.configPlayfieldId == this.playfieldProxy.config.id)
               {
                  if(_loc5_)
                  {
                     return false;
                  }
               }
            }
         }
         return true;
      }
      
      private function getImprovementGfxVector(param1:BuildingDTO) : Vector.<BriskDynaVo>
      {
         var _temp_1:* = true;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = _temp_1;
         var _loc2_:Vector.<BriskDynaVo> = null;
         var _loc3_:BriskDynaVo = null;
         var _loc4_:int = 0;
         var _loc5_:ImprovementVo = null;
         var _loc6_:* = 0;
         var _loc7_:* = false;
         var _loc8_:ImprovementDTO = null;
         var _loc9_:ConfigPlayfieldItemImprovementSlotDTO = null;
         if(_loc15_ || Boolean(_loc2_))
         {
            §§push(param1.improvementSlotIds.length > 0);
            if(!(_loc14_ && Boolean(param1)))
            {
               var _temp_4:* = §§pop();
               §§push(_temp_4);
               if(_temp_4)
               {
                  if(_loc15_)
                  {
                     §§pop();
                     if(!_loc14_)
                     {
                        addr008d:
                        §§push(param1.config.tags.indexOf(ServerTagConstants.RESIDENTIAL) == -1);
                        if(_loc15_)
                        {
                           addr008c:
                           §§push(!§§pop());
                        }
                        if(!§§pop())
                        {
                           return null;
                        }
                     }
                     addr0091:
                     _loc2_ = new Vector.<BriskDynaVo>();
                     _loc3_ = new BriskDynaVo("gui_ui_inventory","hip_locked");
                     if(_loc15_)
                     {
                        _loc2_.push(_loc3_);
                        if(!_loc14_)
                        {
                           _loc2_.push(_loc3_);
                           if(_loc15_ || Boolean(this))
                           {
                              _loc2_.push(_loc3_);
                              if(!_loc14_)
                              {
                                 if(this.featureProxy.improvementFeatureUnlocked)
                                 {
                                    addr00e8:
                                    _loc3_ = new BriskDynaVo("gui_ui_inventory","hip_free");
                                    if(_loc15_)
                                    {
                                       _loc4_ = 0;
                                    }
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       if(!_loc15_)
                                       {
                                          break;
                                       }
                                       if(§§pop() >= param1.improvementSlotIds.length)
                                       {
                                          if(!_loc14_)
                                          {
                                             §§goto(addr04a2);
                                          }
                                       }
                                       else
                                       {
                                          _loc2_[_loc4_] = _loc3_;
                                          if(!_loc15_)
                                          {
                                             continue;
                                          }
                                          _loc4_++;
                                          if(_loc15_ || Boolean(param1))
                                          {
                                             continue;
                                          }
                                       }
                                       §§goto(addr0156);
                                    }
                                    var _loc10_:* = §§pop();
                                    if(_loc15_)
                                    {
                                       for each(_loc8_ in param1.improvements)
                                       {
                                          _loc5_ = this.improvementProxy.buildImprovementVo(_loc8_);
                                          if(!_loc14_)
                                          {
                                             §§push(false);
                                             if(_loc15_ || Boolean(this))
                                             {
                                                _loc7_ = §§pop();
                                                if(_loc15_ || Boolean(this))
                                                {
                                                   §§push(0);
                                                   if(!_loc14_)
                                                   {
                                                      _loc6_ = §§pop();
                                                      if(!(_loc14_ && Boolean(_loc3_)))
                                                      {
                                                         if(_loc5_.expirationTime <= param1.lastUpdatedTimeStamp)
                                                         {
                                                            if(_loc15_)
                                                            {
                                                               §§push(true);
                                                               if(_loc15_ || Boolean(this))
                                                               {
                                                                  addr01e5:
                                                                  _loc7_ = §§pop();
                                                                  if(_loc15_ || Boolean(_loc2_))
                                                                  {
                                                                     addr02f4:
                                                                     var _loc12_:* = _loc5_.quality;
                                                                     if(!_loc14_)
                                                                     {
                                                                        §§push(ServerImprovementConstants.QUALITY_COMMON);
                                                                        if(_loc15_)
                                                                        {
                                                                           §§push(_loc12_);
                                                                           if(_loc15_ || Boolean(_loc2_))
                                                                           {
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 if(!(_loc14_ && Boolean(param1)))
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(_loc15_ || Boolean(_loc2_))
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr0371:
                                                                                    §§push(1);
                                                                                    if(_loc15_ || Boolean(param1))
                                                                                    {
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(ServerImprovementConstants.QUALITY_RARE);
                                                                                 if(_loc15_ || Boolean(_loc3_))
                                                                                 {
                                                                                    addr0357:
                                                                                    §§push(_loc12_);
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       if(§§pop() === §§pop())
                                                                                       {
                                                                                          if(_loc15_ || Boolean(_loc3_))
                                                                                          {
                                                                                             §§goto(addr0371);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr03db:
                                                                                             §§push(3);
                                                                                             if(_loc15_)
                                                                                             {
                                                                                             }
                                                                                          }
                                                                                          addr03f5:
                                                                                          switch(§§pop())
                                                                                          {
                                                                                             case 0:
                                                                                                addr01fc:
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   if(_loc15_ || Boolean(param1))
                                                                                                   {
                                                                                                      addr020e:
                                                                                                      _loc3_ = new BriskDynaVo("gui_ui_inventory","hip_common_exp");
                                                                                                      if(_loc14_ && Boolean(this))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   _loc3_ = new BriskDynaVo("gui_ui_inventory","hip_common");
                                                                                                }
                                                                                                addr0409:
                                                                                                _loc12_ = 0;
                                                                                                if(!_loc14_)
                                                                                                {
                                                                                                   for each(_loc9_ in param1.config.improvementSlots)
                                                                                                   {
                                                                                                      §§push(_loc9_.id);
                                                                                                      if(!(_loc14_ && Boolean(param1)))
                                                                                                      {
                                                                                                         if(§§pop() == _loc5_.currentSlotId)
                                                                                                         {
                                                                                                            if(_loc15_ || Boolean(this))
                                                                                                            {
                                                                                                               §§push(_loc9_.orderId);
                                                                                                               if(!(_loc14_ && Boolean(_loc2_)))
                                                                                                               {
                                                                                                                  addr0467:
                                                                                                                  §§push(int(§§pop() - 1));
                                                                                                               }
                                                                                                               _loc6_ = §§pop();
                                                                                                            }
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§goto(addr0467);
                                                                                                   }
                                                                                                }
                                                                                                if(!(_loc14_ && Boolean(_loc2_)))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                continue;
                                                                                             case 1:
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   if(!(_loc15_ || Boolean(param1)))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   _loc3_ = new BriskDynaVo("gui_ui_inventory","hip_rare_exp");
                                                                                                   if(!_loc15_)
                                                                                                   {
                                                                                                      addr0296:
                                                                                                      _loc3_ = new BriskDynaVo("gui_ui_inventory","hip_epic_exp");
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         addr02c9:
                                                                                                         _loc3_ = new BriskDynaVo("gui_ui_inventory","hip_legendary_exp");
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   _loc3_ = new BriskDynaVo("gui_ui_inventory","hip_rare");
                                                                                                }
                                                                                                §§goto(addr0409);
                                                                                             case 2:
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   §§goto(addr0296);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   _loc3_ = new BriskDynaVo("gui_ui_inventory","hip_epic");
                                                                                                }
                                                                                                §§goto(addr0409);
                                                                                             case 3:
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   §§goto(addr02c9);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   _loc3_ = new BriskDynaVo("gui_ui_inventory","hip_legendary");
                                                                                                }
                                                                                                §§goto(addr0409);
                                                                                             default:
                                                                                                §§goto(addr0409);
                                                                                          }
                                                                                          _loc2_[_loc6_] = _loc3_;
                                                                                          continue;
                                                                                          addr03f3:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(ServerImprovementConstants.QUALITY_EPIC);
                                                                                          if(!(_loc14_ && Boolean(_loc3_)))
                                                                                          {
                                                                                             addr0399:
                                                                                             §§push(_loc12_);
                                                                                             if(!(_loc14_ && Boolean(param1)))
                                                                                             {
                                                                                                addr03a9:
                                                                                                if(§§pop() === §§pop())
                                                                                                {
                                                                                                   if(_loc15_ || Boolean(param1))
                                                                                                   {
                                                                                                      addr03bb:
                                                                                                      §§push(2);
                                                                                                      if(_loc14_ && Boolean(_loc3_))
                                                                                                      {
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr03db);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr03d7:
                                                                                                   addr03d5:
                                                                                                   if(ServerImprovementConstants.QUALITY_LEGENDARY === _loc12_)
                                                                                                   {
                                                                                                      §§goto(addr03db);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(4);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr03f3);
                                                                                             }
                                                                                             §§goto(addr03d7);
                                                                                          }
                                                                                          §§goto(addr03d5);
                                                                                       }
                                                                                       §§goto(addr03db);
                                                                                    }
                                                                                    §§goto(addr03a9);
                                                                                 }
                                                                                 §§goto(addr0399);
                                                                              }
                                                                              §§goto(addr03f3);
                                                                           }
                                                                           §§goto(addr03d7);
                                                                        }
                                                                        §§goto(addr0357);
                                                                     }
                                                                     §§goto(addr03bb);
                                                                  }
                                                                  §§goto(addr020e);
                                                               }
                                                               §§goto(addr01fc);
                                                            }
                                                         }
                                                         §§goto(addr02f4);
                                                      }
                                                      §§goto(addr020e);
                                                   }
                                                   §§goto(addr03f5);
                                                }
                                                §§goto(addr020e);
                                             }
                                             §§goto(addr01e5);
                                          }
                                          §§goto(addr020e);
                                       }
                                    }
                                 }
                                 addr04a2:
                                 if(param1.improvements.length > 0)
                                 {
                                    if(_loc15_ || Boolean(_loc2_))
                                    {
                                       addr0156:
                                       §§push(0);
                                       break loop0;
                                    }
                                 }
                                 return _loc2_;
                              }
                           }
                        }
                     }
                     §§goto(addr00e8);
                  }
                  §§goto(addr008c);
               }
               §§goto(addr008d);
            }
            §§goto(addr008c);
         }
         §§goto(addr0091);
      }
      
      private function getBagCategory(param1:InventoryItemBagVo) : String
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc2_:ConfigPlayfieldItemDTO = null;
         var _loc3_:* = null;
         for each(_loc2_ in this.configProxy.config.items)
         {
            if(!_loc9_)
            {
               continue;
            }
            §§push(_loc2_.configInventoryBagId);
            if(!_loc8_)
            {
               if(§§pop() != param1.config.id)
               {
                  continue;
               }
               if(!_loc9_)
               {
                  continue;
               }
               §§push(0);
            }
            var _loc6_:* = §§pop();
            if(!_loc8_)
            {
               var _loc7_:* = _loc2_.tags;
               if(!(_loc8_ && Boolean(_loc3_)))
               {
                  loop1:
                  for each(_loc6_ in _loc7_)
                  {
                     §§push(_loc6_);
                     if(!_loc8_)
                     {
                        _loc3_ = §§pop();
                        if(_loc9_ || Boolean(param1))
                        {
                           §§push(_loc3_);
                           if(_loc9_)
                           {
                              §§push(ServerTagConstants.RESIDENTIAL);
                              if(_loc9_)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(_loc9_ || Boolean(_loc2_))
                                 {
                                    var _temp_5:* = §§pop();
                                    §§push(_temp_5);
                                    §§push(_temp_5);
                                    if(_loc9_ || Boolean(_loc2_))
                                    {
                                       if(!§§pop())
                                       {
                                          if(_loc9_)
                                          {
                                             §§pop();
                                             if(!_loc8_)
                                             {
                                                §§push(_loc3_);
                                                if(_loc9_)
                                                {
                                                   §§push(ServerTagConstants.SHOP);
                                                   if(_loc9_ || Boolean(_loc2_))
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(_loc9_)
                                                      {
                                                         addr00ff:
                                                         var _temp_8:* = §§pop();
                                                         §§push(_temp_8);
                                                         §§push(_temp_8);
                                                         if(_loc9_ || Boolean(_loc2_))
                                                         {
                                                            addr010e:
                                                            if(!§§pop())
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  §§pop();
                                                                  if(!(_loc8_ && Boolean(this)))
                                                                  {
                                                                     addr0127:
                                                                     §§push(_loc3_);
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(ServerTagConstants.DECORATION);
                                                                        if(!(_loc8_ && Boolean(_loc3_)))
                                                                        {
                                                                           addr0141:
                                                                           §§push(§§pop() == §§pop());
                                                                           if(_loc9_)
                                                                           {
                                                                              addr0157:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§push(_loc3_);
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    return §§pop();
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(ServerTagConstants.SCHOOL);
                                                                                    if(_loc9_ || Boolean(this))
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() == §§pop());
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                var _temp_13:* = §§pop();
                                                                                                §§push(_temp_13);
                                                                                                §§push(_temp_13);
                                                                                                addr026c:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      if(!(_loc8_ && Boolean(_loc3_)))
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc3_);
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(ServerTagConstants.SECURITY_DEVICE);
                                                                                                                        addr029d:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                           addr029e:
                                                                                                                           while(§§pop())
                                                                                                                           {
                                                                                                                              if(_loc8_ && Boolean(param1))
                                                                                                                              {
                                                                                                                                 continue loop1;
                                                                                                                              }
                                                                                                                              §§push(CATEGORY_EMERGENCY_INVENTORY);
                                                                                                                           }
                                                                                                                           continue loop1;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr0298:
                                                                                                                  }
                                                                                                                  §§goto(addr02b3);
                                                                                                               }
                                                                                                               addr0285:
                                                                                                            }
                                                                                                            §§goto(addr02b0);
                                                                                                         }
                                                                                                         addr027e:
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr026b:
                                                                                          }
                                                                                          §§goto(addr029e);
                                                                                       }
                                                                                       addr0264:
                                                                                    }
                                                                                    §§goto(addr029d);
                                                                                 }
                                                                                 addr0251:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 if(!(_loc8_ && Boolean(_loc2_)))
                                                                                 {
                                                                                    addr017e:
                                                                                    §§push(ServerTagConstants.FIRE_DEPARTMENT);
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       §§push(§§pop() == §§pop());
                                                                                       if(!(_loc8_ && Boolean(this)))
                                                                                       {
                                                                                          var _temp_18:* = §§pop();
                                                                                          §§push(_temp_18);
                                                                                          §§push(_temp_18);
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   addr01a9:
                                                                                                   §§pop();
                                                                                                   if(!(_loc8_ && Boolean(param1)))
                                                                                                   {
                                                                                                      §§push(_loc3_);
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         addr01bf:
                                                                                                         §§push(ServerTagConstants.HOSPITAL);
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            §§push(§§pop() == §§pop());
                                                                                                            if(!(_loc8_ && Boolean(_loc2_)))
                                                                                                            {
                                                                                                               addr01d9:
                                                                                                               var _temp_21:* = §§pop();
                                                                                                               §§push(_temp_21);
                                                                                                               §§push(_temp_21);
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  addr01e0:
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     if(_loc9_ || Boolean(_loc3_))
                                                                                                                     {
                                                                                                                        addr01f2:
                                                                                                                        §§pop();
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc3_);
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 §§push(ServerTagConstants.POLICE_DEPARTMENT);
                                                                                                                                 if(!(_loc8_ && Boolean(_loc3_)))
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() == §§pop());
                                                                                                                                       if(!_loc8_)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             var _temp_24:* = §§pop();
                                                                                                                                             §§push(_temp_24);
                                                                                                                                             §§push(_temp_24);
                                                                                                                                             if(_loc9_ || Boolean(_loc3_))
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      if(_loc9_ || Boolean(this))
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            if(_loc9_)
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc3_);
                                                                                                                                                                  if(!(_loc8_ && Boolean(this)))
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr0251);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0298);
                                                                                                                                                               }
                                                                                                                                                               addr0242:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0285);
                                                                                                                                                         }
                                                                                                                                                         addr023b:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr027e);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr026b);
                                                                                                                                                }
                                                                                                                                                addr0229:
                                                                                                                                             }
                                                                                                                                             §§goto(addr026c);
                                                                                                                                          }
                                                                                                                                          addr021a:
                                                                                                                                       }
                                                                                                                                       §§goto(addr026b);
                                                                                                                                    }
                                                                                                                                    addr0213:
                                                                                                                                 }
                                                                                                                                 §§goto(addr0264);
                                                                                                                              }
                                                                                                                              §§goto(addr02b3);
                                                                                                                           }
                                                                                                                           addr01f9:
                                                                                                                        }
                                                                                                                        §§goto(addr0285);
                                                                                                                     }
                                                                                                                     §§goto(addr026b);
                                                                                                                  }
                                                                                                                  §§goto(addr021a);
                                                                                                               }
                                                                                                               §§goto(addr0229);
                                                                                                            }
                                                                                                            §§goto(addr023b);
                                                                                                         }
                                                                                                         §§goto(addr0213);
                                                                                                      }
                                                                                                      addr02b3:
                                                                                                      return §§pop();
                                                                                                   }
                                                                                                   §§goto(addr02b0);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr01d9);
                                                                                          }
                                                                                          §§goto(addr01e0);
                                                                                       }
                                                                                       §§goto(addr01f2);
                                                                                    }
                                                                                    §§goto(addr029d);
                                                                                 }
                                                                              }
                                                                              §§goto(addr0298);
                                                                           }
                                                                           §§goto(addr029e);
                                                                        }
                                                                        §§goto(addr0213);
                                                                     }
                                                                     §§goto(addr017e);
                                                                  }
                                                                  §§goto(addr0242);
                                                               }
                                                               §§goto(addr01a9);
                                                            }
                                                            §§goto(addr0157);
                                                         }
                                                         §§goto(addr01e0);
                                                      }
                                                      §§goto(addr021a);
                                                   }
                                                   §§goto(addr0141);
                                                }
                                                §§goto(addr01bf);
                                             }
                                             §§goto(addr02b0);
                                          }
                                          §§goto(addr027e);
                                       }
                                       §§goto(addr00ff);
                                    }
                                    §§goto(addr010e);
                                 }
                                 §§goto(addr026b);
                              }
                              §§goto(addr029d);
                           }
                           §§goto(addr01bf);
                        }
                        §§goto(addr0127);
                     }
                     §§goto(addr0251);
                  }
                  addr02bd:
                  continue;
               }
               §§goto(addr01f9);
            }
            §§goto(addr02bd);
         }
         return "";
      }
      
      private function get inventoryProxy() : InventoryProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            §§push(this._iP);
            if(_loc1_ || _loc1_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     this._iP = facade.retrieveProxy(InventoryProxy.NAME) as InventoryProxy;
                  }
               }
               addr0053:
               return this._iP;
            }
         }
         §§goto(addr0053);
      }
      
      private function get resourceProxy() : PlayerResourceProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._resP);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     addr0031:
                     this._resP = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
                  }
               }
               return this._resP;
            }
         }
         §§goto(addr0031);
      }
      
      private function get configProxy() : GameConfigProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            §§push(this._confP);
            if(_loc1_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     this._confP = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                  }
               }
               addr0051:
               return this._confP;
            }
         }
         §§goto(addr0051);
      }
      
      private function get improvementProxy() : ImprovementProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this._impP);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     addr003a:
                     this._impP = facade.retrieveProxy(ImprovementProxy.NAME) as ImprovementProxy;
                  }
               }
               return this._impP;
            }
         }
         §§goto(addr003a);
      }
      
      private function get playfieldProxy() : PlayfieldProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            §§push(this._pfP);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     this._pfP = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
                  }
               }
               addr004b:
               return this._pfP;
            }
         }
         §§goto(addr004b);
      }
      
      private function get localStorageProxy() : LocalStorageProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            §§push(this._lSP);
            if(!(_loc1_ && _loc1_))
            {
               if(!§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     addr0054:
                     this._lSP = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
                  }
               }
               return this._lSP;
            }
         }
         §§goto(addr0054);
      }
      
      private function get featureProxy() : FeatureProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._fP);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     addr0031:
                     this._fP = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
                  }
               }
               return this._fP;
            }
         }
         §§goto(addr0031);
      }
      
      private function get emergencyProxy() : EmergencyProxy
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this._eP);
            if(_loc2_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && Boolean(this)))
                  {
                     this._eP = facade.retrieveProxy(EmergencyProxy.NAME) as EmergencyProxy;
                  }
               }
               addr0054:
               return this._eP;
            }
         }
         §§goto(addr0054);
      }
   }
}

