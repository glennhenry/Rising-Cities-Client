package net.bigpoint.cityrama.view.cityTreasury.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.GradientEntry;
   import mx.graphics.LinearGradient;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryContentComponent;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DebossedBackgroundComponent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Rect;
   import spark.skins.SparkSkin;
   
   public class CityTreasuryRentCollectorSkin extends SparkSkin
   {
      
      private var _693351384bigItemBg:BriskImageDynaLib;
      
      private var _1138409996bigItemGroup:Group;
      
      private var _358215371buttonIcon:BriskImageDynaLib;
      
      private var _253311651extraText:LocaLabel;
      
      private var _1166031975headerLabel:LocaLabel;
      
      private var _8439162mainText:LocaLabel;
      
      private var _807087456packGfx:BriskImageDynaLib;
      
      private var _979153895packIconGfx:BriskImageDynaLib;
      
      private var _1481293013priceLabel:LocaLabel;
      
      private var _2125985571priceLine:Rect;
      
      private var _1082037139purchaseButton:MultistateButton;
      
      private var _1341947277purchaseLabel:LocaLabel;
      
      private var _797549435runtimeHeader:LocaLabel;
      
      private var _1917511164runtimeLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:CityTreasuryContentComponent;
      
      public function CityTreasuryRentCollectorSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super();
            if(!(_loc2_ && Boolean(this)))
            {
               mx_internal::_document = this;
               §§goto(addr002d);
            }
            §§goto(addr006d);
         }
         addr002d:
         if(_loc1_ || _loc1_)
         {
            this.percentWidth = 100;
            if(_loc1_ || _loc2_)
            {
               addr006d:
               this.percentHeight = 100;
               if(!_loc2_)
               {
                  addr0077:
                  this.mxmlContent = [this._CityTreasuryRentCollectorSkin_HGroup1_c()];
                  if(!_loc2_)
                  {
                     this.addEventListener("creationComplete",this.___CityTreasuryRentCollectorSkin_SparkSkin1_creationComplete);
                  }
               }
               §§goto(addr0093);
            }
            §§goto(addr0077);
         }
         addr0093:
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
                  if(_loc3_)
                  {
                     §§goto(addr0043);
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         addr0043:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.initialize();
         }
      }
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.runtimeHeader.text = LocaUtils.getString("rcl.booklayer.specialrebuy","rcl.booklayer.specialrebuy.rentCollector.runtime");
         }
      }
      
      private function _CityTreasuryRentCollectorSkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.gap = 3;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_VGroup1_c(),this._CityTreasuryRentCollectorSkin_Group5_c()];
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr0088:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr0098);
                  }
                  §§goto(addr0088);
               }
            }
            addr0098:
            return _loc1_;
         }
         §§goto(addr0088);
      }
      
      private function _CityTreasuryRentCollectorSkin_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.percentHeight = 100;
            if(!_loc3_)
            {
               _loc1_.verticalAlign = "top";
               if(_loc2_)
               {
                  _loc1_.gap = 0;
                  if(!_loc3_)
                  {
                     _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_Group1_i(),this._CityTreasuryRentCollectorSkin_VGroup3_c()];
                     if(!(_loc3_ && _loc2_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              addr0088:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr008c);
                     }
                     §§goto(addr0088);
                  }
               }
               addr008c:
               return _loc1_;
            }
         }
         §§goto(addr0088);
      }
      
      private function _CityTreasuryRentCollectorSkin_Group1_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_BriskImageDynaLib1_i(),this._CityTreasuryRentCollectorSkin_BriskImageDynaLib2_c(),this._CityTreasuryRentCollectorSkin_VGroup2_c(),this._CityTreasuryRentCollectorSkin_BriskImageDynaLib4_i()];
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.id = "bigItemGroup";
               if(!(_loc3_ && _loc2_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0075:
                        _loc1_.document = this;
                        if(!(_loc3_ && _loc3_))
                        {
                           §§goto(addr0092);
                        }
                     }
                     §§goto(addr00a4);
                  }
                  addr0092:
                  this.bigItemGroup = _loc1_;
                  if(_loc2_ || Boolean(this))
                  {
                     addr00a4:
                     BindingManager.executeBindings(this,"bigItemGroup",this.bigItemGroup);
                  }
                  §§goto(addr00b1);
               }
               §§goto(addr00a4);
            }
            §§goto(addr0075);
         }
         addr00b1:
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "ressource_cardboard_big";
               if(!_loc3_)
               {
                  _loc1_.id = "bigItemBg";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0055:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr006d:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr0076:
                              this.bigItemBg = _loc1_;
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr0088:
                                 BindingManager.executeBindings(this,"bigItemBg",this.bigItemBg);
                              }
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr0076);
                  }
               }
               §§goto(addr006d);
            }
            §§goto(addr0055);
         }
         §§goto(addr0088);
      }
      
      private function _CityTreasuryRentCollectorSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "rentCollector_bg_shine";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.verticalCenter = 0;
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr007b:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr007f);
                     }
                     §§goto(addr007b);
                  }
               }
            }
         }
         addr007f:
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.verticalAlign = "middle";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_ || Boolean(this))
               {
                  addr0057:
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.percentWidth = 100;
                     if(_loc2_)
                     {
                        addr0073:
                        _loc1_.percentHeight = 100;
                        if(!_loc3_)
                        {
                           _loc1_.gap = 0;
                           if(!_loc3_)
                           {
                              addr0092:
                              _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_BriskImageDynaLib3_i(),this._CityTreasuryRentCollectorSkin_Group2_c()];
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 §§goto(addr00b0);
                              }
                              §§goto(addr00bc);
                           }
                           §§goto(addr00b0);
                        }
                     }
                     §§goto(addr00bc);
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0092);
            }
            §§goto(addr0057);
         }
         addr00b0:
         if(!_loc1_.document)
         {
            if(!_loc3_)
            {
               addr00bc:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
            if(_loc2_ || _loc2_)
            {
               _loc1_.id = "packGfx";
               if(_loc2_ || Boolean(_loc1_))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        addr0065:
                        _loc1_.document = this;
                        if(_loc2_ || Boolean(this))
                        {
                           addr0082:
                           this.packGfx = _loc1_;
                           if(_loc2_ || _loc2_)
                           {
                              addr0094:
                              BindingManager.executeBindings(this,"packGfx",this.packGfx);
                           }
                           §§goto(addr00a1);
                        }
                        §§goto(addr0094);
                     }
                     §§goto(addr00a1);
                  }
                  §§goto(addr0082);
               }
               §§goto(addr0065);
            }
         }
         addr00a1:
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.height = 6;
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0055:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0055);
      }
      
      private function _CityTreasuryRentCollectorSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_)
            {
               _loc1_.id = "packIconGfx";
               if(_loc3_ || Boolean(this))
               {
                  §§goto(addr0053);
               }
               §§goto(addr0073);
            }
            addr0053:
            if(!_loc1_.document)
            {
               if(_loc3_ || _loc3_)
               {
                  addr0073:
                  _loc1_.document = this;
                  if(_loc3_)
                  {
                     §§goto(addr007c);
                  }
               }
               §§goto(addr008e);
            }
            addr007c:
            this.packIconGfx = _loc1_;
            if(_loc3_ || Boolean(_loc1_))
            {
               addr008e:
               BindingManager.executeBindings(this,"packIconGfx",this.packIconGfx);
            }
            return _loc1_;
         }
         §§goto(addr008e);
      }
      
      private function _CityTreasuryRentCollectorSkin_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || _loc2_)
         {
            _loc1_.horizontalAlign = "center";
            if(_loc2_ || _loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc2_ || _loc2_)
               {
                  addr0059:
                  _loc1_.percentWidth = 100;
                  if(_loc2_)
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc2_)
                     {
                        _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_HGroup2_c(),this._CityTreasuryRentCollectorSkin_HGroup3_c(),this._CityTreasuryRentCollectorSkin_Group4_c()];
                        §§goto(addr006d);
                     }
                     §§goto(addr00a8);
                  }
                  addr006d:
                  if(_loc2_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr00a8:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr00ac);
               }
               addr00ac:
               return _loc1_;
            }
            §§goto(addr0059);
         }
         §§goto(addr006d);
      }
      
      private function _CityTreasuryRentCollectorSkin_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               addr0029:
               _loc1_.height = 20;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_)
                  {
                     addr005c:
                     _loc1_.horizontalAlign = "center";
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_LocaLabel1_i()];
                        if(_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 addr0082:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr0086);
                        }
                     }
                     §§goto(addr0082);
                  }
                  addr0086:
                  return _loc1_;
               }
            }
            §§goto(addr005c);
         }
         §§goto(addr0029);
      }
      
      private function _CityTreasuryRentCollectorSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc2_)
         {
            _loc1_.styleName = "miniLayerFlavourTextXpresso";
            if(_loc3_ || _loc2_)
            {
               addr003b:
               _loc1_.maxDisplayedLines = 1;
               if(!_loc2_)
               {
                  _loc1_.id = "purchaseLabel";
                  if(_loc3_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0070:
                           _loc1_.document = this;
                           if(_loc3_ || Boolean(this))
                           {
                              §§goto(addr008f);
                           }
                        }
                        §§goto(addr00a1);
                     }
                  }
                  addr008f:
                  this.purchaseLabel = _loc1_;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr00a1:
                     BindingManager.executeBindings(this,"purchaseLabel",this.purchaseLabel);
                  }
                  return _loc1_;
               }
               §§goto(addr00a1);
            }
            §§goto(addr0070);
         }
         §§goto(addr003b);
      }
      
      private function _CityTreasuryRentCollectorSkin_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_)
               {
                  addr0047:
                  _loc1_.horizontalAlign = "center";
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_Group3_c()];
                     if(_loc3_ || _loc3_)
                     {
                        addr007d:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              addr0091:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0095);
                     }
                     §§goto(addr0091);
                  }
               }
               addr0095:
               return _loc1_;
            }
            §§goto(addr007d);
         }
         §§goto(addr0047);
      }
      
      private function _CityTreasuryRentCollectorSkin_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.minWidth = 15;
            if(_loc3_)
            {
               _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_LocaLabel2_i(),this._CityTreasuryRentCollectorSkin_Rect1_i()];
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr005c:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0060);
               }
               §§goto(addr005c);
            }
            addr0060:
            return _loc1_;
         }
         §§goto(addr005c);
      }
      
      private function _CityTreasuryRentCollectorSkin_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.styleName = "priceTreasuryOld";
            if(!_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc2_)
               {
                  §§goto(addr0046);
               }
               §§goto(addr008c);
            }
            addr0046:
            _loc1_.id = "priceLabel";
            if(!(_loc3_ && Boolean(this)))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     _loc1_.document = this;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr0082:
                        this.priceLabel = _loc1_;
                        if(_loc2_)
                        {
                           addr008c:
                           BindingManager.executeBindings(this,"priceLabel",this.priceLabel);
                        }
                     }
                  }
                  §§goto(addr0099);
               }
               §§goto(addr0082);
            }
            addr0099:
            return _loc1_;
         }
         §§goto(addr0082);
      }
      
      private function _CityTreasuryRentCollectorSkin_Rect1_i() : Rect
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Rect = new Rect();
         if(!_loc3_)
         {
            _loc1_.height = 2;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.left = 0;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.right = 0;
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.top = 4;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.percentWidth = 100;
                        if(_loc2_)
                        {
                           §§goto(addr0080);
                        }
                        §§goto(addr009a);
                     }
                     §§goto(addr0091);
                  }
                  §§goto(addr00d1);
               }
            }
            §§goto(addr00c7);
         }
         addr0080:
         _loc1_.visible = false;
         if(!(_loc3_ && _loc2_))
         {
            addr0091:
            _loc1_.includeInLayout = false;
            if(!_loc3_)
            {
               _loc1_.fill = this._CityTreasuryRentCollectorSkin_SolidColor1_c();
               addr009a:
               if(!_loc3_)
               {
                  _loc1_.initialized(this,"priceLine");
                  if(!_loc3_)
                  {
                     §§goto(addr00c7);
                  }
                  §§goto(addr00d1);
               }
               addr00c7:
               this.priceLine = _loc1_;
               if(!_loc3_)
               {
                  addr00d1:
                  BindingManager.executeBindings(this,"priceLine",this.priceLine);
               }
               §§goto(addr00de);
            }
            §§goto(addr00d1);
         }
         addr00de:
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_SolidColor1_c() : SolidColor
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SolidColor = new SolidColor();
         if(!_loc3_)
         {
            _loc1_.color = 16733995;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc3_)
         {
            _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_MultistateButton1_i(),this._CityTreasuryRentCollectorSkin_BriskImageDynaLib5_i()];
            if(!_loc2_)
            {
               §§goto(addr0056);
            }
            §§goto(addr006a);
         }
         addr0056:
         if(!_loc1_.document)
         {
            if(_loc3_ || Boolean(_loc1_))
            {
               addr006a:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc2_)
         {
            _loc1_.width = 188;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.id = "purchaseButton";
               if(_loc2_)
               {
                  addr0048:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0071:
                           this.purchaseButton = _loc1_;
                           if(_loc2_)
                           {
                              addr007b:
                              BindingManager.executeBindings(this,"purchaseButton",this.purchaseButton);
                           }
                        }
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr0071);
               }
               addr0088:
               return _loc1_;
            }
            §§goto(addr007b);
         }
         §§goto(addr0048);
      }
      
      private function _CityTreasuryRentCollectorSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.id = "buttonIcon";
            if(_loc2_ || _loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0059:
                     _loc1_.document = this;
                     if(!_loc3_)
                     {
                        addr0062:
                        this.buttonIcon = _loc1_;
                        if(_loc2_)
                        {
                           addr006c:
                           BindingManager.executeBindings(this,"buttonIcon",this.buttonIcon);
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0062);
            }
            §§goto(addr006c);
         }
         §§goto(addr0059);
      }
      
      private function _CityTreasuryRentCollectorSkin_Group5_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc2_))
            {
               §§goto(addr003d);
            }
            §§goto(addr007e);
         }
         addr003d:
         _loc1_.height = 310;
         if(_loc2_)
         {
            _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_DebossedBackgroundComponent1_c(),this._CityTreasuryRentCollectorSkin_VGroup4_c()];
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               §§goto(addr0072);
            }
            §§goto(addr007e);
         }
         addr0072:
         if(!_loc1_.document)
         {
            if(_loc2_)
            {
               addr007e:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_DebossedBackgroundComponent1_c() : DebossedBackgroundComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DebossedBackgroundComponent = new DebossedBackgroundComponent();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc3_)
            {
               _loc1_.percentHeight = 98;
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr005d);
               }
            }
            §§goto(addr0069);
         }
         addr005d:
         if(!_loc1_.document)
         {
            if(!_loc3_)
            {
               addr0069:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_VGroup4_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.horizontalCenter = 0;
            if(_loc3_)
            {
               _loc1_.verticalAlign = "middle";
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0043:
                  _loc1_.horizontalAlign = "center";
                  if(_loc3_)
                  {
                     addr004d:
                     _loc1_.paddingTop = 10;
                     if(!_loc2_)
                     {
                        _loc1_.percentWidth = 95;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr0076:
                           _loc1_.percentHeight = 80;
                           if(!(_loc2_ && _loc2_))
                           {
                              _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_Group6_c(),this._CityTreasuryRentCollectorSkin_HGroup5_c(),this._CityTreasuryRentCollectorSkin_Group7_c(),this._CityTreasuryRentCollectorSkin_HGroup7_c()];
                              if(!(_loc2_ && _loc2_))
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(_loc3_ || Boolean(_loc1_))
                                    {
                                       addr00d1:
                                       _loc1_.document = this;
                                    }
                                 }
                              }
                           }
                        }
                        return _loc1_;
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr004d);
            }
            §§goto(addr00d1);
         }
         §§goto(addr0043);
      }
      
      private function _CityTreasuryRentCollectorSkin_Group6_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc3_)
            {
               §§goto(addr0047);
            }
            §§goto(addr007a);
         }
         addr0047:
         _loc1_.height = 40;
         if(!_loc2_)
         {
            _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_BlueBarComponent1_c(),this._CityTreasuryRentCollectorSkin_HGroup4_c()];
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr007a:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_BlueBarComponent1_c() : BlueBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr0059:
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  §§goto(addr0063);
               }
               §§goto(addr006f);
            }
            addr0063:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr006f:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0059);
      }
      
      private function _CityTreasuryRentCollectorSkin_HGroup4_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 90;
            if(_loc2_ || _loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_)
                  {
                     _loc1_.verticalAlign = "middle";
                     if(!_loc3_)
                     {
                        addr0066:
                        _loc1_.horizontalAlign = "center";
                        if(!_loc3_)
                        {
                           _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_LocaLabel3_i()];
                           §§goto(addr0070);
                        }
                        §§goto(addr00aa);
                     }
                     addr0070:
                     if(_loc2_ || Boolean(this))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(this))
                           {
                              addr00aa:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr00ae);
                  }
                  §§goto(addr0066);
               }
               §§goto(addr00aa);
            }
            §§goto(addr0066);
         }
         addr00ae:
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_LocaLabel3_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.styleName = "InfoBarStyle";
               if(!_loc3_)
               {
                  _loc1_.maxDisplayedLines = 1;
                  if(_loc2_)
                  {
                     _loc1_.id = "headerLabel";
                     if(!(_loc3_ && _loc3_))
                     {
                        addr0066:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(this))
                           {
                              _loc1_.document = this;
                              if(_loc2_ || _loc3_)
                              {
                                 addr0096:
                                 this.headerLabel = _loc1_;
                                 if(!_loc3_)
                                 {
                                    addr00a0:
                                    BindingManager.executeBindings(this,"headerLabel",this.headerLabel);
                                 }
                              }
                              §§goto(addr00ad);
                           }
                        }
                     }
                     §§goto(addr0096);
                  }
                  §§goto(addr00a0);
               }
               §§goto(addr0066);
            }
            addr00ad:
            return _loc1_;
         }
         §§goto(addr00a0);
      }
      
      private function _CityTreasuryRentCollectorSkin_HGroup5_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc2_ || _loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc3_)
               {
                  _loc1_.percentWidth = 95;
                  if(_loc2_ || _loc2_)
                  {
                     addr0059:
                     _loc1_.height = 58;
                     if(_loc2_ || _loc3_)
                     {
                        addr0077:
                        _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_LocaLabel4_i()];
                        if(_loc2_)
                        {
                           §§goto(addr0087);
                        }
                        §§goto(addr0093);
                     }
                     addr0087:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr0093:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0097);
                  }
                  addr0097:
                  return _loc1_;
               }
               §§goto(addr0077);
            }
         }
         §§goto(addr0059);
      }
      
      private function _CityTreasuryRentCollectorSkin_LocaLabel4_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.styleName = "miniLayerFlavourTextXpresso";
               if(!_loc2_)
               {
                  _loc1_.maxDisplayedLines = 3;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.id = "mainText";
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0077:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              _loc1_.document = this;
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 addr00a8:
                                 this.mainText = _loc1_;
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    BindingManager.executeBindings(this,"mainText",this.mainText);
                                 }
                              }
                              §§goto(addr00c7);
                           }
                        }
                        §§goto(addr00a8);
                     }
                     §§goto(addr00c7);
                  }
                  §§goto(addr00a8);
               }
               §§goto(addr0077);
            }
         }
         addr00c7:
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_Group7_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.height = 88;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.percentWidth = 100;
               if(!(_loc3_ && Boolean(this)))
               {
                  addr005a:
                  _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_HGroup6_c(),this._CityTreasuryRentCollectorSkin_BriskImageDynaLib6_c(),this._CityTreasuryRentCollectorSkin_BriskImageDynaLib7_c(),this._CityTreasuryRentCollectorSkin_VGroup5_c()];
                  if(!_loc3_)
                  {
                     §§goto(addr007c);
                  }
                  §§goto(addr0088);
               }
               addr007c:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0088:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr008c);
            }
            §§goto(addr005a);
         }
         addr008c:
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_HGroup6_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.horizontalAlign = "center";
            if(_loc3_ || _loc3_)
            {
               §§goto(addr0032);
            }
            §§goto(addr00a3);
         }
         addr0032:
         _loc1_.percentWidth = 100;
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.left = 0;
            if(_loc3_)
            {
               _loc1_.right = 0;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.percentHeight = 100;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_Rect2_c()];
                     addr007f:
                     if(_loc3_ || _loc3_)
                     {
                        addr00a3:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  §§goto(addr00bb);
               }
            }
            §§goto(addr007f);
         }
         addr00bb:
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_Rect2_c() : Rect
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Rect = new Rect();
         if(!_loc2_)
         {
            _loc1_.bottomLeftRadiusX = 9;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.bottomLeftRadiusY = 9;
               if(!(_loc2_ && _loc2_))
               {
                  addr0049:
                  _loc1_.bottomRightRadiusX = 9;
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.bottomRightRadiusY = 9;
                     if(_loc3_)
                     {
                        addr0067:
                        _loc1_.topLeftRadiusX = 9;
                        if(!_loc2_)
                        {
                           _loc1_.topLeftRadiusY = 9;
                           if(!(_loc2_ && _loc2_))
                           {
                              addr0090:
                              _loc1_.topRightRadiusX = 9;
                              if(!(_loc2_ && _loc2_))
                              {
                                 _loc1_.topRightRadiusY = 9;
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr00b6:
                                    _loc1_.percentHeight = 100;
                                    if(!_loc2_)
                                    {
                                       §§goto(addr00c0);
                                    }
                                    §§goto(addr00ed);
                                 }
                                 §§goto(addr010d);
                              }
                              §§goto(addr00d2);
                           }
                           §§goto(addr00ed);
                        }
                        §§goto(addr00b6);
                     }
                     §§goto(addr0090);
                  }
                  §§goto(addr010d);
               }
               §§goto(addr0067);
            }
            §§goto(addr0049);
         }
         addr00c0:
         _loc1_.percentWidth = 100;
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.stroke = this._CityTreasuryRentCollectorSkin_SolidColorStroke1_c();
            addr00d2:
            if(_loc3_)
            {
               addr00ed:
               _loc1_.fill = this._CityTreasuryRentCollectorSkin_LinearGradient1_c();
               if(_loc3_)
               {
                  _loc1_.filters = [this._CityTreasuryRentCollectorSkin_DropShadowFilter1_c()];
                  if(!_loc2_)
                  {
                     addr010d:
                     _loc1_.initialized(this,null);
                  }
                  §§goto(addr0114);
               }
               §§goto(addr010d);
            }
         }
         addr0114:
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_SolidColorStroke1_c() : SolidColorStroke
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.color = 16777215;
            if(_loc2_)
            {
               _loc1_.alpha = 1;
               if(!_loc3_)
               {
                  _loc1_.weight = 1;
               }
            }
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_LinearGradient1_c() : LinearGradient
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LinearGradient = new LinearGradient();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.rotation = 90;
            if(!_loc2_)
            {
               _loc1_.entries = [this._CityTreasuryRentCollectorSkin_GradientEntry1_c(),this._CityTreasuryRentCollectorSkin_GradientEntry2_c()];
            }
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_GradientEntry1_c() : GradientEntry
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:GradientEntry = new GradientEntry();
         if(!_loc3_)
         {
            _loc1_.color = 16777215;
            if(_loc2_)
            {
               _loc1_.alpha = 1;
               if(!_loc3_)
               {
                  addr0046:
                  _loc1_.ratio = 0;
               }
               return _loc1_;
            }
         }
         §§goto(addr0046);
      }
      
      private function _CityTreasuryRentCollectorSkin_GradientEntry2_c() : GradientEntry
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:GradientEntry = new GradientEntry();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.color = 15790320;
            if(_loc2_ || _loc3_)
            {
               _loc1_.alpha = 1;
               if(_loc2_)
               {
                  addr0055:
                  _loc1_.ratio = 1;
               }
               return _loc1_;
            }
         }
         §§goto(addr0055);
      }
      
      private function _CityTreasuryRentCollectorSkin_DropShadowFilter1_c() : DropShadowFilter
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.distance = 1;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.color = 5789784;
            }
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "infolayer_icon_info";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.top = -10;
                  if(!_loc2_)
                  {
                     §§goto(addr006f);
                  }
                  §§goto(addr0085);
               }
               addr006f:
               _loc1_.left = 6;
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr0085:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr0089);
            }
         }
         addr0089:
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.dynaBmpSourceName = "icon_clock";
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.left = 48;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.top = 12;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0085:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              addr0099:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr009d);
                  }
               }
               §§goto(addr0099);
            }
            addr009d:
            return _loc1_;
         }
         §§goto(addr0085);
      }
      
      private function _CityTreasuryRentCollectorSkin_VGroup5_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.horizontalAlign = "left";
            if(_loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.height = 44;
                  if(!_loc3_)
                  {
                     _loc1_.width = 180;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr006e:
                        _loc1_.right = 28;
                        if(!(_loc3_ && _loc2_))
                        {
                           _loc1_.top = 20;
                           if(_loc2_ || Boolean(this))
                           {
                              _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_LocaLabel5_i(),this._CityTreasuryRentCollectorSkin_BriskImageDynaLib8_c(),this._CityTreasuryRentCollectorSkin_LocaLabel6_i()];
                              if(_loc2_ || Boolean(this))
                              {
                                 addr00c3:
                                 if(!_loc1_.document)
                                 {
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       addr00d7:
                                       _loc1_.document = this;
                                    }
                                 }
                              }
                              §§goto(addr00db);
                           }
                        }
                        §§goto(addr00d7);
                     }
                     §§goto(addr00db);
                  }
                  §§goto(addr00d7);
               }
               §§goto(addr00c3);
            }
            addr00db:
            return _loc1_;
         }
         §§goto(addr006e);
      }
      
      private function _CityTreasuryRentCollectorSkin_LocaLabel5_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || _loc3_)
         {
            _loc1_.maxDisplayedLines = 1;
            if(_loc2_)
            {
               _loc1_.styleName = "twelveBrightBlueLeft";
               if(!_loc3_)
               {
                  addr004b:
                  _loc1_.id = "runtimeHeader";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr006e:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              §§goto(addr0077);
                           }
                           §§goto(addr0089);
                        }
                     }
                     §§goto(addr0077);
                  }
                  §§goto(addr006e);
               }
               addr0077:
               this.runtimeHeader = _loc1_;
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr0089:
                  BindingManager.executeBindings(this,"runtimeHeader",this.runtimeHeader);
               }
               return _loc1_;
            }
            §§goto(addr006e);
         }
         §§goto(addr004b);
      }
      
      private function _CityTreasuryRentCollectorSkin_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_infield_gui_infolayer";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "infolayer_divider_new";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_)
                  {
                     §§goto(addr0067);
                  }
                  §§goto(addr007b);
               }
               addr0067:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr007b:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr007f);
            }
            §§goto(addr007b);
         }
         addr007f:
         return _loc1_;
      }
      
      private function _CityTreasuryRentCollectorSkin_LocaLabel6_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.maxDisplayedLines = 1;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.styleName = "seventeenBrightBlueLeft";
               if(!_loc3_)
               {
                  _loc1_.id = "runtimeLabel";
                  if(!(_loc3_ && _loc2_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr0088:
                              this.runtimeLabel = _loc1_;
                              if(!_loc3_)
                              {
                                 addr0092:
                                 BindingManager.executeBindings(this,"runtimeLabel",this.runtimeLabel);
                              }
                              §§goto(addr009f);
                           }
                           §§goto(addr0092);
                        }
                        addr009f:
                        return _loc1_;
                     }
                  }
               }
            }
         }
         §§goto(addr0088);
      }
      
      private function _CityTreasuryRentCollectorSkin_HGroup7_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.verticalAlign = "middle";
            if(_loc3_)
            {
               addr0040:
               _loc1_.horizontalAlign = "center";
               if(_loc3_)
               {
                  _loc1_.percentWidth = 95;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.height = 80;
                     if(_loc3_)
                     {
                        addr0070:
                        _loc1_.mxmlContent = [this._CityTreasuryRentCollectorSkin_LocaLabel7_i()];
                        if(_loc3_)
                        {
                           addr0080:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0070);
               }
            }
            §§goto(addr0080);
         }
         §§goto(addr0040);
      }
      
      private function _CityTreasuryRentCollectorSkin_LocaLabel7_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.styleName = "miniLayerFlavourTextXpresso";
               §§goto(addr0038);
            }
            §§goto(addr0080);
         }
         addr0038:
         if(_loc2_)
         {
            _loc1_.maxDisplayedLines = 4;
            if(_loc2_)
            {
               _loc1_.id = "extraText";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0080:
                        _loc1_.document = this;
                        if(!(_loc3_ && _loc2_))
                        {
                           §§goto(addr0091);
                        }
                     }
                     §§goto(addr009b);
                  }
                  addr0091:
                  this.extraText = _loc1_;
                  if(_loc2_)
                  {
                     addr009b:
                     BindingManager.executeBindings(this,"extraText",this.extraText);
                  }
                  §§goto(addr00a8);
               }
            }
            §§goto(addr009b);
         }
         addr00a8:
         return _loc1_;
      }
      
      public function ___CityTreasuryRentCollectorSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.handleCreationComplete(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bigItemBg() : BriskImageDynaLib
      {
         return this._693351384bigItemBg;
      }
      
      public function set bigItemBg(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._693351384bigItemBg;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._693351384bigItemBg = param1;
                  if(_loc3_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bigItemBg",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
               }
               §§goto(addr0074);
            }
         }
         addr0083:
      }
      
      [Bindable(event="propertyChange")]
      public function get bigItemGroup() : Group
      {
         return this._1138409996bigItemGroup;
      }
      
      public function set bigItemGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1138409996bigItemGroup;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  addr0054:
                  this._1138409996bigItemGroup = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr006d);
               }
               addr005e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr006d:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bigItemGroup",_loc2_,param1));
                  }
               }
               §§goto(addr007c);
            }
            addr007c:
            return;
         }
         §§goto(addr0054);
      }
      
      [Bindable(event="propertyChange")]
      public function get buttonIcon() : BriskImageDynaLib
      {
         return this._358215371buttonIcon;
      }
      
      public function set buttonIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._358215371buttonIcon;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._358215371buttonIcon = param1;
                  addr003e:
                  if(_loc3_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr006b);
               }
            }
            addr007a:
            return;
         }
         §§goto(addr003e);
      }
      
      [Bindable(event="propertyChange")]
      public function get extraText() : LocaLabel
      {
         return this._253311651extraText;
      }
      
      public function set extraText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._253311651extraText;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._253311651extraText = param1;
                  addr0040:
                  if(_loc4_)
                  {
                     §§goto(addr0058);
                  }
                  §§goto(addr006f);
               }
               addr0058:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr006f:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"extraText",_loc2_,param1));
                  }
               }
               §§goto(addr007e);
            }
            addr007e:
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get headerLabel() : LocaLabel
      {
         return this._1166031975headerLabel;
      }
      
      public function set headerLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1166031975headerLabel;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1166031975headerLabel = param1;
                  if(_loc4_ || _loc3_)
                  {
                     §§goto(addr0058);
                  }
                  §§goto(addr0067);
               }
               addr0058:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0067:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerLabel",_loc2_,param1));
                  }
               }
               §§goto(addr0076);
            }
         }
         addr0076:
      }
      
      [Bindable(event="propertyChange")]
      public function get mainText() : LocaLabel
      {
         return this._8439162mainText;
      }
      
      public function set mainText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._8439162mainText;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._8439162mainText = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainText",_loc2_,param1));
                        }
                     }
                     §§goto(addr0078);
                  }
               }
               §§goto(addr0069);
            }
            addr0078:
            return;
         }
         §§goto(addr0069);
      }
      
      [Bindable(event="propertyChange")]
      public function get packGfx() : BriskImageDynaLib
      {
         return this._807087456packGfx;
      }
      
      public function set packGfx(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._807087456packGfx;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._807087456packGfx = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0042);
                  }
                  §§goto(addr0052);
               }
               addr0042:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0052:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"packGfx",_loc2_,param1));
                  }
               }
               §§goto(addr0061);
            }
            addr0061:
            return;
         }
         §§goto(addr0052);
      }
      
      [Bindable(event="propertyChange")]
      public function get packIconGfx() : BriskImageDynaLib
      {
         return this._979153895packIconGfx;
      }
      
      public function set packIconGfx(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._979153895packIconGfx;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._979153895packIconGfx = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0055);
                  }
                  §§goto(addr006c);
               }
               addr0055:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(this))
                  {
                     addr006c:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"packIconGfx",_loc2_,param1));
                  }
               }
               §§goto(addr007b);
            }
         }
         addr007b:
      }
      
      [Bindable(event="propertyChange")]
      public function get priceLabel() : LocaLabel
      {
         return this._1481293013priceLabel;
      }
      
      public function set priceLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1481293013priceLabel;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1481293013priceLabel = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr004c);
                  }
                  §§goto(addr0063);
               }
               addr004c:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr0063:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"priceLabel",_loc2_,param1));
                  }
               }
               §§goto(addr0072);
            }
            addr0072:
            return;
         }
         §§goto(addr0063);
      }
      
      [Bindable(event="propertyChange")]
      public function get priceLine() : Rect
      {
         return this._2125985571priceLine;
      }
      
      public function set priceLine(param1:Rect) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2125985571priceLine;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._2125985571priceLine = param1;
                  if(_loc3_)
                  {
                     addr0061:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"priceLine",_loc2_,param1));
                        }
                     }
                     §§goto(addr0087);
                  }
               }
               §§goto(addr0078);
            }
            addr0087:
            return;
         }
         §§goto(addr0061);
      }
      
      [Bindable(event="propertyChange")]
      public function get purchaseButton() : MultistateButton
      {
         return this._1082037139purchaseButton;
      }
      
      public function set purchaseButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1082037139purchaseButton;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._1082037139purchaseButton = param1;
                  if(_loc4_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"purchaseButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr006c);
               }
            }
            addr007b:
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get purchaseLabel() : LocaLabel
      {
         return this._1341947277purchaseLabel;
      }
      
      public function set purchaseLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1341947277purchaseLabel;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1341947277purchaseLabel = param1;
                  if(_loc3_ || _loc3_)
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"purchaseLabel",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr005e);
      }
      
      [Bindable(event="propertyChange")]
      public function get runtimeHeader() : LocaLabel
      {
         return this._797549435runtimeHeader;
      }
      
      public function set runtimeHeader(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._797549435runtimeHeader;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._797549435runtimeHeader = param1;
                  addr0036:
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"runtimeHeader",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0036);
      }
      
      [Bindable(event="propertyChange")]
      public function get runtimeLabel() : LocaLabel
      {
         return this._1917511164runtimeLabel;
      }
      
      public function set runtimeLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1917511164runtimeLabel;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._1917511164runtimeLabel = param1;
                  if(!_loc3_)
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"runtimeLabel",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0056);
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : CityTreasuryContentComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:CityTreasuryContentComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._213507019hostComponent = param1;
                  if(!_loc4_)
                  {
                     addr0050:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0050);
      }
   }
}

