package net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.cityTreasury.vo.ICityTreasuryContentVo;
   import net.bigpoint.util.LocaUtils;
   
   public class CityTreasuryInternalPackVo implements ICityTreasuryContentVo
   {
      
      private var _categoryId:String;
      
      private var _packs:Vector.<CityTreasuryInternalPackItemVo>;
      
      private var _packsAsArrayCollection:ArrayCollection;
      
      public function CityTreasuryInternalPackVo()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public function set packs(param1:Vector.<CityTreasuryInternalPackItemVo>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this._packs = param1;
         }
      }
      
      public function get packs() : Vector.<CityTreasuryInternalPackItemVo>
      {
         return this._packs;
      }
      
      public function get packsAsListCollection() : ArrayCollection
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:CityTreasuryInternalPackItemVo = null;
         if(!(_loc4_ && Boolean(_loc1_)))
         {
            if(!this._packsAsArrayCollection)
            {
               if(_loc5_ || Boolean(this))
               {
                  addr0047:
                  this._packsAsArrayCollection = new ArrayCollection();
               }
               var _loc3_:* = this._packs;
               for each(_loc1_ in _loc3_)
               {
                  if(_loc5_ || _loc3_)
                  {
                     this._packsAsArrayCollection.addItem(_loc1_);
                  }
               }
            }
            return this._packsAsArrayCollection;
         }
         §§goto(addr0047);
      }
      
      public function get packListHeader() : String
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(this._categoryId);
         if(_loc2_ || _loc2_)
         {
            while(true)
            {
               var _loc1_:* = §§pop();
               if(_loc2_)
               {
                  §§push(ServerResConst.RESOURCE_VIRTUALCURRENCY);
                  if(!_loc3_)
                  {
                     §§push(_loc1_);
                     if(!(_loc3_ && _loc1_))
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!_loc3_)
                           {
                              §§push(0);
                              if(_loc2_ || _loc2_)
                              {
                              }
                           }
                           else
                           {
                              addr00fd:
                              §§push(1);
                              if(_loc3_ && _loc1_)
                              {
                              }
                           }
                        }
                        else
                        {
                           §§push(ServerResConst.RESOURCE_PRODUCTIONPOINTS);
                           if(!(_loc3_ && _loc3_))
                           {
                              addr00e6:
                              §§push(_loc1_);
                              if(!(_loc3_ && _loc1_))
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc2_)
                                    {
                                       §§goto(addr00fd);
                                    }
                                    else
                                    {
                                       addr0125:
                                       §§push(2);
                                       if(_loc2_ || _loc2_)
                                       {
                                       }
                                    }
                                    §§goto(addr0144);
                                 }
                                 addr0121:
                                 addr0120:
                                 if(ServerResConst.RESOURCE_EDUCATIONPOINTS === _loc1_)
                                 {
                                    §§goto(addr0125);
                                 }
                                 else
                                 {
                                    §§push(3);
                                 }
                                 addr0144:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       §§push(LocaUtils.getString("rcl.booklayer.currencyrebuy","rcl.booklayer.currencyrebuy.virtualcurrency.packageheader.uppercase"));
                                       if(!_loc3_)
                                       {
                                          return §§pop();
                                       }
                                       break;
                                    case 1:
                                       §§push(LocaUtils.getString("rcl.booklayer.currencyrebuy","rcl.booklayer.currencyrebuy.productionpoints.packageheader.uppercase"));
                                       if(!_loc3_)
                                       {
                                          return §§pop();
                                       }
                                       continue;
                                    case 2:
                                       §§push(LocaUtils.getString("rcl.booklayer.currencyrebuy","rcl.booklayer.currencyrebuy.educationpoints.packageheader.uppercase"));
                                       if(_loc2_ || _loc1_)
                                       {
                                          break;
                                       }
                                       continue;
                                    default:
                                       §§goto(addr0163);
                                 }
                                 return §§pop();
                                 §§goto(addr0125);
                              }
                              §§goto(addr0121);
                           }
                           §§goto(addr0120);
                        }
                        §§goto(addr0144);
                     }
                     §§goto(addr0121);
                  }
                  §§goto(addr00e6);
               }
               §§goto(addr00fd);
            }
         }
         addr0163:
         return LocaUtils.getString("rcl.booklayer.goodrebuy","rcl.booklayer.goodrebuy.availableItems.capital");
      }
      
      public function set categoryId(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._categoryId = param1;
         }
      }
   }
}

