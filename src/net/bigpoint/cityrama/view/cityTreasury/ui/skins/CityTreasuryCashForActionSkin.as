package net.bigpoint.cityrama.view.cityTreasury.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryContentComponent;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DebossedBackgroundComponent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class CityTreasuryCashForActionSkin extends SparkSkin
   {
      
      private var _693351384bigItemBg:BriskImageDynaLib;
      
      private var _1138409996bigItemGroup:Group;
      
      private var _1166031975headerLabel:LocaLabel;
      
      private var _8439162mainText:LocaLabel;
      
      private var _807087456packGfx:BriskImageDynaLib;
      
      private var _1082037139purchaseButton:MultistateButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:CityTreasuryContentComponent;
      
      public function CityTreasuryCashForActionSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
            if(_loc1_ || _loc1_)
            {
               mx_internal::_document = this;
               if(_loc1_ || _loc2_)
               {
                  §§goto(addr005b);
               }
               §§goto(addr006f);
            }
            addr005b:
            this.percentWidth = 100;
            if(_loc1_)
            {
               this.percentHeight = 100;
               if(!_loc2_)
               {
                  addr006f:
                  this.mxmlContent = [this._CityTreasuryCashForActionSkin_HGroup1_c()];
               }
            }
            return;
         }
         §§goto(addr006f);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_ || Boolean(param1))
                  {
                     return;
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
         }
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.initialize();
         }
      }
      
      private function _CityTreasuryCashForActionSkin_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.gap = 3;
                  if(!_loc3_)
                  {
                     _loc1_.mxmlContent = [this._CityTreasuryCashForActionSkin_VGroup1_c(),this._CityTreasuryCashForActionSkin_Group2_c()];
                     if(!_loc3_)
                     {
                        addr007c:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
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
            §§goto(addr007c);
         }
         §§goto(addr0088);
      }
      
      private function _CityTreasuryCashForActionSkin_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentHeight = 100;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.verticalAlign = "top";
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.mxmlContent = [this._CityTreasuryCashForActionSkin_Group1_i()];
                  if(!(_loc2_ && _loc3_))
                  {
                     §§goto(addr007e);
                  }
               }
               §§goto(addr0092);
            }
            addr007e:
            if(!_loc1_.document)
            {
               if(_loc3_ || Boolean(this))
               {
                  addr0092:
                  _loc1_.document = this;
               }
            }
            §§goto(addr0096);
         }
         addr0096:
         return _loc1_;
      }
      
      private function _CityTreasuryCashForActionSkin_Group1_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.mxmlContent = [this._CityTreasuryCashForActionSkin_BriskImageDynaLib1_i(),this._CityTreasuryCashForActionSkin_HGroup2_c()];
            if(_loc3_)
            {
               _loc1_.id = "bigItemGroup";
               if(_loc3_)
               {
                  addr004b:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.document = this;
                        if(_loc3_ || _loc2_)
                        {
                           addr007d:
                           this.bigItemGroup = _loc1_;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr008f:
                              BindingManager.executeBindings(this,"bigItemGroup",this.bigItemGroup);
                           }
                        }
                        §§goto(addr009c);
                     }
                     §§goto(addr008f);
                  }
                  §§goto(addr007d);
               }
               addr009c:
               return _loc1_;
            }
            §§goto(addr007d);
         }
         §§goto(addr004b);
      }
      
      private function _CityTreasuryCashForActionSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
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
               _loc1_.dynaBmpSourceName = "special_cardboard_big";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.id = "bigItemBg";
                  if(_loc2_)
                  {
                     addr0058:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr007b:
                              this.bigItemBg = _loc1_;
                              if(_loc2_ || Boolean(this))
                              {
                                 addr008d:
                                 BindingManager.executeBindings(this,"bigItemBg",this.bigItemBg);
                              }
                              §§goto(addr009a);
                           }
                           §§goto(addr008d);
                        }
                        §§goto(addr009a);
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr008d);
               }
               §§goto(addr0058);
            }
            §§goto(addr008d);
         }
         addr009a:
         return _loc1_;
      }
      
      private function _CityTreasuryCashForActionSkin_HGroup2_c() : HGroup
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
               if(_loc2_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_ || Boolean(this))
                  {
                     addr0050:
                     _loc1_.percentWidth = 100;
                     if(!(_loc3_ && _loc2_))
                     {
                        §§goto(addr0062);
                     }
                     §§goto(addr008f);
                  }
                  §§goto(addr00a3);
               }
               addr0062:
               _loc1_.percentHeight = 100;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._CityTreasuryCashForActionSkin_BriskImageDynaLib2_i()];
                  if(!(_loc3_ && _loc3_))
                  {
                     addr008f:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           addr00a3:
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               §§goto(addr00a7);
            }
            §§goto(addr0050);
         }
         addr00a7:
         return _loc1_;
      }
      
      private function _CityTreasuryCashForActionSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
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
               _loc1_.id = "packGfx";
               if(_loc2_)
               {
                  addr004e:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        addr005a:
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           addr0063:
                           this.packGfx = _loc1_;
                           if(!_loc3_)
                           {
                              addr006d:
                              BindingManager.executeBindings(this,"packGfx",this.packGfx);
                           }
                           §§goto(addr007a);
                        }
                        §§goto(addr006d);
                     }
                     addr007a:
                     return _loc1_;
                  }
                  §§goto(addr0063);
               }
               §§goto(addr005a);
            }
            §§goto(addr004e);
         }
         §§goto(addr005a);
      }
      
      private function _CityTreasuryCashForActionSkin_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.height = 310;
               if(!_loc2_)
               {
                  addr005a:
                  _loc1_.mxmlContent = [this._CityTreasuryCashForActionSkin_DebossedBackgroundComponent1_c(),this._CityTreasuryCashForActionSkin_VGroup2_c()];
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0084:
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0084);
         }
         §§goto(addr005a);
      }
      
      private function _CityTreasuryCashForActionSkin_DebossedBackgroundComponent1_c() : DebossedBackgroundComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DebossedBackgroundComponent = new DebossedBackgroundComponent();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.percentHeight = 98;
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        addr006a:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr006e);
            }
            §§goto(addr006a);
         }
         addr006e:
         return _loc1_;
      }
      
      private function _CityTreasuryCashForActionSkin_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc3_)
            {
               _loc1_.verticalAlign = "middle";
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc3_ || _loc3_)
                  {
                     addr0063:
                     _loc1_.paddingTop = 10;
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.percentWidth = 95;
                        if(_loc3_)
                        {
                           _loc1_.percentHeight = 80;
                           if(_loc3_)
                           {
                              _loc1_.mxmlContent = [this._CityTreasuryCashForActionSkin_Group3_c(),this._CityTreasuryCashForActionSkin_HGroup4_c(),this._CityTreasuryCashForActionSkin_MultistateButton1_i()];
                              addr008a:
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 §§goto(addr00bb);
                              }
                              §§goto(addr00c7);
                           }
                           addr00bb:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr00c7:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00cb);
                        }
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr00c7);
               }
               §§goto(addr0063);
            }
            §§goto(addr008a);
         }
         addr00cb:
         return _loc1_;
      }
      
      private function _CityTreasuryCashForActionSkin_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.height = 40;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.mxmlContent = [this._CityTreasuryCashForActionSkin_BlueBarComponent1_c(),this._CityTreasuryCashForActionSkin_HGroup3_c()];
                  if(_loc2_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _CityTreasuryCashForActionSkin_BlueBarComponent1_c() : BlueBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               addr004d:
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && Boolean(this)))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr006b:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr006b);
         }
         §§goto(addr004d);
      }
      
      private function _CityTreasuryCashForActionSkin_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.percentWidth = 90;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc3_)
                  {
                     _loc1_.verticalAlign = "middle";
                     if(_loc2_ || Boolean(this))
                     {
                        §§goto(addr006c);
                     }
                     §§goto(addr00ad);
                  }
                  §§goto(addr0099);
               }
               §§goto(addr006c);
            }
            §§goto(addr00ad);
         }
         addr006c:
         _loc1_.horizontalAlign = "center";
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.mxmlContent = [this._CityTreasuryCashForActionSkin_LocaLabel1_i()];
            if(!_loc3_)
            {
               addr0099:
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr00ad:
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _CityTreasuryCashForActionSkin_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               addr0034:
               _loc1_.styleName = "InfoBarStyle";
               if(!_loc2_)
               {
                  _loc1_.maxDisplayedLines = 1;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.id = "headerLabel";
                     if(_loc3_ || Boolean(this))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              _loc1_.document = this;
                              if(_loc3_ || _loc2_)
                              {
                                 addr00a4:
                                 this.headerLabel = _loc1_;
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr00b6:
                                    BindingManager.executeBindings(this,"headerLabel",this.headerLabel);
                                 }
                              }
                           }
                           §§goto(addr00c3);
                        }
                        §§goto(addr00a4);
                     }
                  }
                  addr00c3:
                  return _loc1_;
               }
               §§goto(addr00b6);
            }
            §§goto(addr00a4);
         }
         §§goto(addr0034);
      }
      
      private function _CityTreasuryCashForActionSkin_HGroup4_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 95;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     §§goto(addr0058);
                  }
                  §§goto(addr0062);
               }
               §§goto(addr009a);
            }
         }
         addr0058:
         _loc1_.percentHeight = 100;
         if(!_loc2_)
         {
            _loc1_.mxmlContent = [this._CityTreasuryCashForActionSkin_LocaLabel2_i()];
            addr0062:
            if(_loc3_ || _loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr009a:
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _CityTreasuryCashForActionSkin_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.styleName = "miniLayerFlavourTextXpresso";
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.maxDisplayedLines = 6;
                  if(!_loc2_)
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr0069);
               }
               addr0056:
               _loc1_.id = "mainText";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0069:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           §§goto(addr008a);
                        }
                     }
                     §§goto(addr009c);
                  }
                  addr008a:
                  this.mainText = _loc1_;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr009c:
                     BindingManager.executeBindings(this,"mainText",this.mainText);
                  }
               }
               §§goto(addr00a9);
            }
            addr00a9:
            return _loc1_;
         }
         §§goto(addr009c);
      }
      
      private function _CityTreasuryCashForActionSkin_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc2_)
         {
            _loc1_.width = 188;
            if(_loc2_)
            {
               _loc1_.id = "purchaseButton";
               §§goto(addr002c);
            }
            §§goto(addr0062);
         }
         addr002c:
         if(_loc2_)
         {
            if(!_loc1_.document)
            {
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr0062:
                  _loc1_.document = this;
                  if(_loc2_)
                  {
                     addr006b:
                     this.purchaseButton = _loc1_;
                     if(!_loc3_)
                     {
                        BindingManager.executeBindings(this,"purchaseButton",this.purchaseButton);
                     }
                  }
               }
               §§goto(addr0082);
            }
            §§goto(addr006b);
         }
         addr0082:
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
               if(_loc3_ || Boolean(param1))
               {
                  this._693351384bigItemBg = param1;
                  addr0043:
                  if(!_loc4_)
                  {
                     addr005b:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bigItemBg",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr005b);
            }
            addr0081:
            return;
         }
         §§goto(addr0043);
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
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1138409996bigItemGroup = param1;
                  addr0037:
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr0055);
                  }
                  §§goto(addr0064);
               }
               addr0055:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0064:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bigItemGroup",_loc2_,param1));
                  }
               }
               §§goto(addr0073);
            }
            addr0073:
            return;
         }
         §§goto(addr0037);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1166031975headerLabel = param1;
                  if(_loc4_)
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0056);
            }
         }
         addr0075:
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._8439162mainText = param1;
                  if(!_loc3_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainText",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0055);
            }
            addr0073:
            return;
         }
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get packGfx() : BriskImageDynaLib
      {
         return this._807087456packGfx;
      }
      
      public function set packGfx(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._807087456packGfx;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._807087456packGfx = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"packGfx",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0072);
            }
         }
         addr0081:
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
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._1082037139purchaseButton = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr0073);
               }
               addr005c:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr0073:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"purchaseButton",_loc2_,param1));
                  }
               }
               §§goto(addr0082);
            }
            addr0082:
            return;
         }
         §§goto(addr0073);
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
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._213507019hostComponent = param1;
                  if(!_loc4_)
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr005d);
      }
   }
}

