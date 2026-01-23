package net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos
{
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigResourceDTO;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.LocaUtils;
   
   public class CityTreasuryInternalPackItemVo
   {
      
      private var _paymentPack:ConfigPaymentPackDTO;
      
      private var _hasDiscount:Boolean;
      
      private var _icon:String;
      
      public function CityTreasuryInternalPackItemVo(param1:ConfigPaymentPackDTO)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            super();
            if(_loc3_ || Boolean(param1))
            {
               addr0038:
               this._paymentPack = param1;
            }
            return;
         }
         §§goto(addr0038);
      }
      
      public function get price() : Number
      {
         return Math.abs(this._paymentPack.priceRC);
      }
      
      public function get hasDiscount() : Boolean
      {
         return this._hasDiscount;
      }
      
      public function set hasDiscount(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._hasDiscount = param1;
         }
      }
      
      public function get listBackgroundGfx() : BriskDynaVo
      {
         return new BriskDynaVo("gui_popups_paperPopup","special_goldbg_mini");
      }
      
      public function get amountIconGfx() : BriskDynaVo
      {
         return new BriskDynaVo("gui_popups_paperPopup","mini_icon_good");
      }
      
      public function get smallPackGfx() : BriskDynaVo
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(§§findproperty(BriskDynaVo));
         §§push("gui_popups_goodRebuyPopup");
         §§push("rebuyPack_");
         if(!_loc1_)
         {
            §§push(§§pop() + this._paymentPack.gfxId);
            if(!(_loc1_ && Boolean(this)))
            {
               addr003d:
               §§push(§§pop() + "_small");
            }
            return new §§pop().BriskDynaVo(§§pop(),§§pop());
         }
         §§goto(addr003d);
      }
      
      public function set icon(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._icon = param1;
         }
      }
      
      public function get smallTopLeftIconGfx() : BriskDynaVo
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            if(this._icon)
            {
               if(_loc1_ || _loc1_)
               {
                  §§goto(addr003c);
               }
            }
            return new BriskDynaVo("gui_popups_paperPopup","improvement_shop_sparkle");
         }
         addr003c:
         return new BriskDynaVo("gui_popups_paperPopup",this._icon + "_small");
      }
      
      public function get bigPackIconGfx() : BriskDynaVo
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            if(this._icon)
            {
               if(_loc1_ || _loc1_)
               {
                  return new BriskDynaVo("gui_popups_paperPopup",this._icon + "_medium");
               }
            }
         }
         return null;
      }
      
      public function get tooltip() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(LocaUtils);
         §§push("rcl.purchasePacks.name");
         §§push("rcl.purchasePacks.name.");
         if(!_loc2_)
         {
            §§push(§§pop() + this._paymentPack.locaId);
         }
         return §§pop().getString(§§pop(),§§pop());
      }
      
      public function get priceText() : String
      {
         return LocaUtils.getThousendSeperatedNumber(this.price);
      }
      
      public function get paymentPack() : ConfigPaymentPackDTO
      {
         return this._paymentPack;
      }
      
      public function get packContentAmount() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._paymentPack);
            if(_loc1_)
            {
               if(§§pop().resources.length > 0)
               {
                  if(!_loc2_)
                  {
                     §§push(this._paymentPack);
                     if(!_loc2_)
                     {
                        return §§pop().resources[0].outputAmount;
                        addr0041:
                     }
                  }
                  else
                  {
                     addr005c:
                     §§push(this._paymentPack);
                     if(!_loc2_)
                     {
                        if(§§pop().goods.length > 0)
                        {
                           if(_loc1_)
                           {
                              addr0079:
                              return this._paymentPack.goods[0].outputAmount;
                              addr0075:
                           }
                        }
                        return 0;
                     }
                  }
                  §§goto(addr0079);
               }
               §§goto(addr005c);
            }
            §§goto(addr0041);
         }
         §§goto(addr0075);
      }
      
      public function get packName() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(LocaUtils);
         §§push("rcl.purchasePacks.name");
         §§push("rcl.purchasePacks.name.");
         if(_loc1_)
         {
            §§push(§§pop() + this._paymentPack.locaId);
            if(!(_loc2_ && Boolean(this)))
            {
               addr003c:
               §§push(§§pop() + ".capital");
            }
            return §§pop().getString(§§pop(),§§pop());
         }
         §§goto(addr003c);
      }
      
      public function get packDescriptionText() : String
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:ConfigGoodDTO = null;
         var _loc2_:ConfigResourceDTO = null;
         if(_loc5_)
         {
            §§push(this._paymentPack);
            if(_loc5_)
            {
               if(§§pop().goods.length > 0)
               {
                  if(_loc5_)
                  {
                     §§push(this._paymentPack);
                     if(_loc5_ || _loc3_)
                     {
                        if(§§pop().goods[0].goodConfig)
                        {
                           if(_loc5_)
                           {
                              addr0066:
                              §§push(this._paymentPack);
                              if(_loc5_ || Boolean(this))
                              {
                                 addr0078:
                                 _loc1_ = §§pop().goods[0].goodConfig;
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§push(_loc1_.isTaggedGoodByTagName(ServerTagConstants.GOOD_KEY));
                                    if(!(_loc4_ && Boolean(_loc1_)))
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc4_)
                                          {
                                             §§push(LocaUtils.getString("rcl.purchasePacks.description","rcl.purchasePacks.description.keys.plural",[LocaUtils.getThousendSeperatedNumber(this.packContentAmount)]));
                                             if(!_loc4_)
                                             {
                                                return §§pop();
                                             }
                                          }
                                          else
                                          {
                                             addr00e4:
                                             §§push(_loc1_.isTaggedGoodByTagName(ServerTagConstants.GOOD_DEXTRO));
                                             if(_loc5_ || Boolean(this))
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      §§push(LocaUtils.getString("rcl.purchasePacks.description","rcl.purchasePacks.description.dextro.plural",[LocaUtils.getThousendSeperatedNumber(this.packContentAmount)]));
                                                      if(_loc5_ || Boolean(this))
                                                      {
                                                         return §§pop();
                                                      }
                                                      §§goto(addr0195);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(_loc1_.isTaggedGoodByTagName(ServerTagConstants.CLIENT_GOOD_WHEEL_TOKEN));
                                                   if(_loc5_ || Boolean(_loc1_))
                                                   {
                                                      addr014b:
                                                      if(§§pop())
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            §§push(_loc1_.isTaggedGoodByTagName(ServerTagConstants.CLIENT_WHEEL_BUFF_TOKEN));
                                                            if(_loc5_)
                                                            {
                                                               addr0165:
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc4_ && Boolean(this)))
                                                                  {
                                                                     §§push(LocaUtils.getString("rcl.purchasePacks.description","rcl.purchasePacks.description.wheelBuffToken.plural",[LocaUtils.getThousendSeperatedNumber(this.packContentAmount)]));
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr0195:
                                                                        return §§pop();
                                                                     }
                                                                     §§goto(addr022f);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc1_.isTaggedGoodByTagName(ServerTagConstants.CLIENT_WHEEL_SPIN_TOKEN));
                                                                  if(!(_loc4_ && Boolean(_loc2_)))
                                                                  {
                                                                     addr01bc:
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(LocaUtils.getString("rcl.purchasePacks.description","rcl.purchasePacks.description.wheelToken.plural",[LocaUtils.getThousendSeperatedNumber(this.packContentAmount)]));
                                                                           if(_loc5_)
                                                                           {
                                                                              return §§pop();
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr0217:
                                                                           §§push(LocaUtils.getString("rcl.purchasePacks.description","rcl.purchasePacks.description.granite.plural",[LocaUtils.getThousendSeperatedNumber(this.packContentAmount)]));
                                                                        }
                                                                        §§goto(addr022f);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr020d:
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§goto(addr0217);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr041e);
                                                            }
                                                            §§goto(addr01bc);
                                                         }
                                                         §§goto(addr041e);
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc1_.isTaggedGoodByTagName(ServerTagConstants.CLIENT_GOOD_GRANITE));
                                                      }
                                                      §§goto(addr020d);
                                                   }
                                                   §§goto(addr0165);
                                                }
                                                §§goto(addr041e);
                                             }
                                             §§goto(addr0165);
                                          }
                                          addr022f:
                                          return §§pop();
                                       }
                                       §§goto(addr00e4);
                                    }
                                    §§goto(addr014b);
                                 }
                                 §§goto(addr00e4);
                              }
                              else
                              {
                                 addr0238:
                                 if(§§pop().resources.length > 0)
                                 {
                                    if(!(_loc4_ && Boolean(_loc2_)))
                                    {
                                       §§push(this.paymentPack);
                                       if(_loc5_ || Boolean(_loc2_))
                                       {
                                          if(§§pop().resources[0].resourceConfig)
                                          {
                                             addr0276:
                                             _loc2_ = this.paymentPack.resources[0].resourceConfig;
                                             §§push(_loc2_.type);
                                             loop0:
                                             while(true)
                                             {
                                                var _loc3_:* = §§pop();
                                                if(!(_loc4_ && Boolean(this)))
                                                {
                                                   §§push(ServerResConst.RESOURCE_EDUCATIONPOINTS);
                                                   if(_loc5_)
                                                   {
                                                      §§push(_loc3_);
                                                      if(_loc5_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               addr0364:
                                                               §§push(0);
                                                               if(_loc4_ && Boolean(_loc1_))
                                                               {
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr03f0:
                                                               §§push(3);
                                                               if(_loc4_)
                                                               {
                                                               }
                                                            }
                                                            addr0408:
                                                            switch(§§pop())
                                                            {
                                                               case 0:
                                                                  §§push(LocaUtils.getString("rcl.booklayer.currencyrebuy","rcl.booklayer.currencyrebuy.educationpoints.flavor",[LocaUtils.getThousendSeperatedNumber(this.packContentAmount)]));
                                                                  if(_loc5_ || Boolean(_loc2_))
                                                                  {
                                                                     return §§pop();
                                                                  }
                                                                  break;
                                                               case 1:
                                                                  §§push(LocaUtils.getString("rcl.booklayer.currencyrebuy","rcl.booklayer.currencyrebuy.productionpoints.flavor",[LocaUtils.getThousendSeperatedNumber(this.packContentAmount)]));
                                                                  if(_loc5_)
                                                                  {
                                                                     return §§pop();
                                                                  }
                                                                  break;
                                                               case 2:
                                                                  §§push(LocaUtils.getString("rcl.booklayer.currencyrebuy","rcl.booklayer.currencyrebuy.virtualcurrency.flavor",[LocaUtils.getThousendSeperatedNumber(this.packContentAmount)]));
                                                                  if(!_loc4_)
                                                                  {
                                                                     return §§pop();
                                                                  }
                                                                  break loop0;
                                                               case 3:
                                                                  §§push(LocaUtils.getString("rcl.purchasePacks.description","rcl.purchasePacks.description.realCurrency",[LocaUtils.getThousendSeperatedNumber(this.packContentAmount)]));
                                                                  if(_loc5_)
                                                                  {
                                                                     break loop0;
                                                                  }
                                                                  break;
                                                               default:
                                                                  §§goto(addr041e);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(ServerResConst.RESOURCE_PRODUCTIONPOINTS);
                                                            if(!(_loc4_ && Boolean(_loc2_)))
                                                            {
                                                               addr038b:
                                                               §§push(_loc3_);
                                                               if(_loc5_)
                                                               {
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(1);
                                                                        if(_loc5_)
                                                                        {
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr03da:
                                                                        §§push(2);
                                                                        if(_loc4_)
                                                                        {
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(ServerResConst.RESOURCE_VIRTUALCURRENCY);
                                                                     if(_loc5_ || Boolean(_loc1_))
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr03d0:
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§goto(addr03da);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr03f0);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr03ec:
                                                                              addr03eb:
                                                                              if(ServerResConst.RESOURCE_REALCURRENCY === _loc3_)
                                                                              {
                                                                                 §§goto(addr03f0);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(4);
                                                                              }
                                                                              §§goto(addr0408);
                                                                           }
                                                                           §§goto(addr03f0);
                                                                        }
                                                                        §§goto(addr03ec);
                                                                     }
                                                                     §§goto(addr03eb);
                                                                  }
                                                                  §§goto(addr0408);
                                                               }
                                                               §§goto(addr03d0);
                                                            }
                                                            §§goto(addr03eb);
                                                         }
                                                         §§goto(addr03f0);
                                                      }
                                                      §§goto(addr03ec);
                                                   }
                                                   §§goto(addr038b);
                                                }
                                                §§goto(addr0364);
                                             }
                                             return §§pop();
                                             addr0272:
                                          }
                                          §§goto(addr041e);
                                       }
                                       §§goto(addr0276);
                                    }
                                    §§goto(addr0272);
                                 }
                              }
                              §§goto(addr041e);
                           }
                           §§goto(addr0272);
                        }
                        addr041e:
                        return "";
                     }
                     §§goto(addr0078);
                  }
                  §§goto(addr0272);
               }
               else
               {
                  §§push(this._paymentPack);
               }
               §§goto(addr0238);
            }
            §§goto(addr0078);
         }
         §§goto(addr0066);
      }
      
      public function get bigPackGfx() : BriskDynaVo
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(§§findproperty(BriskDynaVo));
         §§push("gui_popups_goodRebuyPopup");
         §§push("rebuyPack_");
         if(!_loc2_)
         {
            §§push(§§pop() + this._paymentPack.gfxId);
            if(_loc1_ || Boolean(this))
            {
               addr003c:
               §§push(§§pop() + "_big");
            }
            return new §§pop().BriskDynaVo(§§pop(),§§pop());
         }
         §§goto(addr003c);
      }
      
      public function get buttonAffordableTooltip() : String
      {
         return LocaUtils.getString("rcl.booklayer.currencyrebuy","rcl.booklayer.currencyrebuy.button.enabled.tooltip");
      }
      
      public function get buttonNotAffordableTooltip() : String
      {
         return LocaUtils.getString("rcl.booklayer.currencyrebuy","rcl.booklayer.currencyrebuy.button.plus.tooltip");
      }
   }
}

