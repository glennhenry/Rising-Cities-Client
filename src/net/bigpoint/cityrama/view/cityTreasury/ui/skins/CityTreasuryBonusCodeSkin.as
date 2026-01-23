package net.bigpoint.cityrama.view.cityTreasury.ui.skins
{
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.cityTreasury.event.BonusCodeEvent;
   import net.bigpoint.cityrama.view.cityTreasury.ui.components.CityTreasuryContentComponent;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DebossedBackgroundComponent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.TextInputCursorSave;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.filters.GlowFilter;
   import spark.skins.SparkSkin;
   
   public class CityTreasuryBonusCodeSkin extends SparkSkin
   {
      
      private var _693351384bigItemBg:BriskImageDynaLib;
      
      private var _1138409996bigItemGroup:Group;
      
      private var _748427390bonusCodeInput:TextInputCursorSave;
      
      private var _1618067916errorLabel:LocaLabel;
      
      private var _1166031975headerLabel:LocaLabel;
      
      private var _8439162mainText:LocaLabel;
      
      private var _807087456packGfx:BriskImageDynaLib;
      
      private var _1082037139purchaseButton:MultistateButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _stdValueLabel:String;
      
      private var _213507019hostComponent:CityTreasuryContentComponent;
      
      public function CityTreasuryBonusCodeSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
            if(!(_loc2_ && _loc2_))
            {
               mx_internal::_document = this;
               if(_loc1_ || Boolean(this))
               {
                  §§goto(addr0051);
               }
               §§goto(addr0077);
            }
            addr0051:
            this.percentWidth = 100;
            if(!(_loc2_ && _loc2_))
            {
               this.percentHeight = 100;
               if(!_loc2_)
               {
                  addr0077:
                  this.mxmlContent = [this._CityTreasuryBonusCodeSkin_HGroup1_c()];
                  if(_loc1_)
                  {
                     addr0087:
                     this.addEventListener("creationComplete",this.___CityTreasuryBonusCodeSkin_SparkSkin1_creationComplete);
                  }
               }
            }
            return;
         }
         §§goto(addr0087);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(!(_loc3_ && _loc3_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc2_)
                  {
                     §§goto(addr0041);
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         addr0041:
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
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._stdValueLabel = LocaUtils.getString("rcl.booklayer.specialrebuy","rcl.booklayer.specialrebuy.bonuscode.inputfield.default");
            if(_loc3_)
            {
               §§push(this.bonusCodeInput);
               if(!_loc2_)
               {
                  §§pop().setStyle("backgroundAlpha",0);
                  if(!_loc2_)
                  {
                     §§push(this.bonusCodeInput);
                     if(!_loc2_)
                     {
                        §§goto(addr0063);
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr007d);
               }
               addr0063:
               §§pop().filters = [new GlowFilter(0,1,2,2,10)];
               if(!_loc2_)
               {
                  addr0081:
                  this.bonusCodeInput.text = this._stdValueLabel;
                  addr007d:
               }
               §§goto(addr0087);
            }
            §§goto(addr007d);
         }
         addr0087:
      }
      
      private function sendBonusCode(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            this.errorLabel.text = "";
         }
         var _loc2_:BonusCodeEvent = new BonusCodeEvent(BonusCodeEvent.BONUS_CODE_SEND,true,true);
         if(!(_loc3_ && _loc3_))
         {
            _loc2_.bonusCode = this.bonusCodeInput.text;
            if(_loc4_)
            {
               §§push(_loc2_.bonusCode);
               if(!_loc3_)
               {
                  §§push("");
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     §§push(§§pop() == §§pop());
                     if(!_loc3_)
                     {
                        §§push(!§§pop());
                        if(!_loc3_)
                        {
                           addr0078:
                           var _temp_4:* = §§pop();
                           §§push(_temp_4);
                           §§push(_temp_4);
                           if(_loc4_)
                           {
                              if(§§pop())
                              {
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§pop();
                                    if(_loc4_ || Boolean(this))
                                    {
                                       §§push(_loc2_.bonusCode);
                                       if(_loc4_ || Boolean(this))
                                       {
                                          §§goto(addr00c1);
                                       }
                                       §§goto(addr00fe);
                                    }
                                    §§goto(addr0167);
                                 }
                              }
                              §§goto(addr00ce);
                           }
                           §§goto(addr0115);
                        }
                        §§goto(addr00c8);
                     }
                     §§goto(addr0078);
                  }
                  addr00c1:
                  §§push(§§pop() == " ");
                  if(_loc4_)
                  {
                     addr00c8:
                     §§push(!§§pop());
                     if(!_loc3_)
                     {
                        addr00ce:
                        var _temp_8:* = §§pop();
                        §§push(_temp_8);
                        §§push(_temp_8);
                        if(_loc4_)
                        {
                           if(§§pop())
                           {
                              if(_loc4_)
                              {
                                 §§pop();
                                 if(!(_loc3_ && Boolean(_loc2_)))
                                 {
                                    §§push(_loc2_.bonusCode);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr00fe:
                                       §§push(§§pop() == null);
                                       if(_loc4_)
                                       {
                                          §§push(!§§pop());
                                          if(!(_loc3_ && Boolean(this)))
                                          {
                                             addr0114:
                                             var _temp_12:* = §§pop();
                                             addr0115:
                                             §§push(_temp_12);
                                             if(_temp_12)
                                             {
                                                if(_loc4_)
                                                {
                                                   §§goto(addr011f);
                                                }
                                                §§goto(addr0148);
                                             }
                                             §§goto(addr0149);
                                          }
                                          §§goto(addr0148);
                                       }
                                       §§goto(addr0114);
                                    }
                                    §§goto(addr0132);
                                 }
                                 §§goto(addr0167);
                              }
                              §§goto(addr0148);
                           }
                           §§goto(addr0114);
                        }
                        §§goto(addr0115);
                     }
                     §§goto(addr0149);
                  }
                  addr011f:
                  §§pop();
                  if(_loc4_ || _loc3_)
                  {
                     addr0149:
                     addr0132:
                     §§push(_loc2_.bonusCode == this._stdValueLabel);
                     if(!_loc3_)
                     {
                        addr0148:
                        §§push(!§§pop());
                     }
                     if(§§pop())
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           §§goto(addr015b);
                        }
                     }
                     §§goto(addr0167);
                  }
                  addr015b:
                  dispatchEvent(_loc2_);
                  if(_loc4_)
                  {
                     addr0167:
                     this.bonusCodeInput.text = this._stdValueLabel;
                  }
                  §§goto(addr0171);
               }
               §§goto(addr00fe);
            }
            §§goto(addr0167);
         }
         addr0171:
      }
      
      private function handleBonusCodeClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            §§push(this.bonusCodeInput);
            if(!_loc3_)
            {
               if(§§pop().text == this._stdValueLabel)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr004f:
                     this.bonusCodeInput.text = "";
                  }
               }
               §§goto(addr0053);
            }
            §§goto(addr004f);
         }
         addr0053:
      }
      
      private function _CityTreasuryBonusCodeSkin_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0047:
                  _loc1_.gap = 3;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.mxmlContent = [this._CityTreasuryBonusCodeSkin_VGroup1_c(),this._CityTreasuryBonusCodeSkin_Group2_c()];
                     if(_loc3_ || Boolean(this))
                     {
                        §§goto(addr0083);
                     }
                     §§goto(addr008f);
                  }
               }
               addr0083:
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr008f:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0093);
            }
            addr0093:
            return _loc1_;
         }
         §§goto(addr0047);
      }
      
      private function _CityTreasuryBonusCodeSkin_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.percentHeight = 100;
            if(_loc2_)
            {
               _loc1_.verticalAlign = "top";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.mxmlContent = [this._CityTreasuryBonusCodeSkin_Group1_i()];
                  if(!(_loc3_ && _loc2_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr0076:
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               §§goto(addr007a);
            }
            §§goto(addr0076);
         }
         addr007a:
         return _loc1_;
      }
      
      private function _CityTreasuryBonusCodeSkin_Group1_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.mxmlContent = [this._CityTreasuryBonusCodeSkin_BriskImageDynaLib1_i(),this._CityTreasuryBonusCodeSkin_HGroup2_c()];
            if(_loc3_)
            {
               _loc1_.id = "bigItemGroup";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr006f:
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           addr0078:
                           this.bigItemGroup = _loc1_;
                           if(!_loc2_)
                           {
                              BindingManager.executeBindings(this,"bigItemGroup",this.bigItemGroup);
                           }
                        }
                     }
                     §§goto(addr008f);
                  }
                  §§goto(addr0078);
               }
               §§goto(addr006f);
            }
            addr008f:
            return _loc1_;
         }
         §§goto(addr0078);
      }
      
      private function _CityTreasuryBonusCodeSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
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
               _loc1_.dynaBmpSourceName = "special_cardboard_big";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.id = "bigItemBg";
                  if(_loc2_ || _loc3_)
                  {
                     addr005e:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.document = this;
                           if(_loc2_ || Boolean(this))
                           {
                              addr008e:
                              this.bigItemBg = _loc1_;
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 addr00a0:
                                 BindingManager.executeBindings(this,"bigItemBg",this.bigItemBg);
                              }
                           }
                           §§goto(addr00ad);
                        }
                     }
                     §§goto(addr008e);
                  }
                  addr00ad:
                  return _loc1_;
               }
               §§goto(addr00a0);
            }
         }
         §§goto(addr005e);
      }
      
      private function _CityTreasuryBonusCodeSkin_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.verticalAlign = "middle";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_)
               {
                  addr0053:
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.percentWidth = 100;
                     if(_loc3_)
                     {
                        _loc1_.percentHeight = 100;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr008e:
                           _loc1_.mxmlContent = [this._CityTreasuryBonusCodeSkin_BriskImageDynaLib2_i()];
                           if(!_loc2_)
                           {
                              addr009e:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    _loc1_.document = this;
                                 }
                              }
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr009e);
                  }
               }
               §§goto(addr008e);
            }
            §§goto(addr0053);
         }
         §§goto(addr008e);
      }
      
      private function _CityTreasuryBonusCodeSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
            if(_loc3_)
            {
               §§goto(addr002e);
            }
            §§goto(addr004b);
         }
         addr002e:
         _loc1_.id = "packGfx";
         if(_loc3_ || Boolean(_loc1_))
         {
            addr004b:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr006b);
               }
            }
            §§goto(addr0074);
         }
         addr006b:
         _loc1_.document = this;
         if(!_loc2_)
         {
            addr0074:
            this.packGfx = _loc1_;
            if(_loc3_ || Boolean(this))
            {
               BindingManager.executeBindings(this,"packGfx",this.packGfx);
            }
         }
         return _loc1_;
      }
      
      private function _CityTreasuryBonusCodeSkin_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.height = 310;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._CityTreasuryBonusCodeSkin_DebossedBackgroundComponent1_c(),this._CityTreasuryBonusCodeSkin_VGroup2_c()];
                  addr0053:
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           addr0090:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0094);
                  }
               }
               §§goto(addr0090);
            }
            §§goto(addr0053);
         }
         addr0094:
         return _loc1_;
      }
      
      private function _CityTreasuryBonusCodeSkin_DebossedBackgroundComponent1_c() : DebossedBackgroundComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DebossedBackgroundComponent = new DebossedBackgroundComponent();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.percentHeight = 98;
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr0073:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0077);
               }
               §§goto(addr0073);
            }
            addr0077:
            return _loc1_;
         }
         §§goto(addr0073);
      }
      
      private function _CityTreasuryBonusCodeSkin_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc3_ || Boolean(_loc1_))
            {
               addr0032:
               _loc1_.verticalAlign = "middle";
               if(!_loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.paddingTop = 10;
                     if(!_loc2_)
                     {
                        _loc1_.percentWidth = 95;
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr0078);
                        }
                        §§goto(addr00d2);
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr00d2);
               }
               addr0078:
               _loc1_.percentHeight = 80;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.mxmlContent = [this._CityTreasuryBonusCodeSkin_Group3_c(),this._CityTreasuryBonusCodeSkin_HGroup4_c(),this._CityTreasuryBonusCodeSkin_Group4_c(),this._CityTreasuryBonusCodeSkin_MultistateButton1_i(),this._CityTreasuryBonusCodeSkin_HGroup7_c()];
                  addr008a:
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     §§goto(addr00c6);
                  }
                  §§goto(addr00d2);
               }
               addr00c6:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr00d2:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr00d6);
            }
            addr00d6:
            return _loc1_;
         }
         §§goto(addr0032);
      }
      
      private function _CityTreasuryBonusCodeSkin_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.height = 40;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.mxmlContent = [this._CityTreasuryBonusCodeSkin_BlueBarComponent1_c(),this._CityTreasuryBonusCodeSkin_HGroup3_c()];
                  if(_loc2_ || _loc2_)
                  {
                     addr006e:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc3_))
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
         §§goto(addr006e);
      }
      
      private function _CityTreasuryBonusCodeSkin_BlueBarComponent1_c() : BlueBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && _loc3_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        addr0073:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0073);
      }
      
      private function _CityTreasuryBonusCodeSkin_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 90;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && _loc2_))
               {
                  addr0057:
                  _loc1_.horizontalCenter = 0;
                  if(!_loc2_)
                  {
                     _loc1_.verticalAlign = "middle";
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§goto(addr0074);
                     }
                  }
                  §§goto(addr00a3);
               }
               §§goto(addr00b7);
            }
            §§goto(addr0057);
         }
         addr0074:
         _loc1_.horizontalAlign = "center";
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.mxmlContent = [this._CityTreasuryBonusCodeSkin_LocaLabel1_i()];
            if(!_loc2_)
            {
               addr00a3:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr00b7:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr00bb);
            }
            §§goto(addr00b7);
         }
         addr00bb:
         return _loc1_;
      }
      
      private function _CityTreasuryBonusCodeSkin_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               §§goto(addr0030);
            }
            §§goto(addr005c);
         }
         addr0030:
         _loc1_.styleName = "InfoBarStyle";
         if(!_loc3_)
         {
            _loc1_.maxDisplayedLines = 1;
            if(!_loc3_)
            {
               §§goto(addr0051);
            }
            §§goto(addr0098);
         }
         addr0051:
         _loc1_.id = "headerLabel";
         if(_loc2_)
         {
            addr005c:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr007d);
               }
            }
            §§goto(addr008e);
         }
         addr007d:
         _loc1_.document = this;
         if(!(_loc3_ && _loc2_))
         {
            addr008e:
            this.headerLabel = _loc1_;
            if(!_loc3_)
            {
               addr0098:
               BindingManager.executeBindings(this,"headerLabel",this.headerLabel);
            }
         }
         return _loc1_;
      }
      
      private function _CityTreasuryBonusCodeSkin_HGroup4_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.verticalAlign = "middle";
            if(_loc2_ || _loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.percentWidth = 95;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.height = 100;
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.mxmlContent = [this._CityTreasuryBonusCodeSkin_LocaLabel2_i()];
                        addr007d:
                        if(!(_loc3_ && _loc2_))
                        {
                           addr00a2:
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 addr00b6:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00ba);
                     }
                  }
                  §§goto(addr00a2);
               }
               §§goto(addr00b6);
            }
            addr00ba:
            return _loc1_;
         }
         §§goto(addr007d);
      }
      
      private function _CityTreasuryBonusCodeSkin_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               §§goto(addr0032);
            }
            §§goto(addr009a);
         }
         addr0032:
         _loc1_.styleName = "miniLayerFlavourTextXpresso";
         if(_loc3_)
         {
            _loc1_.maxDisplayedLines = 4;
            if(!_loc2_)
            {
               _loc1_.id = "mainText";
               if(!(_loc2_ && _loc3_))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        §§goto(addr007b);
                     }
                  }
               }
               §§goto(addr009a);
            }
            §§goto(addr00ac);
         }
         addr007b:
         _loc1_.document = this;
         if(_loc3_ || _loc2_)
         {
            addr009a:
            this.mainText = _loc1_;
            if(!(_loc2_ && _loc2_))
            {
               addr00ac:
               BindingManager.executeBindings(this,"mainText",this.mainText);
            }
         }
         return _loc1_;
      }
      
      private function _CityTreasuryBonusCodeSkin_Group4_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc2_)
         {
            _loc1_.width = 300;
            if(!_loc3_)
            {
               _loc1_.height = 34;
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr005a:
                  _loc1_.mxmlContent = [this._CityTreasuryBonusCodeSkin_HGroup5_c(),this._CityTreasuryBonusCodeSkin_HGroup6_c()];
                  if(!_loc3_)
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
               §§goto(addr0080);
            }
            §§goto(addr005a);
         }
         addr0080:
         return _loc1_;
      }
      
      private function _CityTreasuryBonusCodeSkin_HGroup5_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.gap = 0;
            if(!_loc2_)
            {
               _loc1_.verticalCenter = 0;
               if(_loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.percentHeight = 100;
                     if(!_loc2_)
                     {
                        addr0073:
                        _loc1_.mxmlContent = [this._CityTreasuryBonusCodeSkin_BriskImageDynaLib3_c(),this._CityTreasuryBonusCodeSkin_BriskImageDynaLib4_c(),this._CityTreasuryBonusCodeSkin_BriskImageDynaLib5_c()];
                        if(_loc3_)
                        {
                           §§goto(addr008f);
                        }
                        §§goto(addr009b);
                     }
                  }
               }
               addr008f:
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr009b:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr009f);
            }
            §§goto(addr0073);
         }
         addr009f:
         return _loc1_;
      }
      
      private function _CityTreasuryBonusCodeSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
            if(_loc2_)
            {
               §§goto(addr003f);
            }
            §§goto(addr0053);
         }
         addr003f:
         _loc1_.dynaBmpSourceName = "bonuscode_left";
         if(_loc2_ || _loc3_)
         {
            _loc1_.percentHeight = 100;
            addr0053:
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               §§goto(addr0072);
            }
            §§goto(addr0086);
         }
         addr0072:
         if(!_loc1_.document)
         {
            if(_loc2_ || Boolean(this))
            {
               addr0086:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _CityTreasuryBonusCodeSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "bonuscode_middle";
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc2_)
                  {
                     addr006c:
                     _loc1_.percentHeight = 100;
                     if(_loc3_)
                     {
                        §§goto(addr0076);
                     }
                     §§goto(addr008a);
                  }
                  addr0076:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr008a:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr008e);
               }
            }
            §§goto(addr006c);
         }
         addr008e:
         return _loc1_;
      }
      
      private function _CityTreasuryBonusCodeSkin_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "bonuscode_right";
               addr0036:
               if(_loc3_)
               {
                  _loc1_.percentHeight = 100;
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr006b:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr006b);
         }
         §§goto(addr0036);
      }
      
      private function _CityTreasuryBonusCodeSkin_HGroup6_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(!_loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc3_)
                  {
                     addr0047:
                     _loc1_.percentHeight = 90;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        §§goto(addr0063);
                     }
                     §§goto(addr006e);
                  }
                  addr0063:
                  _loc1_.paddingLeft = 10;
                  if(_loc3_)
                  {
                     addr006e:
                     _loc1_.paddingRight = 10;
                     if(!_loc2_)
                     {
                        _loc1_.verticalCenter = 0;
                        if(_loc3_ || _loc3_)
                        {
                           _loc1_.horizontalCenter = 0;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr00aa:
                              _loc1_.mxmlContent = [this._CityTreasuryBonusCodeSkin_TextInputCursorSave1_i()];
                              if(!_loc2_)
                              {
                                 §§goto(addr00ba);
                              }
                              §§goto(addr00c6);
                           }
                        }
                     }
                     addr00ba:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr00c6:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr00ca);
                  }
                  addr00ca:
                  return _loc1_;
               }
               §§goto(addr00aa);
            }
            §§goto(addr0047);
         }
         §§goto(addr006e);
      }
      
      private function _CityTreasuryBonusCodeSkin_TextInputCursorSave1_i() : TextInputCursorSave
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TextInputCursorSave = new TextInputCursorSave();
         if(_loc3_)
         {
            _loc1_.selectable = true;
            if(_loc3_)
            {
               _loc1_.styleName = "numStepper";
               if(_loc3_)
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.addEventListener("click",this.__bonusCodeInput_click);
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.id = "bonusCodeInput";
                        if(!_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(this))
                              {
                                 addr0099:
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    addr00a2:
                                    this.bonusCodeInput = _loc1_;
                                    if(!_loc2_)
                                    {
                                       BindingManager.executeBindings(this,"bonusCodeInput",this.bonusCodeInput);
                                    }
                                 }
                                 §§goto(addr00b9);
                              }
                           }
                           §§goto(addr00a2);
                        }
                        §§goto(addr00b9);
                     }
                     §§goto(addr00a2);
                  }
               }
               §§goto(addr0099);
            }
            addr00b9:
            return _loc1_;
         }
         §§goto(addr00a2);
      }
      
      public function __bonusCodeInput_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this.handleBonusCodeClick(param1);
         }
      }
      
      private function _CityTreasuryBonusCodeSkin_MultistateButton1_i() : MultistateButton
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
               _loc1_.addEventListener("click",this.__purchaseButton_click);
               if(!_loc3_)
               {
                  _loc1_.id = "purchaseButton";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           addr0072:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr007b:
                              this.purchaseButton = _loc1_;
                              if(_loc2_)
                              {
                                 addr0085:
                                 BindingManager.executeBindings(this,"purchaseButton",this.purchaseButton);
                              }
                              §§goto(addr0092);
                           }
                           §§goto(addr0085);
                        }
                        §§goto(addr0092);
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr0085);
               }
               §§goto(addr007b);
            }
            §§goto(addr0072);
         }
         addr0092:
         return _loc1_;
      }
      
      public function __purchaseButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this.sendBonusCode(param1);
         }
      }
      
      private function _CityTreasuryBonusCodeSkin_HGroup7_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 90;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.height = 40;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_ || _loc3_)
                  {
                     addr0068:
                     _loc1_.horizontalAlign = "center";
                     if(!(_loc3_ && _loc3_))
                     {
                        addr0087:
                        _loc1_.mxmlContent = [this._CityTreasuryBonusCodeSkin_LocaLabel3_i()];
                        if(_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0068);
            }
            §§goto(addr0087);
         }
         §§goto(addr0068);
      }
      
      private function _CityTreasuryBonusCodeSkin_LocaLabel3_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.styleName = "orangeElevenCenter";
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.percentWidth = 100;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.maxDisplayedLines = 2;
                  if(!_loc3_)
                  {
                     addr0064:
                     _loc1_.id = "errorLabel";
                     if(!(_loc3_ && _loc2_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr008f:
                              _loc1_.document = this;
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 §§goto(addr00a0);
                              }
                              §§goto(addr00aa);
                           }
                        }
                        addr00a0:
                        this.errorLabel = _loc1_;
                        if(!_loc3_)
                        {
                           addr00aa:
                           BindingManager.executeBindings(this,"errorLabel",this.errorLabel);
                        }
                        §§goto(addr00b7);
                     }
                     §§goto(addr008f);
                  }
                  addr00b7:
                  return _loc1_;
               }
               §§goto(addr00a0);
            }
         }
         §§goto(addr0064);
      }
      
      public function ___CityTreasuryBonusCodeSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
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
               if(_loc3_)
               {
                  addr0034:
                  this._693351384bigItemBg = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr004d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bigItemBg",_loc2_,param1));
                        }
                     }
                     §§goto(addr005c);
                  }
               }
               §§goto(addr004d);
            }
            addr005c:
            return;
         }
         §§goto(addr0034);
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
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1138409996bigItemGroup = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr0079:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bigItemGroup",_loc2_,param1));
                        }
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr0079);
               }
            }
         }
         addr0088:
      }
      
      [Bindable(event="propertyChange")]
      public function get bonusCodeInput() : TextInputCursorSave
      {
         return this._748427390bonusCodeInput;
      }
      
      public function set bonusCodeInput(param1:TextInputCursorSave) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._748427390bonusCodeInput;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._748427390bonusCodeInput = param1;
                  addr0043:
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bonusCodeInput",_loc2_,param1));
                        }
                     }
                     §§goto(addr007f);
                  }
               }
               §§goto(addr0070);
            }
            addr007f:
            return;
         }
         §§goto(addr0043);
      }
      
      [Bindable(event="propertyChange")]
      public function get errorLabel() : LocaLabel
      {
         return this._1618067916errorLabel;
      }
      
      public function set errorLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1618067916errorLabel;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1618067916errorLabel = param1;
                  addr0045:
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"errorLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0081);
                  }
               }
               §§goto(addr0072);
            }
            addr0081:
            return;
         }
         §§goto(addr0045);
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
               if(!_loc3_)
               {
                  this._1166031975headerLabel = param1;
                  if(_loc4_)
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr007e);
                  }
               }
               §§goto(addr006f);
            }
            addr007e:
            return;
         }
         §§goto(addr0058);
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
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._8439162mainText = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     §§goto(addr0062);
                  }
                  §§goto(addr007a);
               }
               addr0062:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr007a:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainText",_loc2_,param1));
                  }
               }
               §§goto(addr0089);
            }
            addr0089:
            return;
         }
         §§goto(addr007a);
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
                  addr003f:
                  this._807087456packGfx = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"packGfx",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr003f);
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
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1082037139purchaseButton = param1;
                  addr0049:
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"purchaseButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0049);
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
               if(_loc3_ || Boolean(this))
               {
                  this._213507019hostComponent = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0078);
                  }
               }
               §§goto(addr0069);
            }
         }
         addr0078:
      }
   }
}

