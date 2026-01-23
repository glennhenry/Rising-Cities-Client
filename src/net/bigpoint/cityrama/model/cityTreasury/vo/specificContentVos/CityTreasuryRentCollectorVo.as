package net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos
{
   import net.bigpoint.cityrama.model.cityTreasury.vo.ICityTreasuryContentVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigAssistDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.LocaUtils;
   
   public class CityTreasuryRentCollectorVo implements ICityTreasuryContentVo
   {
      
      private var _pack:ConfigPaymentPackDTO;
      
      private var _configAssist:ConfigAssistDTO;
      
      private var _price:Number = 0;
      
      private var _currency:String = "€";
      
      private var _icon:String;
      
      private var _discountedPrice:Number = -1;
      
      public function CityTreasuryRentCollectorVo()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public function get configAssist() : ConfigAssistDTO
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this._configAssist);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(this._pack);
                     if(!(_loc2_ && _loc2_))
                     {
                        if(§§pop())
                        {
                           if(_loc1_ || _loc1_)
                           {
                              §§push(this._pack);
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§push(Boolean(§§pop().assists));
                                 if(!_loc2_)
                                 {
                                    var _temp_5:* = §§pop();
                                    §§push(_temp_5);
                                    if(_temp_5)
                                    {
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          addr0087:
                                          §§pop();
                                          if(!_loc2_)
                                          {
                                             addr0097:
                                             addr0091:
                                             addr008d:
                                             if(Boolean(this._pack.assists.length))
                                             {
                                                if(!_loc2_)
                                                {
                                                   if(ConfigOutputDTO(this._pack.assists[0]).assistConfig)
                                                   {
                                                      if(!(_loc2_ && _loc1_))
                                                      {
                                                         addr00d0:
                                                         this._configAssist = ConfigOutputDTO(this._pack.assists[0]).assistConfig;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr00ed:
                                          return this._configAssist;
                                          addr00e9:
                                       }
                                    }
                                    §§goto(addr0097);
                                 }
                                 §§goto(addr0087);
                              }
                              §§goto(addr0091);
                           }
                           §§goto(addr00d0);
                        }
                        §§goto(addr00e9);
                     }
                     §§goto(addr0091);
                  }
                  §§goto(addr008d);
               }
               §§goto(addr00e9);
            }
            §§goto(addr00ed);
         }
         §§goto(addr00e9);
      }
      
      public function get packGfx() : BriskDynaVo
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            if(this.configAssist)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  §§goto(addr003c);
               }
            }
            return null;
         }
         addr003c:
         §§push(§§findproperty(BriskDynaVo));
         §§push("gui_popups_rentCollector");
         §§push("rentCollector_big_");
         if(!_loc2_)
         {
            §§push(§§pop() + this.configAssist.gfxId);
         }
         return new §§pop().BriskDynaVo(§§pop(),§§pop());
      }
      
      public function get headerText() : String
      {
         return LocaUtils.getString("rcl.misc.rentCollector","rcl.misc.rentCollector.name.capital");
      }
      
      public function get topText() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            if(this.configAssist)
            {
               if(!_loc2_)
               {
                  §§goto(addr0034);
               }
            }
            return "";
         }
         addr0034:
         §§push(LocaUtils);
         §§push("rcl.booklayer.rentCollector");
         §§push("rcl.booklayer.rentCollector.flavour.");
         if(_loc1_)
         {
            §§push(§§pop() + this.configAssist.locaId);
         }
         return §§pop().getString(§§pop(),§§pop());
      }
      
      public function get bottomText() : String
      {
         return LocaUtils.getString("rcl.booklayer.specialrebuy","rcl.booklayer.specialrebuy.rentCollector.stackText");
      }
      
      public function get runtimeText() : String
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:* = 0;
         if(!(_loc2_ && Boolean(this)))
         {
            if(this.configAssist)
            {
               if(_loc3_)
               {
                  §§push(LocaUtils);
                  §§push(this.configAssist.lifetime);
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     §§push(§§pop() / 1000);
                  }
                  §§push(§§pop().getDurationH(§§pop()));
                  if(!_loc2_)
                  {
                     §§push(§§pop());
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_ = §§pop();
                        if(_loc3_)
                        {
                           §§push(_loc1_);
                        }
                        else
                        {
                           §§goto(addr00e3);
                        }
                     }
                  }
                  if(§§pop() < 72)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr0087:
                        §§push(LocaUtils.getString("rcl.misc.timeconventions","rcl.misc.timeconventions.specificHours.capital",[_loc1_]));
                        if(!(_loc2_ && _loc2_))
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr00b6:
                        §§push(LocaUtils);
                        §§push("rcl.misc.timeconventions");
                        §§push("rcl.misc.timeconventions.specificDays.capital");
                        §§push(LocaUtils);
                        §§push(this.configAssist.lifetime);
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           §§push(§§pop() / 1000);
                        }
                        return §§pop().getString(§§pop(),§§pop(),[§§pop().getDaysFromSeconds(§§pop())]);
                     }
                     return §§pop();
                  }
                  §§goto(addr00b6);
               }
               §§goto(addr0087);
            }
            addr00e3:
            return "";
         }
         §§goto(addr00b6);
      }
      
      public function get purchaseLabel() : String
      {
         return LocaUtils.getString("rcl.booklayer.specialrebuy","rcl.booklayer.specialrebuy.rentCollector.buyText");
      }
      
      public function get buttonLabel() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            if(this.hasDiscount)
            {
               if(_loc2_ || Boolean(this))
               {
                  addr0033:
                  §§push(this._discountedPrice);
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(2);
                     if(_loc2_ || _loc1_)
                     {
                        §§push(§§pop().toFixed(§§pop()) + " ");
                        if(_loc2_)
                        {
                           §§push(this._currency);
                           if(!(_loc1_ && Boolean(this)))
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc1_)
                              {
                                 return §§pop();
                              }
                           }
                           else
                           {
                              addr00a3:
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr00a4);
                        }
                        else
                        {
                           addr009f:
                           §§push(this._currency);
                        }
                        §§goto(addr00a3);
                     }
                     else
                     {
                        addr0092:
                        §§push(§§pop().toFixed(§§pop()) + " ");
                        if(!_loc1_)
                        {
                           §§goto(addr009f);
                        }
                     }
                     addr00a4:
                     return §§pop();
                  }
                  addr0090:
                  §§push(2);
                  §§goto(addr0092);
               }
               else
               {
                  addr008c:
                  §§push(this._price);
               }
               §§goto(addr0090);
            }
            §§goto(addr008c);
         }
         §§goto(addr0033);
      }
      
      public function get discountLabel() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            if(this.hasDiscount)
            {
               if(!(_loc2_ && _loc1_))
               {
                  §§push(this._price.toFixed(2) + " ");
                  if(_loc1_)
                  {
                     §§push(§§pop() + this._currency);
                     if(_loc2_)
                     {
                        §§goto(addr0054);
                     }
                  }
                  return §§pop();
               }
               addr0052:
               §§push("");
               addr0054:
               return §§pop();
            }
         }
         §§goto(addr0052);
      }
      
      public function get buttonTooltip() : String
      {
         return LocaUtils.getString("rcl.booklayer.startpackbuy","rcl.booklayer.startpackbuy.button.enabled.tooltip");
      }
      
      public function get hasDiscount() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(this._discountedPrice == -1);
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function get bigPackIconGfx() : BriskDynaVo
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            if(this._icon)
            {
               if(!(_loc2_ && _loc1_))
               {
                  return new BriskDynaVo("gui_popups_paperPopup",this._icon + "_medium");
               }
            }
         }
         return null;
      }
      
      public function get smallPackIconGfx() : BriskDynaVo
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(this._icon)
            {
               if(!_loc1_)
               {
                  return new BriskDynaVo("gui_popups_paperPopup",this._icon + "_small");
               }
            }
         }
         return null;
      }
      
      public function get pack() : ConfigPaymentPackDTO
      {
         return this._pack;
      }
      
      public function set pack(param1:ConfigPaymentPackDTO) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._pack = param1;
         }
      }
      
      public function get price() : Number
      {
         return this._price;
      }
      
      public function set price(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._price = param1;
         }
      }
      
      public function get discountedPrice() : Number
      {
         return this._discountedPrice;
      }
      
      public function set discountedPrice(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._discountedPrice = param1;
         }
      }
      
      public function get currency() : String
      {
         return this._currency;
      }
      
      public function set currency(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._currency = param1;
         }
      }
      
      public function set icon(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._icon = param1;
         }
      }
   }
}

