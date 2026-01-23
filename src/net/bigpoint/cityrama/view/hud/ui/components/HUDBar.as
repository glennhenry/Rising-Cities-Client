package net.bigpoint.cityrama.view.hud.ui.components
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
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.menu.vo.HUDVo;
   import net.bigpoint.cityrama.model.menu.vo.SpecialCurrencyVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.DropDownList;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.core.SpriteVisualElement;
   import spark.events.IndexChangeEvent;
   
   public class HUDBar extends Group
   {
      
      private var _717028414energyHappinessComponent:EnergyHappinessComponent;
      
      private var _1129806925forumButton:DynamicImageButton;
      
      private var _863205922forumGroup:Group;
      
      private var _1846837112humanResources:DropDownListComponent;
      
      private var _2131654161levelBar:LevelBarComponent;
      
      private var _184876379levelGroup:Group;
      
      private var _1695650217levelSparkleSprite:SpriteVisualElement;
      
      private var _1255627100logoutButton:DynamicImageButton;
      
      private var _273241018mainGroup:HGroup;
      
      private var _751905573multiCurrencyResources:DropDownListComponent;
      
      private var _85068827newsButton:DynamicImageButton;
      
      private var _278873964newsGroup:Group;
      
      private var _1848586191realCurrency:CurrencyBar;
      
      private var _729060372realCurrencySparkleSprite:SpriteVisualElement;
      
      private var _590841624residentsSparkleSprite:SpriteVisualElement;
      
      private var _644241750resourcesSparkleSprite:SpriteVisualElement;
      
      private var _947594878simpleCurrencyResources:CurrencyBar;
      
      private var _1463272479supportButton:DynamicImageButton;
      
      private var _290535484virtualCurrency:CurrencyBar;
      
      private var _228246369virtualCurrencySparkleSprite:SpriteVisualElement;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:HUDVo;
      
      private var _dataIsDirty:Boolean = false;
      
      public function HUDBar()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
            if(!(_loc2_ && Boolean(this)))
            {
               mx_internal::_document = this;
               if(_loc1_ || _loc1_)
               {
                  this.right = 2;
                  if(!(_loc2_ && _loc1_))
                  {
                     this.left = 1;
                     if(_loc1_ || Boolean(this))
                     {
                        addr0075:
                        this.percentWidth = 100;
                        if(_loc1_)
                        {
                           addr0089:
                           this.mouseEnabled = false;
                           if(_loc1_)
                           {
                              §§goto(addr0093);
                           }
                           §§goto(addr00ab);
                        }
                     }
                     addr0093:
                     this.mxmlContent = [this._HUDBar_HGroup1_i()];
                     if(_loc1_ || Boolean(this))
                     {
                        addr00ab:
                        this.addEventListener("creationComplete",this.___HUDBar_Group1_creationComplete);
                     }
                     §§goto(addr00b7);
                  }
                  §§goto(addr0089);
               }
               addr00b7:
               return;
            }
            §§goto(addr0075);
         }
         §§goto(addr0093);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || _loc3_)
            {
               §§goto(addr0035);
            }
            §§goto(addr0051);
         }
         addr0035:
         if(this.__moduleFactoryInitialized)
         {
            if(_loc2_)
            {
               return;
            }
         }
         else
         {
            addr0051:
            this.__moduleFactoryInitialized = true;
         }
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super.initialize();
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            super.commitProperties();
            if(_loc2_)
            {
               if(this._dataIsDirty)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     this._dataIsDirty = false;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr004f:
                        this.virtualCurrency.labelDisplay.text = LocaUtils.getThousendSeperatedNumber(this._data.virtualCurrency);
                        if(_loc2_)
                        {
                           this.realCurrency.labelDisplay.text = LocaUtils.getThousendSeperatedNumber(this._data.realCurrency);
                           if(_loc2_ || _loc1_)
                           {
                              §§goto(addr008d);
                           }
                        }
                        §§goto(addr0137);
                     }
                     addr008d:
                     §§push(this.simpleCurrencyResources);
                     if(_loc2_ || _loc2_)
                     {
                        §§pop().labelDisplay.text = this._data.specialCurrencies[0].amountString;
                        if(!(_loc3_ && Boolean(this)))
                        {
                           §§push(this.levelBar);
                           if(!_loc3_)
                           {
                              §§pop().progress = this._data.levelProgress;
                              if(_loc2_ || _loc3_)
                              {
                                 addr00ef:
                                 this.levelBar.leveLabel.text = this._data.level.toString();
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    §§push(this.energyHappinessComponent);
                                    if(_loc2_ || Boolean(this))
                                    {
                                       §§pop().happinessBar.progress = this._data.happiness;
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          addr013b:
                                          this.energyHappinessComponent.energyBar.progress = this._data.energy;
                                          addr0137:
                                          if(_loc2_)
                                          {
                                             addr014d:
                                             this.humanResources.dataProvider = this._data.populationData;
                                             if(!_loc3_)
                                             {
                                                addr0161:
                                                §§push(this.multiCurrencyResources);
                                                if(!_loc3_)
                                                {
                                                   §§pop().dataProvider = this._data.specialCurrencyData;
                                                   if(_loc2_)
                                                   {
                                                      addr017d:
                                                      var _temp_12:* = this.multiCurrencyResources;
                                                      var _loc1_:*;
                                                      this.multiCurrencyResources.visible = _loc1_ = this._data.showMultipleCurrencyResources;
                                                      _temp_12.includeInLayout = _loc1_;
                                                      addr0179:
                                                      if(!(_loc3_ && _loc1_))
                                                      {
                                                         §§goto(addr019e);
                                                      }
                                                      §§goto(addr01d5);
                                                   }
                                                   addr019e:
                                                   §§goto(addr01ae);
                                                }
                                                §§goto(addr017d);
                                             }
                                             §§goto(addr01d5);
                                          }
                                       }
                                       §§goto(addr0161);
                                    }
                                    §§goto(addr013b);
                                 }
                                 §§goto(addr014d);
                              }
                              §§goto(addr0179);
                           }
                           §§goto(addr00ef);
                        }
                        §§goto(addr0179);
                     }
                     addr01ae:
                     §§push(this.simpleCurrencyResources);
                     §§push(this.simpleCurrencyResources);
                     §§push(this._data.showMultipleCurrencyResources);
                     if(_loc2_)
                     {
                        §§push(!§§pop());
                     }
                     §§pop().includeInLayout = §§pop().visible = §§pop();
                     if(_loc2_ || _loc3_)
                     {
                        addr01d5:
                        this.createToolTips();
                     }
                     §§goto(addr01db);
                  }
                  §§goto(addr004f);
               }
               addr01db:
               return;
            }
            §§goto(addr01d5);
         }
         §§goto(addr008d);
      }
      
      private function createToolTips() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.virtualCurrency);
            if(!(_loc1_ && _loc1_))
            {
               §§pop().toolTip = LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.vcBar");
               if(_loc2_ || Boolean(this))
               {
                  §§push(this.virtualCurrency);
                  if(!_loc1_)
                  {
                     addr004b:
                     §§push(§§pop().plusButton);
                     if(!(_loc1_ && _loc2_))
                     {
                        if(§§pop())
                        {
                           if(!(_loc1_ && _loc1_))
                           {
                              addr0070:
                              §§push(this.virtualCurrency.plusButton);
                              if(_loc2_)
                              {
                                 §§push(LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.vcBarAdd"));
                                 if(_loc2_)
                                 {
                                    §§pop().toolTip = §§pop();
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       addr0098:
                                       §§push(this.realCurrency);
                                       if(_loc2_ || _loc1_)
                                       {
                                          §§pop().toolTip = LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.rcBar");
                                          if(!_loc1_)
                                          {
                                             §§push(this.realCurrency);
                                             if(_loc2_)
                                             {
                                                addr00c5:
                                                §§push(§§pop().plusButton);
                                                if(_loc2_)
                                                {
                                                   addr00cd:
                                                   if(§§pop())
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         addr00f3:
                                                         this.realCurrency.plusButton.toolTip = LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.rcBarAdd");
                                                         addr00dd:
                                                         addr00da:
                                                         addr00d6:
                                                         if(_loc2_)
                                                         {
                                                            addr00fa:
                                                            this.simpleCurrencyResources.toolTip = LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.ppBar");
                                                            if(_loc2_)
                                                            {
                                                               this.supportButton.toolTip = LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.help");
                                                               if(!_loc1_)
                                                               {
                                                                  this.logoutButton.toolTip = LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.exit");
                                                                  if(!(_loc1_ && _loc2_))
                                                                  {
                                                                     §§goto(addr0147);
                                                                  }
                                                                  §§goto(addr01f6);
                                                               }
                                                               §§goto(addr017d);
                                                            }
                                                            §§goto(addr01f6);
                                                         }
                                                         §§goto(addr01d8);
                                                      }
                                                      §§goto(addr017d);
                                                   }
                                                   §§goto(addr00fa);
                                                }
                                                §§goto(addr00dd);
                                             }
                                             §§goto(addr00da);
                                          }
                                          §§goto(addr00d6);
                                       }
                                       §§goto(addr00c5);
                                    }
                                    §§goto(addr017d);
                                 }
                                 §§goto(addr00f3);
                              }
                              §§goto(addr00cd);
                           }
                           addr0147:
                           this.forumButton.toolTip = LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.forum");
                           if(!(_loc1_ && _loc1_))
                           {
                              addr0166:
                              this.newsButton.toolTip = LocaUtils.getString("rcl.tooltips.hud","rcl.tooltips.hud.opennewsscreen");
                              if(_loc2_)
                              {
                                 addr017d:
                                 this.humanResources.toolTip = this._data.populationTooltip;
                                 if(!_loc1_)
                                 {
                                    this.levelBar.toolTip = this._data.levelBarTooltip;
                                    if(_loc2_)
                                    {
                                       addr01a3:
                                       §§push(this.energyHappinessComponent);
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          §§pop().energyBar.toolTip = this._data.energyBarTooltip;
                                          if(!(_loc1_ && _loc2_))
                                          {
                                             §§goto(addr01dc);
                                          }
                                          §§goto(addr01f6);
                                       }
                                       addr01dc:
                                       this.energyHappinessComponent.happinessBar.toolTip = this._data.happinessBarTooltip;
                                       addr01d8:
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          addr01f6:
                                          this.setSpecialCurrencyTooltip();
                                       }
                                       §§goto(addr01fb);
                                    }
                                 }
                                 §§goto(addr01fb);
                              }
                              §§goto(addr01a3);
                           }
                           §§goto(addr01fb);
                        }
                        §§goto(addr0098);
                     }
                     §§goto(addr00cd);
                  }
                  §§goto(addr0070);
               }
               addr01fb:
               return;
            }
            §§goto(addr004b);
         }
         §§goto(addr0166);
      }
      
      public function set data(param1:HUDVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc2_ || Boolean(this))
               {
                  this._data = param1;
                  if(_loc2_ || _loc3_)
                  {
                     this._dataIsDirty = true;
                     if(!(_loc3_ && Boolean(param1)))
                     {
                        addr007c:
                        invalidateProperties();
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr007c);
            }
         }
         addr0081:
      }
      
      public function changeResourceSelectionTo(param1:String) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:Object = null;
         for each(_loc2_ in this.multiCurrencyResources.dataProvider)
         {
            if(!_loc6_)
            {
               if(_loc2_.type != param1)
               {
                  continue;
               }
               if(_loc5_ || Boolean(param1))
               {
                  this.multiCurrencyResources.externelSelectedIndex = _loc2_;
                  if(_loc6_ && Boolean(this))
                  {
                     continue;
                  }
               }
            }
            this.setSpecialCurrencyTooltip();
            if(!(_loc6_ && Boolean(_loc2_)))
            {
               return;
            }
         }
      }
      
      private function handleCCPlusClick() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            dispatchEvent(new Event("addCC"));
         }
      }
      
      private function handleLevelPreviewClick() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            dispatchEvent(new Event("openLevelPreview"));
         }
      }
      
      private function handleDDPlusClick() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            dispatchEvent(new Event("addDD"));
         }
      }
      
      private function handlePPPlusClick() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            dispatchEvent(new Event("addPP"));
         }
      }
      
      private function handleLogout() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            dispatchEvent(new Event("logout"));
         }
      }
      
      private function handleSupport() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            dispatchEvent(new Event("support"));
         }
      }
      
      private function handleForum() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            dispatchEvent(new Event("forum"));
         }
      }
      
      private function setSpecialCurrencyTooltip() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.multiCurrencyResources);
            if(_loc2_)
            {
               if(§§pop().userselectedIndex != -1)
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(this.multiCurrencyResources);
                     if(_loc2_ || Boolean(this))
                     {
                        §§push(SpecialCurrencyVo(this._data.specialCurrencyData.source[this.multiCurrencyResources.userselectedIndex]).tooltip);
                        if(_loc2_)
                        {
                           §§pop().toolTip = §§pop();
                           if(_loc1_)
                           {
                              addr00be:
                              this.multiCurrencyResources.toolTip = SpecialCurrencyVo(this._data.specialCurrencyData.source[0]).tooltip;
                              addr00a4:
                              addr00a0:
                           }
                           §§goto(addr00c0);
                        }
                        §§goto(addr00be);
                     }
                     §§goto(addr00a4);
                  }
                  §§goto(addr00a0);
               }
               else if(this._data.specialCurrencyData.source.length)
               {
                  if(_loc2_)
                  {
                     §§goto(addr00a0);
                  }
               }
               §§goto(addr00c0);
            }
            §§goto(addr00a4);
         }
         addr00c0:
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.humanResources.addEventListener(MouseEvent.ROLL_OVER,this.onListOver);
            if(_loc2_ || _loc3_)
            {
               addr0040:
               this.multiCurrencyResources.addEventListener(MouseEvent.ROLL_OVER,this.onListOver);
            }
            return;
         }
         §§goto(addr0040);
      }
      
      private function onListOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:DropDownList = param1.currentTarget as DropDownList;
         if(_loc3_ || _loc3_)
         {
            _loc2_.addEventListener(MouseEvent.ROLL_OUT,this.onListOut);
            if(!_loc4_)
            {
               _loc2_.removeEventListener(MouseEvent.ROLL_OVER,this.onListOver);
               if(!_loc4_)
               {
                  addr005f:
                  _loc2_.openDropDown();
               }
               §§goto(addr0065);
            }
            §§goto(addr005f);
         }
         addr0065:
      }
      
      private function onListOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:DropDownList = param1.currentTarget as DropDownList;
         if(_loc4_)
         {
            _loc2_.addEventListener(MouseEvent.ROLL_OVER,this.onListOver);
            if(!_loc3_)
            {
               _loc2_.removeEventListener(MouseEvent.ROLL_OUT,this.onListOut);
               if(!_loc3_)
               {
                  addr0055:
                  _loc2_.closeDropDown(true);
               }
               §§goto(addr005c);
            }
            §§goto(addr0055);
         }
         addr005c:
      }
      
      private function newsButton_clickHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            dispatchEvent(new Event("news"));
         }
      }
      
      public function get vcElement() : DisplayObject
      {
         return this.virtualCurrency;
      }
      
      public function get rcElement() : DisplayObject
      {
         return this.realCurrency;
      }
      
      public function get xpElement() : DisplayObject
      {
         return this.levelBar;
      }
      
      public function get residentElement() : DisplayObject
      {
         return this.humanResources;
      }
      
      public function get resourceElement() : DisplayObject
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            if(this._data.showMultipleCurrencyResources)
            {
               if(!_loc2_)
               {
                  §§goto(addr0025);
               }
            }
            return this.simpleCurrencyResources;
         }
         addr0025:
         return this.multiCurrencyResources;
      }
      
      private function _HUDBar_HGroup1_i() : HGroup
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
               _loc1_.verticalAlign = "top";
               if(!_loc2_)
               {
                  §§goto(addr0032);
               }
               §§goto(addr00d6);
            }
            addr0032:
            _loc1_.horizontalAlign = "center";
            if(_loc3_)
            {
               _loc1_.gap = 4;
               if(!(_loc2_ && Boolean(this)))
               {
                  addr004e:
                  _loc1_.mouseEnabled = false;
                  if(!_loc2_)
                  {
                     _loc1_.mxmlContent = [this._HUDBar_Group2_c(),this._HUDBar_Group3_c(),this._HUDBar_Group4_c(),this._HUDBar_Group5_i(),this._HUDBar_Group6_c(),this._HUDBar_Group7_c(),this._HUDBar_EnergyHappinessComponent1_i(),this._HUDBar_Group8_i(),this._HUDBar_Group10_i(),this._HUDBar_Group12_c(),this._HUDBar_Group14_c()];
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.id = "mainGroup";
                        if(!(_loc2_ && _loc3_))
                        {
                           addr00ca:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr00d6:
                                 _loc1_.document = this;
                                 if(_loc3_ || _loc2_)
                                 {
                                    §§goto(addr00f2);
                                 }
                                 §§goto(addr0104);
                              }
                           }
                        }
                        §§goto(addr00f2);
                     }
                  }
                  §§goto(addr00ca);
               }
            }
            addr00f2:
            this.mainGroup = _loc1_;
            if(_loc3_ || Boolean(this))
            {
               addr0104:
               BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
            }
            return _loc1_;
         }
         §§goto(addr004e);
      }
      
      private function _HUDBar_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc2_)
         {
            _loc1_.height = 44;
            if(!_loc2_)
            {
               _loc1_.mouseEnabled = false;
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr005d);
               }
               §§goto(addr0087);
            }
            addr005d:
            _loc1_.mxmlContent = [this._HUDBar_CurrencyBar1_i(),this._HUDBar_SpriteVisualElement1_i()];
            if(!_loc2_)
            {
               addr0073:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0087:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0073);
      }
      
      private function _HUDBar_CurrencyBar1_i() : CurrencyBar
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:CurrencyBar = new CurrencyBar();
         if(!_loc2_)
         {
            _loc1_.width = 134;
            if(_loc3_ || _loc3_)
            {
               _loc1_.top = -2;
               if(_loc3_)
               {
                  _loc1_.styleName = "virtualCurrency";
                  if(_loc3_)
                  {
                     _loc1_.addEventListener("plusClick",this.__virtualCurrency_plusClick);
                     if(_loc3_)
                     {
                        _loc1_.id = "virtualCurrency";
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 addr009c:
                                 _loc1_.document = this;
                                 if(!_loc2_)
                                 {
                                    §§goto(addr00a5);
                                 }
                                 §§goto(addr00b7);
                              }
                           }
                           addr00a5:
                           this.virtualCurrency = _loc1_;
                           if(!(_loc2_ && _loc2_))
                           {
                              addr00b7:
                              BindingManager.executeBindings(this,"virtualCurrency",this.virtualCurrency);
                           }
                           §§goto(addr00c4);
                        }
                        §§goto(addr00b7);
                     }
                     addr00c4:
                     return _loc1_;
                  }
                  §§goto(addr00b7);
               }
            }
            §§goto(addr00a5);
         }
         §§goto(addr009c);
      }
      
      public function __virtualCurrency_plusClick(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.handleCCPlusClick();
         }
      }
      
      private function _HUDBar_SpriteVisualElement1_i() : SpriteVisualElement
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentHeight = 100;
            if(!_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.mouseChildren = false;
                  if(_loc2_)
                  {
                     _loc1_.mouseEnabled = false;
                     if(!_loc3_)
                     {
                        _loc1_.initialized(this,"virtualCurrencySparkleSprite");
                        if(_loc2_ || _loc2_)
                        {
                           addr0089:
                           this.virtualCurrencySparkleSprite = _loc1_;
                           if(!_loc3_)
                           {
                              addr0093:
                              BindingManager.executeBindings(this,"virtualCurrencySparkleSprite",this.virtualCurrencySparkleSprite);
                           }
                        }
                     }
                     §§goto(addr00a0);
                  }
                  §§goto(addr0089);
               }
               addr00a0:
               return _loc1_;
            }
         }
         §§goto(addr0093);
      }
      
      private function _HUDBar_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.height = 44;
            if(_loc3_ || Boolean(this))
            {
               addr0045:
               _loc1_.mouseEnabled = false;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._HUDBar_CurrencyBar2_i(),this._HUDBar_SpriteVisualElement2_i()];
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0086:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
               }
            }
            §§goto(addr0086);
         }
         §§goto(addr0045);
      }
      
      private function _HUDBar_CurrencyBar2_i() : CurrencyBar
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:CurrencyBar = new CurrencyBar();
         if(_loc2_ || _loc2_)
         {
            _loc1_.width = 110;
            if(!_loc3_)
            {
               _loc1_.top = -1;
               if(_loc2_)
               {
                  _loc1_.styleName = "realCurrency";
                  if(!_loc3_)
                  {
                     addr0054:
                     _loc1_.addEventListener("plusClick",this.__realCurrency_plusClick);
                     if(_loc2_)
                     {
                        §§goto(addr0065);
                     }
                     §§goto(addr0070);
                  }
                  §§goto(addr00ab);
               }
               §§goto(addr0099);
            }
            addr0065:
            _loc1_.id = "realCurrency";
            if(_loc2_)
            {
               addr0070:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     _loc1_.document = this;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0099:
                        this.realCurrency = _loc1_;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr00ab:
                           BindingManager.executeBindings(this,"realCurrency",this.realCurrency);
                        }
                        §§goto(addr00b8);
                     }
                     §§goto(addr00ab);
                  }
                  §§goto(addr00b8);
               }
               §§goto(addr0099);
            }
            addr00b8:
            return _loc1_;
         }
         §§goto(addr0054);
      }
      
      public function __realCurrency_plusClick(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this.handleDDPlusClick();
         }
      }
      
      private function _HUDBar_SpriteVisualElement2_i() : SpriteVisualElement
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentHeight = 100;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  _loc1_.mouseChildren = false;
                  if(_loc3_)
                  {
                     addr005e:
                     _loc1_.mouseEnabled = false;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr0070:
                        _loc1_.initialized(this,"realCurrencySparkleSprite");
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           §§goto(addr0093);
                        }
                     }
                     §§goto(addr00a5);
                  }
                  addr0093:
                  this.realCurrencySparkleSprite = _loc1_;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr00a5:
                     BindingManager.executeBindings(this,"realCurrencySparkleSprite",this.realCurrencySparkleSprite);
                  }
                  return _loc1_;
               }
               §§goto(addr0070);
            }
            §§goto(addr005e);
         }
         §§goto(addr00a5);
      }
      
      private function _HUDBar_Group4_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.height = 44;
            if(_loc2_)
            {
               _loc1_.mouseEnabled = false;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._HUDBar_CurrencyBar3_i(),this._HUDBar_DropDownListComponent1_i(),this._HUDBar_SpriteVisualElement3_i()];
                  if(_loc2_ || Boolean(this))
                  {
                     addr0077:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr008b:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr008f);
                  }
                  §§goto(addr008b);
               }
               addr008f:
               return _loc1_;
            }
         }
         §§goto(addr0077);
      }
      
      private function _HUDBar_CurrencyBar3_i() : CurrencyBar
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:CurrencyBar = new CurrencyBar();
         if(_loc3_)
         {
            _loc1_.width = 138;
            if(_loc3_)
            {
               _loc1_.top = -2;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr003f:
                  _loc1_.styleName = "production";
                  if(_loc3_)
                  {
                     _loc1_.addEventListener("plusClick",this.__simpleCurrencyResources_plusClick);
                     if(_loc3_)
                     {
                        §§goto(addr0066);
                     }
                     §§goto(addr009a);
                  }
                  §§goto(addr007d);
               }
               addr0066:
               _loc1_.id = "simpleCurrencyResources";
               if(_loc3_)
               {
                  addr0071:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr007d:
                        _loc1_.document = this;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           §§goto(addr009a);
                        }
                     }
                     §§goto(addr00ac);
                  }
                  addr009a:
                  this.simpleCurrencyResources = _loc1_;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr00ac:
                     BindingManager.executeBindings(this,"simpleCurrencyResources",this.simpleCurrencyResources);
                  }
                  §§goto(addr00b9);
               }
               addr00b9:
               return _loc1_;
            }
            §§goto(addr003f);
         }
         §§goto(addr0071);
      }
      
      public function __simpleCurrencyResources_plusClick(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.handlePPPlusClick();
         }
      }
      
      private function _HUDBar_DropDownListComponent1_i() : DropDownListComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DropDownListComponent = new DropDownListComponent();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.styleName = "dropDownResources";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.width = 138;
               if(_loc2_)
               {
                  §§goto(addr0049);
               }
               §§goto(addr005b);
            }
         }
         addr0049:
         _loc1_.top = -3;
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.labelField = "amountString";
            addr005b:
            if(_loc2_)
            {
               _loc1_.itemRenderer = this._HUDBar_ClassFactory1_c();
               if(!_loc3_)
               {
                  _loc1_.prompt = "";
                  if(!_loc3_)
                  {
                     _loc1_.addEventListener("change",this.__multiCurrencyResources_change);
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.id = "multiCurrencyResources";
                        if(!(_loc3_ && Boolean(this)))
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 §§goto(addr00d0);
                              }
                              §§goto(addr00e3);
                           }
                        }
                        §§goto(addr00d9);
                     }
                     §§goto(addr00d0);
                  }
                  §§goto(addr00d9);
               }
               addr00d0:
               _loc1_.document = this;
               if(!_loc3_)
               {
                  addr00d9:
                  this.multiCurrencyResources = _loc1_;
                  if(!_loc3_)
                  {
                     addr00e3:
                     BindingManager.executeBindings(this,"multiCurrencyResources",this.multiCurrencyResources);
                  }
               }
               §§goto(addr00f0);
            }
         }
         addr00f0:
         return _loc1_;
      }
      
      private function _HUDBar_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc2_)
         {
            _loc1_.generator = ListItemRenderer;
         }
         return _loc1_;
      }
      
      public function __multiCurrencyResources_change(param1:IndexChangeEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.setSpecialCurrencyTooltip();
         }
      }
      
      private function _HUDBar_SpriteVisualElement3_i() : SpriteVisualElement
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.percentHeight = 100;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.percentWidth = 100;
               if(!(_loc2_ && _loc3_))
               {
                  addr005a:
                  _loc1_.mouseChildren = false;
                  if(_loc3_)
                  {
                     addr0064:
                     _loc1_.mouseEnabled = false;
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.initialized(this,"resourcesSparkleSprite");
                        if(_loc3_ || _loc3_)
                        {
                           addr0098:
                           this.resourcesSparkleSprite = _loc1_;
                           if(!_loc2_)
                           {
                              addr00a2:
                              BindingManager.executeBindings(this,"resourcesSparkleSprite",this.resourcesSparkleSprite);
                           }
                        }
                        §§goto(addr00af);
                     }
                     §§goto(addr0098);
                  }
                  §§goto(addr00a2);
               }
               addr00af:
               return _loc1_;
            }
            §§goto(addr005a);
         }
         §§goto(addr0064);
      }
      
      private function _HUDBar_Group5_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.height = 44;
            if(!_loc2_)
            {
               _loc1_.width = 260;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.mouseEnabled = false;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.mxmlContent = [this._HUDBar_LevelBarComponent1_i(),this._HUDBar_SpriteVisualElement4_i()];
                     if(_loc3_)
                     {
                        addr0072:
                        _loc1_.id = "levelGroup";
                        if(_loc3_ || _loc3_)
                        {
                           addr0085:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 _loc1_.document = this;
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr00b6:
                                    this.levelGroup = _loc1_;
                                    if(!_loc2_)
                                    {
                                       addr00c0:
                                       BindingManager.executeBindings(this,"levelGroup",this.levelGroup);
                                    }
                                    §§goto(addr00cd);
                                 }
                                 §§goto(addr00c0);
                              }
                              addr00cd:
                              return _loc1_;
                           }
                        }
                        §§goto(addr00b6);
                     }
                     §§goto(addr0085);
                  }
               }
               §§goto(addr0072);
            }
         }
         §§goto(addr00b6);
      }
      
      private function _HUDBar_LevelBarComponent1_i() : LevelBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LevelBarComponent = new LevelBarComponent();
         if(_loc2_)
         {
            _loc1_.width = 260;
            if(!_loc3_)
            {
               _loc1_.top = -7;
               if(_loc2_)
               {
                  _loc1_.left = 0;
                  if(_loc2_ || Boolean(this))
                  {
                     addr0058:
                     _loc1_.addEventListener("click",this.__levelBar_click);
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.id = "levelBar";
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr0095:
                                 _loc1_.document = this;
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr00a6:
                                    this.levelBar = _loc1_;
                                    if(!_loc3_)
                                    {
                                       addr00b0:
                                       BindingManager.executeBindings(this,"levelBar",this.levelBar);
                                    }
                                 }
                                 §§goto(addr00bd);
                              }
                              §§goto(addr00b0);
                           }
                           §§goto(addr00a6);
                        }
                        addr00bd:
                        return _loc1_;
                     }
                     §§goto(addr0095);
                  }
               }
               §§goto(addr00b0);
            }
            §§goto(addr0058);
         }
         §§goto(addr00a6);
      }
      
      public function __levelBar_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.handleLevelPreviewClick();
         }
      }
      
      private function _HUDBar_SpriteVisualElement4_i() : SpriteVisualElement
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.percentHeight = 100;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.percentWidth = 100;
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr005c:
                  _loc1_.mouseChildren = false;
                  if(_loc2_)
                  {
                     _loc1_.mouseEnabled = false;
                     if(!_loc3_)
                     {
                        addr007d:
                        _loc1_.initialized(this,"levelSparkleSprite");
                        if(_loc2_)
                        {
                           §§goto(addr008b);
                        }
                        §§goto(addr0095);
                     }
                     addr008b:
                     this.levelSparkleSprite = _loc1_;
                     if(_loc2_)
                     {
                        addr0095:
                        BindingManager.executeBindings(this,"levelSparkleSprite",this.levelSparkleSprite);
                     }
                     §§goto(addr00a2);
                  }
               }
               §§goto(addr007d);
            }
            addr00a2:
            return _loc1_;
         }
         §§goto(addr005c);
      }
      
      private function _HUDBar_Group6_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     addr0046:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0046);
      }
      
      private function _HUDBar_Group7_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.height = 44;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.mouseEnabled = false;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._HUDBar_DropDownListComponent2_i(),this._HUDBar_SpriteVisualElement5_i()];
                  if(_loc3_ || _loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0088:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr0088);
               }
               addr008c:
               return _loc1_;
            }
         }
         §§goto(addr0088);
      }
      
      private function _HUDBar_DropDownListComponent2_i() : DropDownListComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DropDownListComponent = new DropDownListComponent();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.styleName = "dropDownResources";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.width = 100;
               if(!_loc2_)
               {
                  _loc1_.top = -3;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.labelField = "amountString";
                     §§goto(addr0059);
                  }
                  §§goto(addr00be);
               }
               addr0059:
               if(_loc3_)
               {
                  _loc1_.itemRenderer = this._HUDBar_ClassFactory2_c();
                  if(_loc3_)
                  {
                     _loc1_.prompt = "";
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.id = "humanResources";
                        if(!(_loc2_ && _loc3_))
                        {
                           addr00a6:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr00be:
                                 _loc1_.document = this;
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr00cf:
                                    this.humanResources = _loc1_;
                                    if(_loc3_)
                                    {
                                       addr00d9:
                                       BindingManager.executeBindings(this,"humanResources",this.humanResources);
                                    }
                                    §§goto(addr00e6);
                                 }
                                 §§goto(addr00d9);
                              }
                              §§goto(addr00e6);
                           }
                           §§goto(addr00cf);
                        }
                        §§goto(addr00be);
                     }
                     §§goto(addr00cf);
                  }
               }
               addr00e6:
               return _loc1_;
            }
            §§goto(addr00a6);
         }
         §§goto(addr00cf);
      }
      
      private function _HUDBar_ClassFactory2_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(!_loc2_)
         {
            _loc1_.generator = ListItemRenderer;
         }
         return _loc1_;
      }
      
      private function _HUDBar_SpriteVisualElement5_i() : SpriteVisualElement
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         if(!_loc2_)
         {
            _loc1_.percentHeight = 100;
            if(_loc3_ || _loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.mouseChildren = false;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.mouseEnabled = false;
                     if(_loc3_)
                     {
                        _loc1_.initialized(this,"residentsSparkleSprite");
                        if(!_loc2_)
                        {
                           addr0089:
                           this.residentsSparkleSprite = _loc1_;
                           if(_loc3_)
                           {
                              addr0093:
                              BindingManager.executeBindings(this,"residentsSparkleSprite",this.residentsSparkleSprite);
                           }
                           §§goto(addr00a0);
                        }
                        §§goto(addr0093);
                     }
                     §§goto(addr00a0);
                  }
                  §§goto(addr0093);
               }
               addr00a0:
               return _loc1_;
            }
            §§goto(addr0089);
         }
         §§goto(addr0093);
      }
      
      private function _HUDBar_EnergyHappinessComponent1_i() : EnergyHappinessComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:EnergyHappinessComponent = new EnergyHappinessComponent();
         if(_loc3_)
         {
            _loc1_.width = 106;
            if(_loc3_ || _loc2_)
            {
               _loc1_.id = "energyHappinessComponent";
               if(_loc3_ || _loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr006f:
                        _loc1_.document = this;
                        if(_loc3_)
                        {
                           §§goto(addr0078);
                        }
                     }
                     §§goto(addr0082);
                  }
                  addr0078:
                  this.energyHappinessComponent = _loc1_;
                  if(_loc3_)
                  {
                     addr0082:
                     BindingManager.executeBindings(this,"energyHappinessComponent",this.energyHappinessComponent);
                  }
                  return _loc1_;
               }
            }
            §§goto(addr006f);
         }
         §§goto(addr0082);
      }
      
      private function _HUDBar_Group8_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.width = 30;
            if(_loc2_ || _loc2_)
            {
               _loc1_.left = 2;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.height = 44;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.mxmlContent = [this._HUDBar_Group9_c()];
                     if(_loc2_)
                     {
                        §§goto(addr0072);
                     }
                     §§goto(addr009e);
                  }
                  §§goto(addr00af);
               }
            }
         }
         addr0072:
         _loc1_.id = "newsGroup";
         if(_loc2_)
         {
            if(!_loc1_.document)
            {
               if(!(_loc3_ && _loc2_))
               {
                  addr009e:
                  _loc1_.document = this;
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr00af);
                  }
               }
               §§goto(addr00b9);
            }
            addr00af:
            this.newsGroup = _loc1_;
            if(_loc2_)
            {
               addr00b9:
               BindingManager.executeBindings(this,"newsGroup",this.newsGroup);
            }
            §§goto(addr00c6);
         }
         addr00c6:
         return _loc1_;
      }
      
      private function _HUDBar_Group9_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc2_)
         {
            _loc1_.top = 0;
            if(!_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._HUDBar_BriskImageDynaLib1_c(),this._HUDBar_DynamicImageButton1_i()];
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr0072);
                  }
                  §§goto(addr0086);
               }
               addr0072:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0086:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr008a);
            }
            addr008a:
            return _loc1_;
         }
         §§goto(addr0072);
      }
      
      private function _HUDBar_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "ui_main_ressourcebase_round";
               addr002a:
               if(!_loc2_)
               {
                  _loc1_.verticalCenter = 0;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0060:
                     _loc1_.horizontalCenter = 0;
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr007e:
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr007e);
            }
            §§goto(addr0060);
         }
         §§goto(addr002a);
      }
      
      private function _HUDBar_DynamicImageButton1_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.verticalCenter = 0;
            if(!_loc2_)
            {
               _loc1_.horizontalCenter = 1;
               if(_loc3_ || Boolean(_loc1_))
               {
                  §§goto(addr0043);
               }
               §§goto(addr0085);
            }
            addr0043:
            _loc1_.styleName = "newsButton";
            if(_loc3_)
            {
               _loc1_.addEventListener("click",this.__newsButton_click);
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.id = "newsButton";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0085:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr00a7:
                              this.newsButton = _loc1_;
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 BindingManager.executeBindings(this,"newsButton",this.newsButton);
                              }
                           }
                        }
                        §§goto(addr00c6);
                     }
                     §§goto(addr00a7);
                  }
                  §§goto(addr00c6);
               }
               §§goto(addr00a7);
            }
            addr00c6:
            return _loc1_;
         }
         §§goto(addr00a7);
      }
      
      public function __newsButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this.newsButton_clickHandler(param1);
         }
      }
      
      private function _HUDBar_Group10_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.width = 40;
            if(_loc2_ || _loc3_)
            {
               _loc1_.left = 2;
               if(_loc2_)
               {
                  _loc1_.height = 44;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.visible = false;
                     if(_loc2_)
                     {
                        _loc1_.includeInLayout = false;
                        if(!_loc3_)
                        {
                           _loc1_.mxmlContent = [this._HUDBar_Group11_c()];
                           if(!(_loc3_ && _loc3_))
                           {
                              _loc1_.id = "forumGroup";
                              if(!_loc3_)
                              {
                                 addr008d:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_)
                                    {
                                       addr00a7:
                                       _loc1_.document = this;
                                       if(!_loc3_)
                                       {
                                          addr00b0:
                                          this.forumGroup = _loc1_;
                                          if(_loc2_ || _loc2_)
                                          {
                                             BindingManager.executeBindings(this,"forumGroup",this.forumGroup);
                                          }
                                       }
                                    }
                                    §§goto(addr00cf);
                                 }
                                 §§goto(addr00b0);
                              }
                              §§goto(addr00a7);
                           }
                           §§goto(addr00b0);
                        }
                        addr00cf:
                        return _loc1_;
                     }
                     §§goto(addr008d);
                  }
               }
               §§goto(addr00b0);
            }
            §§goto(addr008d);
         }
         §§goto(addr00b0);
      }
      
      private function _HUDBar_Group11_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.top = 0;
            if(_loc2_)
            {
               addr0034:
               _loc1_.horizontalCenter = 0;
               if(_loc2_)
               {
                  _loc1_.mxmlContent = [this._HUDBar_BriskImageDynaLib2_c(),this._HUDBar_DynamicImageButton2_i()];
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(this))
                        {
                           addr0075:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0079);
                  }
                  §§goto(addr0075);
               }
            }
            addr0079:
            return _loc1_;
         }
         §§goto(addr0034);
      }
      
      private function _HUDBar_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.dynaBmpSourceName = "ui_main_ressourcebase_round";
               if(_loc2_)
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc2_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        §§goto(addr006f);
                     }
                     §§goto(addr007b);
                  }
                  addr006f:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr007b:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr007f);
            }
            §§goto(addr006f);
         }
         addr007f:
         return _loc1_;
      }
      
      private function _HUDBar_DynamicImageButton2_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!_loc2_)
         {
            _loc1_.verticalCenter = 0;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.horizontalCenter = -1;
               if(_loc3_)
               {
                  _loc1_.styleName = "forumButton";
                  if(!_loc2_)
                  {
                     _loc1_.addEventListener("click",this.__forumButton_click);
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.id = "forumButton";
                        if(!_loc2_)
                        {
                           §§goto(addr0077);
                        }
                        §§goto(addr0083);
                     }
                     addr0077:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0083:
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              §§goto(addr00a0);
                           }
                        }
                        §§goto(addr00b2);
                     }
                     addr00a0:
                     this.forumButton = _loc1_;
                     if(_loc3_ || _loc2_)
                     {
                        addr00b2:
                        BindingManager.executeBindings(this,"forumButton",this.forumButton);
                     }
                     §§goto(addr00bf);
                  }
               }
            }
            §§goto(addr00b2);
         }
         addr00bf:
         return _loc1_;
      }
      
      public function __forumButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.handleForum();
         }
      }
      
      private function _HUDBar_Group12_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.width = 30;
            if(_loc3_ || _loc2_)
            {
               _loc1_.height = 44;
               if(_loc3_ || _loc3_)
               {
                  addr0064:
                  _loc1_.mxmlContent = [this._HUDBar_Group13_c()];
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0080:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr0080);
               }
            }
            addr0084:
            return _loc1_;
         }
         §§goto(addr0064);
      }
      
      private function _HUDBar_Group13_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc3_)
         {
            _loc1_.top = 0;
            if(_loc2_)
            {
               _loc1_.mxmlContent = [this._HUDBar_BriskImageDynaLib3_c(),this._HUDBar_DynamicImageButton3_i()];
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0069:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0069);
      }
      
      private function _HUDBar_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_main_hud";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "ui_main_ressourcebase_round";
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.verticalCenter = 0;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
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
            }
         }
         addr008c:
         return _loc1_;
      }
      
      private function _HUDBar_DynamicImageButton3_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc3_ || _loc3_)
         {
            _loc1_.verticalCenter = 0;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.horizontalCenter = 0;
               if(_loc3_)
               {
                  addr0045:
                  _loc1_.styleName = "supportButton";
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.addEventListener("click",this.__supportButton_click);
                     if(!_loc2_)
                     {
                        addr0075:
                        _loc1_.id = "supportButton";
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0088:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr00a0:
                                 _loc1_.document = this;
                                 if(!(_loc2_ && Boolean(_loc1_)))
                                 {
                                    §§goto(addr00b1);
                                 }
                              }
                              §§goto(addr00bb);
                           }
                           §§goto(addr00b1);
                        }
                     }
                     §§goto(addr00a0);
                  }
                  §§goto(addr0075);
               }
               addr00b1:
               this.supportButton = _loc1_;
               if(!_loc2_)
               {
                  addr00bb:
                  BindingManager.executeBindings(this,"supportButton",this.supportButton);
               }
               return _loc1_;
            }
            §§goto(addr0045);
         }
         §§goto(addr0088);
      }
      
      public function __supportButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.handleSupport();
         }
      }
      
      private function _HUDBar_Group14_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.width = 35;
            if(_loc3_ || Boolean(_loc1_))
            {
               §§goto(addr0045);
            }
            §§goto(addr0080);
         }
         addr0045:
         _loc1_.height = 44;
         if(_loc3_ || _loc2_)
         {
            _loc1_.mxmlContent = [this._HUDBar_DynamicImageButton4_i()];
            if(_loc3_)
            {
               §§goto(addr0074);
            }
            §§goto(addr0080);
         }
         addr0074:
         if(!_loc1_.document)
         {
            if(!_loc2_)
            {
               addr0080:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _HUDBar_DynamicImageButton4_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc3_)
         {
            _loc1_.top = -2;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.left = 0;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.styleName = "logoutButton";
                  if(!_loc2_)
                  {
                     _loc1_.addEventListener("click",this.__logoutButton_click);
                     addr0050:
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr0074:
                        _loc1_.id = "logoutButton";
                        if(_loc3_ || _loc3_)
                        {
                           addr0087:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 _loc1_.document = this;
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr00b1:
                                    this.logoutButton = _loc1_;
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr00c3:
                                       BindingManager.executeBindings(this,"logoutButton",this.logoutButton);
                                    }
                                 }
                                 return _loc1_;
                              }
                           }
                           §§goto(addr00b1);
                        }
                        §§goto(addr00c3);
                     }
                     §§goto(addr00b1);
                  }
               }
               §§goto(addr0087);
            }
            §§goto(addr0050);
         }
         §§goto(addr0074);
      }
      
      public function __logoutButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.handleLogout();
         }
      }
      
      public function ___HUDBar_Group1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.creationCompleteHandler(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get energyHappinessComponent() : EnergyHappinessComponent
      {
         return this._717028414energyHappinessComponent;
      }
      
      public function set energyHappinessComponent(param1:EnergyHappinessComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._717028414energyHappinessComponent;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._717028414energyHappinessComponent = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr0067);
               }
               addr0057:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr0067:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"energyHappinessComponent",_loc2_,param1));
                  }
               }
               §§goto(addr0076);
            }
         }
         addr0076:
      }
      
      [Bindable(event="propertyChange")]
      public function get forumButton() : DynamicImageButton
      {
         return this._1129806925forumButton;
      }
      
      public function set forumButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1129806925forumButton;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._1129806925forumButton = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"forumButton",_loc2_,param1));
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
         §§goto(addr0070);
      }
      
      [Bindable(event="propertyChange")]
      public function get forumGroup() : Group
      {
         return this._863205922forumGroup;
      }
      
      public function set forumGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._863205922forumGroup;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._863205922forumGroup = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"forumGroup",_loc2_,param1));
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
         §§goto(addr0070);
      }
      
      [Bindable(event="propertyChange")]
      public function get humanResources() : DropDownListComponent
      {
         return this._1846837112humanResources;
      }
      
      public function set humanResources(param1:DropDownListComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1846837112humanResources;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr004c:
                  this._1846837112humanResources = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"humanResources",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr004c);
      }
      
      [Bindable(event="propertyChange")]
      public function get levelBar() : LevelBarComponent
      {
         return this._2131654161levelBar;
      }
      
      public function set levelBar(param1:LevelBarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2131654161levelBar;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._2131654161levelBar = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelBar",_loc2_,param1));
                        }
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr0067);
               }
            }
            addr0076:
            return;
         }
         §§goto(addr0067);
      }
      
      [Bindable(event="propertyChange")]
      public function get levelGroup() : Group
      {
         return this._184876379levelGroup;
      }
      
      public function set levelGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._184876379levelGroup;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._184876379levelGroup = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get levelSparkleSprite() : SpriteVisualElement
      {
         return this._1695650217levelSparkleSprite;
      }
      
      public function set levelSparkleSprite(param1:SpriteVisualElement) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1695650217levelSparkleSprite;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1695650217levelSparkleSprite = param1;
                  if(_loc3_ || _loc3_)
                  {
                     addr0061:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelSparkleSprite",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0061);
            }
            addr0088:
            return;
         }
         §§goto(addr0061);
      }
      
      [Bindable(event="propertyChange")]
      public function get logoutButton() : DynamicImageButton
      {
         return this._1255627100logoutButton;
      }
      
      public function set logoutButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1255627100logoutButton;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1255627100logoutButton = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0053);
                  }
                  §§goto(addr0062);
               }
               addr0053:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr0062:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"logoutButton",_loc2_,param1));
                  }
               }
               §§goto(addr0071);
            }
            addr0071:
            return;
         }
         §§goto(addr0053);
      }
      
      [Bindable(event="propertyChange")]
      public function get mainGroup() : HGroup
      {
         return this._273241018mainGroup;
      }
      
      public function set mainGroup(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._273241018mainGroup;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._273241018mainGroup = param1;
                  if(!_loc3_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainGroup",_loc2_,param1));
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
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get multiCurrencyResources() : DropDownListComponent
      {
         return this._751905573multiCurrencyResources;
      }
      
      public function set multiCurrencyResources(param1:DropDownListComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._751905573multiCurrencyResources;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._751905573multiCurrencyResources = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0054);
                  }
                  §§goto(addr006c);
               }
               addr0054:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(this))
                  {
                     addr006c:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"multiCurrencyResources",_loc2_,param1));
                  }
               }
               §§goto(addr007b);
            }
            addr007b:
            return;
         }
         §§goto(addr006c);
      }
      
      [Bindable(event="propertyChange")]
      public function get newsButton() : DynamicImageButton
      {
         return this._85068827newsButton;
      }
      
      public function set newsButton(param1:DynamicImageButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._85068827newsButton;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr003a:
                  this._85068827newsButton = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newsButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr003a);
      }
      
      [Bindable(event="propertyChange")]
      public function get newsGroup() : Group
      {
         return this._278873964newsGroup;
      }
      
      public function set newsGroup(param1:Group) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._278873964newsGroup;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._278873964newsGroup = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newsGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr005f);
            }
         }
         addr0085:
      }
      
      [Bindable(event="propertyChange")]
      public function get realCurrency() : CurrencyBar
      {
         return this._1848586191realCurrency;
      }
      
      public function set realCurrency(param1:CurrencyBar) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1848586191realCurrency;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1848586191realCurrency = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"realCurrency",_loc2_,param1));
                        }
                     }
                     §§goto(addr0086);
                  }
               }
               §§goto(addr0077);
            }
            addr0086:
            return;
         }
         §§goto(addr0077);
      }
      
      [Bindable(event="propertyChange")]
      public function get realCurrencySparkleSprite() : SpriteVisualElement
      {
         return this._729060372realCurrencySparkleSprite;
      }
      
      public function set realCurrencySparkleSprite(param1:SpriteVisualElement) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._729060372realCurrencySparkleSprite;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._729060372realCurrencySparkleSprite = param1;
                  if(!_loc3_)
                  {
                     addr004f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"realCurrencySparkleSprite",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0075);
               }
               §§goto(addr0066);
            }
            addr0075:
            return;
         }
         §§goto(addr004f);
      }
      
      [Bindable(event="propertyChange")]
      public function get residentsSparkleSprite() : SpriteVisualElement
      {
         return this._590841624residentsSparkleSprite;
      }
      
      public function set residentsSparkleSprite(param1:SpriteVisualElement) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._590841624residentsSparkleSprite;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  addr003c:
                  this._590841624residentsSparkleSprite = param1;
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr0059);
                  }
                  §§goto(addr0070);
               }
               addr0059:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr0070:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentsSparkleSprite",_loc2_,param1));
                  }
               }
               §§goto(addr007f);
            }
            addr007f:
            return;
         }
         §§goto(addr003c);
      }
      
      [Bindable(event="propertyChange")]
      public function get resourcesSparkleSprite() : SpriteVisualElement
      {
         return this._644241750resourcesSparkleSprite;
      }
      
      public function set resourcesSparkleSprite(param1:SpriteVisualElement) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._644241750resourcesSparkleSprite;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._644241750resourcesSparkleSprite = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"resourcesSparkleSprite",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get simpleCurrencyResources() : CurrencyBar
      {
         return this._947594878simpleCurrencyResources;
      }
      
      public function set simpleCurrencyResources(param1:CurrencyBar) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._947594878simpleCurrencyResources;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._947594878simpleCurrencyResources = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"simpleCurrencyResources",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr006b);
            }
         }
         addr007a:
      }
      
      [Bindable(event="propertyChange")]
      public function get supportButton() : DynamicImageButton
      {
         return this._1463272479supportButton;
      }
      
      public function set supportButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1463272479supportButton;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1463272479supportButton = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"supportButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr0057);
            }
         }
         addr007e:
      }
      
      [Bindable(event="propertyChange")]
      public function get virtualCurrency() : CurrencyBar
      {
         return this._290535484virtualCurrency;
      }
      
      public function set virtualCurrency(param1:CurrencyBar) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._290535484virtualCurrency;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr0036:
                  this._290535484virtualCurrency = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0040);
                  }
                  §§goto(addr004f);
               }
               addr0040:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr004f:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"virtualCurrency",_loc2_,param1));
                  }
               }
               §§goto(addr005e);
            }
            addr005e:
            return;
         }
         §§goto(addr0036);
      }
      
      [Bindable(event="propertyChange")]
      public function get virtualCurrencySparkleSprite() : SpriteVisualElement
      {
         return this._228246369virtualCurrencySparkleSprite;
      }
      
      public function set virtualCurrencySparkleSprite(param1:SpriteVisualElement) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._228246369virtualCurrencySparkleSprite;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr0039:
                  this._228246369virtualCurrencySparkleSprite = param1;
                  if(_loc3_)
                  {
                     addr0043:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"virtualCurrencySparkleSprite",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0062);
               }
               §§goto(addr0043);
            }
            addr0062:
            return;
         }
         §§goto(addr0039);
      }
   }
}

