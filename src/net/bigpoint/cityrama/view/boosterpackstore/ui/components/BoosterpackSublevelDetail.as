package net.bigpoint.cityrama.view.boosterpackstore.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.GradientEntry;
   import mx.graphics.RadialGradient;
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
   import spark.filters.DropShadowFilter;
   import spark.primitives.Rect;
   
   public class BoosterpackSublevelDetail extends Group
   {
      
      public static const SCROLL_LEFT:String = "SCROLL_LEFT";
      
      public static const SCROLL_RIGHT:String = "SCROLL_RIGHT";
      
      public static const BUY_BOOSTER_GOOD:String = "BUY_BOOSTER_GOOD";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         SCROLL_LEFT = "SCROLL_LEFT";
         if(_loc1_)
         {
            SCROLL_RIGHT = "SCROLL_RIGHT";
            if(!_loc2_)
            {
               BUY_BOOSTER_GOOD = "BUY_BOOSTER_GOOD";
            }
         }
      }
      
      private var _1893627029backgroundGfx:BriskImageDynaLib;
      
      private var _523126938boosterPackGeneralContent:BriskImageDynaLib;
      
      private var _779621070boosterpackImage:BriskImageDynaLib;
      
      private var _777207093boosterpackLabel:LocaLabel;
      
      private var _1950300443goodBuyButton:MultistateButton;
      
      private var _1105049158headerTextLabel:LocaLabel;
      
      private var _1806488446normalContentLabel:LocaLabel;
      
      private var _2121281877pricingBg:BriskImageDynaLib;
      
      private var _66047092scrollLeft:DynamicImageButton;
      
      private var _2053120847scrollRight:DynamicImageButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _isDirty:Boolean = false;
      
      private var _data:BoosterpackVo;
      
      public function BoosterpackSublevelDetail()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(_loc1_ || _loc2_)
            {
               addr0037:
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  this.mxmlContent = [this._BoosterpackSublevelDetail_HGroup1_c()];
               }
            }
            return;
         }
         §§goto(addr0037);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || Boolean(param1))
                  {
                     return;
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
         }
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.initialize();
         }
      }
      
      public function set data(param1:BoosterpackVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc3_ || Boolean(this))
               {
                  this._data = param1;
                  if(!_loc2_)
                  {
                     addr0054:
                     this._isDirty = true;
                     if(_loc3_)
                     {
                        addr005e:
                        invalidateProperties();
                     }
                  }
                  §§goto(addr0063);
               }
               §§goto(addr005e);
            }
            addr0063:
            return;
         }
         §§goto(addr0054);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.commitProperties();
            if(!_loc2_)
            {
               if(this._isDirty)
               {
                  if(!_loc2_)
                  {
                     this._isDirty = false;
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(this.boosterpackImage);
                        §§push("large_");
                        if(_loc1_ || _loc2_)
                        {
                           §§push(§§pop() + this._data.gfxId);
                        }
                        §§pop().dynaBmpSourceName = §§pop();
                        if(!_loc2_)
                        {
                           this.backgroundGfx.dynaBmpSourceName = "sublevel_booster_background_big";
                           if(!(_loc2_ && _loc2_))
                           {
                              addr0078:
                              §§push(this.goodBuyButton);
                              if(!_loc2_)
                              {
                                 §§pop().label = LocaUtils.getThousendSeperatedNumber(this._data.defaultCostAmount);
                                 if(!_loc2_)
                                 {
                                    if(this._data.defaultCostConfig.goodConfig)
                                    {
                                       if(_loc1_)
                                       {
                                          §§push(this.goodBuyButton);
                                          if(!_loc2_)
                                          {
                                             §§push("gui_popups_boosterpackBook");
                                             if(_loc1_ || Boolean(this))
                                             {
                                                §§pop().libNameRight = §§pop();
                                                if(_loc1_ || _loc1_)
                                                {
                                                   addr00e0:
                                                   addr00dc:
                                                   §§push(this.goodBuyButton);
                                                   §§push("icon_");
                                                   if(_loc1_ || _loc1_)
                                                   {
                                                      §§push(§§pop() + this._data.defaultCostConfig.goodConfig.gfxId);
                                                      if(_loc1_)
                                                      {
                                                         addr010d:
                                                         §§push(§§pop() + "_small");
                                                      }
                                                      §§pop().imageNameRight = §§pop();
                                                      if(_loc1_)
                                                      {
                                                         addr0119:
                                                         this.checkButtonStates();
                                                         if(!(_loc2_ && Boolean(this)))
                                                         {
                                                            addr012c:
                                                            this.setLabels();
                                                         }
                                                      }
                                                      §§goto(addr0132);
                                                   }
                                                   §§goto(addr010d);
                                                }
                                                §§goto(addr012c);
                                             }
                                             §§goto(addr010d);
                                          }
                                          §§goto(addr00e0);
                                       }
                                       §§goto(addr00dc);
                                    }
                                    §§goto(addr0119);
                                 }
                                 §§goto(addr0132);
                              }
                              §§goto(addr00e0);
                           }
                           §§goto(addr012c);
                        }
                        §§goto(addr0132);
                     }
                     §§goto(addr0119);
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0132);
            }
            §§goto(addr00dc);
         }
         addr0132:
      }
      
      public function checkButtonStates() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            if(this._data != null)
            {
               if(_loc1_)
               {
                  this.goodBuyButton.enabled = this._data.userCanAffordGoodPrice;
               }
            }
         }
      }
      
      private function setLabels() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(this.headerTextLabel);
            §§push(LocaUtils);
            §§push("rcl.goods.goodname");
            §§push("rcl.goods.goodname.");
            if(!(_loc2_ && Boolean(this)))
            {
               §§push(§§pop() + this._data.locaId);
               if(_loc3_)
               {
                  §§push(§§pop() + ".capital");
               }
            }
            §§pop().text = §§pop().getString(§§pop(),§§pop());
            if(_loc3_ || _loc2_)
            {
               §§push(this.boosterpackLabel);
               §§push(LocaUtils);
               §§push("rcl.goods.goodname");
               §§push("rcl.goods.goodname.");
               if(_loc3_ || Boolean(this))
               {
                  §§push(§§pop() + this._data.locaId);
               }
               §§pop().text = §§pop().getString(§§pop(),§§pop());
            }
         }
         §§push(LocaUtils);
         §§push("rcl.goods.goodname");
         §§push("rcl.goods.goodname.");
         if(_loc3_ || _loc2_)
         {
            §§push(§§pop() + this._data.defaultCostConfig.goodConfig.gfxId);
         }
         §§push(§§pop().getString(§§pop(),§§pop()));
         if(!(_loc2_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc3_)
         {
            this.goodBuyButton.toolTip = LocaUtils.getString("rcl.tooltips.boosterpackstore","rcl.tooltips.boosterpackstore.buyButton.amountType",[this.goodBuyButton.label,_loc1_]);
            if(_loc3_ || _loc2_)
            {
               addr00fe:
               §§push(this.normalContentLabel);
               §§push(LocaUtils);
               §§push("rcl.booklayer.boosterpackStore");
               §§push("rcl.booklayer.boosterpackStore.contentLabel.");
               if(!(_loc2_ && _loc3_))
               {
                  §§push(§§pop() + this._data.locaId);
               }
               §§pop().text = §§pop().getString(§§pop(),§§pop());
            }
            return;
         }
         §§goto(addr00fe);
      }
      
      private function handleBuy(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            dispatchEvent(new Event(BUY_BOOSTER_GOOD,true));
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
         if(_loc2_ || _loc2_)
         {
            dispatchEvent(new Event(SCROLL_LEFT,true));
         }
      }
      
      private function _BoosterpackSublevelDetail_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0052:
                  _loc1_.top = -20;
                  if(_loc2_)
                  {
                     _loc1_.mxmlContent = [this._BoosterpackSublevelDetail_Group2_c(),this._BoosterpackSublevelDetail_Group4_c(),this._BoosterpackSublevelDetail_VGroup4_c()];
                     addr005c:
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              addr0099:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr0099);
                  }
               }
               addr009d:
               return _loc1_;
            }
            §§goto(addr005c);
         }
         §§goto(addr0052);
      }
      
      private function _BoosterpackSublevelDetail_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.width = 290;
            if(_loc3_ || _loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.mxmlContent = [this._BoosterpackSublevelDetail_BriskImageDynaLib1_i(),this._BoosterpackSublevelDetail_BriskImageDynaLib2_i(),this._BoosterpackSublevelDetail_BriskImageDynaLib3_i(),this._BoosterpackSublevelDetail_BriskMCDynaLib1_c(),this._BoosterpackSublevelDetail_VGroup1_c(),this._BoosterpackSublevelDetail_VGroup2_c(),this._BoosterpackSublevelDetail_VGroup3_c()];
                  if(_loc3_ || _loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           addr00b5:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr00b9);
                  }
                  §§goto(addr00b5);
               }
            }
            addr00b9:
            return _loc1_;
         }
         §§goto(addr00b5);
      }
      
      private function _BoosterpackSublevelDetail_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.horizontalCenter = 0;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.top = 200;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr005a:
                  _loc1_.dynaLibName = "gui_popups_paperPopup";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.dynaBmpSourceName = "rewardcomponentPriceBg_big";
                     if(_loc3_ || Boolean(this))
                     {
                        addr0080:
                        _loc1_.id = "pricingBg";
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr00a2:
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    addr00ab:
                                    this.pricingBg = _loc1_;
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       BindingManager.executeBindings(this,"pricingBg",this.pricingBg);
                                    }
                                 }
                              }
                              §§goto(addr00ca);
                           }
                        }
                        §§goto(addr00ab);
                     }
                     §§goto(addr00a2);
                  }
                  §§goto(addr00ca);
               }
               §§goto(addr0080);
            }
            addr00ca:
            return _loc1_;
         }
         §§goto(addr005a);
      }
      
      private function _BoosterpackSublevelDetail_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_)
               {
                  addr0033:
                  _loc1_.top = 20;
                  if(_loc2_)
                  {
                     _loc1_.id = "backgroundGfx";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              _loc1_.document = this;
                              if(_loc2_ || _loc2_)
                              {
                                 addr0086:
                                 this.backgroundGfx = _loc1_;
                                 if(_loc2_ || _loc3_)
                                 {
                                    addr0098:
                                    BindingManager.executeBindings(this,"backgroundGfx",this.backgroundGfx);
                                 }
                                 §§goto(addr00a5);
                              }
                              §§goto(addr0098);
                           }
                           addr00a5:
                           return _loc1_;
                        }
                        §§goto(addr0086);
                     }
                  }
                  §§goto(addr0098);
               }
            }
            §§goto(addr0086);
         }
         §§goto(addr0033);
      }
      
      private function _BoosterpackSublevelDetail_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.top = 54;
            if(!_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.dynaLibName = "gui_popups_largeGoodIcons";
                  if(_loc2_ || _loc2_)
                  {
                     addr005b:
                     _loc1_.id = "boosterpackImage";
                     if(!(_loc3_ && Boolean(this)))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0085:
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr008e:
                                 this.boosterpackImage = _loc1_;
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr00a0:
                                    BindingManager.executeBindings(this,"boosterpackImage",this.boosterpackImage);
                                 }
                                 §§goto(addr00ad);
                              }
                              §§goto(addr00a0);
                           }
                           addr00ad:
                           return _loc1_;
                        }
                        §§goto(addr008e);
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr008e);
               }
               §§goto(addr00a0);
            }
            §§goto(addr005b);
         }
         §§goto(addr008e);
      }
      
      private function _BoosterpackSublevelDetail_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.dynaMCSourceName = "stickytape_top";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.width = 110;
                  if(_loc3_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.top = 13;
                        addr0075:
                        if(_loc3_ || _loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 addr00a7:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00ab);
                     }
                     §§goto(addr00a7);
                  }
               }
               §§goto(addr00ab);
            }
            §§goto(addr0075);
         }
         addr00ab:
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.horizontalAlign = "center";
            if(!_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.width = 41;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.left = 0;
                     if(_loc2_)
                     {
                        addr0062:
                        _loc1_.paddingTop = 76;
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0081:
                           _loc1_.mxmlContent = [this._BoosterpackSublevelDetail_DynamicImageButton1_i()];
                           if(_loc2_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    addr009d:
                                    _loc1_.document = this;
                                 }
                              }
                              return _loc1_;
                           }
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr009d);
               }
            }
            §§goto(addr0062);
         }
         §§goto(addr0081);
      }
      
      private function _BoosterpackSublevelDetail_DynamicImageButton1_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!_loc2_)
         {
            _loc1_.styleName = "listLeft";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.addEventListener("click",this.__scrollLeft_click);
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.id = "scrollLeft";
                  if(_loc3_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr008b:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              §§goto(addr0094);
                           }
                           §§goto(addr00a6);
                        }
                     }
                     addr0094:
                     this.scrollLeft = _loc1_;
                     if(_loc3_ || _loc3_)
                     {
                        addr00a6:
                        BindingManager.executeBindings(this,"scrollLeft",this.scrollLeft);
                     }
                     §§goto(addr00b3);
                  }
                  §§goto(addr008b);
               }
               §§goto(addr00b3);
            }
            §§goto(addr008b);
         }
         addr00b3:
         return _loc1_;
      }
      
      public function __scrollLeft_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this.handleLeft();
         }
      }
      
      private function _BoosterpackSublevelDetail_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.horizontalAlign = "center";
            if(_loc3_)
            {
               _loc1_.right = 0;
               if(_loc3_)
               {
                  _loc1_.width = 41;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc3_)
                     {
                        addr0062:
                        _loc1_.paddingTop = 76;
                        if(!(_loc2_ && Boolean(this)))
                        {
                           _loc1_.mxmlContent = [this._BoosterpackSublevelDetail_DynamicImageButton2_i()];
                           if(_loc3_ || _loc2_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    addr00a3:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                        }
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr00a3);
         }
         §§goto(addr0062);
      }
      
      private function _BoosterpackSublevelDetail_DynamicImageButton2_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.styleName = "listRight";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.addEventListener("click",this.__scrollRight_click);
               if(_loc2_)
               {
                  _loc1_.id = "scrollRight";
                  if(_loc2_ || _loc2_)
                  {
                     addr0068:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr0080:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr0089:
                              this.scrollRight = _loc1_;
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 addr009b:
                                 BindingManager.executeBindings(this,"scrollRight",this.scrollRight);
                              }
                              §§goto(addr00a8);
                           }
                           §§goto(addr009b);
                        }
                        addr00a8:
                        return _loc1_;
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr0080);
               }
            }
            §§goto(addr0068);
         }
         §§goto(addr0080);
      }
      
      public function __scrollRight_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.handleRight();
         }
      }
      
      private function _BoosterpackSublevelDetail_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(this)))
            {
               addr0038:
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.gap = 0;
                  if(_loc2_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc2_ || _loc2_)
                     {
                        _loc1_.paddingTop = 212;
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.mxmlContent = [this._BoosterpackSublevelDetail_HGroup2_c(),this._BoosterpackSublevelDetail_Group3_c(),this._BoosterpackSublevelDetail_MultistateButton1_i()];
                           addr007d:
                           if(!_loc3_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    _loc1_.document = this;
                                 }
                              }
                           }
                        }
                        §§goto(addr00bb);
                     }
                     §§goto(addr007d);
                  }
                  addr00bb:
                  return _loc1_;
               }
            }
            §§goto(addr007d);
         }
         §§goto(addr0038);
      }
      
      private function _BoosterpackSublevelDetail_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(!_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc3_)
               {
                  _loc1_.width = 170;
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr0051);
                  }
               }
               §§goto(addr008c);
            }
            addr0051:
            _loc1_.height = 38;
            if(_loc2_)
            {
               _loc1_.mxmlContent = [this._BoosterpackSublevelDetail_LocaLabel1_i()];
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        addr008c:
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr008c);
      }
      
      private function _BoosterpackSublevelDetail_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.maxDisplayedLines = 2;
            if(_loc3_ || _loc3_)
            {
               _loc1_.percentWidth = 90;
               if(!_loc2_)
               {
                  addr003e:
                  _loc1_.styleName = "boosterpackLabel";
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.id = "boosterpackLabel";
                     if(_loc3_ || _loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 addr0092:
                                 this.boosterpackLabel = _loc1_;
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr00a4:
                                    BindingManager.executeBindings(this,"boosterpackLabel",this.boosterpackLabel);
                                 }
                              }
                              §§goto(addr00b1);
                           }
                        }
                     }
                  }
                  §§goto(addr0092);
               }
               addr00b1:
               return _loc1_;
            }
            §§goto(addr00a4);
         }
         §§goto(addr003e);
      }
      
      private function _BoosterpackSublevelDetail_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.height = 10;
            if(!(_loc2_ && _loc2_))
            {
               §§goto(addr003c);
            }
            §§goto(addr0050);
         }
         addr003c:
         if(!_loc1_.document)
         {
            if(_loc3_ || _loc3_)
            {
               addr0050:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.bottom = 0;
            if(_loc3_)
            {
               _loc1_.width = 205;
               if(_loc3_)
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.addEventListener("click",this.__goodBuyButton_click);
                     if(!_loc2_)
                     {
                        _loc1_.id = "goodBuyButton";
                        if(_loc3_ || Boolean(this))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr009c:
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    addr00a5:
                                    this.goodBuyButton = _loc1_;
                                    if(!_loc2_)
                                    {
                                       addr00af:
                                       BindingManager.executeBindings(this,"goodBuyButton",this.goodBuyButton);
                                    }
                                 }
                              }
                              §§goto(addr00bc);
                           }
                           §§goto(addr00a5);
                        }
                        addr00bc:
                        return _loc1_;
                     }
                  }
                  §§goto(addr009c);
               }
               §§goto(addr00af);
            }
            §§goto(addr009c);
         }
         §§goto(addr00af);
      }
      
      public function __goodBuyButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.handleBuy(param1);
         }
      }
      
      private function _BoosterpackSublevelDetail_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.top = 10;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.mxmlContent = [this._BoosterpackSublevelDetail_BriskImageDynaLib4_c()];
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr005b:
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr005b);
      }
      
      private function _BoosterpackSublevelDetail_BriskImageDynaLib4_c() : BriskImageDynaLib
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
               if(!_loc3_)
               {
                  addr0059:
                  _loc1_.dynaBmpSourceName = "blue_line_long";
                  if(_loc2_)
                  {
                     §§goto(addr0064);
                  }
                  §§goto(addr0070);
               }
               addr0064:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0070:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0059);
      }
      
      private function _BoosterpackSublevelDetail_VGroup4_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.width = 440;
            if(!_loc3_)
            {
               _loc1_.maxWidth = 440;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.percentHeight = 100;
                  if(_loc2_)
                  {
                     _loc1_.mxmlContent = [this._BoosterpackSublevelDetail_Group5_c(),this._BoosterpackSublevelDetail_Group8_c(),this._BoosterpackSublevelDetail_Group9_c()];
                     addr005d:
                     if(!(_loc3_ && _loc3_))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0098:
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0098);
            }
            §§goto(addr005d);
         }
         §§goto(addr0098);
      }
      
      private function _BoosterpackSublevelDetail_Group5_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.height = 160;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.mxmlContent = [this._BoosterpackSublevelDetail_VGroup5_c()];
                  if(_loc3_)
                  {
                     §§goto(addr0069);
                  }
                  §§goto(addr007d);
               }
               addr0069:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr007d:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0081);
            }
         }
         addr0081:
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_VGroup5_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc2_ && _loc3_))
                  {
                     §§goto(addr0077);
                  }
                  §§goto(addr008d);
               }
               §§goto(addr00a1);
            }
            §§goto(addr008d);
         }
         addr0077:
         _loc1_.mxmlContent = [this._BoosterpackSublevelDetail_Group6_c(),this._BoosterpackSublevelDetail_LocaLabel3_i()];
         if(_loc3_)
         {
            addr008d:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr00a1:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_Group6_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.height = 75;
               if(_loc3_)
               {
                  addr005b:
                  _loc1_.mxmlContent = [this._BoosterpackSublevelDetail_Rect1_c(),this._BoosterpackSublevelDetail_LocaLabel2_i(),this._BoosterpackSublevelDetail_Group7_c()];
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0083:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0087);
                  }
               }
               §§goto(addr0083);
            }
            §§goto(addr005b);
         }
         addr0087:
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_Rect1_c() : Rect
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Rect = new Rect();
         if(_loc3_ || _loc2_)
         {
            _loc1_.left = 20;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.right = 20;
               if(_loc3_)
               {
                  _loc1_.top = 30;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr005a:
                     _loc1_.bottomLeftRadiusX = 10;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.bottomLeftRadiusY = 30;
                        if(!(_loc2_ && _loc2_))
                        {
                           _loc1_.bottomRightRadiusX = 10;
                           if(!_loc2_)
                           {
                              _loc1_.bottomRightRadiusY = 30;
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 _loc1_.topLeftRadiusX = 10;
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr00be:
                                    _loc1_.topLeftRadiusY = 30;
                                    if(_loc3_ || Boolean(this))
                                    {
                                       _loc1_.topRightRadiusX = 10;
                                       if(!_loc2_)
                                       {
                                          addr00dc:
                                          _loc1_.topRightRadiusY = 30;
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             _loc1_.percentHeight = 100;
                                             if(!_loc2_)
                                             {
                                                addr00f9:
                                                _loc1_.minHeight = 34;
                                                if(_loc3_ || _loc2_)
                                                {
                                                   _loc1_.maxHeight = 34;
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      addr011f:
                                                      _loc1_.fill = this._BoosterpackSublevelDetail_RadialGradient1_c();
                                                      if(!(_loc2_ && Boolean(this)))
                                                      {
                                                         addr0143:
                                                         _loc1_.filters = [this._BoosterpackSublevelDetail_DropShadowFilter1_c()];
                                                         if(_loc3_ || Boolean(this))
                                                         {
                                                            addr015c:
                                                            _loc1_.initialized(this,null);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr0163);
                                                }
                                                §§goto(addr011f);
                                             }
                                             §§goto(addr0163);
                                          }
                                          §§goto(addr00f9);
                                       }
                                       §§goto(addr015c);
                                    }
                                    §§goto(addr00f9);
                                 }
                                 addr0163:
                                 return _loc1_;
                              }
                              §§goto(addr00dc);
                           }
                           §§goto(addr0143);
                        }
                        §§goto(addr00be);
                     }
                     §§goto(addr0143);
                  }
               }
               §§goto(addr00be);
            }
            §§goto(addr00f9);
         }
         §§goto(addr005a);
      }
      
      private function _BoosterpackSublevelDetail_RadialGradient1_c() : RadialGradient
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:RadialGradient = new RadialGradient();
         if(!_loc3_)
         {
            _loc1_.entries = [this._BoosterpackSublevelDetail_GradientEntry1_c()];
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_GradientEntry1_c() : GradientEntry
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:GradientEntry = new GradientEntry();
         if(!_loc2_)
         {
            _loc1_.color = 165328;
            if(_loc3_)
            {
               _loc1_.ratio = 0.5;
               if(_loc3_)
               {
                  _loc1_.alpha = 0.45;
               }
            }
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_DropShadowFilter1_c() : DropShadowFilter
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.distance = 0;
            if(!_loc2_)
            {
               _loc1_.blurX = 3;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.blurY = 3;
                  §§goto(addr0053);
               }
               §§goto(addr0071);
            }
            addr0053:
            if(_loc3_ || Boolean(this))
            {
               addr0071:
               _loc1_.color = 165328;
               if(_loc3_ || _loc3_)
               {
                  addr0084:
                  _loc1_.alpha = 0.45;
               }
            }
            return _loc1_;
         }
         §§goto(addr0084);
      }
      
      private function _BoosterpackSublevelDetail_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.styleName = "StatusBarStylePadding";
            if(!_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.maxDisplayedLines = 1;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.setStyle("textAlign","center");
                     if(!(_loc3_ && _loc3_))
                     {
                        addr006e:
                        _loc1_.setStyle("paddingTop",41);
                        if(!_loc3_)
                        {
                           _loc1_.id = "headerTextLabel";
                           if(_loc2_)
                           {
                              addr0093:
                              if(!_loc1_.document)
                              {
                                 if(!_loc3_)
                                 {
                                    addr009f:
                                    _loc1_.document = this;
                                    if(_loc2_)
                                    {
                                       addr00a8:
                                       this.headerTextLabel = _loc1_;
                                       if(!_loc3_)
                                       {
                                          addr00b2:
                                          BindingManager.executeBindings(this,"headerTextLabel",this.headerTextLabel);
                                       }
                                       §§goto(addr00bf);
                                    }
                                    §§goto(addr00b2);
                                 }
                                 §§goto(addr00bf);
                              }
                              §§goto(addr00a8);
                           }
                           §§goto(addr009f);
                        }
                        §§goto(addr00bf);
                     }
                     §§goto(addr0093);
                  }
                  addr00bf:
                  return _loc1_;
               }
               §§goto(addr00b2);
            }
            §§goto(addr0093);
         }
         §§goto(addr006e);
      }
      
      private function _BoosterpackSublevelDetail_Group7_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.top = 22;
            if(_loc3_ || _loc2_)
            {
               _loc1_.left = 25;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.mxmlContent = [this._BoosterpackSublevelDetail_BriskImageDynaLib5_c()];
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr007b:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr007b);
      }
      
      private function _BoosterpackSublevelDetail_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(!_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr005d:
                  _loc1_.dynaBmpSourceName = "infolayer_icon_info";
                  if(!_loc2_)
                  {
                     addr0068:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0068);
         }
         §§goto(addr005d);
      }
      
      private function _BoosterpackSublevelDetail_LocaLabel3_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.maxDisplayedLines = 3;
            if(!_loc3_)
            {
               _loc1_.percentWidth = 80;
               if(_loc2_)
               {
                  _loc1_.styleName = "largeDetailComponentSubtextBig";
                  if(_loc2_)
                  {
                     _loc1_.setStyle("textAlign","center");
                     if(_loc2_)
                     {
                        _loc1_.setStyle("fontSize",13);
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.id = "normalContentLabel";
                           if(!(_loc3_ && Boolean(this)))
                           {
                              §§goto(addr008a);
                           }
                           §§goto(addr00a2);
                        }
                        addr008a:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr00a2:
                              _loc1_.document = this;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 §§goto(addr00b3);
                              }
                           }
                           §§goto(addr00bd);
                        }
                        addr00b3:
                        this.normalContentLabel = _loc1_;
                        if(!_loc3_)
                        {
                           addr00bd:
                           BindingManager.executeBindings(this,"normalContentLabel",this.normalContentLabel);
                        }
                        §§goto(addr00ca);
                     }
                     §§goto(addr00a2);
                  }
                  addr00ca:
                  return _loc1_;
               }
               §§goto(addr00a2);
            }
            §§goto(addr008a);
         }
         §§goto(addr00bd);
      }
      
      private function _BoosterpackSublevelDetail_Group8_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc3_)
         {
            _loc1_.height = 5;
            if(_loc3_)
            {
               addr003e:
               _loc1_.percentWidth = 100;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.mxmlContent = [this._BoosterpackSublevelDetail_BriskImageDynaLib6_c()];
                  if(!(_loc2_ && _loc3_))
                  {
                     §§goto(addr0075);
                  }
                  §§goto(addr0081);
               }
               addr0075:
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr0081:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0085);
            }
            addr0085:
            return _loc1_;
         }
         §§goto(addr003e);
      }
      
      private function _BoosterpackSublevelDetail_BriskImageDynaLib6_c() : BriskImageDynaLib
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
               _loc1_.horizontalCenter = 0;
               if(_loc3_)
               {
                  addr0059:
                  _loc1_.dynaBmpSourceName = "horizontal_line";
                  if(_loc3_ || _loc2_)
                  {
                     addr006d:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr006d);
            }
            addr007d:
            return _loc1_;
         }
         §§goto(addr0059);
      }
      
      private function _BoosterpackSublevelDetail_Group9_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.height = 190;
               if(!_loc3_)
               {
                  addr0051:
                  _loc1_.mxmlContent = [this._BoosterpackSublevelDetail_BriskImageDynaLib7_i()];
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     §§goto(addr0069);
                  }
                  §§goto(addr0075);
               }
               addr0069:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0075:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0079);
            }
            §§goto(addr0051);
         }
         addr0079:
         return _loc1_;
      }
      
      private function _BoosterpackSublevelDetail_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_boosterpackBook";
            if(!_loc3_)
            {
               _loc1_.dynaBmpSourceName = "polaroid_right_btm_sublevel";
               if(!_loc3_)
               {
                  _loc1_.id = "boosterPackGeneralContent";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr0059:
                           _loc1_.document = this;
                           if(!(_loc3_ && _loc3_))
                           {
                              addr0077:
                              this.boosterPackGeneralContent = _loc1_;
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 addr0089:
                                 BindingManager.executeBindings(this,"boosterPackGeneralContent",this.boosterPackGeneralContent);
                              }
                              §§goto(addr0096);
                           }
                           §§goto(addr0089);
                        }
                        §§goto(addr0096);
                     }
                  }
               }
               §§goto(addr0077);
            }
            §§goto(addr0059);
         }
         addr0096:
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
               if(!_loc3_)
               {
                  this._1893627029backgroundGfx = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backgroundGfx",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0070);
      }
      
      [Bindable(event="propertyChange")]
      public function get boosterPackGeneralContent() : BriskImageDynaLib
      {
         return this._523126938boosterPackGeneralContent;
      }
      
      public function set boosterPackGeneralContent(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._523126938boosterPackGeneralContent;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr0036:
                  this._523126938boosterPackGeneralContent = param1;
                  if(_loc3_ || _loc3_)
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boosterPackGeneralContent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr0054);
            }
            addr007a:
            return;
         }
         §§goto(addr0036);
      }
      
      [Bindable(event="propertyChange")]
      public function get boosterpackImage() : BriskImageDynaLib
      {
         return this._779621070boosterpackImage;
      }
      
      public function set boosterpackImage(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._779621070boosterpackImage;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._779621070boosterpackImage = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr0066);
               }
               addr0057:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0066:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boosterpackImage",_loc2_,param1));
                  }
               }
               §§goto(addr0075);
            }
            addr0075:
            return;
         }
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get boosterpackLabel() : LocaLabel
      {
         return this._777207093boosterpackLabel;
      }
      
      public function set boosterpackLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._777207093boosterpackLabel;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._777207093boosterpackLabel = param1;
                  if(!_loc3_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boosterpackLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0057);
            }
         }
         addr0075:
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
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._1950300443goodBuyButton = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     §§goto(addr0069);
                  }
                  §§goto(addr0078);
               }
               addr0069:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr0078:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goodBuyButton",_loc2_,param1));
                  }
               }
               §§goto(addr0087);
            }
            addr0087:
            return;
         }
         §§goto(addr0069);
      }
      
      [Bindable(event="propertyChange")]
      public function get headerTextLabel() : LocaLabel
      {
         return this._1105049158headerTextLabel;
      }
      
      public function set headerTextLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1105049158headerTextLabel;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  addr003f:
                  this._1105049158headerTextLabel = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerTextLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0076);
            }
            addr0085:
            return;
         }
         §§goto(addr003f);
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
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr0041:
                  this._1806488446normalContentLabel = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0079:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"normalContentLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr0079);
               }
            }
            addr0088:
            return;
         }
         §§goto(addr0041);
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
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pricingBg",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0075);
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollLeft() : DynamicImageButton
      {
         return this._66047092scrollLeft;
      }
      
      public function set scrollLeft(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._66047092scrollLeft;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._66047092scrollLeft = param1;
                  addr003f:
                  if(!_loc4_)
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollLeft",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0054);
            }
            addr007b:
            return;
         }
         §§goto(addr003f);
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollRight() : DynamicImageButton
      {
         return this._2053120847scrollRight;
      }
      
      public function set scrollRight(param1:DynamicImageButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2053120847scrollRight;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._2053120847scrollRight = param1;
                  if(!_loc3_)
                  {
                     addr0045:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0054:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollRight",_loc2_,param1));
                        }
                     }
                     §§goto(addr0063);
                  }
               }
               §§goto(addr0054);
            }
            addr0063:
            return;
         }
         §§goto(addr0045);
      }
   }
}

