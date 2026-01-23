package net.bigpoint.cityrama.view.boosterpackstore.ui.components
{
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.boosterpack.vo.BoosterpackVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class BoosterpackDetail extends Group
   {
      
      public static const SCROLL_LEFT:String = "SCROLL_LEFT";
      
      public static const SCROLL_RIGHT:String = "SCROLL_RIGHT";
      
      public static const BUY_BOOSTER_GOOD:String = "BUY_BOOSTER_GOOD";
      
      public static const BUY_BOOSTER_RC:String = "BUY_BOOSTER_RC";
      
      public static const OPEN_TREASURY:String = "OPEN_TREASURY";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || BoosterpackDetail)
      {
         SCROLL_LEFT = "SCROLL_LEFT";
         if(_loc1_ || _loc2_)
         {
            SCROLL_RIGHT = "SCROLL_RIGHT";
            if(_loc1_)
            {
               addr0055:
               BUY_BOOSTER_GOOD = "BUY_BOOSTER_GOOD";
               if(!(_loc2_ && BoosterpackDetail))
               {
                  §§goto(addr006b);
               }
               §§goto(addr0079);
            }
            addr006b:
            BUY_BOOSTER_RC = "BUY_BOOSTER_RC";
            if(_loc1_)
            {
               addr0079:
               OPEN_TREASURY = "OPEN_TREASURY";
            }
            return;
         }
         §§goto(addr0055);
      }
      §§goto(addr0079);
      
      private var _1893627029backgroundGfx:BriskImageDynaLib;
      
      private var _523126938boosterPackGeneralContent:BriskImageDynaLib;
      
      private var _779621070boosterpackImage:BriskImageDynaLib;
      
      private var _777207093boosterpackLabel:LocaLabel;
      
      private var _2116806775boosterpackSpecialContent:BriskImageDynaLib;
      
      private var _1950300443goodBuyButton:MultistateButton;
      
      private var _1806488446normalContentLabel:LocaLabel;
      
      private var _2121281877pricingBg:BriskImageDynaLib;
      
      private var _1756850759rCBuyButton:MultistateButton;
      
      private var _66047092scrollLeft:DynamicImageButton;
      
      private var _2053120847scrollRight:DynamicImageButton;
      
      private var _1151040172specialContentLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _isDirty:Boolean = false;
      
      private var _autoStartAnim:Boolean = false;
      
      private var _data:BoosterpackVo;
      
      public function BoosterpackDetail()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               addr0028:
               mx_internal::_document = this;
               if(_loc2_)
               {
                  this.mxmlContent = [this._BoosterpackDetail_HGroup1_c()];
               }
            }
            return;
         }
         §§goto(addr0028);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§goto(addr004c);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         addr004c:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.initialize();
         }
      }
      
      public function set data(param1:BoosterpackVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(!(_loc2_ && _loc2_))
               {
                  this._data = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     this._isDirty = true;
                     if(_loc3_ || Boolean(this))
                     {
                        addr007b:
                        invalidateProperties();
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr007b);
               }
            }
            addr0080:
            return;
         }
         §§goto(addr007b);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(!(_loc4_ && _loc3_))
         {
            super.commitProperties();
            if(_loc5_ || Boolean(_loc1_))
            {
               §§push(this._isDirty);
               if(!(_loc4_ && Boolean(_loc1_)))
               {
                  if(§§pop())
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        this._isDirty = false;
                        if(_loc5_ || Boolean(this))
                        {
                           §§push(this.boosterpackImage);
                           §§push("large_");
                           if(_loc5_ || Boolean(_loc2_))
                           {
                              §§push(§§pop() + this._data.gfxId);
                           }
                           §§pop().dynaBmpSourceName = §§pop();
                           if(!(_loc4_ && _loc3_))
                           {
                              addr00a0:
                              §§push(this.backgroundGfx);
                              if(!_loc4_)
                              {
                                 §§pop().dynaBmpSourceName = "special_cardboard_big";
                                 if(!_loc4_)
                                 {
                                    §§push(this.boosterpackSpecialContent);
                                    §§push("polaroid_right_btm_");
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop() + this._data.gfxId);
                                    }
                                    §§pop().dynaBmpSourceName = §§pop();
                                    if(_loc5_ || Boolean(this))
                                    {
                                       addr00db:
                                       §§push(this.boosterpackLabel);
                                       §§push(LocaUtils);
                                       §§push("rcl.goods.goodname");
                                       §§push("rcl.goods.goodname.");
                                       if(_loc5_ || _loc3_)
                                       {
                                          §§push(§§pop() + this._data.locaId);
                                       }
                                       §§pop().text = §§pop().getString(§§pop(),§§pop());
                                       if(!_loc4_)
                                       {
                                          §§push(this.normalContentLabel);
                                          §§push(LocaUtils);
                                          §§push("rcl.booklayer.boosterpackStore");
                                          §§push("rcl.booklayer.boosterpackStore.contentLabel.");
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop() + this._data.locaId);
                                          }
                                          §§pop().text = §§pop().getString(§§pop(),§§pop());
                                          if(!(_loc4_ && Boolean(_loc2_)))
                                          {
                                             §§push(this.specialContentLabel);
                                             §§push(LocaUtils);
                                             §§push("rcl.booklayer.boosterpackStore");
                                             §§push("rcl.booklayer.boosterpackStore.specialContentLabel.");
                                             if(_loc5_ || _loc3_)
                                             {
                                                §§push(§§pop() + this._data.locaId);
                                             }
                                             §§pop().text = §§pop().getString(§§pop(),§§pop());
                                             if(!(_loc4_ && Boolean(this)))
                                             {
                                                §§push(this.goodBuyButton);
                                                if(!_loc4_)
                                                {
                                                   §§push(LocaUtils.getThousendSeperatedNumber(this._data.defaultCostAmount));
                                                   if(_loc5_)
                                                   {
                                                      §§pop().label = §§pop();
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         §§push(this._data);
                                                         if(_loc5_ || Boolean(_loc1_))
                                                         {
                                                            §§push(§§pop().defaultCostConfig);
                                                            if(!(_loc4_ && Boolean(_loc1_)))
                                                            {
                                                               §§push(§§pop().goodConfig);
                                                               if(!_loc4_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        §§push(this.goodBuyButton);
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push("gui_popups_boosterpackBook");
                                                                           if(!(_loc4_ && Boolean(_loc1_)))
                                                                           {
                                                                              §§pop().libNameRight = §§pop();
                                                                              if(!(_loc4_ && Boolean(_loc1_)))
                                                                              {
                                                                                 §§push(this.goodBuyButton);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr024b:
                                                                                    addr020e:
                                                                                    §§push("icon_");
                                                                                    if(!(_loc4_ && _loc3_))
                                                                                    {
                                                                                       §§push(§§pop() + this._data.defaultCostConfig.goodConfig.gfxId);
                                                                                       if(!(_loc4_ && Boolean(_loc1_)))
                                                                                       {
                                                                                          §§push(§§pop() + "_small");
                                                                                       }
                                                                                    }
                                                                                    §§pop().imageNameRight = §§pop();
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       addr0254:
                                                                                       addr0258:
                                                                                       §§push(this.backgroundGfx);
                                                                                       §§push(this.boosterpackImage);
                                                                                       §§push(LocaUtils);
                                                                                       §§push("rcl.goods.goodname");
                                                                                       §§push("rcl.goods.goodname.");
                                                                                       if(_loc5_ || _loc3_)
                                                                                       {
                                                                                          §§push(§§pop() + this._data.locaId);
                                                                                       }
                                                                                       var _loc3_:*;
                                                                                       §§pop().toolTip = _loc3_ = §§pop().getString(§§pop(),§§pop());
                                                                                       §§pop().toolTip = _loc3_;
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          addr028c:
                                                                                          this.scrollLeft.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.arrowLeft");
                                                                                          if(_loc5_ || Boolean(_loc2_))
                                                                                          {
                                                                                             addr02ab:
                                                                                             this.scrollRight.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.arrowRight");
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                addr02c2:
                                                                                                §§push(this.goodBuyButton);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§pop().enabled = this._data.userCanAffordGoodPrice;
                                                                                                   if(_loc5_ || Boolean(_loc3_))
                                                                                                   {
                                                                                                      §§push(this._data);
                                                                                                      if(_loc5_ || Boolean(_loc3_))
                                                                                                      {
                                                                                                         addr02fc:
                                                                                                         addr02f9:
                                                                                                         if(§§pop().defaultCostConfig.goodConfig)
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               addr0306:
                                                                                                               §§push(LocaUtils);
                                                                                                               §§push("rcl.goods.goodname");
                                                                                                               §§push("rcl.goods.goodname.");
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + this._data.defaultCostConfig.goodConfig.gfxId);
                                                                                                               }
                                                                                                               §§push(§§pop().getString(§§pop(),§§pop()));
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     _loc1_ = §§pop();
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        addr0352:
                                                                                                                        this.goodBuyButton.toolTip = LocaUtils.getString("rcl.tooltips.boosterpackstore","rcl.tooltips.boosterpackstore.buyButton.amountType",[this.goodBuyButton.label,_loc1_]);
                                                                                                                        addr0339:
                                                                                                                        addr033d:
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           addr035a:
                                                                                                                           §§push(this.rCBuyButton);
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              this.rCBuyButton.visible = _loc3_ = this._data.hasRealCurrencyPrice();
                                                                                                                              §§push(_loc3_);
                                                                                                                              if(!(_loc4_ && Boolean(this)))
                                                                                                                              {
                                                                                                                                 §§pop().includeInLayout = §§pop();
                                                                                                                                 if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                                                 {
                                                                                                                                    §§goto(addr0395);
                                                                                                                                 }
                                                                                                                                 §§goto(addr03a7);
                                                                                                                              }
                                                                                                                              §§goto(addr0442);
                                                                                                                           }
                                                                                                                           §§goto(addr03e1);
                                                                                                                        }
                                                                                                                        §§goto(addr03a7);
                                                                                                                     }
                                                                                                                     addr0395:
                                                                                                                     §§goto(addr0399);
                                                                                                                  }
                                                                                                                  §§goto(addr048c);
                                                                                                               }
                                                                                                               §§goto(addr048d);
                                                                                                            }
                                                                                                            §§goto(addr03d7);
                                                                                                         }
                                                                                                         §§goto(addr035a);
                                                                                                      }
                                                                                                      addr0399:
                                                                                                      addr039d:
                                                                                                      if(this._data.hasRealCurrencyPrice())
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            addr03a7:
                                                                                                            §§push(this.rCBuyButton);
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               §§push(this._data);
                                                                                                               if(_loc5_ || Boolean(_loc2_))
                                                                                                               {
                                                                                                                  §§pop().priceToConfirm = §§pop().realCurrencyCostAmount;
                                                                                                                  if(_loc5_ || Boolean(_loc2_))
                                                                                                                  {
                                                                                                                     addr03d7:
                                                                                                                     §§push(this.rCBuyButton);
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        addr03e1:
                                                                                                                        §§push(LocaUtils.getThousendSeperatedNumber(this._data.realCurrencyCostAmount));
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           §§pop().label = §§pop();
                                                                                                                           if(_loc5_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(this.rCBuyButton);
                                                                                                                              if(_loc5_ || Boolean(_loc1_))
                                                                                                                              {
                                                                                                                                 §§goto(addr0417);
                                                                                                                              }
                                                                                                                              §§goto(addr04a0);
                                                                                                                           }
                                                                                                                           §§goto(addr046e);
                                                                                                                        }
                                                                                                                        §§goto(addr04b5);
                                                                                                                     }
                                                                                                                     §§goto(addr0417);
                                                                                                                  }
                                                                                                                  §§goto(addr044b);
                                                                                                               }
                                                                                                               §§goto(addr0429);
                                                                                                            }
                                                                                                            addr0417:
                                                                                                            §§push(this._data);
                                                                                                            if(!(_loc4_ && _loc3_))
                                                                                                            {
                                                                                                               addr0429:
                                                                                                               §§push(§§pop().userCanAffordRCPrice);
                                                                                                               if(!(_loc4_ && Boolean(this)))
                                                                                                               {
                                                                                                                  §§push(!§§pop());
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     addr0442:
                                                                                                                     §§pop().showPlus = §§pop();
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        addr044b:
                                                                                                                        §§push(this.rCBuyButton);
                                                                                                                        if(_loc5_ || Boolean(_loc1_))
                                                                                                                        {
                                                                                                                           §§goto(addr0465);
                                                                                                                        }
                                                                                                                        §§goto(addr04a0);
                                                                                                                     }
                                                                                                                     §§goto(addr049c);
                                                                                                                  }
                                                                                                               }
                                                                                                               addr0465:
                                                                                                               §§pop().showSparkle = this._data.userCanAffordRCPrice;
                                                                                                               §§goto(addr0461);
                                                                                                            }
                                                                                                            addr0461:
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               addr046e:
                                                                                                               addr048d:
                                                                                                               §§push(LocaUtils.getString("rcl.misc.resources","rcl.misc.resources.realcurrency"));
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  addr048c:
                                                                                                                  §§push(§§pop());
                                                                                                               }
                                                                                                               _loc2_ = §§pop();
                                                                                                               if(!(_loc4_ && Boolean(_loc2_)))
                                                                                                               {
                                                                                                                  addr04b5:
                                                                                                                  this.rCBuyButton.toolTip = LocaUtils.getString("rcl.tooltips.boosterpackstore","rcl.tooltips.boosterpackstore.buyButton.amountType",[this.rCBuyButton.label,_loc2_]);
                                                                                                                  addr04a0:
                                                                                                                  addr049c:
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr04b7);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr04b7);
                                                                                                   }
                                                                                                   §§goto(addr0339);
                                                                                                }
                                                                                                §§goto(addr033d);
                                                                                             }
                                                                                             §§goto(addr0306);
                                                                                          }
                                                                                          §§goto(addr04b7);
                                                                                       }
                                                                                       §§goto(addr0306);
                                                                                    }
                                                                                    §§goto(addr044b);
                                                                                 }
                                                                                 §§goto(addr033d);
                                                                              }
                                                                              §§goto(addr044b);
                                                                           }
                                                                           §§goto(addr024b);
                                                                        }
                                                                        §§goto(addr033d);
                                                                     }
                                                                     §§goto(addr03d7);
                                                                  }
                                                                  §§goto(addr0254);
                                                               }
                                                               §§goto(addr02fc);
                                                            }
                                                            §§goto(addr02f9);
                                                         }
                                                         §§goto(addr0399);
                                                      }
                                                      §§goto(addr0254);
                                                   }
                                                   §§goto(addr0352);
                                                }
                                                §§goto(addr020e);
                                             }
                                             §§goto(addr044b);
                                          }
                                          §§goto(addr03d7);
                                       }
                                       §§goto(addr02c2);
                                    }
                                    §§goto(addr04b7);
                                 }
                                 §§goto(addr028c);
                              }
                              §§goto(addr0258);
                           }
                           §§goto(addr02ab);
                        }
                        §§goto(addr03a7);
                     }
                     §§goto(addr00db);
                  }
                  addr04b7:
                  return;
               }
               §§goto(addr039d);
            }
            §§goto(addr035a);
         }
         §§goto(addr00a0);
      }
      
      private function handleBuy(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            if(param1.currentTarget.id == "goodBuyButton")
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  dispatchEvent(new Event(BUY_BOOSTER_GOOD,true,true));
                  if(_loc2_ && _loc2_)
                  {
                  }
               }
            }
            else if(param1.currentTarget.id == "rCBuyButton")
            {
               if(!(_loc2_ && _loc2_))
               {
                  if(this.rCBuyButton.showPlus)
                  {
                     if(_loc3_)
                     {
                        dispatchEvent(new Event(OPEN_TREASURY,true,true));
                        if(_loc3_)
                        {
                        }
                     }
                  }
                  else
                  {
                     dispatchEvent(new Event(BUY_BOOSTER_RC,true,true));
                  }
               }
            }
         }
      }
      
      private function handleRight() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            dispatchEvent(new Event(SCROLL_RIGHT,true));
         }
      }
      
      private function handleLeft() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            dispatchEvent(new Event(SCROLL_LEFT,true));
         }
      }
      
      public function updateData() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            this.goodBuyButton.enabled = this._data.userCanAffordGoodPrice;
         }
      }
      
      private function _BoosterpackDetail_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr002f:
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.top = -20;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.mxmlContent = [this._BoosterpackDetail_Group2_c(),this._BoosterpackDetail_Group4_c(),this._BoosterpackDetail_Group5_c()];
                     §§goto(addr0057);
                  }
               }
               §§goto(addr009b);
            }
            addr0057:
            if(_loc2_ || Boolean(this))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     addr009b:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr002f);
      }
      
      private function _BoosterpackDetail_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.width = 290;
            if(!_loc2_)
            {
               §§goto(addr003f);
            }
            §§goto(addr0049);
         }
         addr003f:
         _loc1_.percentHeight = 100;
         if(_loc3_)
         {
            _loc1_.mxmlContent = [this._BoosterpackDetail_BriskImageDynaLib1_i(),this._BoosterpackDetail_BriskImageDynaLib2_i(),this._BoosterpackDetail_BriskImageDynaLib3_i(),this._BoosterpackDetail_BriskMCDynaLib1_c(),this._BoosterpackDetail_BriskImageDynaLib4_c(),this._BoosterpackDetail_VGroup1_c(),this._BoosterpackDetail_VGroup2_c(),this._BoosterpackDetail_VGroup3_c()];
            addr0049:
            if(!_loc2_)
            {
               §§goto(addr0090);
            }
            §§goto(addr009c);
         }
         addr0090:
         if(!_loc1_.document)
         {
            if(!_loc2_)
            {
               addr009c:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _BoosterpackDetail_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_ || _loc2_)
            {
               _loc1_.top = 200;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.dynaLibName = "gui_popups_paperPopup";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.dynaBmpSourceName = "rewardcomponentPriceBg_big";
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr007d:
                        _loc1_.id = "pricingBg";
                        if(!(_loc3_ && _loc2_))
                        {
                           addr0090:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc3_)
                              {
                                 _loc1_.document = this;
                                 if(_loc2_ || Boolean(this))
                                 {
                                    addr00c1:
                                    this.pricingBg = _loc1_;
                                    if(_loc2_ || Boolean(_loc1_))
                                    {
                                       BindingManager.executeBindings(this,"pricingBg",this.pricingBg);
                                    }
                                 }
                              }
                              §§goto(addr00e0);
                           }
                           §§goto(addr00c1);
                        }
                     }
                     §§goto(addr00e0);
                  }
                  §§goto(addr0090);
               }
               §§goto(addr007d);
            }
            §§goto(addr0090);
         }
         addr00e0:
         return _loc1_;
      }
      
      private function _BoosterpackDetail_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.top = 20;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0066:
                     _loc1_.id = "backgroundGfx";
                     if(_loc3_ || _loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              addr009a:
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 addr00a3:
                                 this.backgroundGfx = _loc1_;
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr00b5:
                                    BindingManager.executeBindings(this,"backgroundGfx",this.backgroundGfx);
                                 }
                                 §§goto(addr00c2);
                              }
                              §§goto(addr00b5);
                           }
                           addr00c2:
                           return _loc1_;
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr00b5);
                  }
                  §§goto(addr009a);
               }
            }
         }
         §§goto(addr0066);
      }
      
      private function _BoosterpackDetail_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.top = 54;
            if(_loc3_)
            {
               addr002a:
               _loc1_.horizontalCenter = 0;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.dynaLibName = "gui_popups_largeGoodIcons";
                  if(_loc3_ || _loc3_)
                  {
                     addr005c:
                     _loc1_.id = "boosterpackImage";
                     if(_loc3_ || _loc3_)
                     {
                        addr006f:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr0098:
                                 this.boosterpackImage = _loc1_;
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr00aa:
                                    BindingManager.executeBindings(this,"boosterpackImage",this.boosterpackImage);
                                 }
                              }
                              return _loc1_;
                           }
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr00aa);
                  }
                  §§goto(addr0098);
               }
               §§goto(addr005c);
            }
            §§goto(addr006f);
         }
         §§goto(addr002a);
      }
      
      private function _BoosterpackDetail_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaMCSourceName = "stickytape_top";
               if(_loc2_ || _loc2_)
               {
                  addr0051:
                  _loc1_.width = 110;
                  if(_loc2_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!_loc3_)
                     {
                        _loc1_.top = 13;
                        if(_loc2_ || Boolean(this))
                        {
                           addr0083:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr0093);
                     }
                     §§goto(addr0083);
                  }
               }
               §§goto(addr0093);
            }
            §§goto(addr0051);
         }
         addr0093:
         return _loc1_;
      }
      
      private function _BoosterpackDetail_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_boosterpackBook";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.top = 40;
                  if(!_loc3_)
                  {
                     _loc1_.mouseEnabled = false;
                     if(!_loc3_)
                     {
                        _loc1_.mouseChildren = false;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           _loc1_.dynaBmpSourceName = "sparkles_shadow";
                           if(_loc2_ || _loc2_)
                           {
                              addr0095:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr00a9:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr0095);
                     }
                     §§goto(addr00a9);
                  }
                  §§goto(addr0095);
               }
            }
         }
         §§goto(addr00a9);
      }
      
      private function _BoosterpackDetail_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.horizontalAlign = "center";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.width = 41;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0063:
                     _loc1_.left = 0;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0075:
                        _loc1_.paddingTop = 76;
                        if(!_loc2_)
                        {
                           addr008c:
                           _loc1_.mxmlContent = [this._BoosterpackDetail_DynamicImageButton1_i()];
                           if(_loc3_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    addr00b0:
                                    _loc1_.document = this;
                                 }
                              }
                              return _loc1_;
                           }
                        }
                        §§goto(addr00b0);
                     }
                  }
                  §§goto(addr008c);
               }
               §§goto(addr0063);
            }
         }
         §§goto(addr0075);
      }
      
      private function _BoosterpackDetail_DynamicImageButton1_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!_loc2_)
         {
            _loc1_.styleName = "listLeft";
            if(_loc3_)
            {
               _loc1_.addEventListener("click",this.__scrollLeft_click);
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.id = "scrollLeft";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr007a:
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              §§goto(addr0083);
                           }
                           §§goto(addr008d);
                        }
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr008d);
               }
               §§goto(addr007a);
            }
         }
         addr0083:
         this.scrollLeft = _loc1_;
         if(_loc3_)
         {
            addr008d:
            BindingManager.executeBindings(this,"scrollLeft",this.scrollLeft);
         }
         return _loc1_;
      }
      
      public function __scrollLeft_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this.handleLeft();
         }
      }
      
      private function _BoosterpackDetail_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.horizontalAlign = "center";
            if(!_loc3_)
            {
               _loc1_.right = 0;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.width = 41;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc2_ || Boolean(this))
                     {
                        addr006b:
                        _loc1_.paddingTop = 76;
                        if(!(_loc3_ && _loc2_))
                        {
                           §§goto(addr008b);
                        }
                        §§goto(addr009b);
                     }
                  }
                  addr008b:
                  _loc1_.mxmlContent = [this._BoosterpackDetail_DynamicImageButton2_i()];
                  if(!_loc3_)
                  {
                     addr009b:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr009b);
            }
         }
         §§goto(addr006b);
      }
      
      private function _BoosterpackDetail_DynamicImageButton2_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.styleName = "listRight";
            if(_loc3_)
            {
               _loc1_.addEventListener("click",this.__scrollRight_click);
               addr0033:
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.id = "scrollRight";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0078:
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr0089:
                              this.scrollRight = _loc1_;
                              if(_loc3_)
                              {
                                 addr0093:
                                 BindingManager.executeBindings(this,"scrollRight",this.scrollRight);
                              }
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr0093);
               }
               §§goto(addr0089);
            }
            §§goto(addr0078);
         }
         §§goto(addr0033);
      }
      
      public function __scrollRight_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this.handleRight();
         }
      }
      
      private function _BoosterpackDetail_VGroup3_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.gap = 0;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc3_)
                     {
                        addr006c:
                        _loc1_.paddingTop = 212;
                        if(_loc3_)
                        {
                           _loc1_.mxmlContent = [this._BoosterpackDetail_HGroup2_c(),this._BoosterpackDetail_Group3_c(),this._BoosterpackDetail_MultistateButton1_i(),this._BoosterpackDetail_MultistateButton2_i()];
                           addr0078:
                           if(_loc3_)
                           {
                              addr00a6:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr00ba:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           §§goto(addr00be);
                        }
                        §§goto(addr00a6);
                     }
                     addr00be:
                     return _loc1_;
                  }
                  §§goto(addr006c);
               }
               §§goto(addr00ba);
            }
            §§goto(addr00a6);
         }
         §§goto(addr0078);
      }
      
      private function _BoosterpackDetail_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_)
               {
                  _loc1_.width = 170;
                  if(_loc3_ || Boolean(this))
                  {
                     addr0055:
                     _loc1_.height = 38;
                     if(_loc3_)
                     {
                        _loc1_.mxmlContent = [this._BoosterpackDetail_LocaLabel1_i()];
                        addr005f:
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           §§goto(addr0083);
                        }
                        §§goto(addr0097);
                     }
                  }
                  addr0083:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr0097:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0097);
            }
            §§goto(addr005f);
         }
         §§goto(addr0055);
      }
      
      private function _BoosterpackDetail_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.maxDisplayedLines = 2;
            if(_loc2_ || _loc3_)
            {
               _loc1_.percentWidth = 90;
               if(_loc2_)
               {
                  _loc1_.styleName = "boosterpackLabel";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.id = "boosterpackLabel";
                     if(_loc2_)
                     {
                        addr0070:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0089:
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 §§goto(addr0092);
                              }
                              §§goto(addr00a4);
                           }
                        }
                        addr0092:
                        this.boosterpackLabel = _loc1_;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr00a4:
                           BindingManager.executeBindings(this,"boosterpackLabel",this.boosterpackLabel);
                        }
                        §§goto(addr00b1);
                     }
                     addr00b1:
                     return _loc1_;
                  }
                  §§goto(addr0089);
               }
               §§goto(addr0070);
            }
            §§goto(addr0092);
         }
         §§goto(addr0070);
      }
      
      private function _BoosterpackDetail_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.height = 10;
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0053:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0053);
      }
      
      private function _BoosterpackDetail_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.bottom = 0;
            if(_loc3_)
            {
               addr0033:
               _loc1_.width = 205;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc3_ || Boolean(this))
                  {
                     addr0064:
                     _loc1_.addEventListener("click",this.__goodBuyButton_click);
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.id = "goodBuyButton";
                        if(!(_loc2_ && _loc3_))
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 _loc1_.document = this;
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr00b9:
                                    this.goodBuyButton = _loc1_;
                                    if(!(_loc2_ && Boolean(_loc1_)))
                                    {
                                       addr00cb:
                                       BindingManager.executeBindings(this,"goodBuyButton",this.goodBuyButton);
                                    }
                                 }
                                 §§goto(addr00d8);
                              }
                              §§goto(addr00cb);
                           }
                           §§goto(addr00b9);
                        }
                        §§goto(addr00d8);
                     }
                     §§goto(addr00cb);
                  }
                  addr00d8:
                  return _loc1_;
               }
               §§goto(addr00cb);
            }
            §§goto(addr0064);
         }
         §§goto(addr0033);
      }
      
      public function __goodBuyButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.handleBuy(param1);
         }
      }
      
      private function _BoosterpackDetail_MultistateButton2_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.useConfirmation = true;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.bottom = 0;
               if(_loc3_)
               {
                  §§goto(addr0044);
               }
               §§goto(addr00db);
            }
            §§goto(addr009e);
         }
         addr0044:
         _loc1_.width = 205;
         if(!_loc2_)
         {
            _loc1_.verticalCenter = 0;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.imageNameRight = "layer_rc_icon";
               if(_loc3_)
               {
                  _loc1_.libNameRight = "gui_resources_icons";
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.addEventListener("click",this.__rCBuyButton_click);
                     if(!_loc2_)
                     {
                        addr009e:
                        _loc1_.id = "rCBuyButton";
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr00bc:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 _loc1_.document = this;
                                 if(!_loc2_)
                                 {
                                    §§goto(addr00d1);
                                 }
                                 §§goto(addr00db);
                              }
                           }
                           §§goto(addr00d1);
                        }
                        §§goto(addr00db);
                     }
                     addr00d1:
                     this.rCBuyButton = _loc1_;
                     if(!_loc2_)
                     {
                        addr00db:
                        BindingManager.executeBindings(this,"rCBuyButton",this.rCBuyButton);
                     }
                     §§goto(addr00e8);
                  }
               }
               §§goto(addr009e);
            }
            §§goto(addr00bc);
         }
         addr00e8:
         return _loc1_;
      }
      
      public function __rCBuyButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this.handleBuy(param1);
         }
      }
      
      private function _BoosterpackDetail_Group4_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.top = 10;
            if(_loc2_)
            {
               _loc1_.mxmlContent = [this._BoosterpackDetail_BriskImageDynaLib5_c()];
               if(_loc2_ || Boolean(_loc1_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _BoosterpackDetail_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_boosterpackBook";
            if(_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(!_loc3_)
               {
                  _loc1_.dynaBmpSourceName = "blue_line_long";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr006c:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0070);
                  }
                  §§goto(addr006c);
               }
               §§goto(addr0070);
            }
            §§goto(addr006c);
         }
         addr0070:
         return _loc1_;
      }
      
      private function _BoosterpackDetail_Group5_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  addr004b:
                  _loc1_.mxmlContent = [this._BoosterpackDetail_VGroup4_c(),this._BoosterpackDetail_VGroup5_c()];
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr006d:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0071);
                  }
                  §§goto(addr006d);
               }
               §§goto(addr0071);
            }
            §§goto(addr004b);
         }
         addr0071:
         return _loc1_;
      }
      
      private function _BoosterpackDetail_VGroup4_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.percentHeight = 100;
            if(_loc3_ || _loc2_)
            {
               _loc1_.gap = 0;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.horizontalAlign = "right";
                  if(!_loc2_)
                  {
                     addr006a:
                     _loc1_.mxmlContent = [this._BoosterpackDetail_BriskImageDynaLib6_i(),this._BoosterpackDetail_BriskImageDynaLib7_i()];
                     if(!_loc2_)
                     {
                        §§goto(addr0080);
                     }
                     §§goto(addr0094);
                  }
                  addr0080:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        addr0094:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0094);
         }
         §§goto(addr006a);
      }
      
      private function _BoosterpackDetail_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_boosterpackBook";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "polaroid_right_top";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.id = "boosterPackGeneralContent";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr0079);
                        }
                     }
                     §§goto(addr008a);
                  }
                  addr0079:
                  _loc1_.document = this;
                  if(_loc3_ || Boolean(this))
                  {
                     addr008a:
                     this.boosterPackGeneralContent = _loc1_;
                     if(!_loc2_)
                     {
                        addr0094:
                        BindingManager.executeBindings(this,"boosterPackGeneralContent",this.boosterPackGeneralContent);
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0094);
            }
         }
         §§goto(addr008a);
      }
      
      private function _BoosterpackDetail_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_boosterpackBook";
            if(!_loc2_)
            {
               _loc1_.id = "boosterpackSpecialContent";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                        if(!(_loc2_ && _loc3_))
                        {
                           §§goto(addr0071);
                        }
                     }
                     §§goto(addr0083);
                  }
               }
               addr0071:
               this.boosterpackSpecialContent = _loc1_;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0083:
                  BindingManager.executeBindings(this,"boosterpackSpecialContent",this.boosterpackSpecialContent);
               }
               §§goto(addr0090);
            }
            addr0090:
            return _loc1_;
         }
         §§goto(addr0071);
      }
      
      private function _BoosterpackDetail_VGroup5_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.width = 180;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.left = 16;
               if(!_loc3_)
               {
                  _loc1_.percentHeight = 100;
                  if(_loc2_)
                  {
                     _loc1_.mxmlContent = [this._BoosterpackDetail_Group6_c(),this._BoosterpackDetail_LocaLabel2_i(),this._BoosterpackDetail_Group7_c(),this._BoosterpackDetail_LocaLabel3_i()];
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _BoosterpackDetail_Group6_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.height = 6;
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _BoosterpackDetail_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.maxDisplayedLines = 4;
            if(_loc2_)
            {
               §§goto(addr0029);
            }
            §§goto(addr003b);
         }
         addr0029:
         _loc1_.percentWidth = 100;
         if(_loc2_ || Boolean(this))
         {
            addr003b:
            _loc1_.styleName = "boosterpackInfo";
            if(!_loc3_)
            {
               _loc1_.id = "normalContentLabel";
               if(_loc2_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0071:
                        _loc1_.document = this;
                        if(!(_loc3_ && _loc3_))
                        {
                           §§goto(addr008e);
                        }
                        §§goto(addr00a0);
                     }
                  }
                  addr008e:
                  this.normalContentLabel = _loc1_;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr00a0:
                     BindingManager.executeBindings(this,"normalContentLabel",this.normalContentLabel);
                  }
                  §§goto(addr00ad);
               }
               §§goto(addr0071);
            }
            §§goto(addr00a0);
         }
         addr00ad:
         return _loc1_;
      }
      
      private function _BoosterpackDetail_Group7_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.height = 140;
            if(!_loc2_)
            {
               §§goto(addr0040);
            }
            §§goto(addr004c);
         }
         addr0040:
         if(!_loc1_.document)
         {
            if(!_loc2_)
            {
               addr004c:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _BoosterpackDetail_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.maxDisplayedLines = 4;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.percentWidth = 100;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.styleName = "boosterpackInfo";
                  if(!_loc2_)
                  {
                     _loc1_.id = "specialContentLabel";
                     if(!_loc2_)
                     {
                        addr0070:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr0098:
                                 this.specialContentLabel = _loc1_;
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr00aa:
                                    BindingManager.executeBindings(this,"specialContentLabel",this.specialContentLabel);
                                 }
                              }
                           }
                           §§goto(addr00b7);
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr00b7);
                  }
                  §§goto(addr0070);
               }
               §§goto(addr00aa);
            }
         }
         addr00b7:
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get backgroundGfx() : BriskImageDynaLib
      {
         return this._1893627029backgroundGfx;
      }
      
      public function set backgroundGfx(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1893627029backgroundGfx;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1893627029backgroundGfx = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backgroundGfx",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0064);
      }
      
      [Bindable(event="propertyChange")]
      public function get boosterPackGeneralContent() : BriskImageDynaLib
      {
         return this._523126938boosterPackGeneralContent;
      }
      
      public function set boosterPackGeneralContent(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._523126938boosterPackGeneralContent;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._523126938boosterPackGeneralContent = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0061:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boosterPackGeneralContent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0061);
            }
         }
         addr007f:
      }
      
      [Bindable(event="propertyChange")]
      public function get boosterpackImage() : BriskImageDynaLib
      {
         return this._779621070boosterpackImage;
      }
      
      public function set boosterpackImage(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._779621070boosterpackImage;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._779621070boosterpackImage = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0051:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boosterpackImage",_loc2_,param1));
                        }
                     }
                     §§goto(addr0060);
                  }
               }
               §§goto(addr0051);
            }
         }
         addr0060:
      }
      
      [Bindable(event="propertyChange")]
      public function get boosterpackLabel() : LocaLabel
      {
         return this._777207093boosterpackLabel;
      }
      
      public function set boosterpackLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._777207093boosterpackLabel;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._777207093boosterpackLabel = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boosterpackLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0065);
            }
         }
         addr0074:
      }
      
      [Bindable(event="propertyChange")]
      public function get boosterpackSpecialContent() : BriskImageDynaLib
      {
         return this._2116806775boosterpackSpecialContent;
      }
      
      public function set boosterpackSpecialContent(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2116806775boosterpackSpecialContent;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._2116806775boosterpackSpecialContent = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boosterpackSpecialContent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr0072);
               }
            }
         }
         addr0081:
      }
      
      [Bindable(event="propertyChange")]
      public function get goodBuyButton() : MultistateButton
      {
         return this._1950300443goodBuyButton;
      }
      
      public function set goodBuyButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1950300443goodBuyButton;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1950300443goodBuyButton = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goodBuyButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr006a);
      }
      
      [Bindable(event="propertyChange")]
      public function get normalContentLabel() : LocaLabel
      {
         return this._1806488446normalContentLabel;
      }
      
      public function set normalContentLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1806488446normalContentLabel;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1806488446normalContentLabel = param1;
                  if(!_loc4_)
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"normalContentLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr0058);
            }
            addr007e:
            return;
         }
         §§goto(addr0058);
      }
      
      [Bindable(event="propertyChange")]
      public function get pricingBg() : BriskImageDynaLib
      {
         return this._2121281877pricingBg;
      }
      
      public function set pricingBg(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2121281877pricingBg;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._2121281877pricingBg = param1;
                  addr0042:
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0071:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pricingBg",_loc2_,param1));
                        }
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr0071);
               }
            }
            addr0080:
            return;
         }
         §§goto(addr0042);
      }
      
      [Bindable(event="propertyChange")]
      public function get rCBuyButton() : MultistateButton
      {
         return this._1756850759rCBuyButton;
      }
      
      public function set rCBuyButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1756850759rCBuyButton;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr0038:
                  this._1756850759rCBuyButton = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rCBuyButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr006f);
               }
            }
            addr007e:
            return;
         }
         §§goto(addr0038);
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollLeft() : DynamicImageButton
      {
         return this._66047092scrollLeft;
      }
      
      public function set scrollLeft(param1:DynamicImageButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._66047092scrollLeft;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._66047092scrollLeft = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     addr0061:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr0079:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollLeft",_loc2_,param1));
                        }
                     }
                     §§goto(addr0088);
                  }
               }
               §§goto(addr0079);
            }
            addr0088:
            return;
         }
         §§goto(addr0061);
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollRight() : DynamicImageButton
      {
         return this._2053120847scrollRight;
      }
      
      public function set scrollRight(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2053120847scrollRight;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._2053120847scrollRight = param1;
                  if(!_loc4_)
                  {
                     addr004e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollRight",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0065);
            }
            addr0074:
            return;
         }
         §§goto(addr004e);
      }
      
      [Bindable(event="propertyChange")]
      public function get specialContentLabel() : LocaLabel
      {
         return this._1151040172specialContentLabel;
      }
      
      public function set specialContentLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1151040172specialContentLabel;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._1151040172specialContentLabel = param1;
                  addr003f:
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"specialContentLabel",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr003f);
      }
   }
}

