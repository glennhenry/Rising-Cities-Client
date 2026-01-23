package net.bigpoint.cityrama.model.detailViews.vo
{
   import net.bigpoint.cityrama.model.good.vo.GoodObjectVo;
   import net.bigpoint.cityrama.model.good.vo.ShopStockGoodVo;
   
   public class ShopDetailViewVo
   {
      
      private var _gfxID:int;
      
      private var _localeId:String;
      
      private var _storageInterests:Vector.<GoodObjectVo>;
      
      private var _storeStock:Vector.<ShopStockGoodVo>;
      
      private var _buildingID:Number;
      
      private var _currentLevel:int;
      
      private var _nextLevelData:ShopDetailViewVo;
      
      private var _upgradeNextLevel:int;
      
      private var _upgradeMaxLevel:int;
      
      private var _upgradeMMPrice:Number;
      
      private var _hasEnoughDD:Boolean;
      
      private var _radiusX:int;
      
      private var _radiusY:int;
      
      private var _currentEnergy:int;
      
      private var _currentMood:int;
      
      private var _maxStock:Number;
      
      public function ShopDetailViewVo()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      private static function sortStorageInterests(param1:GoodObjectVo, param2:GoodObjectVo) : int
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            §§push(param1.userLevelRequired);
            if(_loc3_)
            {
               §§push(param2.userLevelRequired);
               if(_loc3_ || _loc3_)
               {
                  if(§§pop() < §§pop())
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(1);
                        if(!(_loc4_ && ShopDetailViewVo))
                        {
                           return §§pop();
                        }
                        addr00b6:
                        addr00ba:
                        if(§§pop() > param2.userLevelRequired)
                        {
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              addr00cc:
                              §§push(-1);
                              if(!(_loc4_ && Boolean(param2)))
                              {
                                 §§goto(addr00dc);
                              }
                           }
                           else
                           {
                              addr00dd:
                              return 0;
                           }
                           return §§pop();
                        }
                        §§goto(addr00dd);
                     }
                     §§goto(addr00cc);
                  }
                  else
                  {
                     §§push(param1.userLevelRequired);
                     if(!(_loc4_ && Boolean(param2)))
                     {
                        §§push(param2.userLevelRequired);
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc3_)
                              {
                                 §§push(0);
                                 if(_loc3_)
                                 {
                                    return §§pop();
                                 }
                                 §§goto(addr00b6);
                              }
                              §§goto(addr00cc);
                           }
                           else
                           {
                              §§push(param1.userLevelRequired);
                              if(_loc3_)
                              {
                                 §§goto(addr00b6);
                              }
                           }
                           §§goto(addr00dc);
                        }
                        §§goto(addr00ba);
                     }
                  }
                  addr00dc:
                  return §§pop();
               }
               §§goto(addr00ba);
            }
            §§goto(addr00b6);
         }
         §§goto(addr00cc);
      }
      
      private static function sortStoreStock(param1:ShopStockGoodVo, param2:ShopStockGoodVo) : int
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            §§push(param1.goodVo);
            if(!_loc3_)
            {
               §§push(§§pop().userLevelRequired);
               if(_loc4_)
               {
                  §§push(param2.goodVo);
                  if(!_loc3_)
                  {
                     §§push(§§pop().userLevelRequired);
                     if(!(_loc3_ && Boolean(param2)))
                     {
                        if(§§pop() < §§pop())
                        {
                           if(!_loc3_)
                           {
                              §§push(1);
                              if(_loc4_)
                              {
                                 return §§pop();
                              }
                              addr00dc:
                              addr00e3:
                              addr00e0:
                              if(§§pop() > param2.goodVo.userLevelRequired)
                              {
                                 if(!_loc3_)
                                 {
                                    addr00ec:
                                    §§push(-1);
                                    if(_loc4_)
                                    {
                                       return §§pop();
                                    }
                                 }
                                 else
                                 {
                                    addr00f5:
                                    §§push(0);
                                 }
                                 §§goto(addr00f7);
                              }
                              §§goto(addr00f5);
                           }
                           else
                           {
                              addr00cf:
                              addr00d3:
                              §§push(param1.goodVo.userLevelRequired);
                              if(_loc4_)
                              {
                                 §§goto(addr00dc);
                              }
                           }
                           §§goto(addr00f7);
                        }
                        else
                        {
                           §§push(param1.goodVo);
                           if(!_loc3_)
                           {
                              addr0078:
                              §§push(§§pop().userLevelRequired);
                              if(!_loc3_)
                              {
                                 §§push(param2.goodVo);
                                 if(!(_loc3_ && Boolean(param1)))
                                 {
                                    §§push(§§pop().userLevelRequired);
                                    if(_loc4_)
                                    {
                                       addr009a:
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc4_ || Boolean(param2))
                                          {
                                             §§push(0);
                                             if(!_loc3_)
                                             {
                                                return §§pop();
                                             }
                                             §§goto(addr00dc);
                                          }
                                          §§goto(addr00ec);
                                       }
                                       else
                                       {
                                          §§goto(addr00cf);
                                       }
                                    }
                                    §§goto(addr00e3);
                                 }
                                 §§goto(addr00e0);
                              }
                              §§goto(addr00f7);
                           }
                        }
                        §§goto(addr00d3);
                     }
                     §§goto(addr009a);
                  }
                  §§goto(addr00e0);
               }
               addr00f7:
               return §§pop();
            }
            §§goto(addr0078);
         }
         §§goto(addr00ec);
      }
      
      public function set gfxID(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this._gfxID = param1;
         }
      }
      
      public function get storeStock() : Vector.<ShopStockGoodVo>
      {
         return this._storeStock;
      }
      
      public function set storeStock(param1:Vector.<ShopStockGoodVo>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._storeStock = param1;
            if(_loc3_ || _loc2_)
            {
               addr0029:
               this._storeStock.sort(sortStoreStock);
            }
            return;
         }
         §§goto(addr0029);
      }
      
      public function get storageInterests() : Vector.<GoodObjectVo>
      {
         return this._storageInterests;
      }
      
      public function set storageInterests(param1:Vector.<GoodObjectVo>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._storageInterests = param1;
            if(!_loc3_)
            {
               this._storageInterests.sort(sortStorageInterests);
            }
         }
      }
      
      public function get buildingID() : Number
      {
         return this._buildingID;
      }
      
      public function set buildingID(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._buildingID = param1;
         }
      }
      
      public function get localeId() : String
      {
         return this._localeId;
      }
      
      public function get currentLevel() : int
      {
         return this._currentLevel;
      }
      
      public function set currentLevel(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._currentLevel = param1;
         }
      }
      
      public function get upgradeMaxLevel() : int
      {
         return this._upgradeMaxLevel;
      }
      
      public function get upgradeNextLevel() : int
      {
         return this._upgradeNextLevel;
      }
      
      public function get hasEnoughDD() : Boolean
      {
         return this._hasEnoughDD;
      }
      
      public function get currentEnergy() : int
      {
         return this._currentEnergy;
      }
      
      public function get currentMood() : int
      {
         return this._currentMood;
      }
      
      public function get nextLevelData() : ShopDetailViewVo
      {
         return this._nextLevelData;
      }
      
      public function set nextLevelData(param1:ShopDetailViewVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._nextLevelData = param1;
         }
      }
      
      public function set localeId(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._localeId = param1;
         }
      }
      
      public function set currentEnergy(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._currentEnergy = param1;
         }
      }
      
      public function set currentMood(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this._currentMood = param1;
         }
      }
      
      public function get radiusX() : int
      {
         return this._radiusX;
      }
      
      public function set radiusX(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this._radiusX = param1;
         }
      }
      
      public function get radiusY() : int
      {
         return this._radiusY;
      }
      
      public function set radiusY(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._radiusY = param1;
         }
      }
      
      public function set maxStock(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._maxStock = param1;
         }
      }
      
      public function get maxStock() : Number
      {
         return this._maxStock;
      }
      
      public function set nextLevel(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._upgradeNextLevel = param1;
         }
      }
      
      public function set upgradeMaxLevel(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._upgradeMaxLevel = param1;
         }
      }
      
      public function set upgradeMMPrice(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this._upgradeMMPrice = param1;
         }
      }
      
      public function set hasEnoughDD(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._hasEnoughDD = param1;
         }
      }
      
      public function get upgradeMMPrice() : Number
      {
         return this._upgradeMMPrice;
      }
   }
}

