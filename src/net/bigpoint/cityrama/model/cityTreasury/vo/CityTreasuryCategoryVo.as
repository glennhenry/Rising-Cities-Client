package net.bigpoint.cityrama.model.cityTreasury.vo
{
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryBonusCodeVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryCashForActionVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryExternalPackVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryInternalPackVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryRealCurrencyPackVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryRentCollectorVo;
   import net.bigpoint.cityrama.model.common.vo.CategoryMenuListVo;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryContentComponent;
   
   public class CityTreasuryCategoryVo
   {
      
      private var _categoryMenu:CategoryMenuListVo;
      
      private var _contentVo:ICityTreasuryContentVo;
      
      private var _currentRCStock:Number = 0;
      
      private var _preSelectedPackIndex:int = 0;
      
      public function CityTreasuryCategoryVo()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function get skinStyle() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            §§push(this.contentVo);
            if(!(_loc1_ && Boolean(this)))
            {
               §§push(§§pop() is CityTreasuryRealCurrencyPackVo);
               if(!_loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        §§push(CityTreasuryContentComponent.TYPE_REAL_CURRENCY);
                        if(!(_loc1_ && _loc2_))
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr0177:
                        §§push(CityTreasuryContentComponent.TYPE_RENTCOLLECTOR);
                     }
                     §§goto(addr017d);
                  }
                  else
                  {
                     §§push(this.contentVo);
                     if(!_loc1_)
                     {
                        addr0063:
                        §§push(§§pop() is CityTreasuryInternalPackVo);
                        if(!(_loc1_ && _loc2_))
                        {
                           if(§§pop())
                           {
                              if(_loc2_ || _loc1_)
                              {
                                 §§push(CityTreasuryContentComponent.TYPE_INTERNAL_PACK);
                                 if(_loc2_)
                                 {
                                    return §§pop();
                                 }
                              }
                              else
                              {
                                 addr0096:
                                 §§push(this.contentVo);
                                 if(_loc2_)
                                 {
                                    addr009f:
                                    §§push(§§pop() is CityTreasuryExternalPackVo);
                                    if(_loc2_ || _loc1_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc2_ || _loc1_)
                                          {
                                             §§push(CityTreasuryContentComponent.TYPE_EXTERNAL_PACK);
                                             if(!(_loc1_ && _loc2_))
                                             {
                                                return §§pop();
                                             }
                                          }
                                          else
                                          {
                                             addr010f:
                                             §§push(CityTreasuryContentComponent.TYPE_BONUS_CODE);
                                             if(_loc2_)
                                             {
                                                §§goto(addr011a);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(this.contentVo);
                                          if(!_loc1_)
                                          {
                                             §§push(§§pop() is CityTreasuryBonusCodeVo);
                                             if(_loc2_ || _loc2_)
                                             {
                                                §§goto(addr0106);
                                             }
                                             §§goto(addr013a);
                                          }
                                          §§goto(addr0131);
                                       }
                                       §§goto(addr0160);
                                    }
                                    §§goto(addr016e);
                                 }
                                 §§goto(addr0131);
                              }
                              addr011a:
                              return §§pop();
                           }
                           §§goto(addr0096);
                        }
                        §§goto(addr0106);
                     }
                     §§goto(addr009f);
                  }
               }
               addr0106:
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§goto(addr010f);
                  }
                  else
                  {
                     §§goto(addr0120);
                  }
               }
               addr0120:
               §§push(this.contentVo);
               if(!(_loc1_ && _loc1_))
               {
                  addr0131:
                  §§push(§§pop() is CityTreasuryCashForActionVo);
                  if(_loc2_)
                  {
                     addr013a:
                     if(§§pop())
                     {
                        if(!_loc1_)
                        {
                           §§push(CityTreasuryContentComponent.TYPE_CASH_FOR_ACTION);
                           if(_loc2_ || _loc1_)
                           {
                              addr0160:
                              return §§pop();
                           }
                        }
                        else
                        {
                           §§goto(addr0177);
                        }
                        addr017d:
                        return §§pop();
                     }
                     §§goto(addr016e);
                     §§goto(addr0177);
                  }
                  addr016e:
                  §§goto(addr016a);
               }
               addr016a:
               if(this.contentVo is CityTreasuryRentCollectorVo)
               {
                  if(!_loc1_)
                  {
                     §§goto(addr0177);
                  }
               }
               return "";
            }
            §§goto(addr0063);
         }
         §§goto(addr010f);
      }
      
      public function get categoryMenu() : CategoryMenuListVo
      {
         return this._categoryMenu;
      }
      
      public function set categoryMenu(param1:CategoryMenuListVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._categoryMenu = param1;
         }
      }
      
      public function get contentVo() : ICityTreasuryContentVo
      {
         return this._contentVo;
      }
      
      public function set contentVo(param1:ICityTreasuryContentVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._contentVo = param1;
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
         if(_loc2_)
         {
            this._currentRCStock = param1;
         }
      }
      
      public function get preSelectedPackIndex() : int
      {
         return this._preSelectedPackIndex;
      }
      
      public function set preSelectedPackIndex(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._preSelectedPackIndex = param1;
         }
      }
   }
}

