package net.bigpoint.cityrama.model.inventory.vo
{
   import flash.utils.Dictionary;
   import mx.collections.ArrayCollection;
   import mx.collections.IList;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.inventory.PlayfieldItemInventoryViewProxy;
   import net.bigpoint.util.LocaUtils;
   
   public class PlayfieldItemInventoryViewVo
   {
      
      public static const VALID_SORT_TYPES:Vector.<String>;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc2_)
      {
         VALID_SORT_TYPES = new <String>[ServerTagConstants.RESIDENTIAL,ServerTagConstants.SHOP,ServerTagConstants.DECORATION,PlayfieldItemInventoryViewProxy.CATEGORY_EMERGENCY_INVENTORY];
      }
      
      private var _bags:Vector.<PlayfieldItemInventoryBagVo>;
      
      private var _realCurrencyStock:Number = 0;
      
      private var _emergencyRunning:Boolean;
      
      private var _sortedDict:Dictionary;
      
      private var _minimized:Boolean;
      
      private var _preselectedIndex:int = -1;
      
      public function PlayfieldItemInventoryViewVo()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function set minimized(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && param1))
         {
            this._minimized = param1;
         }
      }
      
      public function set bags(param1:Vector.<PlayfieldItemInventoryBagVo>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._bags = param1;
            if(!_loc3_)
            {
               addr0023:
               this._sortedDict = new Dictionary();
            }
            return;
         }
         §§goto(addr0023);
      }
      
      public function set realCurrencyStock(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._realCurrencyStock = param1;
         }
      }
      
      public function getSortedItemList(param1:String) : IList
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc2_:PlayfieldItemInventoryBagVo = null;
         var _loc3_:ArrayCollection = null;
         var _loc4_:PlayfieldItemInventoryListItemVo = null;
         var _loc5_:InventoryPlayfieldItemVo = null;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         if(!(_loc11_ && Boolean(param1)))
         {
            if(VALID_SORT_TYPES.indexOf(param1) == -1)
            {
               if(_loc12_)
               {
                  throw new ArgumentError("PlayfieldItemInventoryViewVo::Sort type not valid");
               }
               addr007e:
               _loc2_ = this.getRelevantBag(param1);
               if(_loc12_ || Boolean(param1))
               {
                  if(_loc2_)
                  {
                     addr009b:
                     _loc3_ = new ArrayCollection();
                     for each(_loc5_ in _loc2_.inventoryItems)
                     {
                        _loc4_ = new PlayfieldItemInventoryListItemVo();
                        _loc4_.configBagId = _loc2_.source.config.id;
                        if(!_loc11_)
                        {
                           _loc4_.item = _loc5_;
                           if(!_loc11_)
                           {
                              addr00e8:
                              _loc4_.emergencyRunning = this._emergencyRunning;
                              if(_loc11_)
                              {
                                 continue;
                              }
                           }
                           _loc3_.addItem(_loc4_);
                           continue;
                        }
                        §§goto(addr00e8);
                     }
                     if(!(_loc11_ && Boolean(param1)))
                     {
                        §§push(0);
                        if(_loc12_ || Boolean(_loc2_))
                        {
                           _loc6_ = §§pop();
                           if(_loc12_)
                           {
                              while(true)
                              {
                                 §§push(_loc6_);
                                 if(!(_loc11_ && Boolean(_loc3_)))
                                 {
                                    §§push(_loc2_.emptySlotCount);
                                    if(_loc12_ || Boolean(_loc2_))
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          _loc4_ = new PlayfieldItemInventoryListItemVo();
                                          _loc4_.configBagId = _loc2_.source.config.id;
                                          if(_loc12_ || Boolean(_loc3_))
                                          {
                                             _loc3_.addItem(_loc4_);
                                             if(!(_loc11_ && Boolean(_loc3_)))
                                             {
                                                _loc6_++;
                                             }
                                          }
                                          continue;
                                       }
                                       if(!_loc11_)
                                       {
                                          §§push(_loc2_.purchasableSlotPrices.length > 0);
                                          if(_loc12_ || Boolean(_loc2_))
                                          {
                                             var _temp_10:* = §§pop();
                                             §§push(_temp_10);
                                             if(_temp_10)
                                             {
                                                if(_loc12_)
                                                {
                                                   §§pop();
                                                   if(!_loc11_)
                                                   {
                                                      addr01e8:
                                                      addr01d5:
                                                      §§push(_loc2_.purchasableSlotPrices[0] == 0);
                                                      if(_loc12_)
                                                      {
                                                         addr01e7:
                                                         §§push(!§§pop());
                                                      }
                                                      if(§§pop())
                                                      {
                                                         if(_loc12_)
                                                         {
                                                            §§push(0);
                                                            if(!_loc11_)
                                                            {
                                                               addr01fa:
                                                               _loc7_ = §§pop();
                                                               if(_loc12_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc7_);
                                                                     if(!_loc11_)
                                                                     {
                                                                        if(§§pop() >= _loc2_.purchasableSlotPrices.length)
                                                                        {
                                                                           if(!_loc11_)
                                                                           {
                                                                              break;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           _loc4_ = new PlayfieldItemInventoryListItemVo();
                                                                           _loc4_.currentRCStock = this.realCurrencyStock;
                                                                           if(_loc12_)
                                                                           {
                                                                              _loc4_.configBagId = _loc2_.source.config.id;
                                                                              if(!_loc11_)
                                                                              {
                                                                                 addr0234:
                                                                                 _loc4_.slotPrice = _loc2_.purchasableSlotPrices[_loc7_];
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 _loc4_.disabledAlpha = 1;
                                                                                 if(_loc12_ || Boolean(_loc2_))
                                                                                 {
                                                                                    if(_loc7_ > 0)
                                                                                    {
                                                                                       if(_loc12_ || Boolean(_loc2_))
                                                                                       {
                                                                                          addr0273:
                                                                                          §§push(_loc4_);
                                                                                          §§push(6 - _loc7_);
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             §§push(§§pop() / 10);
                                                                                          }
                                                                                          §§pop().disabledAlpha = §§pop();
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             addr028c:
                                                                                             _loc3_.addItem(_loc4_);
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                          }
                                                                                          _loc7_++;
                                                                                          continue;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr028c);
                                                                              }
                                                                              §§goto(addr0273);
                                                                           }
                                                                           §§goto(addr0234);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr02d1:
                                                                        _loc8_ = §§pop();
                                                                        if(!_loc12_)
                                                                        {
                                                                           break;
                                                                        }
                                                                     }
                                                                  }
                                                                  addr0358:
                                                                  this._sortedDict[param1] = _loc3_;
                                                                  addr0361:
                                                                  return this._sortedDict[param1];
                                                                  addr029b:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc8_);
                                                                  addr034c:
                                                                  loop4:
                                                                  while(true)
                                                                  {
                                                                     §§push(5);
                                                                     addr034e:
                                                                     while(§§pop() < §§pop())
                                                                     {
                                                                        _loc4_ = new PlayfieldItemInventoryListItemVo();
                                                                        _loc4_.configBagId = _loc2_.source.config.id;
                                                                        if(!(_loc11_ && Boolean(param1)))
                                                                        {
                                                                           §§push(_loc4_);
                                                                           §§push(6 - _loc8_);
                                                                           if(!(_loc11_ && Boolean(this)))
                                                                           {
                                                                              §§push(§§pop() / 10);
                                                                           }
                                                                           §§pop().disabledAlpha = §§pop();
                                                                           if(_loc11_)
                                                                           {
                                                                              break loop4;
                                                                           }
                                                                        }
                                                                        _loc3_.addItem(_loc4_);
                                                                        if(_loc12_ || Boolean(param1))
                                                                        {
                                                                           _loc8_++;
                                                                        }
                                                                        break loop4;
                                                                     }
                                                                     if(_loc12_)
                                                                     {
                                                                        §§goto(addr0358);
                                                                     }
                                                                     §§goto(addr0361);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr02d1);
                                                         }
                                                         else
                                                         {
                                                            addr02c9:
                                                            §§push(1);
                                                            if(!_loc11_)
                                                            {
                                                               §§goto(addr02d1);
                                                            }
                                                         }
                                                         §§goto(addr034c);
                                                      }
                                                      else if(_loc2_.purchasableSlotPrices.length > 0)
                                                      {
                                                         if(!_loc11_)
                                                         {
                                                            §§goto(addr02c9);
                                                         }
                                                      }
                                                      §§goto(addr0358);
                                                   }
                                                   §§goto(addr0361);
                                                }
                                                §§goto(addr01e7);
                                             }
                                          }
                                          §§goto(addr01e8);
                                       }
                                       §§goto(addr0358);
                                    }
                                    §§goto(addr034e);
                                 }
                                 §§goto(addr02d1);
                              }
                           }
                           §§goto(addr029b);
                        }
                        §§goto(addr01fa);
                     }
                     §§goto(addr01d5);
                  }
                  §§goto(addr0361);
               }
               §§goto(addr009b);
            }
            else if(!this._sortedDict[param1])
            {
               §§goto(addr007e);
            }
            §§goto(addr0361);
         }
         §§goto(addr007e);
      }
      
      public function getCategoryAmountLabel(param1:String) : String
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(this))
         {
            if(VALID_SORT_TYPES.indexOf(param1) == -1)
            {
               if(_loc3_)
               {
                  throw new ArgumentError("PlayfieldItemInventoryViewVo::Sort type not valid");
               }
            }
         }
         var _loc2_:PlayfieldItemInventoryBagVo = this.getRelevantBag(param1);
         if(_loc3_)
         {
            if(_loc2_)
            {
               if(_loc3_)
               {
                  return LocaUtils.getThousendSeperatedNumber(_loc2_.inventoryItems.length);
               }
            }
         }
         return "";
      }
      
      private function getRelevantBag(param1:String) : PlayfieldItemInventoryBagVo
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:PlayfieldItemInventoryBagVo = null;
         for each(_loc2_ in this._bags)
         {
            if(!_loc6_)
            {
               if(_loc2_.category == param1)
               {
                  if(!(_loc6_ && Boolean(param1)))
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public function get realCurrencyStock() : Number
      {
         return this._realCurrencyStock;
      }
      
      public function get allListItems() : Vector.<PlayfieldItemInventoryListItemVo>
      {
         return this.allListItemsAsVector;
      }
      
      public function get minimized() : Boolean
      {
         return this._minimized;
      }
      
      private function get allListItemsAsVector() : Vector.<PlayfieldItemInventoryListItemVo>
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc3_:ArrayCollection = null;
         var _loc4_:PlayfieldItemInventoryListItemVo = null;
         var _loc1_:Vector.<PlayfieldItemInventoryListItemVo> = new Vector.<PlayfieldItemInventoryListItemVo>();
         var _loc2_:Vector.<ArrayCollection> = new Vector.<ArrayCollection>();
         if(_loc9_)
         {
            _loc2_.push(this.getSortedItemList(ServerTagConstants.RESIDENTIAL));
            if(_loc9_ || Boolean(_loc2_))
            {
               _loc2_.push(this.getSortedItemList(ServerTagConstants.SHOP));
               if(!_loc10_)
               {
                  _loc2_.push(this.getSortedItemList(ServerTagConstants.DECORATION));
                  if(_loc9_)
                  {
                     addr0091:
                     _loc2_.push(this.getSortedItemList(PlayfieldItemInventoryViewProxy.CATEGORY_EMERGENCY_INVENTORY));
                  }
               }
               §§goto(addr00a0);
            }
            §§goto(addr0091);
         }
         addr00a0:
         for each(_loc3_ in _loc2_)
         {
            if(!(_loc10_ && Boolean(this)))
            {
               var _loc7_:int = 0;
               if(!_loc10_)
               {
                  for each(_loc4_ in _loc3_)
                  {
                     if(!(_loc10_ && Boolean(_loc3_)))
                     {
                        _loc1_.push(_loc4_);
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public function get preselectedIndex() : int
      {
         return this._preselectedIndex;
      }
      
      public function set preselectedIndex(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._preselectedIndex = param1;
         }
      }
      
      public function getFirstUnoccupiedSlotIndexByCat(param1:String) : int
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:PlayfieldItemInventoryBagVo = this.getRelevantBag(param1);
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_)
            {
               if(_loc4_)
               {
                  return _loc2_.inventoryItems.length;
               }
            }
         }
         return -1;
      }
      
      public function set emergencyRunning(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._emergencyRunning = param1;
         }
      }
   }
}

