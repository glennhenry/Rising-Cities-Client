package net.bigpoint.cityrama.view.cityTreasury.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.SolidColor;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryContentComponent;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryPackItemRenderer;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DebossedBackgroundComponent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   import spark.skins.SparkSkin;
   
   public class CityTreasuryRealCurrencySkin extends SparkSkin
   {
      
      private var _693351384bigItemBg:BriskImageDynaLib;
      
      private var _1138409996bigItemGroup:Group;
      
      private var _1664307000blueHeaderGroup:Group;
      
      private var _1166031975headerLabel:LocaLabel;
      
      private var _784021346itemInfoGroup:VGroup;
      
      private var _691190551listHeaderLabel:LocaLabel;
      
      private var _8439162mainText:LocaLabel;
      
      private var _241268558oldPriceLabel:LocaLabel;
      
      private var _807087456packGfx:BriskImageDynaLib;
      
      private var _979153895packIconGfx:BriskImageDynaLib;
      
      private var _750244439packList:List;
      
      private var _1849499341plusIcon:BriskImageDynaLib;
      
      private var _1481293013priceLabel:LocaLabel;
      
      private var _2125985571priceLine:Rect;
      
      private var _1082037139purchaseButton:MultistateButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:CityTreasuryContentComponent;
      
      public function CityTreasuryRealCurrencySkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(!_loc2_)
            {
               mx_internal::_document = this;
               if(_loc1_ || _loc2_)
               {
                  this.percentWidth = 100;
                  if(_loc1_)
                  {
                     addr0055:
                     this.percentHeight = 100;
                     if(_loc1_ || _loc2_)
                     {
                        addr0067:
                        this.mxmlContent = [this._CityTreasuryRealCurrencySkin_VGroup1_c()];
                     }
                  }
                  §§goto(addr0072);
               }
               §§goto(addr0067);
            }
            §§goto(addr0055);
         }
         addr0072:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && Boolean(this)))
            {
               §§goto(addr003c);
            }
            §§goto(addr0050);
         }
         addr003c:
         if(this.__moduleFactoryInitialized)
         {
            if(_loc3_)
            {
               return;
            }
         }
         else
         {
            addr0050:
            this.__moduleFactoryInitialized = true;
         }
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
      
      private function _CityTreasuryRealCurrencySkin_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.gap = 3;
                  if(_loc2_)
                  {
                     addr005f:
                     _loc1_.mxmlContent = [this._CityTreasuryRealCurrencySkin_HGroup1_c(),this._CityTreasuryRealCurrencySkin_Group6_c(),this._CityTreasuryRealCurrencySkin_List1_i()];
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr0087:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr008b);
                     }
                  }
               }
               §§goto(addr0087);
            }
            §§goto(addr005f);
         }
         addr008b:
         return _loc1_;
      }
      
      private function _CityTreasuryRealCurrencySkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.mxmlContent = [this._CityTreasuryRealCurrencySkin_Group1_i(),this._CityTreasuryRealCurrencySkin_Group2_c()];
               if(_loc2_ || _loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        addr006d:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0071);
               }
            }
            §§goto(addr006d);
         }
         addr0071:
         return _loc1_;
      }
      
      private function _CityTreasuryRealCurrencySkin_Group1_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.mxmlContent = [this._CityTreasuryRealCurrencySkin_BriskImageDynaLib1_i(),this._CityTreasuryRealCurrencySkin_HGroup2_c(),this._CityTreasuryRealCurrencySkin_BriskImageDynaLib3_i()];
            if(_loc2_)
            {
               _loc1_.id = "bigItemGroup";
               if(_loc2_ || _loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                        if(_loc2_ || Boolean(this))
                        {
                           addr0085:
                           this.bigItemGroup = _loc1_;
                           if(!_loc3_)
                           {
                              addr008f:
                              BindingManager.executeBindings(this,"bigItemGroup",this.bigItemGroup);
                           }
                           §§goto(addr009c);
                        }
                        §§goto(addr008f);
                     }
                     addr009c:
                     return _loc1_;
                  }
               }
               §§goto(addr0085);
            }
            §§goto(addr008f);
         }
         §§goto(addr0085);
      }
      
      private function _CityTreasuryRealCurrencySkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "special_cardboard_big";
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.id = "bigItemBg";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           §§goto(addr0073);
                        }
                        §§goto(addr00a2);
                     }
                     §§goto(addr0090);
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0090);
            }
            §§goto(addr00a2);
         }
         addr0073:
         _loc1_.document = this;
         if(!(_loc2_ && _loc2_))
         {
            addr0090:
            this.bigItemBg = _loc1_;
            if(_loc3_ || _loc2_)
            {
               addr00a2:
               BindingManager.executeBindings(this,"bigItemBg",this.bigItemBg);
            }
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRealCurrencySkin_HGroup2_c() : HGroup
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
               addr002b:
               _loc1_.horizontalAlign = "center";
               if(!_loc2_)
               {
                  addr0035:
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.percentWidth = 100;
                     if(!_loc2_)
                     {
                        _loc1_.percentHeight = 100;
                        if(_loc3_ || Boolean(this))
                        {
                           addr007d:
                           _loc1_.mxmlContent = [this._CityTreasuryRealCurrencySkin_BriskImageDynaLib2_i()];
                           if(_loc3_ || Boolean(this))
                           {
                              addr0095:
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    addr00a1:
                                    _loc1_.document = this;
                                 }
                              }
                              §§goto(addr00a5);
                           }
                        }
                        §§goto(addr00a1);
                     }
                     addr00a5:
                     return _loc1_;
                  }
                  §§goto(addr0095);
               }
               §§goto(addr007d);
            }
            §§goto(addr0035);
         }
         §§goto(addr002b);
      }
      
      private function _CityTreasuryRealCurrencySkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.id = "packGfx";
               if(!(_loc3_ && _loc2_))
               {
                  addr005a:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           addr007a:
                           this.packGfx = _loc1_;
                           if(_loc2_ || _loc2_)
                           {
                              addr008c:
                              BindingManager.executeBindings(this,"packGfx",this.packGfx);
                           }
                        }
                        §§goto(addr0099);
                     }
                  }
                  §§goto(addr007a);
               }
               addr0099:
               return _loc1_;
            }
            §§goto(addr008c);
         }
         §§goto(addr005a);
      }
      
      private function _CityTreasuryRealCurrencySkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.id = "packIconGfx";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           addr007c:
                           this.packIconGfx = _loc1_;
                           if(!_loc2_)
                           {
                              addr0086:
                              BindingManager.executeBindings(this,"packIconGfx",this.packIconGfx);
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0086);
            }
         }
         §§goto(addr007c);
      }
      
      private function _CityTreasuryRealCurrencySkin_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.height = 190;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._CityTreasuryRealCurrencySkin_DebossedBackgroundComponent1_c(),this._CityTreasuryRealCurrencySkin_VGroup2_i()];
                  if(_loc3_ || _loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr007d:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
               }
            }
         }
         §§goto(addr007d);
      }
      
      private function _CityTreasuryRealCurrencySkin_DebossedBackgroundComponent1_c() : DebossedBackgroundComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DebossedBackgroundComponent = new DebossedBackgroundComponent();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc2_)
            {
               addr0055:
               _loc1_.height = 195;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr0074:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0074);
         }
         §§goto(addr0055);
      }
      
      private function _CityTreasuryRealCurrencySkin_VGroup2_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.verticalAlign = "bottom";
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.mxmlContent = [this._CityTreasuryRealCurrencySkin_VGroup3_c(),this._CityTreasuryRealCurrencySkin_Group5_c()];
                     if(!(_loc3_ && _loc2_))
                     {
                        addr007f:
                        _loc1_.id = "itemInfoGroup";
                        if(!(_loc3_ && Boolean(this)))
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr00ab:
                                 _loc1_.document = this;
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§goto(addr00bc);
                                 }
                              }
                              §§goto(addr00c6);
                           }
                           §§goto(addr00bc);
                        }
                        §§goto(addr00c6);
                     }
                     addr00bc:
                     this.itemInfoGroup = _loc1_;
                     if(_loc2_)
                     {
                        addr00c6:
                        BindingManager.executeBindings(this,"itemInfoGroup",this.itemInfoGroup);
                     }
                     §§goto(addr00d3);
                  }
                  §§goto(addr007f);
               }
               §§goto(addr00ab);
            }
            addr00d3:
            return _loc1_;
         }
         §§goto(addr00ab);
      }
      
      private function _CityTreasuryRealCurrencySkin_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.paddingTop = 10;
                  if(_loc2_ || _loc3_)
                  {
                     addr0061:
                     _loc1_.gap = 10;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.percentWidth = 100;
                        if(_loc2_)
                        {
                           _loc1_.percentHeight = 100;
                           if(!_loc3_)
                           {
                              addr0095:
                              _loc1_.mxmlContent = [this._CityTreasuryRealCurrencySkin_Group3_i(),this._CityTreasuryRealCurrencySkin_HGroup4_c(),this._CityTreasuryRealCurrencySkin_HGroup5_c()];
                              if(_loc2_)
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_)
                                    {
                                       addr00bd:
                                       _loc1_.document = this;
                                    }
                                 }
                                 §§goto(addr00c1);
                              }
                              §§goto(addr00bd);
                           }
                           addr00c1:
                           return _loc1_;
                        }
                     }
                  }
               }
               §§goto(addr0095);
            }
            §§goto(addr0061);
         }
         §§goto(addr0095);
      }
      
      private function _CityTreasuryRealCurrencySkin_Group3_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.height = 40;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.percentWidth = 95;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._CityTreasuryRealCurrencySkin_BlueBarComponent1_c(),this._CityTreasuryRealCurrencySkin_HGroup3_c()];
                  if(!_loc3_)
                  {
                     _loc1_.id = "blueHeaderGroup";
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              §§goto(addr007c);
                           }
                        }
                        §§goto(addr0097);
                     }
                  }
                  addr007c:
                  _loc1_.document = this;
                  if(_loc2_ || _loc3_)
                  {
                     addr0097:
                     this.blueHeaderGroup = _loc1_;
                     if(_loc2_ || Boolean(this))
                     {
                        addr00a9:
                        BindingManager.executeBindings(this,"blueHeaderGroup",this.blueHeaderGroup);
                     }
                  }
                  §§goto(addr00b6);
               }
               §§goto(addr00a9);
            }
            addr00b6:
            return _loc1_;
         }
         §§goto(addr00a9);
      }
      
      private function _CityTreasuryRealCurrencySkin_BlueBarComponent1_c() : BlueBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.percentHeight = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               addr0056:
               _loc1_.percentWidth = 100;
               if(_loc3_ || Boolean(_loc1_))
               {
                  §§goto(addr0068);
               }
               §§goto(addr0074);
            }
            addr0068:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr0074:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0056);
      }
      
      private function _CityTreasuryRealCurrencySkin_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(!_loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_)
               {
                  _loc1_.percentHeight = 100;
                  if(_loc3_)
                  {
                     _loc1_.percentWidth = 100;
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.mxmlContent = [this._CityTreasuryRealCurrencySkin_LocaLabel1_i()];
                        §§goto(addr0060);
                     }
                     §§goto(addr0083);
                  }
                  addr0060:
                  if(_loc3_ || _loc3_)
                  {
                     addr0083:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr0097:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0097);
         }
         §§goto(addr0083);
      }
      
      private function _CityTreasuryRealCurrencySkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "InfoBarStyle";
            if(!(_loc2_ && _loc2_))
            {
               addr0035:
               _loc1_.maxDisplayedLines = 1;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.percentWidth = 95;
                  if(_loc3_)
                  {
                     addr005f:
                     _loc1_.id = "headerLabel";
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              _loc1_.document = this;
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 addr00a4:
                                 this.headerLabel = _loc1_;
                                 if(!_loc2_)
                                 {
                                    addr00ae:
                                    BindingManager.executeBindings(this,"headerLabel",this.headerLabel);
                                 }
                              }
                              §§goto(addr00bb);
                           }
                        }
                     }
                     §§goto(addr00a4);
                  }
                  §§goto(addr00ae);
               }
               §§goto(addr005f);
            }
            addr00bb:
            return _loc1_;
         }
         §§goto(addr0035);
      }
      
      private function _CityTreasuryRealCurrencySkin_HGroup4_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentHeight = 100;
            if(!_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(!(_loc3_ && Boolean(this)))
               {
                  §§goto(addr004e);
               }
               §§goto(addr0090);
            }
            §§goto(addr009c);
         }
         addr004e:
         _loc1_.verticalAlign = "middle";
         if(_loc2_ || _loc3_)
         {
            _loc1_.horizontalAlign = "center";
            if(!_loc3_)
            {
               _loc1_.mxmlContent = [this._CityTreasuryRealCurrencySkin_LocaLabel2_i()];
               if(!(_loc3_ && _loc3_))
               {
                  addr0090:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr009c:
                        _loc1_.document = this;
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRealCurrencySkin_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.styleName = "miniLayerFlavourTextXpresso";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.percentWidth = 90;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.maxDisplayedLines = 3;
                  if(_loc2_)
                  {
                     addr005a:
                     _loc1_.id = "mainText";
                     if(!_loc3_)
                     {
                        §§goto(addr0065);
                     }
                     §§goto(addr0098);
                  }
                  §§goto(addr007d);
               }
               addr0065:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr007d:
                     _loc1_.document = this;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        §§goto(addr008e);
                     }
                     §§goto(addr0098);
                  }
               }
               §§goto(addr008e);
            }
            addr008e:
            this.mainText = _loc1_;
            if(_loc2_)
            {
               addr0098:
               BindingManager.executeBindings(this,"mainText",this.mainText);
            }
            return _loc1_;
         }
         §§goto(addr005a);
      }
      
      private function _CityTreasuryRealCurrencySkin_HGroup5_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentHeight = 100;
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!_loc2_)
                     {
                        §§goto(addr006e);
                     }
                     §§goto(addr0098);
                  }
               }
               §§goto(addr006e);
            }
            §§goto(addr0084);
         }
         addr006e:
         _loc1_.mxmlContent = [this._CityTreasuryRealCurrencySkin_Group4_c(),this._CityTreasuryRealCurrencySkin_LocaLabel4_i()];
         if(!_loc2_)
         {
            addr0084:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr0098:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRealCurrencySkin_Group4_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.minWidth = 15;
            if(!(_loc3_ && _loc2_))
            {
               addr0052:
               _loc1_.mxmlContent = [this._CityTreasuryRealCurrencySkin_LocaLabel3_i(),this._CityTreasuryRealCurrencySkin_Rect1_i()];
               if(!_loc3_)
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
            return _loc1_;
         }
         §§goto(addr0052);
      }
      
      private function _CityTreasuryRealCurrencySkin_LocaLabel3_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.styleName = "priceTreasuryOld";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.percentWidth = 100;
               if(_loc2_)
               {
                  _loc1_.id = "oldPriceLabel";
                  if(_loc2_ || Boolean(this))
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr007e);
               }
               addr005e:
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc3_)
                  {
                     addr007e:
                     _loc1_.document = this;
                     if(_loc2_)
                     {
                        §§goto(addr0087);
                     }
                     §§goto(addr0091);
                  }
               }
               addr0087:
               this.oldPriceLabel = _loc1_;
               if(_loc2_)
               {
                  addr0091:
                  BindingManager.executeBindings(this,"oldPriceLabel",this.oldPriceLabel);
               }
               §§goto(addr009e);
            }
            addr009e:
            return _loc1_;
         }
         §§goto(addr0091);
      }
      
      private function _CityTreasuryRealCurrencySkin_Rect1_i() : Rect
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Rect = new Rect();
         if(!_loc2_)
         {
            _loc1_.height = 2;
            if(_loc3_)
            {
               _loc1_.left = 0;
               if(_loc3_)
               {
                  _loc1_.right = 0;
                  if(!_loc2_)
                  {
                     §§goto(addr003f);
                  }
               }
               §§goto(addr00bc);
            }
            addr003f:
            _loc1_.top = 4;
            if(!_loc2_)
            {
               addr0049:
               _loc1_.percentWidth = 100;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.visible = false;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§goto(addr0079);
                  }
                  §§goto(addr00b2);
               }
               §§goto(addr00bc);
            }
            addr0079:
            _loc1_.includeInLayout = false;
            if(_loc3_)
            {
               _loc1_.fill = this._CityTreasuryRealCurrencySkin_SolidColor1_c();
               if(!(_loc2_ && Boolean(this)))
               {
                  §§goto(addr00a4);
               }
               §§goto(addr00bc);
            }
            addr00a4:
            _loc1_.initialized(this,"priceLine");
            if(_loc3_)
            {
               addr00b2:
               this.priceLine = _loc1_;
               if(_loc3_)
               {
                  addr00bc:
                  BindingManager.executeBindings(this,"priceLine",this.priceLine);
               }
            }
            return _loc1_;
         }
         §§goto(addr0049);
      }
      
      private function _CityTreasuryRealCurrencySkin_SolidColor1_c() : SolidColor
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SolidColor = new SolidColor();
         if(!_loc2_)
         {
            _loc1_.color = 16733995;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryRealCurrencySkin_LocaLabel4_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.styleName = "priceTreasury";
            if(_loc2_)
            {
               §§goto(addr0029);
            }
            §§goto(addr0045);
         }
         addr0029:
         _loc1_.visible = false;
         if(_loc2_ || Boolean(_loc1_))
         {
            addr0045:
            _loc1_.includeInLayout = false;
            if(!_loc3_)
            {
               _loc1_.id = "priceLabel";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr0071:
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           addr007a:
                           this.priceLabel = _loc1_;
                           if(!_loc3_)
                           {
                              BindingManager.executeBindings(this,"priceLabel",this.priceLabel);
                           }
                        }
                     }
                     §§goto(addr0091);
                  }
               }
               §§goto(addr007a);
            }
            §§goto(addr0071);
         }
         addr0091:
         return _loc1_;
      }
      
      private function _CityTreasuryRealCurrencySkin_Group5_c() : Group
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
               _loc1_.mxmlContent = [this._CityTreasuryRealCurrencySkin_MultistateButton1_i(),this._CityTreasuryRealCurrencySkin_BriskImageDynaLib4_i()];
               if(_loc3_ || Boolean(_loc1_))
               {
                  §§goto(addr005f);
               }
               §§goto(addr006b);
            }
            addr005f:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr006b:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr006b);
      }
      
      private function _CityTreasuryRealCurrencySkin_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc2_ || _loc3_)
         {
            _loc1_.width = 188;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_)
               {
                  _loc1_.id = "purchaseButton";
                  addr0045:
                  if(!(_loc3_ && _loc2_))
                  {
                     addr0066:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           _loc1_.document = this;
                           if(_loc2_ || _loc3_)
                           {
                              addr0098:
                              this.purchaseButton = _loc1_;
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr00aa:
                                 BindingManager.executeBindings(this,"purchaseButton",this.purchaseButton);
                              }
                              §§goto(addr00b7);
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr00b7);
                     }
                  }
                  §§goto(addr0098);
               }
               addr00b7:
               return _loc1_;
            }
            §§goto(addr0045);
         }
         §§goto(addr0066);
      }
      
      private function _CityTreasuryRealCurrencySkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "ui_mainbar_icon_add";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.mouseEnabled = false;
                  if(!_loc3_)
                  {
                     _loc1_.mouseChildren = false;
                     if(_loc2_)
                     {
                        _loc1_.left = 250;
                        if(_loc2_)
                        {
                           addr0071:
                           _loc1_.top = -5;
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr0083:
                              _loc1_.visible = false;
                              if(_loc2_ || _loc3_)
                              {
                                 addr0094:
                                 _loc1_.id = "plusIcon";
                                 if(_loc2_)
                                 {
                                    addr00a9:
                                    if(!_loc1_.document)
                                    {
                                       if(_loc2_)
                                       {
                                          addr00b5:
                                          _loc1_.document = this;
                                          if(_loc2_)
                                          {
                                             addr00be:
                                             this.plusIcon = _loc1_;
                                             if(_loc2_)
                                             {
                                                addr00c8:
                                                BindingManager.executeBindings(this,"plusIcon",this.plusIcon);
                                             }
                                             §§goto(addr00d5);
                                          }
                                          §§goto(addr00c8);
                                       }
                                       §§goto(addr00d5);
                                    }
                                    §§goto(addr00be);
                                 }
                                 §§goto(addr00b5);
                              }
                              §§goto(addr00a9);
                           }
                           §§goto(addr0094);
                        }
                        §§goto(addr00a9);
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr00a9);
               }
               §§goto(addr0071);
            }
            §§goto(addr00b5);
         }
         addr00d5:
         return _loc1_;
      }
      
      private function _CityTreasuryRealCurrencySkin_Group6_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.height = 24;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.mxmlContent = [this._CityTreasuryRealCurrencySkin_BlueBarComponent2_c(),this._CityTreasuryRealCurrencySkin_HGroup6_c()];
                  if(_loc2_ || _loc2_)
                  {
                     addr0080:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr008c:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr0090);
               }
               §§goto(addr008c);
            }
            §§goto(addr0080);
         }
         addr0090:
         return _loc1_;
      }
      
      private function _CityTreasuryRealCurrencySkin_BlueBarComponent2_c() : BlueBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && Boolean(this)))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        addr0071:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr0075);
            }
            §§goto(addr0071);
         }
         addr0075:
         return _loc1_;
      }
      
      private function _CityTreasuryRealCurrencySkin_HGroup6_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_)
                  {
                     addr0056:
                     _loc1_.horizontalAlign = "center";
                     if(_loc3_)
                     {
                        §§goto(addr0060);
                     }
                  }
                  §§goto(addr009c);
               }
               addr0060:
               _loc1_.paddingTop = 3;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._CityTreasuryRealCurrencySkin_LocaLabel5_i()];
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr009c:
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               §§goto(addr00a0);
            }
            §§goto(addr0056);
         }
         addr00a0:
         return _loc1_;
      }
      
      private function _CityTreasuryRealCurrencySkin_LocaLabel5_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.styleName = "InfoBarStyle";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.maxDisplayedLines = 1;
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 95;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.id = "listHeaderLabel";
                     if(!_loc2_)
                     {
                        addr0064:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              addr0078:
                              _loc1_.document = this;
                              if(_loc3_ || _loc2_)
                              {
                                 addr0094:
                                 this.listHeaderLabel = _loc1_;
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    addr00a6:
                                    BindingManager.executeBindings(this,"listHeaderLabel",this.listHeaderLabel);
                                 }
                              }
                           }
                           return _loc1_;
                        }
                     }
                     §§goto(addr0094);
                  }
               }
               §§goto(addr0078);
            }
            §§goto(addr00a6);
         }
         §§goto(addr0064);
      }
      
      private function _CityTreasuryRealCurrencySkin_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.width = 550;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.height = 90;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.itemRenderer = this._CityTreasuryRealCurrencySkin_ClassFactory1_c();
                  if(_loc3_)
                  {
                     _loc1_.setStyle("skinClass",CityTreasuryInternalPackListSkin);
                     if(_loc3_ || _loc2_)
                     {
                        addr0080:
                        _loc1_.id = "packList";
                        if(_loc3_)
                        {
                           §§goto(addr008b);
                        }
                        §§goto(addr009f);
                     }
                     addr008b:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           addr009f:
                           _loc1_.document = this;
                           if(_loc3_ || Boolean(this))
                           {
                              §§goto(addr00ba);
                           }
                           §§goto(addr00cc);
                        }
                     }
                     addr00ba:
                     this.packList = _loc1_;
                     if(_loc3_ || _loc3_)
                     {
                        addr00cc:
                        BindingManager.executeBindings(this,"packList",this.packList);
                     }
                     return _loc1_;
                  }
                  §§goto(addr009f);
               }
            }
            §§goto(addr00cc);
         }
         §§goto(addr0080);
      }
      
      private function _CityTreasuryRealCurrencySkin_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.generator = CityTreasuryPackItemRenderer;
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
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._693351384bigItemBg = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0053);
                  }
                  §§goto(addr006a);
               }
               addr0053:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     addr006a:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bigItemBg",_loc2_,param1));
                  }
               }
               §§goto(addr0079);
            }
            addr0079:
            return;
         }
         §§goto(addr0053);
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
               if(_loc4_)
               {
                  this._1138409996bigItemGroup = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bigItemGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr006e);
            }
         }
         addr007d:
      }
      
      [Bindable(event="propertyChange")]
      public function get blueHeaderGroup() : Group
      {
         return this._1664307000blueHeaderGroup;
      }
      
      public function set blueHeaderGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1664307000blueHeaderGroup;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._1664307000blueHeaderGroup = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blueHeaderGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr0077);
               }
            }
            addr0086:
            return;
         }
         §§goto(addr0077);
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
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1166031975headerLabel = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerLabel",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemInfoGroup() : VGroup
      {
         return this._784021346itemInfoGroup;
      }
      
      public function set itemInfoGroup(param1:VGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._784021346itemInfoGroup;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._784021346itemInfoGroup = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0041);
                  }
                  §§goto(addr0050);
               }
               addr0041:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0050:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemInfoGroup",_loc2_,param1));
                  }
               }
               §§goto(addr005f);
            }
         }
         addr005f:
      }
      
      [Bindable(event="propertyChange")]
      public function get listHeaderLabel() : LocaLabel
      {
         return this._691190551listHeaderLabel;
      }
      
      public function set listHeaderLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._691190551listHeaderLabel;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._691190551listHeaderLabel = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0050:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"listHeaderLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr005f);
               }
               §§goto(addr0050);
            }
            addr005f:
            return;
         }
         §§goto(addr0050);
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._8439162mainText = param1;
                  addr0038:
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainText",_loc2_,param1));
                        }
                     }
                     §§goto(addr0076);
                  }
               }
               §§goto(addr0067);
            }
            addr0076:
            return;
         }
         §§goto(addr0038);
      }
      
      [Bindable(event="propertyChange")]
      public function get oldPriceLabel() : LocaLabel
      {
         return this._241268558oldPriceLabel;
      }
      
      public function set oldPriceLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._241268558oldPriceLabel;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._241268558oldPriceLabel = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     addr0061:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oldPriceLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0061);
            }
            addr007f:
            return;
         }
         §§goto(addr0070);
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
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._807087456packGfx = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"packGfx",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
               }
               §§goto(addr006e);
            }
            addr007d:
            return;
         }
         §§goto(addr005f);
      }
      
      [Bindable(event="propertyChange")]
      public function get packIconGfx() : BriskImageDynaLib
      {
         return this._979153895packIconGfx;
      }
      
      public function set packIconGfx(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._979153895packIconGfx;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._979153895packIconGfx = param1;
                  if(!_loc3_)
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
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"packIconGfx",_loc2_,param1));
                  }
               }
               §§goto(addr0075);
            }
         }
         addr0075:
      }
      
      [Bindable(event="propertyChange")]
      public function get packList() : List
      {
         return this._750244439packList;
      }
      
      public function set packList(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._750244439packList;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._750244439packList = param1;
                  addr0049:
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     §§goto(addr0067);
                  }
                  §§goto(addr0076);
               }
               addr0067:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr0076:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"packList",_loc2_,param1));
                  }
               }
               §§goto(addr0085);
            }
            addr0085:
            return;
         }
         §§goto(addr0049);
      }
      
      [Bindable(event="propertyChange")]
      public function get plusIcon() : BriskImageDynaLib
      {
         return this._1849499341plusIcon;
      }
      
      public function set plusIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1849499341plusIcon;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1849499341plusIcon = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr0078);
               }
               addr0060:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(param1))
                  {
                     addr0078:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"plusIcon",_loc2_,param1));
                  }
               }
               §§goto(addr0087);
            }
         }
         addr0087:
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._1481293013priceLabel = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr0075);
               }
               addr005e:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0075:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"priceLabel",_loc2_,param1));
                  }
               }
               §§goto(addr0084);
            }
            addr0084:
            return;
         }
         §§goto(addr005e);
      }
      
      [Bindable(event="propertyChange")]
      public function get priceLine() : Rect
      {
         return this._2125985571priceLine;
      }
      
      public function set priceLine(param1:Rect) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2125985571priceLine;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._2125985571priceLine = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
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
         §§goto(addr0078);
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1082037139purchaseButton = param1;
                  if(_loc3_)
                  {
                     addr0052:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"purchaseButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0069);
            }
            addr0078:
            return;
         }
         §§goto(addr0052);
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
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._213507019hostComponent = param1;
                  if(!_loc4_)
                  {
                     addr005b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0082);
               }
               §§goto(addr005b);
            }
            addr0082:
            return;
         }
         §§goto(addr005b);
      }
   }
}

