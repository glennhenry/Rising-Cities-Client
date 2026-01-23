package net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.model.cityTreasury.vo.ICityTreasuryContentVo;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.model.rewards.RewardLayerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPaymentPackDTO;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.LocaUtils;
   
   public class CityTreasuryExternalPackVo implements ICityTreasuryContentVo
   {
      
      private var _pack:ConfigPaymentPackDTO;
      
      private var _price:Number = 0;
      
      private var _discountedPrice:Number = -1;
      
      private var _currency:String = "€";
      
      private var _icon:String;
      
      private var _packContent:ArrayCollection;
      
      public function CityTreasuryExternalPackVo()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
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
         if(!(_loc2_ && _loc2_))
         {
            this._pack = param1;
         }
      }
      
      public function set price(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._price = param1;
         }
      }
      
      public function set discountedPrice(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._discountedPrice = param1;
         }
      }
      
      public function set currency(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._currency = param1;
         }
      }
      
      public function set icon(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._icon = param1;
         }
      }
      
      public function get packGfx() : BriskDynaVo
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            if(this._pack)
            {
               if(!_loc2_)
               {
                  §§push(§§findproperty(BriskDynaVo));
                  §§push("gui_popups_goodRebuyPopup");
                  §§push("rebuyPack_");
                  if(_loc1_)
                  {
                     §§push(§§pop() + this._pack.gfxId);
                     if(!_loc2_)
                     {
                        §§push(§§pop() + "_big");
                     }
                  }
                  return new §§pop().BriskDynaVo(§§pop(),§§pop());
               }
            }
         }
         return null;
      }
      
      public function get smallPackIconGfx() : BriskDynaVo
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            if(this._icon)
            {
               if(_loc1_ || _loc2_)
               {
                  §§goto(addr0034);
               }
            }
            return null;
         }
         addr0034:
         return new BriskDynaVo("gui_popups_paperPopup",this._icon + "_small");
      }
      
      public function get bigPackIconGfx() : BriskDynaVo
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
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
      
      public function get packName() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            if(this._pack)
            {
               if(!(_loc1_ && _loc1_))
               {
                  §§push(LocaUtils);
                  §§push("rcl.purchasePacks.name");
                  §§push("rcl.purchasePacks.name.");
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(§§pop() + this._pack.locaId);
                     if(_loc2_)
                     {
                        addr0069:
                        §§push(§§pop() + ".capital");
                     }
                     return §§pop().getString(§§pop(),§§pop());
                  }
                  §§goto(addr0069);
               }
            }
         }
         return "";
      }
      
      public function get packDescription() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            if(this._pack)
            {
               if(_loc1_)
               {
                  §§push(LocaUtils);
                  §§push("rcl.purchasePacks.description");
                  §§push("rcl.purchasePacks.description.");
                  if(_loc1_ || _loc1_)
                  {
                     §§push(§§pop() + this._pack.locaId);
                     if(_loc1_ || _loc2_)
                     {
                        §§push(§§pop() + ".flavor");
                     }
                  }
                  return §§pop().getString(§§pop(),§§pop());
               }
            }
         }
         return "";
      }
      
      public function get buttonLabel() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._discountedPrice);
            if(!_loc1_)
            {
               §§push(-1);
               if(!_loc1_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc2_)
                     {
                        return this.priceLabel;
                     }
                  }
                  addr0042:
                  addr003e:
                  §§push(this._discountedPrice);
                  §§push(2);
               }
               §§push(§§pop().toFixed(§§pop()) + " ");
               if(!(_loc1_ && _loc2_))
               {
                  return §§pop() + this._currency;
               }
            }
            §§goto(addr0042);
         }
         §§goto(addr003e);
      }
      
      public function get hasDiscount() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(this._discountedPrice == -1);
         if(_loc1_ || Boolean(this))
         {
            return !§§pop();
         }
      }
      
      public function get priceLabel() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(this._price.toFixed(2) + " ");
         if(!(_loc2_ && _loc2_))
         {
            return §§pop() + this._currency;
         }
      }
      
      public function get buttonTooltip() : String
      {
         return LocaUtils.getString("rcl.booklayer.startpackbuy","rcl.booklayer.startpackbuy.button.enabled.tooltip");
      }
      
      public function get packContentData() : ArrayCollection
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc1_:RewardItemComponentVo = null;
         var _loc2_:ConfigOutputDTO = null;
         if(_loc6_ || Boolean(_loc1_))
         {
            if(this._pack)
            {
               if(!(_loc5_ && Boolean(this)))
               {
                  if(!this._packContent)
                  {
                     if(!_loc5_)
                     {
                        addr0050:
                        this._packContent = new ArrayCollection();
                     }
                     addr0059:
                     var _loc3_:* = 0;
                     var _loc4_:* = this._pack.resources;
                     loop0:
                     while(true)
                     {
                        §§push(§§hasnext(_loc4_,_loc3_));
                        if(_loc5_)
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           _loc2_ = §§nextvalue(_loc3_,_loc4_);
                           _loc1_ = RewardLayerProxy.getRewardVoByOutputDTO(_loc2_);
                           if(!_loc5_)
                           {
                              if(!_loc1_)
                              {
                                 continue;
                              }
                              if(!(_loc6_ || Boolean(_loc1_)))
                              {
                                 continue;
                              }
                           }
                           this._packContent.addItem(_loc1_);
                           continue;
                        }
                        if(!_loc5_)
                        {
                           if(_loc6_)
                           {
                              if(_loc6_)
                              {
                                 §§push(0);
                                 if(_loc6_)
                                 {
                                    _loc3_ = §§pop();
                                    if(!_loc5_)
                                    {
                                       §§push(this._pack);
                                       if(!_loc5_)
                                       {
                                          _loc4_ = §§pop().goods;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc4_,_loc3_));
                                             if(!_loc5_)
                                             {
                                                if(§§pop())
                                                {
                                                   _loc2_ = §§nextvalue(_loc3_,_loc4_);
                                                   _loc1_ = RewardLayerProxy.getRewardVoByOutputDTO(_loc2_);
                                                   if(_loc6_)
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         if(!(_loc5_ && Boolean(_loc3_)))
                                                         {
                                                            this._packContent.addItem(_loc1_);
                                                         }
                                                      }
                                                   }
                                                   continue;
                                                }
                                                if(_loc6_ || Boolean(_loc1_))
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      addr013f:
                                                      if(_loc6_)
                                                      {
                                                         §§push(0);
                                                         if(_loc6_)
                                                         {
                                                            _loc3_ = §§pop();
                                                            if(!_loc5_)
                                                            {
                                                               §§push(this._pack);
                                                               if(!(_loc5_ && Boolean(_loc1_)))
                                                               {
                                                                  addr0168:
                                                                  _loc4_ = §§pop().permissions;
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§hasnext(_loc4_,_loc3_));
                                                                     if(_loc6_ || Boolean(this))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              _loc2_ = §§nextvalue(_loc3_,_loc4_);
                                                                              _loc1_ = RewardLayerProxy.getRewardVoByOutputDTO(_loc2_);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(!_loc1_)
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                              }
                                                                              this._packContent.addItem(_loc1_);
                                                                              continue loop5;
                                                                           }
                                                                           if(!(_loc5_ && Boolean(_loc2_)))
                                                                           {
                                                                              addr01ce:
                                                                              if(_loc6_ || Boolean(_loc1_))
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    addr01e6:
                                                                                    §§push(0);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       addr01ee:
                                                                                       _loc3_ = §§pop();
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          §§push(this._pack);
                                                                                          if(_loc6_ || Boolean(_loc3_))
                                                                                          {
                                                                                             _loc4_ = §§pop().improvements;
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§hasnext(_loc4_,_loc3_));
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   break loop5;
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             while(§§pop())
                                                                                             {
                                                                                                _loc2_ = §§nextvalue(_loc3_,_loc4_);
                                                                                                _loc1_ = RewardLayerProxy.getRewardVoByOutputDTO(_loc2_);
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   if(_loc1_)
                                                                                                   {
                                                                                                      if(!(_loc5_ && Boolean(_loc3_)))
                                                                                                      {
                                                                                                         this._packContent.addItem(_loc1_);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§hasnext(_loc4_,_loc3_));
                                                                                                   break;
                                                                                                }
                                                                                             }
                                                                                             addr02e3:
                                                                                             if(!(_loc5_ && Boolean(_loc3_)))
                                                                                             {
                                                                                                addr02f3:
                                                                                                RewardLayerProxy.sortRewardList(this._packContent);
                                                                                             }
                                                                                             addr02fe:
                                                                                             return this._packContent;
                                                                                             addr02e1:
                                                                                             addr02dd:
                                                                                          }
                                                                                          addr028f:
                                                                                          _loc4_ = §§pop().assists;
                                                                                          §§goto(addr02da);
                                                                                       }
                                                                                       addr0272:
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          addr027c:
                                                                                          _loc3_ = 0;
                                                                                          addr027a:
                                                                                          if(_loc6_ || Boolean(_loc2_))
                                                                                          {
                                                                                             §§goto(addr028f);
                                                                                             §§push(this._pack);
                                                                                          }
                                                                                          §§goto(addr02e3);
                                                                                       }
                                                                                       §§goto(addr02fe);
                                                                                    }
                                                                                    §§goto(addr027c);
                                                                                 }
                                                                                 §§goto(addr02f3);
                                                                              }
                                                                              §§goto(addr0272);
                                                                           }
                                                                           if(!(_loc5_ && Boolean(_loc2_)))
                                                                           {
                                                                              §§goto(addr0272);
                                                                           }
                                                                           §§goto(addr02e3);
                                                                           continue loop5;
                                                                        }
                                                                        addr01bc:
                                                                     }
                                                                     break;
                                                                  }
                                                                  break loop0;
                                                               }
                                                               §§goto(addr028f);
                                                            }
                                                            §§goto(addr0272);
                                                         }
                                                         §§goto(addr01ee);
                                                      }
                                                      §§goto(addr027a);
                                                   }
                                                   §§goto(addr0272);
                                                }
                                                §§goto(addr01ce);
                                             }
                                             §§goto(addr01bc);
                                          }
                                       }
                                       §§goto(addr0168);
                                    }
                                    §§goto(addr02e3);
                                 }
                                 §§goto(addr027c);
                              }
                              §§goto(addr01e6);
                           }
                           §§goto(addr013f);
                        }
                        §§goto(addr02e1);
                     }
                     do
                     {
                        if(§§pop())
                        {
                           _loc2_ = §§nextvalue(_loc3_,_loc4_);
                           _loc1_ = RewardLayerProxy.getRewardVoByOutputDTO(_loc2_);
                           if(!_loc5_)
                           {
                              if(!_loc1_)
                              {
                                 continue;
                              }
                              if(_loc5_ && Boolean(_loc1_))
                              {
                                 continue;
                              }
                           }
                           this._packContent.addItem(_loc1_);
                           continue;
                        }
                        if(!(_loc5_ && Boolean(_loc1_)))
                        {
                           §§goto(addr0262);
                        }
                        §§goto(addr02e1);
                     }
                     while(§§push(§§hasnext(_loc4_,_loc3_)), _loc6_);
                     
                     §§goto(addr02dd);
                  }
                  §§goto(addr02fe);
               }
               §§goto(addr0059);
            }
            §§goto(addr02fe);
         }
         §§goto(addr0050);
      }
      
      public function get purchaseLabel() : String
      {
         return LocaUtils.getString("rcl.booklayer.startpackbuy","rcl.booklayer.startpackbuy.common.priceheader");
      }
   }
}

