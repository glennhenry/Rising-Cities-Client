package net.bigpoint.cityrama.view.cityTreasury.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.SolidColor;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryContentComponent;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DebossedBackgroundComponent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.RewardItemRenderer;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   import spark.skins.SparkSkin;
   
   public class CityTreasuryExternalPackSkin extends SparkSkin
   {
      
      private var _693351384bigItemBg:BriskImageDynaLib;
      
      private var _1138409996bigItemGroup:Group;
      
      private var _358215371buttonIcon:BriskImageDynaLib;
      
      private var _1166031975headerLabel:LocaLabel;
      
      private var _8439162mainText:LocaLabel;
      
      private var _1524129570packContentList:List;
      
      private var _807087456packGfx:BriskImageDynaLib;
      
      private var _979153895packIconGfx:BriskImageDynaLib;
      
      private var _1481293013priceLabel:LocaLabel;
      
      private var _2125985571priceLine:Rect;
      
      private var _1082037139purchaseButton:MultistateButton;
      
      private var _1341947277purchaseLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:CityTreasuryContentComponent;
      
      public function CityTreasuryExternalPackSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(_loc1_ || Boolean(this))
            {
               mx_internal::_document = this;
               if(!_loc2_)
               {
                  this.percentWidth = 100;
                  if(_loc1_ || Boolean(this))
                  {
                     addr005d:
                     this.percentHeight = 100;
                     if(_loc1_)
                     {
                        addr0067:
                        this.mxmlContent = [this._CityTreasuryExternalPackSkin_HGroup1_c()];
                     }
                     §§goto(addr0072);
                  }
                  §§goto(addr0067);
               }
               addr0072:
               return;
            }
            §§goto(addr005d);
         }
         §§goto(addr0067);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(!_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     return;
                  }
               }
               addr0047:
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         §§goto(addr0047);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super.initialize();
         }
      }
      
      private function _CityTreasuryExternalPackSkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  addr0040:
                  _loc1_.gap = 3;
                  if(!_loc3_)
                  {
                     _loc1_.mxmlContent = [this._CityTreasuryExternalPackSkin_VGroup1_c(),this._CityTreasuryExternalPackSkin_Group4_c()];
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr0075:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0081:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr0075);
            }
            §§goto(addr0040);
         }
         §§goto(addr0081);
      }
      
      private function _CityTreasuryExternalPackSkin_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.percentHeight = 100;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.verticalAlign = "top";
               if(!_loc2_)
               {
                  _loc1_.gap = 0;
                  if(_loc3_)
                  {
                     addr005b:
                     _loc1_.mxmlContent = [this._CityTreasuryExternalPackSkin_Group1_i(),this._CityTreasuryExternalPackSkin_VGroup2_c()];
                     if(_loc3_)
                     {
                        §§goto(addr0071);
                     }
                     §§goto(addr0085);
                  }
                  addr0071:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr0085:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0085);
         }
         §§goto(addr005b);
      }
      
      private function _CityTreasuryExternalPackSkin_Group1_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.mxmlContent = [this._CityTreasuryExternalPackSkin_BriskImageDynaLib1_i(),this._CityTreasuryExternalPackSkin_HGroup2_c(),this._CityTreasuryExternalPackSkin_BriskImageDynaLib3_i()];
            if(_loc3_)
            {
               _loc1_.id = "bigItemGroup";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr006c:
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           addr0075:
                           this.bigItemGroup = _loc1_;
                           if(!_loc2_)
                           {
                              addr007f:
                              BindingManager.executeBindings(this,"bigItemGroup",this.bigItemGroup);
                           }
                        }
                        §§goto(addr008c);
                     }
                  }
                  §§goto(addr0075);
               }
               addr008c:
               return _loc1_;
            }
            §§goto(addr007f);
         }
         §§goto(addr006c);
      }
      
      private function _CityTreasuryExternalPackSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "special_cardboard_big";
               if(!_loc2_)
               {
                  addr0054:
                  _loc1_.id = "bigItemBg";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           §§goto(addr007e);
                        }
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr007e);
               }
               §§goto(addr0087);
            }
            addr007e:
            _loc1_.document = this;
            if(!_loc2_)
            {
               addr0087:
               this.bigItemBg = _loc1_;
               if(_loc3_ || _loc2_)
               {
                  BindingManager.executeBindings(this,"bigItemBg",this.bigItemBg);
               }
            }
            return _loc1_;
         }
         §§goto(addr0054);
      }
      
      private function _CityTreasuryExternalPackSkin_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.verticalAlign = "middle";
            if(!_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_)
               {
                  addr0047:
                  _loc1_.horizontalCenter = 0;
                  if(!_loc3_)
                  {
                     addr0051:
                     _loc1_.percentWidth = 100;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr0063:
                        _loc1_.percentHeight = 100;
                        if(_loc2_)
                        {
                           _loc1_.mxmlContent = [this._CityTreasuryExternalPackSkin_BriskImageDynaLib2_i()];
                           if(!_loc3_)
                           {
                              addr0087:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    addr009b:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr009b);
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr0063);
               }
               §§goto(addr0051);
            }
         }
         §§goto(addr0047);
      }
      
      private function _CityTreasuryExternalPackSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
            if(_loc3_)
            {
               _loc1_.id = "packGfx";
               if(_loc3_)
               {
                  addr0048:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        addr0067:
                        _loc1_.document = this;
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0078:
                           this.packGfx = _loc1_;
                           if(!_loc2_)
                           {
                              addr0082:
                              BindingManager.executeBindings(this,"packGfx",this.packGfx);
                           }
                           §§goto(addr008f);
                        }
                        §§goto(addr0082);
                     }
                     addr008f:
                     return _loc1_;
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0067);
            }
            §§goto(addr0048);
         }
         §§goto(addr0078);
      }
      
      private function _CityTreasuryExternalPackSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.id = "packIconGfx";
               if(!(_loc2_ && Boolean(this)))
               {
                  §§goto(addr0051);
               }
               §§goto(addr006a);
            }
            addr0051:
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  addr006a:
                  _loc1_.document = this;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     §§goto(addr007b);
                  }
                  §§goto(addr0085);
               }
            }
            addr007b:
            this.packIconGfx = _loc1_;
            if(_loc3_)
            {
               addr0085:
               BindingManager.executeBindings(this,"packIconGfx",this.packIconGfx);
            }
            return _loc1_;
         }
         §§goto(addr006a);
      }
      
      private function _CityTreasuryExternalPackSkin_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.horizontalAlign = "center";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.verticalAlign = "middle";
               addr0039:
               if(_loc2_ || Boolean(this))
               {
                  addr0059:
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     _loc1_.percentHeight = 100;
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._CityTreasuryExternalPackSkin_HGroup3_c(),this._CityTreasuryExternalPackSkin_HGroup4_c(),this._CityTreasuryExternalPackSkin_Group3_c()];
                        addr006d:
                        if(_loc2_ || Boolean(this))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 addr00aa:
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr00aa);
               }
               §§goto(addr006d);
            }
            §§goto(addr0059);
         }
         §§goto(addr0039);
      }
      
      private function _CityTreasuryExternalPackSkin_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.height = 20;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.verticalAlign = "middle";
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!_loc2_)
                     {
                        addr007f:
                        _loc1_.mxmlContent = [this._CityTreasuryExternalPackSkin_LocaLabel1_i()];
                        if(_loc3_)
                        {
                           addr008f:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr009b:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr009f);
                        }
                        §§goto(addr009b);
                     }
                     addr009f:
                     return _loc1_;
                  }
                  §§goto(addr008f);
               }
               §§goto(addr007f);
            }
         }
         §§goto(addr008f);
      }
      
      private function _CityTreasuryExternalPackSkin_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.styleName = "miniLayerFlavourTextXpresso";
            if(_loc2_)
            {
               _loc1_.maxDisplayedLines = 1;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.id = "purchaseLabel";
                  if(!_loc3_)
                  {
                     addr0053:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           addr0073:
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(this))
                           {
                              addr0084:
                              this.purchaseLabel = _loc1_;
                              if(!_loc3_)
                              {
                                 addr008e:
                                 BindingManager.executeBindings(this,"purchaseLabel",this.purchaseLabel);
                              }
                              §§goto(addr009b);
                           }
                           §§goto(addr008e);
                        }
                        §§goto(addr009b);
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0084);
            }
            addr009b:
            return _loc1_;
         }
         §§goto(addr0053);
      }
      
      private function _CityTreasuryExternalPackSkin_HGroup4_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc3_)
                  {
                     §§goto(addr006f);
                  }
               }
               §§goto(addr0087);
            }
            addr006f:
            _loc1_.mxmlContent = [this._CityTreasuryExternalPackSkin_Group2_c()];
            if(_loc3_ || _loc2_)
            {
               addr0087:
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0087);
      }
      
      private function _CityTreasuryExternalPackSkin_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.minWidth = 15;
            if(_loc2_ || Boolean(_loc1_))
            {
               addr004c:
               _loc1_.mxmlContent = [this._CityTreasuryExternalPackSkin_LocaLabel2_i(),this._CityTreasuryExternalPackSkin_Rect1_i()];
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr006a);
               }
               §§goto(addr0076);
            }
            addr006a:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  addr0076:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr004c);
      }
      
      private function _CityTreasuryExternalPackSkin_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.styleName = "priceTreasuryOld";
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  _loc1_.id = "priceLabel";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr006d:
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              §§goto(addr0076);
                           }
                        }
                        §§goto(addr0080);
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr006d);
               }
               §§goto(addr0080);
            }
            addr0076:
            this.priceLabel = _loc1_;
            if(_loc3_)
            {
               addr0080:
               BindingManager.executeBindings(this,"priceLabel",this.priceLabel);
            }
            return _loc1_;
         }
         §§goto(addr0080);
      }
      
      private function _CityTreasuryExternalPackSkin_Rect1_i() : Rect
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Rect = new Rect();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.height = 2;
            if(_loc2_)
            {
               _loc1_.left = 0;
               if(!_loc3_)
               {
                  _loc1_.right = 0;
                  if(_loc2_)
                  {
                     addr0049:
                     _loc1_.top = 4;
                     if(_loc2_)
                     {
                        addr0062:
                        _loc1_.percentWidth = 100;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0074:
                           _loc1_.visible = false;
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              _loc1_.includeInLayout = false;
                              if(_loc2_)
                              {
                                 _loc1_.fill = this._CityTreasuryExternalPackSkin_SolidColor1_c();
                                 if(!_loc3_)
                                 {
                                    addr00a9:
                                    _loc1_.initialized(this,"priceLine");
                                    if(_loc2_)
                                    {
                                       addr00b7:
                                       this.priceLine = _loc1_;
                                       if(_loc2_)
                                       {
                                          addr00c1:
                                          BindingManager.executeBindings(this,"priceLine",this.priceLine);
                                       }
                                    }
                                 }
                                 return _loc1_;
                              }
                              §§goto(addr00a9);
                           }
                           §§goto(addr00b7);
                        }
                        §§goto(addr00c1);
                     }
                     §§goto(addr00a9);
                  }
                  §§goto(addr0062);
               }
               §§goto(addr0049);
            }
            §§goto(addr0074);
         }
         §§goto(addr0062);
      }
      
      private function _CityTreasuryExternalPackSkin_SolidColor1_c() : SolidColor
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SolidColor = new SolidColor();
         if(_loc3_ || _loc2_)
         {
            _loc1_.color = 16733995;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryExternalPackSkin_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.mxmlContent = [this._CityTreasuryExternalPackSkin_MultistateButton1_i(),this._CityTreasuryExternalPackSkin_BriskImageDynaLib4_i()];
            if(_loc3_ || _loc2_)
            {
               addr0064:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0064);
      }
      
      private function _CityTreasuryExternalPackSkin_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.width = 188;
            if(_loc3_ || _loc3_)
            {
               _loc1_.id = "purchaseButton";
               if(!_loc2_)
               {
                  §§goto(addr0062);
               }
               §§goto(addr0081);
            }
         }
         addr0062:
         if(!_loc1_.document)
         {
            if(!_loc2_)
            {
               _loc1_.document = this;
               if(!_loc2_)
               {
                  §§goto(addr0077);
               }
            }
            §§goto(addr0081);
         }
         addr0077:
         this.purchaseButton = _loc1_;
         if(_loc3_)
         {
            addr0081:
            BindingManager.executeBindings(this,"purchaseButton",this.purchaseButton);
         }
         return _loc1_;
      }
      
      private function _CityTreasuryExternalPackSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.id = "buttonIcon";
            if(_loc2_ || _loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.document = this;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr0078:
                        this.buttonIcon = _loc1_;
                        if(_loc2_)
                        {
                           addr0082:
                           BindingManager.executeBindings(this,"buttonIcon",this.buttonIcon);
                        }
                     }
                     §§goto(addr008f);
                  }
                  §§goto(addr0082);
               }
               §§goto(addr0078);
            }
            addr008f:
            return _loc1_;
         }
         §§goto(addr0082);
      }
      
      private function _CityTreasuryExternalPackSkin_Group4_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.height = 310;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.mxmlContent = [this._CityTreasuryExternalPackSkin_DebossedBackgroundComponent1_c(),this._CityTreasuryExternalPackSkin_VGroup3_c()];
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     §§goto(addr007a);
                  }
               }
               §§goto(addr0086);
            }
            addr007a:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  addr0086:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0086);
      }
      
      private function _CityTreasuryExternalPackSkin_DebossedBackgroundComponent1_c() : DebossedBackgroundComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DebossedBackgroundComponent = new DebossedBackgroundComponent();
         if(_loc2_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.percentHeight = 98;
               if(!(_loc3_ && _loc2_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr006b:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr006f);
               }
               §§goto(addr006b);
            }
            addr006f:
            return _loc1_;
         }
         §§goto(addr006b);
      }
      
      private function _CityTreasuryExternalPackSkin_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr0032:
               _loc1_.verticalAlign = "middle";
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.paddingTop = 10;
                     if(!_loc3_)
                     {
                        _loc1_.percentWidth = 95;
                        if(_loc2_)
                        {
                           addr0077:
                           _loc1_.percentHeight = 80;
                           if(_loc2_)
                           {
                              _loc1_.mxmlContent = [this._CityTreasuryExternalPackSkin_Group5_c(),this._CityTreasuryExternalPackSkin_HGroup6_c(),this._CityTreasuryExternalPackSkin_HGroup7_c()];
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr00b0:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_)
                                    {
                                       addr00bc:
                                       _loc1_.document = this;
                                    }
                                 }
                                 §§goto(addr00c0);
                              }
                           }
                           §§goto(addr00bc);
                        }
                        addr00c0:
                        return _loc1_;
                     }
                     §§goto(addr00b0);
                  }
                  §§goto(addr00bc);
               }
            }
            §§goto(addr0077);
         }
         §§goto(addr0032);
      }
      
      private function _CityTreasuryExternalPackSkin_Group5_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.height = 40;
               if(_loc2_)
               {
                  addr0053:
                  _loc1_.mxmlContent = [this._CityTreasuryExternalPackSkin_BlueBarComponent1_c(),this._CityTreasuryExternalPackSkin_HGroup5_c()];
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0071:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0071);
            }
            addr0081:
            return _loc1_;
         }
         §§goto(addr0053);
      }
      
      private function _CityTreasuryExternalPackSkin_BlueBarComponent1_c() : BlueBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc2_)
            {
               §§goto(addr005a);
            }
            §§goto(addr0070);
         }
         addr005a:
         _loc1_.percentHeight = 100;
         if(!_loc2_)
         {
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  addr0070:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _CityTreasuryExternalPackSkin_HGroup5_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 90;
            if(_loc2_ || _loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.verticalAlign = "middle";
                     if(_loc2_)
                     {
                        §§goto(addr006b);
                     }
                  }
                  §§goto(addr0080);
               }
            }
            addr006b:
            _loc1_.horizontalAlign = "center";
            if(!_loc3_)
            {
               addr0080:
               _loc1_.mxmlContent = [this._CityTreasuryExternalPackSkin_LocaLabel3_i()];
               if(_loc2_)
               {
                  addr0090:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0090);
      }
      
      private function _CityTreasuryExternalPackSkin_LocaLabel3_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               addr0028:
               _loc1_.styleName = "InfoBarStyle";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.maxDisplayedLines = 1;
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr005a);
                  }
                  §§goto(addr008e);
               }
            }
            addr005a:
            _loc1_.id = "headerLabel";
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     §§goto(addr0071);
                  }
                  §§goto(addr00a0);
               }
               §§goto(addr008e);
            }
            addr0071:
            _loc1_.document = this;
            if(_loc2_ || Boolean(_loc1_))
            {
               addr008e:
               this.headerLabel = _loc1_;
               if(!(_loc3_ && _loc2_))
               {
                  addr00a0:
                  BindingManager.executeBindings(this,"headerLabel",this.headerLabel);
               }
            }
            return _loc1_;
         }
         §§goto(addr0028);
      }
      
      private function _CityTreasuryExternalPackSkin_HGroup6_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(!_loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_)
               {
                  _loc1_.percentWidth = 95;
                  if(_loc3_)
                  {
                     _loc1_.height = 80;
                     if(_loc3_)
                     {
                        _loc1_.mxmlContent = [this._CityTreasuryExternalPackSkin_LocaLabel4_i()];
                        if(_loc3_)
                        {
                           addr0071:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(this))
                              {
                                 addr0085:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr0089);
                     }
                     §§goto(addr0085);
                  }
               }
               §§goto(addr0071);
            }
            §§goto(addr0085);
         }
         addr0089:
         return _loc1_;
      }
      
      private function _CityTreasuryExternalPackSkin_LocaLabel4_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.styleName = "miniLayerFlavourTextXpresso";
               if(!_loc2_)
               {
                  addr0035:
                  _loc1_.maxDisplayedLines = 6;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.id = "mainText";
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0066:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              §§goto(addr0088);
                           }
                           §§goto(addr009b);
                        }
                        §§goto(addr0091);
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr009b);
               }
               §§goto(addr0066);
            }
            addr0088:
            _loc1_.document = this;
            if(!_loc2_)
            {
               addr0091:
               this.mainText = _loc1_;
               if(_loc3_)
               {
                  addr009b:
                  BindingManager.executeBindings(this,"mainText",this.mainText);
               }
            }
            return _loc1_;
         }
         §§goto(addr0035);
      }
      
      private function _CityTreasuryExternalPackSkin_HGroup7_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(!_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.percentWidth = 95;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        §§goto(addr006e);
                     }
                     §§goto(addr00a3);
                  }
                  §§goto(addr008b);
               }
               addr006e:
               _loc1_.horizontalCenter = 0;
               if(_loc2_ || _loc2_)
               {
                  addr008b:
                  _loc1_.mxmlContent = [this._CityTreasuryExternalPackSkin_List1_i()];
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr00a3:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr00af:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr00b3);
                  }
                  §§goto(addr00af);
               }
               addr00b3:
               return _loc1_;
            }
            §§goto(addr00a3);
         }
         §§goto(addr00af);
      }
      
      private function _CityTreasuryExternalPackSkin_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(_loc3_ || _loc2_)
         {
            _loc1_.itemRenderer = this._CityTreasuryExternalPackSkin_ClassFactory1_c();
            if(_loc3_ || _loc2_)
            {
               _loc1_.setStyle("skinClass",CityTreasuryExternalPackListSkin);
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.id = "packContentList";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0080:
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr009c:
                              this.packContentList = _loc1_;
                              if(_loc3_ || Boolean(this))
                              {
                                 addr00ae:
                                 BindingManager.executeBindings(this,"packContentList",this.packContentList);
                              }
                           }
                           §§goto(addr00bb);
                        }
                     }
                     §§goto(addr009c);
                  }
                  addr00bb:
                  return _loc1_;
               }
               §§goto(addr009c);
            }
            §§goto(addr00ae);
         }
         §§goto(addr0080);
      }
      
      private function _CityTreasuryExternalPackSkin_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc2_ || _loc3_)
         {
            _loc1_.generator = RewardItemRenderer;
         }
         return _loc1_;
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
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  addr0052:
                  this._693351384bigItemBg = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bigItemBg",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr006d);
               }
            }
            addr007c:
            return;
         }
         §§goto(addr0052);
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
               if(!_loc3_)
               {
                  this._1138409996bigItemGroup = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr0065);
               }
               addr0056:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0065:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bigItemGroup",_loc2_,param1));
                  }
               }
               §§goto(addr0074);
            }
         }
         addr0074:
      }
      
      [Bindable(event="propertyChange")]
      public function get buttonIcon() : BriskImageDynaLib
      {
         return this._358215371buttonIcon;
      }
      
      public function set buttonIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._358215371buttonIcon;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._358215371buttonIcon = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr0074);
                  }
                  §§goto(addr0065);
               }
            }
            addr0074:
            return;
         }
         §§goto(addr0065);
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
               if(!_loc3_)
               {
                  this._1166031975headerLabel = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0054);
            }
         }
         addr007b:
      }
      
      [Bindable(event="propertyChange")]
      public function get mainText() : LocaLabel
      {
         return this._8439162mainText;
      }
      
      public function set mainText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._8439162mainText;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._8439162mainText = param1;
                  addr0041:
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr006f);
            }
            addr007e:
            return;
         }
         §§goto(addr0041);
      }
      
      [Bindable(event="propertyChange")]
      public function get packContentList() : List
      {
         return this._1524129570packContentList;
      }
      
      public function set packContentList(param1:List) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1524129570packContentList;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._1524129570packContentList = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"packContentList",_loc2_,param1));
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
         §§goto(addr0078);
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
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._807087456packGfx = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"packGfx",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0078);
            }
            addr0087:
            return;
         }
         §§goto(addr0078);
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr0038:
                  this._979153895packIconGfx = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0052:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"packIconGfx",_loc2_,param1));
                        }
                     }
                     §§goto(addr0061);
                  }
               }
               §§goto(addr0052);
            }
            addr0061:
            return;
         }
         §§goto(addr0038);
      }
      
      [Bindable(event="propertyChange")]
      public function get priceLabel() : LocaLabel
      {
         return this._1481293013priceLabel;
      }
      
      public function set priceLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1481293013priceLabel;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1481293013priceLabel = param1;
                  if(_loc3_)
                  {
                     addr0045:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0054:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"priceLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0063);
                  }
                  §§goto(addr0054);
               }
            }
            addr0063:
            return;
         }
         §§goto(addr0045);
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
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._2125985571priceLine = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"priceLine",_loc2_,param1));
                        }
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr0075);
               }
            }
            addr0084:
            return;
         }
         §§goto(addr0075);
      }
      
      [Bindable(event="propertyChange")]
      public function get purchaseButton() : MultistateButton
      {
         return this._1082037139purchaseButton;
      }
      
      public function set purchaseButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1082037139purchaseButton;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1082037139purchaseButton = param1;
                  addr0034:
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr0062:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"purchaseButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0071);
                  }
               }
               §§goto(addr0062);
            }
            addr0071:
            return;
         }
         §§goto(addr0034);
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
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._1341947277purchaseLabel = param1;
                  if(!_loc4_)
                  {
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
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : CityTreasuryContentComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:CityTreasuryContentComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._213507019hostComponent = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
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
         §§goto(addr0055);
      }
   }
}

