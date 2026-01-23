package net.bigpoint.cityrama.model.inventory
{
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.inventory.vo.InventoryItemBagVo;
   import net.bigpoint.cityrama.model.inventory.vo.InventoryItemVo;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigInventoryBagDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigInventoryDTO;
   import net.bigpoint.cityrama.model.server.vo.server.InventoryDTO;
   import net.bigpoint.cityrama.model.server.vo.server.InventoryItemBagDTO;
   import net.bigpoint.cityrama.model.server.vo.server.InventoryItemDTO;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class InventoryProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "InventoryProxy";
      
      public static const INVENTORY_BAG_TYPE_GOOD:String = "GOOD";
      
      public static const INVENTORY_BAG_TYPE_PERMISSION:String = "PLAYFIELDITEM_PERMISSION";
      
      public static const INVENTORY_BAG_TYPE_IMPROVEMENT:String = "PLAYFIELDITEM_IMPROVEMENT";
      
      public static const INVENTORY_BAG_TYPE_PLAYFIELDITEM:String = "PLAYFIELDITEM";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         NAME = "InventoryProxy";
         if(_loc2_)
         {
            INVENTORY_BAG_TYPE_GOOD = "GOOD";
            if(!(_loc1_ && _loc1_))
            {
               addr004c:
               INVENTORY_BAG_TYPE_PERMISSION = "PLAYFIELDITEM_PERMISSION";
               if(!_loc1_)
               {
                  INVENTORY_BAG_TYPE_IMPROVEMENT = "PLAYFIELDITEM_IMPROVEMENT";
                  if(_loc2_ || _loc1_)
                  {
                     addr0072:
                     INVENTORY_BAG_TYPE_PLAYFIELDITEM = "PLAYFIELDITEM";
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0072);
            }
         }
         addr007b:
         return;
      }
      §§goto(addr004c);
      
      private var _inventoryBags:Vector.<InventoryItemBagVo>;
      
      private var _inventoryGoods:Dictionary;
      
      private var _inventoryPermissions:Dictionary;
      
      private var _inventoryImprovements:Dictionary;
      
      private var _inventoryPlayfieldItems:Dictionary;
      
      private var _inventoryDataBuilt:Boolean;
      
      private var _plaP:PlayerProxy;
      
      private var _coP:GameConfigProxy;
      
      public function InventoryProxy()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super(NAME);
         }
      }
      
      private static function getItemBagTypeByDTO(param1:InventoryItemDTO) : String
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            §§push(Boolean(param1.buildingDTO));
            if(!(_loc3_ && InventoryProxy))
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(!_temp_3)
               {
                  if(!_loc3_)
                  {
                     §§pop();
                     if(_loc2_)
                     {
                        §§goto(addr0047);
                     }
                     §§goto(addr0058);
                  }
               }
            }
            addr0047:
            if(Boolean(param1.decorationVo))
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr0058:
                  §§push(INVENTORY_BAG_TYPE_PLAYFIELDITEM);
                  if(_loc2_ || InventoryProxy)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  §§goto(addr0078);
               }
               §§goto(addr00e1);
            }
            addr0078:
            if(param1.goodDTO)
            {
               if(!(_loc3_ && _loc3_))
               {
                  §§push(INVENTORY_BAG_TYPE_GOOD);
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
                  §§goto(addr00e1);
               }
            }
            else
            {
               if(param1.permissionDTO)
               {
                  if(_loc2_ || _loc3_)
                  {
                     §§push(INVENTORY_BAG_TYPE_PERMISSION);
                     if(!(_loc3_ && _loc3_))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     §§goto(addr00d1);
                  }
                  §§goto(addr00e1);
               }
               addr00d1:
               §§goto(addr00e2);
            }
            §§goto(addr00e2);
         }
         addr00e2:
         if(param1.improvementDTO)
         {
            if(!_loc3_)
            {
               addr00e1:
               return §§pop();
               §§push(INVENTORY_BAG_TYPE_IMPROVEMENT);
            }
         }
         return "";
      }
      
      public function buildInventoryData() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            this.buildInventoryBags();
            if(_loc1_ || _loc2_)
            {
               this.buildInventoryItems(INVENTORY_BAG_TYPE_GOOD);
               if(_loc1_)
               {
                  this.buildInventoryItems(INVENTORY_BAG_TYPE_PERMISSION);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     this.buildInventoryItems(INVENTORY_BAG_TYPE_IMPROVEMENT);
                     if(_loc1_)
                     {
                        §§goto(addr0069);
                     }
                     §§goto(addr00ae);
                  }
                  addr0069:
                  this.buildInventoryItems(INVENTORY_BAG_TYPE_PLAYFIELDITEM);
                  if(!(_loc2_ && _loc2_))
                  {
                     if(!this._inventoryDataBuilt)
                     {
                        if(_loc1_)
                        {
                           sendNotification(ApplicationNotificationConstants.SEND_GOODTOOLTIPS_TO_PHP);
                           if(_loc1_ || Boolean(this))
                           {
                              addr00ae:
                              this._inventoryDataBuilt = true;
                           }
                           §§goto(addr00b4);
                        }
                     }
                     §§goto(addr00ae);
                  }
                  §§goto(addr00b4);
               }
               §§goto(addr00ae);
            }
            addr00b4:
            return;
         }
         §§goto(addr00ae);
      }
      
      public function updateInventoryItem(param1:InventoryItemDTO) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:InventoryItemVo = new InventoryItemVo(param1,getItemBagTypeByDTO(param1));
         if(_loc4_)
         {
            this.updateSpecificInventoryItem(_loc2_);
         }
      }
      
      public function updateInventoryBagSlotCount(param1:Number, param2:Number) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:InventoryItemBagVo = this.getInventoryBagByConfigId(param1);
         if(!_loc4_)
         {
            if(_loc3_)
            {
               if(!(_loc4_ && Boolean(param2)))
               {
                  _loc3_.dto.slots = param2;
                  if(_loc5_)
                  {
                     addr0053:
                     sendNotification(ApplicationNotificationConstants.INVENTORY_BAGS_CHANGED);
                  }
                  §§goto(addr005e);
               }
               §§goto(addr0053);
            }
         }
         addr005e:
      }
      
      public function get inventoryGoods() : Dictionary
      {
         return this._inventoryGoods;
      }
      
      public function get inventoryPermissions() : Dictionary
      {
         return this._inventoryPermissions;
      }
      
      public function get inventoryImprovements() : Dictionary
      {
         return this._inventoryImprovements;
      }
      
      public function get inventoryPlayfieldItems() : Dictionary
      {
         return this._inventoryPlayfieldItems;
      }
      
      public function getInventoryBagsByType(param1:String) : Vector.<InventoryItemBagVo>
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:InventoryItemBagVo = null;
         var _loc2_:Vector.<InventoryItemBagVo> = new Vector.<InventoryItemBagVo>();
         for each(_loc3_ in this.inventoryBags)
         {
            if(!(_loc6_ && Boolean(_loc3_)))
            {
               if(_loc3_.bagType == param1)
               {
                  if(!_loc6_)
                  {
                     _loc2_.push(_loc3_);
                  }
               }
            }
         }
         return _loc2_;
      }
      
      private function buildInventoryBags() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc1_:ConfigInventoryBagDTO = null;
         var _loc2_:InventoryItemBagDTO = null;
         if(_loc5_)
         {
            this._inventoryBags = new Vector.<InventoryItemBagVo>();
         }
         for each(_loc2_ in this.inventory.bags)
         {
            _loc1_ = this.getBagConfig(_loc2_.configId);
            if(_loc5_ || Boolean(_loc1_))
            {
               if(_loc1_.initialSlots <= 0)
               {
                  continue;
               }
               if(_loc6_ && Boolean(_loc2_))
               {
                  continue;
               }
            }
            this._inventoryBags.push(new InventoryItemBagVo(_loc2_,_loc1_));
         }
      }
      
      private function buildInventoryItems(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = _temp_1;
         var _loc2_:Dictionary = null;
         var _loc5_:InventoryItemVo = null;
         var _loc6_:InventoryItemBagVo = null;
         var _loc7_:InventoryItemVo = null;
         var _loc8_:InventoryItemDTO = null;
         var _loc3_:Vector.<InventoryItemVo> = new Vector.<InventoryItemVo>();
         var _loc9_:* = param1;
         if(!_loc13_)
         {
            §§push(INVENTORY_BAG_TYPE_GOOD);
            if(_loc14_ || Boolean(_loc2_))
            {
               §§push(_loc9_);
               if(_loc14_ || Boolean(_loc2_))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc13_)
                     {
                        §§push(0);
                        if(_loc14_ || Boolean(_loc3_))
                        {
                        }
                     }
                     else
                     {
                        addr0149:
                        §§push(1);
                        if(_loc13_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(INVENTORY_BAG_TYPE_IMPROVEMENT);
                     if(!(_loc13_ && Boolean(_loc3_)))
                     {
                        §§push(_loc9_);
                        if(_loc14_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc13_ && Boolean(_loc3_)))
                              {
                                 §§goto(addr0149);
                              }
                              else
                              {
                                 addr017d:
                                 §§push(2);
                                 if(_loc14_ || Boolean(_loc2_))
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(INVENTORY_BAG_TYPE_PERMISSION);
                              if(!_loc13_)
                              {
                                 addr016b:
                                 §§push(_loc9_);
                                 if(_loc14_)
                                 {
                                    addr0173:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc13_)
                                       {
                                          §§goto(addr017d);
                                       }
                                       else
                                       {
                                          addr019a:
                                          §§push(3);
                                          if(_loc13_)
                                          {
                                          }
                                       }
                                       §§goto(addr01b2);
                                    }
                                    else
                                    {
                                       §§goto(addr0196);
                                    }
                                 }
                                 addr0196:
                                 §§goto(addr0194);
                              }
                              addr0194:
                              if(INVENTORY_BAG_TYPE_PLAYFIELDITEM === _loc9_)
                              {
                                 §§goto(addr019a);
                              }
                              else
                              {
                                 §§push(4);
                              }
                              §§goto(addr01b2);
                           }
                           §§goto(addr01b2);
                        }
                        §§goto(addr0173);
                     }
                     §§goto(addr016b);
                  }
                  addr01b2:
                  switch(§§pop())
                  {
                     case 0:
                        this._inventoryGoods = new Dictionary();
                        if(!(_loc13_ && Boolean(_loc3_)))
                        {
                           _loc2_ = this._inventoryGoods;
                           if(!(_loc13_ && Boolean(_loc3_)))
                           {
                              break;
                           }
                           addr0080:
                           _loc2_ = this._inventoryImprovements;
                           if(_loc14_ || Boolean(_loc2_))
                           {
                              break;
                           }
                           addr00a3:
                           _loc2_ = this._inventoryPermissions;
                           if(!(_loc13_ && Boolean(this)))
                           {
                              break;
                           }
                           addr00c6:
                           _loc2_ = this._inventoryPlayfieldItems;
                        }
                        break;
                     case 1:
                        this._inventoryImprovements = new Dictionary();
                        §§goto(addr0080);
                     case 2:
                        this._inventoryPermissions = new Dictionary();
                        §§goto(addr00a3);
                     case 3:
                        this._inventoryPlayfieldItems = new Dictionary();
                        §§goto(addr00c6);
                  }
                  var _loc4_:Vector.<InventoryItemBagVo> = this.getInventoryBagsByType(param1);
                  if(!_loc13_)
                  {
                     §§push(0);
                     if(_loc14_ || Boolean(_loc2_))
                     {
                        _loc9_ = §§pop();
                        if(!_loc13_)
                        {
                           var _loc10_:* = _loc4_;
                           while(true)
                           {
                              §§push(§§hasnext(_loc10_,_loc9_));
                              if(!_loc13_)
                              {
                                 if(§§pop())
                                 {
                                    _loc6_ = §§nextvalue(_loc9_,_loc10_);
                                    if(!(_loc13_ && Boolean(param1)))
                                    {
                                       var _loc11_:int = 0;
                                       if(!_loc13_)
                                       {
                                          for each(_loc8_ in _loc6_.bagItems)
                                          {
                                             _loc5_ = new InventoryItemVo(_loc8_,_loc6_.bagType);
                                             if(_loc14_ || Boolean(this))
                                             {
                                                if(!_loc8_.shouldBeRemoved)
                                                {
                                                   if(!_loc13_)
                                                   {
                                                      _loc2_[_loc5_.itemId] = _loc5_;
                                                      if(_loc13_ && Boolean(_loc2_))
                                                      {
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   _loc3_.push(_loc5_);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    continue;
                                 }
                                 if(_loc14_ || Boolean(_loc2_))
                                 {
                                    if(_loc14_ || Boolean(_loc2_))
                                    {
                                       §§goto(addr02bd);
                                    }
                                    §§goto(addr030f);
                                 }
                                 §§goto(addr030d);
                              }
                              §§goto(addr0309);
                           }
                        }
                        addr02bd:
                        if(!_loc13_)
                        {
                           addr02c7:
                           _loc9_ = 0;
                           if(!_loc13_)
                           {
                              _loc10_ = _loc3_;
                              loop3:
                              while(true)
                              {
                                 §§push(§§hasnext(_loc10_,_loc9_));
                                 addr0309:
                                 while(§§pop())
                                 {
                                    _loc7_ = §§nextvalue(_loc9_,_loc10_);
                                    if(!(_loc13_ && Boolean(this)))
                                    {
                                       this.deleteItemFromModel(_loc7_,param1);
                                    }
                                    continue loop3;
                                 }
                                 addr030d:
                              }
                           }
                           addr030f:
                        }
                        §§goto(addr0311);
                     }
                     §§goto(addr02c7);
                  }
                  addr0311:
                  return;
               }
               §§goto(addr0196);
            }
            §§goto(addr016b);
         }
         §§goto(addr017d);
      }
      
      private function get inventoryBags() : Vector.<InventoryItemBagVo>
      {
         return this._inventoryBags;
      }
      
      private function getInventoryBagByConfigId(param1:Number) : InventoryItemBagVo
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:InventoryItemBagVo = null;
         var _loc3_:int = 0;
         for each(_loc2_ in this.inventoryBags)
         {
            if(!(_loc5_ && Boolean(_loc3_)))
            {
               if(_loc2_.config.id == param1)
               {
                  if(_loc6_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      private function get inventory() : InventoryDTO
      {
         return this.playerProxy.player.inventory;
      }
      
      private function getBagConfig(param1:Number) : ConfigInventoryBagDTO
      {
         return this.inventoryConfig.configInventoryBags[param1];
      }
      
      private function get inventoryConfig() : ConfigInventoryDTO
      {
         return this.configProxy.config.inventories[this.inventory.configId];
      }
      
      private function updateSpecificInventoryItem(param1:InventoryItemVo) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:Dictionary = null;
         §§push(param1.bagType);
         loop0:
         while(true)
         {
            var _loc5_:* = §§pop();
            if(!(_loc6_ && Boolean(this)))
            {
               §§push(INVENTORY_BAG_TYPE_GOOD);
               if(!(_loc6_ && Boolean(_loc3_)))
               {
                  §§push(_loc5_);
                  if(_loc7_ || Boolean(this))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc6_)
                        {
                           §§push(0);
                           if(_loc7_ || Boolean(this))
                           {
                           }
                        }
                        else
                        {
                           addr016a:
                           §§push(1);
                           if(_loc6_ && Boolean(_loc3_))
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(INVENTORY_BAG_TYPE_IMPROVEMENT);
                        if(!(_loc6_ && Boolean(_loc2_)))
                        {
                           §§push(_loc5_);
                           if(_loc7_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    §§goto(addr016a);
                                 }
                                 else
                                 {
                                    addr01a1:
                                    §§push(2);
                                    if(_loc6_)
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(INVENTORY_BAG_TYPE_PERMISSION);
                                 if(!_loc6_)
                                 {
                                    addr0187:
                                    §§push(_loc5_);
                                    if(!_loc6_)
                                    {
                                       addr018f:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc6_ && Boolean(this)))
                                          {
                                             §§goto(addr01a1);
                                          }
                                          else
                                          {
                                             addr01b6:
                                             §§push(3);
                                             if(_loc7_)
                                             {
                                             }
                                          }
                                          addr01ce:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                §§push(ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED);
                                                if(!(_loc6_ && Boolean(param1)))
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc7_)
                                                   {
                                                      continue;
                                                   }
                                                }
                                                _loc2_ = §§pop();
                                                if(!(_loc6_ && Boolean(this)))
                                                {
                                                   _loc4_ = this.inventoryGoods;
                                                   if(!_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   addr0294:
                                                   addr0295:
                                                   if(_loc2_)
                                                   {
                                                      if(!(_loc6_ && Boolean(_loc2_)))
                                                      {
                                                         addr02a7:
                                                         sendNotification(_loc2_,_loc3_);
                                                      }
                                                   }
                                                   break loop0;
                                                }
                                                break;
                                             case 1:
                                                §§push(ApplicationNotificationConstants.INVENTORY_IMPROVEMENTS_CHANGED);
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc6_ && Boolean(this)))
                                                   {
                                                      addr007c:
                                                      _loc2_ = §§pop();
                                                      if(!(_loc6_ && Boolean(this)))
                                                      {
                                                         _loc4_ = this.inventoryImprovements;
                                                         if(!_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         addr00ab:
                                                         _loc3_ = param1.permissionDTO;
                                                         _loc4_ = this.inventoryPermissions;
                                                         if(_loc7_)
                                                         {
                                                            break;
                                                         }
                                                         addr00d4:
                                                         _loc4_ = this.inventoryPlayfieldItems;
                                                         break;
                                                      }
                                                      §§goto(addr0294);
                                                   }
                                                   §§goto(addr0295);
                                                }
                                                §§goto(addr007c);
                                             case 2:
                                                §§push(ApplicationNotificationConstants.INVENTORY_PERMISSIONS_CHANGED);
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop());
                                                }
                                                _loc2_ = §§pop();
                                                §§goto(addr00ab);
                                             case 3:
                                                §§push(ApplicationNotificationConstants.INVENTORY_PLAYFIELDITEMS_CHANGED);
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop());
                                                }
                                                _loc2_ = §§pop();
                                                §§goto(addr00d4);
                                          }
                                          if(_loc4_)
                                          {
                                             if(!(_loc6_ && Boolean(param1)))
                                             {
                                                §§push(param1.deleteMe);
                                                if(!(_loc6_ && Boolean(_loc2_)))
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc6_ && Boolean(param1)))
                                                      {
                                                         if(_loc4_[param1.itemId])
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               addr0239:
                                                               delete _loc4_[param1.itemId];
                                                               if(!_loc6_)
                                                               {
                                                                  addr0240:
                                                                  this.deleteItemFromModel(param1,param1.bagType);
                                                                  if(_loc6_ && Boolean(_loc3_))
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               §§goto(addr0294);
                                                            }
                                                         }
                                                         §§goto(addr0240);
                                                      }
                                                      §§goto(addr0294);
                                                   }
                                                   else
                                                   {
                                                      _loc4_[param1.itemId] = param1;
                                                      if(_loc7_)
                                                      {
                                                         this.updateItemInModel(param1,param1.bagType);
                                                         if(_loc7_ || Boolean(_loc2_))
                                                         {
                                                            §§goto(addr0294);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr02a7);
                                                }
                                                §§goto(addr0239);
                                             }
                                             §§goto(addr02a7);
                                          }
                                          §§goto(addr0294);
                                       }
                                       else
                                       {
                                          addr01b2:
                                          addr01b0:
                                          if(INVENTORY_BAG_TYPE_PLAYFIELDITEM === _loc5_)
                                          {
                                             §§goto(addr01b6);
                                          }
                                          else
                                          {
                                             §§push(4);
                                          }
                                          §§goto(addr01ce);
                                       }
                                    }
                                    §§goto(addr01b2);
                                 }
                                 §§goto(addr01b0);
                              }
                              §§goto(addr01ce);
                           }
                           §§goto(addr018f);
                        }
                        §§goto(addr0187);
                     }
                     §§goto(addr01ce);
                  }
                  §§goto(addr018f);
               }
               §§goto(addr01b0);
            }
            §§goto(addr01a1);
         }
      }
      
      private function deleteItemFromModel(param1:InventoryItemVo, param2:String) : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc3_:InventoryItemBagVo = null;
         var _loc4_:InventoryItemDTO = null;
         var _loc5_:* = 0;
         for each(_loc3_ in this.getInventoryBagsByType(param2))
         {
            if(_loc10_)
            {
               if(_loc3_.config.id != param1.dto.id)
               {
                  continue;
               }
            }
            for each(_loc4_ in _loc3_.bagItems)
            {
               if(_loc4_.itemId != param1.itemId)
               {
                  continue;
               }
               if(!(_loc11_ && Boolean(param2)))
               {
                  §§push(int(_loc3_.bagItems.indexOf(_loc4_)));
                  if(_loc10_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     §§push(_temp_3);
                     if(_loc10_)
                     {
                        _loc5_ = §§pop();
                        addr00ae:
                        §§push(-1);
                     }
                     if(§§pop() != §§pop())
                     {
                        if(!(_loc11_ && Boolean(_loc3_)))
                        {
                           addr00ce:
                           _loc3_.bagItems.splice(_loc5_,1);
                        }
                        break;
                     }
                     continue;
                  }
                  §§goto(addr00ae);
               }
               §§goto(addr00ce);
            }
            break;
         }
      }
      
      private function updateItemInModel(param1:InventoryItemVo, param2:String) : void
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc4_:InventoryItemBagVo = null;
         var _loc5_:InventoryItemDTO = null;
         var _loc6_:* = 0;
         var _loc3_:Boolean = false;
         for each(_loc4_ in this.getInventoryBagsByType(param2))
         {
            if(_loc4_.config.id == param1.dto.id)
            {
               for each(_loc5_ in _loc4_.bagItems)
               {
                  if(_loc5_.itemId != param1.itemId)
                  {
                     continue;
                  }
                  if(_loc11_)
                  {
                     §§push(int(_loc4_.bagItems.indexOf(_loc5_)));
                     if(_loc11_)
                     {
                        var _temp_3:* = §§pop();
                        §§push(_temp_3);
                        §§push(_temp_3);
                        if(_loc11_ || Boolean(param1))
                        {
                           _loc6_ = §§pop();
                           addr00b1:
                           §§push(-1);
                        }
                        if(§§pop() != §§pop())
                        {
                           if(!(_loc12_ && Boolean(param1)))
                           {
                              _loc4_.bagItems[_loc6_] = param1.dto;
                              if(_loc12_ && Boolean(param2))
                              {
                                 break;
                              }
                           }
                           addr00ef:
                           _loc3_ = true;
                           break;
                        }
                        continue;
                     }
                     §§goto(addr00b1);
                  }
                  §§goto(addr00ef);
               }
               if(!_loc12_)
               {
                  if(!_loc3_)
                  {
                     if(_loc11_)
                     {
                        _loc4_.bagItems.push(param1.dto);
                     }
                  }
               }
               break;
            }
         }
      }
      
      private function get playerProxy() : PlayerProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            §§push(this._plaP);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     addr0039:
                     this._plaP = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
                  }
               }
               return this._plaP;
            }
         }
         §§goto(addr0039);
      }
      
      private function get configProxy() : GameConfigProxy
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            §§push(this._coP);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc1_ || Boolean(this))
                  {
                     this._coP = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                  }
               }
               addr0051:
               return this._coP;
            }
         }
         §§goto(addr0051);
      }
   }
}

