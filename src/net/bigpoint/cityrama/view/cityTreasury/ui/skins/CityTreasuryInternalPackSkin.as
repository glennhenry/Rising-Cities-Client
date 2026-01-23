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
   
   public class CityTreasuryInternalPackSkin extends SparkSkin
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
      
      private var _1481293013priceLabel:LocaLabel;
      
      private var _2125985571priceLine:Rect;
      
      private var _1082037139purchaseButton:MultistateButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:CityTreasuryContentComponent;
      
      public function CityTreasuryInternalPackSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
            if(!(_loc1_ && _loc2_))
            {
               mx_internal::_document = this;
               if(_loc2_ || Boolean(this))
               {
                  this.percentWidth = 100;
                  if(_loc2_)
                  {
                     this.percentHeight = 100;
                     if(!(_loc1_ && _loc1_))
                     {
                        addr0078:
                        this.mxmlContent = [this._CityTreasuryInternalPackSkin_VGroup1_c()];
                     }
                     §§goto(addr0083);
                  }
               }
            }
            §§goto(addr0078);
         }
         addr0083:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     return;
                  }
               }
               else
               {
                  addr004f:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
         }
         §§goto(addr004f);
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
      
      private function _CityTreasuryInternalPackSkin_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               addr003e:
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.gap = 3;
                  if(!_loc3_)
                  {
                     addr005e:
                     _loc1_.mxmlContent = [this._CityTreasuryInternalPackSkin_HGroup1_c(),this._CityTreasuryInternalPackSkin_Group6_c(),this._CityTreasuryInternalPackSkin_List1_i()];
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0086:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr008a);
                     }
                     §§goto(addr0086);
                  }
                  addr008a:
                  return _loc1_;
               }
               §§goto(addr005e);
            }
            §§goto(addr0086);
         }
         §§goto(addr003e);
      }
      
      private function _CityTreasuryInternalPackSkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.mxmlContent = [this._CityTreasuryInternalPackSkin_Group1_i(),this._CityTreasuryInternalPackSkin_Group2_c()];
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_Group1_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.mxmlContent = [this._CityTreasuryInternalPackSkin_BriskImageDynaLib1_i(),this._CityTreasuryInternalPackSkin_HGroup2_c(),this._CityTreasuryInternalPackSkin_BriskImageDynaLib3_i()];
            if(_loc3_)
            {
               _loc1_.id = "bigItemGroup";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        §§goto(addr0074);
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr008f);
            }
            addr0074:
            _loc1_.document = this;
            if(!_loc2_)
            {
               addr007d:
               this.bigItemGroup = _loc1_;
               if(!(_loc2_ && _loc3_))
               {
                  addr008f:
                  BindingManager.executeBindings(this,"bigItemGroup",this.bigItemGroup);
               }
            }
            return _loc1_;
         }
         §§goto(addr007d);
      }
      
      private function _CityTreasuryInternalPackSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
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
               addr0034:
               _loc1_.dynaBmpSourceName = "special_cardboard_big";
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.id = "bigItemBg";
                  if(!(_loc2_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr007e);
                        }
                        §§goto(addr0099);
                     }
                     §§goto(addr0087);
                  }
               }
               §§goto(addr0099);
            }
            addr007e:
            _loc1_.document = this;
            if(!_loc2_)
            {
               addr0087:
               this.bigItemBg = _loc1_;
               if(!(_loc2_ && _loc3_))
               {
                  addr0099:
                  BindingManager.executeBindings(this,"bigItemBg",this.bigItemBg);
               }
            }
            return _loc1_;
         }
         §§goto(addr0034);
      }
      
      private function _CityTreasuryInternalPackSkin_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_ || _loc3_)
               {
                  addr0051:
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_)
                  {
                     addr005b:
                     _loc1_.percentWidth = 100;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr0078:
                        _loc1_.percentHeight = 100;
                        if(!_loc3_)
                        {
                           _loc1_.mxmlContent = [this._CityTreasuryInternalPackSkin_BriskImageDynaLib2_i()];
                           if(_loc2_)
                           {
                              addr0092:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           §§goto(addr00a2);
                        }
                        §§goto(addr0092);
                     }
                     §§goto(addr00a2);
                  }
                  §§goto(addr0078);
               }
               addr00a2:
               return _loc1_;
            }
            §§goto(addr0051);
         }
         §§goto(addr005b);
      }
      
      private function _CityTreasuryInternalPackSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
            if(_loc3_)
            {
               _loc1_.id = "packGfx";
               if(_loc3_)
               {
                  addr0051:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr005d:
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           addr0066:
                           this.packGfx = _loc1_;
                           if(!_loc2_)
                           {
                              BindingManager.executeBindings(this,"packGfx",this.packGfx);
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0066);
               }
               §§goto(addr005d);
            }
            §§goto(addr0066);
         }
         §§goto(addr0051);
      }
      
      private function _CityTreasuryInternalPackSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.id = "packIconGfx";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           §§goto(addr0072);
                        }
                     }
                     §§goto(addr007c);
                  }
                  addr0072:
                  this.packIconGfx = _loc1_;
                  if(_loc2_)
                  {
                     addr007c:
                     BindingManager.executeBindings(this,"packIconGfx",this.packIconGfx);
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr007c);
      }
      
      private function _CityTreasuryInternalPackSkin_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.height = 190;
               if(!(_loc2_ && Boolean(this)))
               {
                  §§goto(addr0065);
               }
               §§goto(addr0083);
            }
         }
         addr0065:
         _loc1_.mxmlContent = [this._CityTreasuryInternalPackSkin_DebossedBackgroundComponent1_c(),this._CityTreasuryInternalPackSkin_VGroup2_i()];
         if(!(_loc2_ && Boolean(this)))
         {
            addr0083:
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
      
      private function _CityTreasuryInternalPackSkin_DebossedBackgroundComponent1_c() : DebossedBackgroundComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DebossedBackgroundComponent = new DebossedBackgroundComponent();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.height = 195;
               if(_loc3_ || _loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_VGroup2_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.verticalAlign = "bottom";
                  if(!_loc3_)
                  {
                     _loc1_.mxmlContent = [this._CityTreasuryInternalPackSkin_VGroup3_c(),this._CityTreasuryInternalPackSkin_Group5_c()];
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0070:
                        _loc1_.id = "itemInfoGroup";
                        if(_loc2_)
                        {
                           §§goto(addr007b);
                        }
                        §§goto(addr009a);
                     }
                     addr007b:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           addr009a:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              §§goto(addr00a3);
                           }
                        }
                        §§goto(addr00ad);
                     }
                     §§goto(addr00a3);
                  }
                  §§goto(addr0070);
               }
               §§goto(addr009a);
            }
            addr00a3:
            this.itemInfoGroup = _loc1_;
            if(_loc2_)
            {
               addr00ad:
               BindingManager.executeBindings(this,"itemInfoGroup",this.itemInfoGroup);
            }
            return _loc1_;
         }
         §§goto(addr00ad);
      }
      
      private function _CityTreasuryInternalPackSkin_VGroup3_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.paddingTop = 10;
                  if(_loc3_)
                  {
                     _loc1_.gap = 10;
                     if(_loc3_)
                     {
                        _loc1_.percentWidth = 100;
                        if(!_loc2_)
                        {
                           addr0073:
                           _loc1_.percentHeight = 100;
                           if(_loc3_ || _loc2_)
                           {
                              _loc1_.mxmlContent = [this._CityTreasuryInternalPackSkin_Group3_i(),this._CityTreasuryInternalPackSkin_HGroup4_c(),this._CityTreasuryInternalPackSkin_HGroup5_c()];
                              if(!_loc2_)
                              {
                                 addr00ad:
                                 if(!_loc1_.document)
                                 {
                                    if(!(_loc2_ && Boolean(_loc1_)))
                                    {
                                       addr00c1:
                                       _loc1_.document = this;
                                    }
                                 }
                                 §§goto(addr00c5);
                              }
                           }
                           §§goto(addr00c1);
                        }
                        addr00c5:
                        return _loc1_;
                     }
                     §§goto(addr00ad);
                  }
                  §§goto(addr0073);
               }
            }
            §§goto(addr00c1);
         }
         §§goto(addr0073);
      }
      
      private function _CityTreasuryInternalPackSkin_Group3_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.height = 40;
            if(!_loc3_)
            {
               _loc1_.percentWidth = 95;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.mxmlContent = [this._CityTreasuryInternalPackSkin_BlueBarComponent1_c(),this._CityTreasuryInternalPackSkin_HGroup3_c()];
                  if(!_loc3_)
                  {
                     _loc1_.id = "blueHeaderGroup";
                     if(_loc2_ || Boolean(this))
                     {
                        addr0072:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr007e:
                              _loc1_.document = this;
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 addr009a:
                                 this.blueHeaderGroup = _loc1_;
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    addr00ac:
                                    BindingManager.executeBindings(this,"blueHeaderGroup",this.blueHeaderGroup);
                                 }
                              }
                              §§goto(addr00b9);
                           }
                           §§goto(addr00ac);
                        }
                        §§goto(addr009a);
                     }
                     addr00b9:
                     return _loc1_;
                  }
                  §§goto(addr0072);
               }
               §§goto(addr007e);
            }
         }
         §§goto(addr009a);
      }
      
      private function _CityTreasuryInternalPackSkin_BlueBarComponent1_c() : BlueBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         if(_loc2_)
         {
            _loc1_.percentHeight = 100;
            if(!_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc2_ || Boolean(_loc1_))
               {
                  §§goto(addr0059);
               }
               §§goto(addr006d);
            }
            addr0059:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && _loc2_))
               {
                  addr006d:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr006d);
      }
      
      private function _CityTreasuryInternalPackSkin_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.verticalAlign = "middle";
            if(_loc2_)
            {
               §§goto(addr0032);
            }
            §§goto(addr0093);
         }
         addr0032:
         _loc1_.horizontalAlign = "center";
         if(_loc2_)
         {
            _loc1_.percentHeight = 100;
            if(_loc2_ || _loc2_)
            {
               _loc1_.percentWidth = 100;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._CityTreasuryInternalPackSkin_LocaLabel1_i()];
                  if(_loc2_)
                  {
                     §§goto(addr007f);
                  }
               }
            }
            §§goto(addr0093);
         }
         addr007f:
         if(!_loc1_.document)
         {
            if(_loc2_ || Boolean(_loc1_))
            {
               addr0093:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_LocaLabel1_i() : LocaLabel
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
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.percentWidth = 95;
                  if(_loc3_)
                  {
                     _loc1_.id = "headerLabel";
                     if(!_loc2_)
                     {
                        addr0066:
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr0090:
                                 this.headerLabel = _loc1_;
                                 if(!_loc2_)
                                 {
                                    addr009a:
                                    BindingManager.executeBindings(this,"headerLabel",this.headerLabel);
                                 }
                                 §§goto(addr00a7);
                              }
                              §§goto(addr009a);
                           }
                           §§goto(addr00a7);
                        }
                        §§goto(addr0090);
                     }
                     addr00a7:
                     return _loc1_;
                  }
                  §§goto(addr0066);
               }
            }
            §§goto(addr009a);
         }
         §§goto(addr0066);
      }
      
      private function _CityTreasuryInternalPackSkin_HGroup4_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentHeight = 100;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.percentWidth = 100;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_)
                  {
                     addr0061:
                     _loc1_.horizontalAlign = "center";
                     if(!_loc2_)
                     {
                        _loc1_.mxmlContent = [this._CityTreasuryInternalPackSkin_LocaLabel2_i()];
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr008f);
                        }
                        §§goto(addr00a3);
                     }
                     addr008f:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           addr00a3:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr00a7);
                  }
                  addr00a7:
                  return _loc1_;
               }
            }
            §§goto(addr008f);
         }
         §§goto(addr0061);
      }
      
      private function _CityTreasuryInternalPackSkin_LocaLabel2_i() : LocaLabel
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
               _loc1_.percentWidth = 90;
               if(_loc2_)
               {
                  _loc1_.maxDisplayedLines = 3;
                  if(!_loc3_)
                  {
                     _loc1_.id = "mainText";
                     if(_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              addr0073:
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 addr007c:
                                 this.mainText = _loc1_;
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr008e:
                                    BindingManager.executeBindings(this,"mainText",this.mainText);
                                 }
                                 §§goto(addr009b);
                              }
                              §§goto(addr008e);
                           }
                           §§goto(addr009b);
                        }
                        §§goto(addr007c);
                     }
                     §§goto(addr0073);
                  }
               }
               §§goto(addr007c);
            }
            addr009b:
            return _loc1_;
         }
         §§goto(addr008e);
      }
      
      private function _CityTreasuryInternalPackSkin_HGroup5_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentHeight = 100;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.percentWidth = 100;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc2_ && _loc3_))
                  {
                     addr0069:
                     _loc1_.verticalAlign = "middle";
                     if(_loc3_)
                     {
                        _loc1_.mxmlContent = [this._CityTreasuryInternalPackSkin_Group4_c(),this._CityTreasuryInternalPackSkin_LocaLabel4_i(),this._CityTreasuryInternalPackSkin_BriskImageDynaLib4_c()];
                        if(!(_loc2_ && _loc3_))
                        {
                           addr00a5:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr00b9:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00bd);
                     }
                     §§goto(addr00b9);
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr00b9);
            }
            §§goto(addr0069);
         }
         addr00bd:
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.minWidth = 15;
            if(!_loc2_)
            {
               _loc1_.mxmlContent = [this._CityTreasuryInternalPackSkin_LocaLabel3_i(),this._CityTreasuryInternalPackSkin_Rect1_i()];
               if(_loc3_ || _loc3_)
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
         addr0081:
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc2_)
         {
            _loc1_.styleName = "priceTreasuryOld";
            if(_loc3_)
            {
               addr0032:
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  _loc1_.visible = false;
                  if(_loc3_)
                  {
                     _loc1_.includeInLayout = false;
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.id = "oldPriceLabel";
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr0078:
                                 _loc1_.document = this;
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§goto(addr0095);
                                 }
                              }
                              §§goto(addr00a7);
                           }
                           §§goto(addr0095);
                        }
                        §§goto(addr0078);
                     }
                     addr0095:
                     this.oldPriceLabel = _loc1_;
                     if(_loc3_ || _loc3_)
                     {
                        addr00a7:
                        BindingManager.executeBindings(this,"oldPriceLabel",this.oldPriceLabel);
                     }
                     §§goto(addr00b4);
                  }
                  §§goto(addr00a7);
               }
            }
            addr00b4:
            return _loc1_;
         }
         §§goto(addr0032);
      }
      
      private function _CityTreasuryInternalPackSkin_Rect1_i() : Rect
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Rect = new Rect();
         if(_loc2_)
         {
            _loc1_.height = 2;
            if(!_loc3_)
            {
               _loc1_.left = 0;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.right = 0;
                  if(_loc2_)
                  {
                     _loc1_.top = 4;
                     if(_loc2_)
                     {
                        _loc1_.percentWidth = 100;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           §§goto(addr0072);
                        }
                        §§goto(addr00c8);
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr00c8);
               }
            }
            addr0072:
            _loc1_.visible = false;
            if(!_loc3_)
            {
               addr007b:
               _loc1_.includeInLayout = false;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.fill = this._CityTreasuryInternalPackSkin_SolidColor1_c();
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr00b0);
                  }
                  §§goto(addr00c8);
               }
               §§goto(addr00be);
            }
            addr00b0:
            _loc1_.initialized(this,"priceLine");
            if(_loc2_)
            {
               addr00be:
               this.priceLine = _loc1_;
               if(!_loc3_)
               {
                  addr00c8:
                  BindingManager.executeBindings(this,"priceLine",this.priceLine);
               }
            }
            §§goto(addr00d5);
         }
         addr00d5:
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_SolidColor1_c() : SolidColor
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SolidColor = new SolidColor();
         if(_loc3_)
         {
            _loc1_.color = 16733995;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_LocaLabel4_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc2_)
         {
            _loc1_.styleName = "priceTreasury";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.id = "priceLabel";
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr005a:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr007b:
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           addr0084:
                           this.priceLabel = _loc1_;
                           if(!_loc2_)
                           {
                              BindingManager.executeBindings(this,"priceLabel",this.priceLabel);
                           }
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr0084);
            }
            §§goto(addr005a);
         }
         §§goto(addr007b);
      }
      
      private function _CityTreasuryInternalPackSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaBmpSourceName = "layer_rc_icon";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.dynaLibName = "gui_resources_icons";
               if(_loc2_ || Boolean(_loc1_))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr007a:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr007e);
            }
            §§goto(addr007a);
         }
         addr007e:
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_Group5_c() : Group
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
               _loc1_.mxmlContent = [this._CityTreasuryInternalPackSkin_MultistateButton1_i()];
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr0050);
               }
               §§goto(addr005c);
            }
            addr0050:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  addr005c:
                  _loc1_.document = this;
               }
            }
            §§goto(addr0060);
         }
         addr0060:
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.width = 188;
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.horizontalCenter = 0;
               if(!_loc3_)
               {
                  addr0053:
                  _loc1_.id = "purchaseButton";
                  if(!_loc3_)
                  {
                     §§goto(addr005e);
                  }
                  §§goto(addr007f);
               }
               addr005e:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr007f:
                     _loc1_.document = this;
                     if(_loc2_)
                     {
                        §§goto(addr0088);
                     }
                     §§goto(addr0092);
                  }
               }
               addr0088:
               this.purchaseButton = _loc1_;
               if(!_loc3_)
               {
                  addr0092:
                  BindingManager.executeBindings(this,"purchaseButton",this.purchaseButton);
               }
               return _loc1_;
            }
            §§goto(addr0092);
         }
         §§goto(addr0053);
      }
      
      private function _CityTreasuryInternalPackSkin_Group6_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.height = 24;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._CityTreasuryInternalPackSkin_BlueBarComponent2_c(),this._CityTreasuryInternalPackSkin_HGroup6_c()];
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0079:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           addr008d:
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr008d);
         }
         §§goto(addr0079);
      }
      
      private function _CityTreasuryInternalPackSkin_BlueBarComponent2_c() : BlueBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && Boolean(this)))
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr0066:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr006a);
               }
               §§goto(addr0066);
            }
         }
         addr006a:
         return _loc1_;
      }
      
      private function _CityTreasuryInternalPackSkin_HGroup6_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc2_))
            {
               addr003b:
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_)
                  {
                     addr005c:
                     _loc1_.horizontalAlign = "center";
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.paddingTop = 3;
                        if(!(_loc3_ && _loc2_))
                        {
                           addr008e:
                           _loc1_.mxmlContent = [this._CityTreasuryInternalPackSkin_LocaLabel5_i()];
                           if(_loc2_)
                           {
                              §§goto(addr009e);
                           }
                        }
                        §§goto(addr00b2);
                     }
                     §§goto(addr008e);
                  }
                  addr009e:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr00b2:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr005c);
         }
         §§goto(addr003b);
      }
      
      private function _CityTreasuryInternalPackSkin_LocaLabel5_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "InfoBarStyle";
            if(_loc3_)
            {
               _loc1_.maxDisplayedLines = 1;
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 95;
                  if(_loc3_)
                  {
                     addr004d:
                     _loc1_.id = "listHeaderLabel";
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              §§goto(addr006f);
                           }
                        }
                        §§goto(addr0080);
                     }
                     §§goto(addr008a);
                  }
                  addr006f:
                  _loc1_.document = this;
                  if(_loc3_ || Boolean(this))
                  {
                     addr0080:
                     this.listHeaderLabel = _loc1_;
                     if(_loc3_)
                     {
                        addr008a:
                        BindingManager.executeBindings(this,"listHeaderLabel",this.listHeaderLabel);
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr004d);
         }
         §§goto(addr0080);
      }
      
      private function _CityTreasuryInternalPackSkin_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(_loc3_ || _loc3_)
         {
            _loc1_.width = 550;
            if(_loc3_)
            {
               _loc1_.height = 90;
               if(_loc3_)
               {
                  _loc1_.itemRenderer = this._CityTreasuryInternalPackSkin_ClassFactory1_c();
                  if(_loc3_ || Boolean(this))
                  {
                     addr0061:
                     _loc1_.setStyle("skinClass",CityTreasuryInternalPackListSkin);
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.id = "packList";
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 _loc1_.document = this;
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr00b4:
                                    this.packList = _loc1_;
                                    if(!_loc2_)
                                    {
                                       BindingManager.executeBindings(this,"packList",this.packList);
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                        }
                     }
                  }
                  §§goto(addr00b4);
               }
            }
         }
         §§goto(addr0061);
      }
      
      private function _CityTreasuryInternalPackSkin_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc2_)
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
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0062:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bigItemBg",_loc2_,param1));
                        }
                     }
                     §§goto(addr0071);
                  }
               }
               §§goto(addr0062);
            }
         }
         addr0071:
      }
      
      [Bindable(event="propertyChange")]
      public function get bigItemGroup() : Group
      {
         return this._1138409996bigItemGroup;
      }
      
      public function set bigItemGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1138409996bigItemGroup;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr003f:
                  this._1138409996bigItemGroup = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bigItemGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0077);
            }
            addr0086:
            return;
         }
         §§goto(addr003f);
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
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr0042:
                  this._1664307000blueHeaderGroup = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blueHeaderGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr005f);
            }
            addr0085:
            return;
         }
         §§goto(addr0042);
      }
      
      [Bindable(event="propertyChange")]
      public function get headerLabel() : LocaLabel
      {
         return this._1166031975headerLabel;
      }
      
      public function set headerLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1166031975headerLabel;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  addr0045:
                  this._1166031975headerLabel = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr007b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008a);
               }
               §§goto(addr007b);
            }
            addr008a:
            return;
         }
         §§goto(addr0045);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemInfoGroup() : VGroup
      {
         return this._784021346itemInfoGroup;
      }
      
      public function set itemInfoGroup(param1:VGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._784021346itemInfoGroup;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._784021346itemInfoGroup = param1;
                  addr0037:
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemInfoGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0073);
                  }
                  §§goto(addr0064);
               }
            }
            addr0073:
            return;
         }
         §§goto(addr0037);
      }
      
      [Bindable(event="propertyChange")]
      public function get listHeaderLabel() : LocaLabel
      {
         return this._691190551listHeaderLabel;
      }
      
      public function set listHeaderLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._691190551listHeaderLabel;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._691190551listHeaderLabel = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"listHeaderLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0074);
            }
            addr0083:
            return;
         }
         §§goto(addr0074);
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
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._8439162mainText = param1;
                  addr0046:
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainText",_loc2_,param1));
                        }
                     }
                     §§goto(addr0084);
                  }
               }
               §§goto(addr0075);
            }
            addr0084:
            return;
         }
         §§goto(addr0046);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  addr004a:
                  this._241268558oldPriceLabel = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0054);
                  }
                  §§goto(addr0063);
               }
               addr0054:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0063:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oldPriceLabel",_loc2_,param1));
                  }
               }
               §§goto(addr0072);
            }
            addr0072:
            return;
         }
         §§goto(addr004a);
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
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._807087456packGfx = param1;
                  addr0048:
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"packGfx",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
               }
               §§goto(addr0074);
            }
            addr0083:
            return;
         }
         §§goto(addr0048);
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._979153895packIconGfx = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"packIconGfx",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr006d);
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._750244439packList = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"packList",_loc2_,param1));
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
         §§goto(addr0055);
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
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1481293013priceLabel = param1;
                  if(!_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"priceLabel",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0057);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._2125985571priceLine = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0062:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"priceLine",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0071);
               }
               §§goto(addr0062);
            }
            addr0071:
            return;
         }
         §§goto(addr0062);
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
               if(!_loc3_)
               {
                  this._1082037139purchaseButton = param1;
                  if(!_loc3_)
                  {
                     addr004f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"purchaseButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0075);
                  }
               }
               §§goto(addr0066);
            }
            addr0075:
            return;
         }
         §§goto(addr004f);
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0064);
            }
            addr0073:
            return;
         }
         §§goto(addr0064);
      }
   }
}

