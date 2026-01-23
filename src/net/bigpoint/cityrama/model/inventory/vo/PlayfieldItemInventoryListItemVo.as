package net.bigpoint.cityrama.model.inventory.vo
{
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.components.PlayfieldItemInventorySlotComponent;
   
   public class PlayfieldItemInventoryListItemVo
   {
      
      private var _configBagId:Number;
      
      private var _item:InventoryPlayfieldItemVo;
      
      private var _slotPrice:Number = -1;
      
      private var _currentRCStock:Number = 0;
      
      private var _disabledAlpha:Number;
      
      private var _itemAtCursor:InventoryPlayfieldItemVo;
      
      private var _emergencyRunning:Boolean;
      
      public function PlayfieldItemInventoryListItemVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public function set item(param1:InventoryPlayfieldItemVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._item = param1;
         }
      }
      
      public function set disabledAlpha(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._disabledAlpha = param1;
         }
      }
      
      public function set slotPrice(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._slotPrice = param1;
         }
      }
      
      public function get slotPrice() : Number
      {
         return this._slotPrice;
      }
      
      public function get disabledAlpha() : Number
      {
         return this._disabledAlpha;
      }
      
      public function get item() : InventoryPlayfieldItemVo
      {
         return this._item;
      }
      
      public function get slotState() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.isEmpty);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr0028:
                     §§push(PlayfieldItemInventorySlotComponent.STATE_SLOT_FREE);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr0086:
                     §§push(this.isOccupied);
                     if(!_loc2_)
                     {
                        addr0090:
                        if(§§pop())
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(PlayfieldItemInventorySlotComponent.STATE_SLOT_OCCUPIED);
                              if(!(_loc2_ && _loc1_))
                              {
                                 return §§pop();
                              }
                           }
                           else
                           {
                              addr00d9:
                              §§push(PlayfieldItemInventorySlotComponent.STATE_SLOT_LOCKED);
                           }
                           §§goto(addr00df);
                        }
                        else
                        {
                           §§goto(addr00d0);
                        }
                     }
                     addr00d0:
                     §§goto(addr00cc);
                  }
                  §§goto(addr00df);
               }
               else
               {
                  §§push(this.isPurchaseSlot);
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0052:
                     if(§§pop())
                     {
                        if(!_loc1_)
                        {
                           addr00cc:
                           if(this.isLocked)
                           {
                              if(_loc1_)
                              {
                                 §§goto(addr00d9);
                              }
                           }
                           return "";
                        }
                        §§push(PlayfieldItemInventorySlotComponent.STATE_SLOT_PURCHASABLE);
                        if(_loc1_ || _loc2_)
                        {
                           return §§pop();
                        }
                        addr00df:
                        return §§pop();
                     }
                     §§goto(addr0086);
                     §§goto(addr00d0);
                  }
               }
               §§goto(addr0090);
            }
            §§goto(addr0052);
         }
         §§goto(addr0028);
      }
      
      public function get purchaseSlotEnabled() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.slotState == PlayfieldItemInventorySlotComponent.STATE_SLOT_PURCHASABLE);
            if(_loc1_ || _loc2_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(_temp_2)
               {
                  if(_loc1_)
                  {
                     §§pop();
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr004f:
                        §§push(this.disabledAlpha == 1);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr006d:
                           if(§§pop())
                           {
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§push(true);
                                 if(!_loc2_)
                                 {
                                    §§goto(addr0084);
                                 }
                              }
                              else
                              {
                                 addr0085:
                                 §§push(false);
                              }
                              §§goto(addr0086);
                           }
                           §§goto(addr0085);
                        }
                        §§goto(addr0086);
                     }
                     §§goto(addr0085);
                  }
                  addr0086:
                  return §§pop();
               }
               §§goto(addr006d);
            }
            addr0084:
            return §§pop();
         }
         §§goto(addr004f);
      }
      
      public function get configBagId() : Number
      {
         return this._configBagId;
      }
      
      public function set configBagId(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._configBagId = param1;
         }
      }
      
      public function get currentRCStock() : Number
      {
         return this._currentRCStock;
      }
      
      public function set currentRCStock(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._currentRCStock = param1;
         }
      }
      
      private function get isOccupied() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(Boolean(this._item));
            if(_loc1_ || _loc1_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(_temp_2)
               {
                  if(_loc1_)
                  {
                     §§pop();
                     if(!_loc2_)
                     {
                        addr0041:
                        §§push(this.isLocked);
                        if(!_loc2_)
                        {
                           §§push(!§§pop());
                           if(_loc1_ || _loc1_)
                           {
                              addr0062:
                              if(§§pop())
                              {
                                 if(_loc1_ || _loc2_)
                                 {
                                    §§push(true);
                                    if(_loc1_ || _loc2_)
                                    {
                                       §§goto(addr0081);
                                    }
                                 }
                                 else
                                 {
                                    addr0082:
                                    §§push(false);
                                 }
                                 §§goto(addr0083);
                              }
                              §§goto(addr0082);
                           }
                           §§goto(addr0083);
                        }
                        §§goto(addr0081);
                     }
                     §§goto(addr0082);
                  }
                  addr0083:
                  return §§pop();
               }
               §§goto(addr0062);
            }
            addr0081:
            return §§pop();
         }
         §§goto(addr0041);
      }
      
      private function get isLocked() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._item);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr0035:
                     addr0031:
                     §§push(this._item.canBePlacedOnCurrentPlayfield);
                     if(!_loc2_)
                     {
                        §§push(!§§pop());
                        if(!_loc2_)
                        {
                           return §§pop();
                        }
                     }
                  }
                  else
                  {
                     addr0044:
                     return false;
                  }
                  return §§pop();
               }
               §§goto(addr0044);
            }
            §§goto(addr0035);
         }
         §§goto(addr0031);
      }
      
      private function get isPurchaseSlot() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(this._slotPrice == -1);
         if(_loc2_ || _loc1_)
         {
            return !§§pop();
         }
      }
      
      private function get isEmpty() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.isLocked);
            if(_loc1_)
            {
               §§push(!§§pop());
               if(!_loc2_)
               {
                  var _temp_1:* = §§pop();
                  §§push(_temp_1);
                  §§push(_temp_1);
                  if(!(_loc2_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        if(_loc1_)
                        {
                           §§pop();
                           if(!_loc2_)
                           {
                              §§push(this.isOccupied);
                              if(_loc1_)
                              {
                                 §§push(!§§pop());
                                 if(_loc1_)
                                 {
                                    §§goto(addr0065);
                                 }
                                 §§goto(addr0089);
                              }
                              addr0065:
                              var _temp_3:* = §§pop();
                              addr0066:
                              §§push(_temp_3);
                              if(_temp_3)
                              {
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    addr0077:
                                    §§pop();
                                    §§goto(addr008a);
                                 }
                                 §§goto(addr0089);
                              }
                              addr008a:
                           }
                           §§goto(addr0078);
                        }
                        §§goto(addr0077);
                     }
                     §§goto(addr0065);
                  }
                  §§goto(addr0066);
               }
               §§goto(addr0077);
            }
            §§goto(addr0089);
         }
         addr0078:
         §§push(this.isPurchaseSlot);
         if(_loc1_ || _loc2_)
         {
            addr0089:
            return !§§pop();
         }
      }
      
      public function get itemAtCursor() : InventoryPlayfieldItemVo
      {
         return this._itemAtCursor;
      }
      
      public function set itemAtCursor(param1:InventoryPlayfieldItemVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._itemAtCursor = param1;
         }
      }
      
      public function get emergencyRunning() : Boolean
      {
         return this._emergencyRunning;
      }
      
      public function set emergencyRunning(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._emergencyRunning = param1;
         }
      }
   }
}

