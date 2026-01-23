package net.bigpoint.cityrama.view.miniLayer.ui
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
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.miniLayer.vo.InfraUpgradeMiniLayerVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicPlusButton;
   import net.bigpoint.cityrama.view.common.components.HeaderComponent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.skins.DynamicPlusButtonSkin;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class InfrastructureUpgradeMiniLayer extends MiniLayerWindow
   {
      
      public static const START_UPGRADE:String = "START_UPGRADE";
      
      public static const OPEN_RC_REBUY:String = "OPEN_RC_REBUY";
      
      public static const START_INSTA_UPGRADE:String = "START_INSTA_UPGRADE";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && InfrastructureUpgradeMiniLayer))
      {
         START_UPGRADE = "START_UPGRADE";
         if(_loc2_ || _loc2_)
         {
            OPEN_RC_REBUY = "OPEN_RC_REBUY";
            if(!(_loc1_ && _loc1_))
            {
               START_INSTA_UPGRADE = "START_INSTA_UPGRADE";
               if(!_loc1_)
               {
                  addr006c:
                  _skinParts = {
                     "moveArea":false,
                     "sparkle":false,
                     "closeButton":false,
                     "controlBarGroup":false,
                     "attentionSign":false,
                     "contentGroup":false,
                     "titleDisplay":false
                  };
               }
            }
            §§goto(addr0090);
         }
         §§goto(addr006c);
      }
      addr0090:
      
      private var _94849540cost1:RequirementMiniComponent;
      
      private var _94849541cost2:RequirementMiniComponent;
      
      private var _94849542cost3:RequirementMiniComponent;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _1221270899header:HeaderComponent;
      
      private var _273241018mainGroup:VGroup;
      
      private var _236614105rcBuyButton:DynamicPlusButton;
      
      private var _746926070rcCostLabel:LocaLabel;
      
      private var _1943111220startButton:MultistateButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:InfraUpgradeMiniLayerVo;
      
      private var _isDirty:Boolean;
      
      public function InfrastructureUpgradeMiniLayer()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(_loc2_ || _loc2_)
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  §§goto(addr0042);
               }
               §§goto(addr006a);
            }
            §§goto(addr0055);
         }
         addr0042:
         this.width = 540;
         if(!(_loc1_ && Boolean(this)))
         {
            addr0055:
            this.height = 313;
            if(!_loc1_)
            {
               addr006a:
               this.showAttentionSign = true;
               if(!_loc1_)
               {
                  §§goto(addr0074);
               }
            }
            §§goto(addr0091);
         }
         addr0074:
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._InfrastructureUpgradeMiniLayer_Array1_c);
         if(_loc2_ || Boolean(this))
         {
            addr0091:
            this.addEventListener("creationComplete",this.___InfrastructureUpgradeMiniLayer_MiniLayerWindow1_creationComplete);
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc3_)
                  {
                     return;
                  }
               }
               addr0048:
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         §§goto(addr0048);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super.initialize();
         }
      }
      
      private function handleCreationComplete() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            attentionSign.dynaLibName = "gui_popups_miniLayer";
            if(!_loc1_)
            {
               addr002b:
               attentionSign.dynaBmpSourceName = "icon_upgrade";
            }
            return;
         }
         §§goto(addr002b);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc1_:Vector.<RequirementMiniComponent> = null;
         var _loc2_:RequirementMiniComponent = null;
         var _loc3_:* = 0;
         var _loc4_:ConfigOutputDTO = null;
         if(_loc8_ || Boolean(_loc1_))
         {
            super.commitProperties();
            if(_loc8_)
            {
               §§push(Boolean(this._data));
               if(!(_loc9_ && Boolean(_loc2_)))
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(!(_loc9_ && Boolean(_loc3_)))
                     {
                        addr0066:
                        §§pop();
                        if(!_loc9_)
                        {
                           §§goto(addr0078);
                        }
                        §§goto(addr0095);
                     }
                     §§goto(addr0077);
                  }
                  addr0078:
                  §§goto(addr006d);
               }
               §§goto(addr0066);
            }
            §§goto(addr00d0);
         }
         addr006d:
         §§push(this._isDirty);
         if(!_loc9_)
         {
            addr0077:
            §§push(§§pop());
         }
         if(§§pop())
         {
            if(!(_loc9_ && Boolean(_loc1_)))
            {
               this._isDirty = false;
               if(!_loc9_)
               {
                  addr0095:
                  this.rcCostLabel.text = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.upgradeBuy",[this._data.instantRCCost]);
                  if(!_loc9_)
                  {
                     title = this._data.title;
                     if(_loc8_ || Boolean(_loc1_))
                     {
                        addr00d0:
                        this.flavourText.text = this._data.flavourText;
                        if(_loc8_)
                        {
                           addr00e3:
                           this.startButton.toolTip = this._data.startBtnTooltip;
                        }
                     }
                     _loc1_ = new <RequirementMiniComponent>[this.cost1,this.cost2,this.cost3];
                     var _loc5_:int = 0;
                     var _loc6_:* = _loc1_;
                     loop0:
                     while(true)
                     {
                        §§push(§§hasnext(_loc6_,_loc5_));
                        if(_loc9_ && Boolean(_loc2_))
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           _loc2_ = §§nextvalue(_loc5_,_loc6_);
                           if(_loc8_ || Boolean(this))
                           {
                              _loc2_.visible = _loc2_.includeInLayout = false;
                           }
                           continue;
                        }
                        if(!(_loc9_ && Boolean(_loc3_)))
                        {
                           if(_loc8_)
                           {
                              if(!(_loc9_ && Boolean(this)))
                              {
                                 §§push(0);
                                 if(_loc8_)
                                 {
                                    _loc3_ = §§pop();
                                    if(!_loc9_)
                                    {
                                       addr01af:
                                       _loc5_ = 0;
                                       if(!_loc9_)
                                       {
                                          _loc6_ = this._data.upgradeCosts;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc6_,_loc5_));
                                             break loop0;
                                          }
                                          addr0267:
                                          addr0260:
                                       }
                                       addr0269:
                                       if(_loc8_)
                                       {
                                          §§push(this.rcBuyButton);
                                          if(!(_loc9_ && Boolean(_loc3_)))
                                          {
                                             §§push(this._data);
                                             if(!(_loc9_ && Boolean(this)))
                                             {
                                                §§push(§§pop().userRCStock);
                                                if(_loc8_ || Boolean(_loc1_))
                                                {
                                                   §§pop().showPlus = §§pop() < this._data.instantRCCost;
                                                   if(_loc8_)
                                                   {
                                                      §§goto(addr02cf);
                                                   }
                                                   §§goto(addr02e0);
                                                }
                                                addr02cf:
                                                this.rcBuyButton.priceToConfirm = this._data.instantRCCost;
                                                §§goto(addr02bf);
                                             }
                                             addr02bf:
                                             §§goto(addr02bb);
                                          }
                                          addr02bb:
                                          if(_loc8_ || Boolean(_loc1_))
                                          {
                                             addr02e0:
                                             this.startButton.enabled = this._data.affordable;
                                             if(!_loc9_)
                                             {
                                                addr02f4:
                                                this.header.label = LocaUtils.getString("rcl.miniLayer.upgrade","rcl.miniLayer.upgrade.costs");
                                             }
                                          }
                                          §§goto(addr0307);
                                       }
                                    }
                                    §§goto(addr02f4);
                                 }
                                 §§goto(addr01af);
                              }
                              §§goto(addr02f4);
                           }
                           §§goto(addr0269);
                        }
                        §§goto(addr0267);
                     }
                     while(§§pop())
                     {
                        _loc4_ = §§nextvalue(_loc5_,_loc6_);
                        if(_loc4_.goodConfig)
                        {
                           if(!(_loc9_ && Boolean(this)))
                           {
                              _loc1_[_loc3_].visible = _loc1_[_loc3_].includeInLayout = true;
                              if(_loc8_)
                              {
                                 addr0201:
                                 _loc1_[_loc3_].setData(_loc4_,this._data.upgradeCostsAffordable[_loc3_]);
                                 if(_loc8_ || Boolean(_loc3_))
                                 {
                                    addr025e:
                                    _loc3_++;
                                 }
                                 §§goto(addr0260);
                              }
                              §§goto(addr025e);
                           }
                           §§goto(addr0201);
                        }
                        else if(_loc4_.resourceConfig)
                        {
                           if(_loc8_ || Boolean(_loc3_))
                           {
                              this.startButton.label = LocaUtils.getThousendSeperatedNumber(Math.abs(_loc4_.outputAmount));
                              if(_loc8_)
                              {
                                 §§goto(addr025e);
                              }
                           }
                           §§goto(addr0260);
                        }
                        §§goto(addr025e);
                     }
                     §§goto(addr0267);
                  }
                  §§goto(addr00e3);
               }
               §§goto(addr00d0);
            }
            §§goto(addr0095);
         }
         addr0307:
      }
      
      public function set data(param1:InfraUpgradeMiniLayerVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc3_ || _loc3_)
               {
                  this._data = param1;
                  if(_loc3_)
                  {
                     this._isDirty = true;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0071:
                        invalidateProperties();
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr0071);
               }
            }
         }
         addr0076:
      }
      
      private function onUpgrade() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            dispatchEvent(new Event(START_UPGRADE,true,true));
         }
      }
      
      private function onInstaUpgrade() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(this._data.userRCStock >= this._data.instantRCCost)
            {
               if(!_loc1_)
               {
                  dispatchEvent(new Event(START_INSTA_UPGRADE,true,true));
                  if(_loc2_)
                  {
                  }
               }
            }
            else
            {
               dispatchEvent(new Event(OPEN_RC_REBUY,true,true));
            }
         }
      }
      
      private function _InfrastructureUpgradeMiniLayer_Array1_c() : Array
      {
         return [this._InfrastructureUpgradeMiniLayer_VGroup1_i()];
      }
      
      private function _InfrastructureUpgradeMiniLayer_VGroup1_i() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.verticalAlign = "middle";
                     if(!_loc2_)
                     {
                        _loc1_.paddingTop = -20;
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr007e:
                           _loc1_.gap = 5;
                           if(_loc3_ || Boolean(this))
                           {
                              addr0090:
                              _loc1_.mxmlContent = [this._InfrastructureUpgradeMiniLayer_HGroup1_c(),this._InfrastructureUpgradeMiniLayer_Group1_c(),this._InfrastructureUpgradeMiniLayer_HGroup3_c()];
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 _loc1_.id = "mainGroup";
                                 if(_loc3_)
                                 {
                                    addr00ca:
                                    if(!_loc1_.document)
                                    {
                                       if(_loc3_)
                                       {
                                          addr00d6:
                                          _loc1_.document = this;
                                          if(_loc3_)
                                          {
                                             addr00df:
                                             this.mainGroup = _loc1_;
                                             if(!_loc2_)
                                             {
                                                addr00e9:
                                                BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
                                             }
                                          }
                                       }
                                       §§goto(addr00f6);
                                    }
                                    §§goto(addr00df);
                                 }
                                 §§goto(addr00f6);
                              }
                              §§goto(addr00d6);
                           }
                           §§goto(addr00e9);
                        }
                        addr00f6:
                        return _loc1_;
                     }
                  }
                  §§goto(addr00ca);
               }
               §§goto(addr0090);
            }
            §§goto(addr00e9);
         }
         §§goto(addr007e);
      }
      
      private function _InfrastructureUpgradeMiniLayer_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 90;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.height = 40;
               if(!(_loc3_ && _loc3_))
               {
                  addr0050:
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.horizontalAlign = "center";
                     if(_loc2_ || _loc2_)
                     {
                        _loc1_.mxmlContent = [this._InfrastructureUpgradeMiniLayer_LocaLabel1_i()];
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr00a5:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00a9);
                        }
                        §§goto(addr00a5);
                     }
                  }
               }
               addr00a9:
               return _loc1_;
            }
            §§goto(addr0050);
         }
         §§goto(addr00a5);
      }
      
      private function _InfrastructureUpgradeMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.styleName = "miniLayerFlavourText";
               if(_loc3_)
               {
                  _loc1_.maxDisplayedLines = 2;
                  if(_loc3_)
                  {
                     _loc1_.id = "flavourText";
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0060:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              _loc1_.document = this;
                              if(_loc3_ || _loc3_)
                              {
                                 addr0092:
                                 this.flavourText = _loc1_;
                                 if(_loc3_)
                                 {
                                    BindingManager.executeBindings(this,"flavourText",this.flavourText);
                                 }
                              }
                              §§goto(addr00a9);
                           }
                        }
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr0060);
               }
               §§goto(addr0092);
            }
            §§goto(addr0060);
         }
         addr00a9:
         return _loc1_;
      }
      
      private function _InfrastructureUpgradeMiniLayer_Group1_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.width = 474;
            if(_loc2_)
            {
               addr0036:
               _loc1_.height = 121;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.mxmlContent = [this._InfrastructureUpgradeMiniLayer_BriskImageDynaLib1_c(),this._InfrastructureUpgradeMiniLayer_VGroup2_c()];
                  if(!_loc3_)
                  {
                     addr006a:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr006a);
         }
         §§goto(addr0036);
      }
      
      private function _InfrastructureUpgradeMiniLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaBmpSourceName = "dept_upgrade_bg";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.dynaLibName = "gui_popups_miniLayer";
               if(_loc2_)
               {
                  _loc1_.width = 474;
                  addr004a:
                  if(_loc2_)
                  {
                     _loc1_.height = 121;
                     if(_loc2_ || _loc2_)
                     {
                        addr0072:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr007e:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0072);
               }
               §§goto(addr007e);
            }
            §§goto(addr004a);
         }
         §§goto(addr007e);
      }
      
      private function _InfrastructureUpgradeMiniLayer_VGroup2_c() : VGroup
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
               if(!_loc3_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(!_loc3_)
                  {
                     _loc1_.paddingTop = 10;
                     if(!(_loc3_ && _loc2_))
                     {
                        addr0064:
                        _loc1_.gap = 20;
                        if(_loc2_ || Boolean(this))
                        {
                           _loc1_.mxmlContent = [this._InfrastructureUpgradeMiniLayer_HeaderComponent1_i(),this._InfrastructureUpgradeMiniLayer_HGroup2_c()];
                           if(_loc2_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(!_loc3_)
                                 {
                                    addr00a4:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                        }
                        §§goto(addr00a8);
                     }
                     §§goto(addr00a4);
                  }
                  §§goto(addr00a8);
               }
               §§goto(addr00a4);
            }
            addr00a8:
            return _loc1_;
         }
         §§goto(addr0064);
      }
      
      private function _InfrastructureUpgradeMiniLayer_HeaderComponent1_i() : HeaderComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HeaderComponent = new HeaderComponent();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.height = 28;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.maxDisplayedLines = 2;
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 95;
                  if(!(_loc2_ && _loc3_))
                  {
                     addr0064:
                     _loc1_.id = "header";
                     if(_loc3_ || Boolean(this))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr009f:
                                 this.header = _loc1_;
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr00b1:
                                    BindingManager.executeBindings(this,"header",this.header);
                                 }
                              }
                              §§goto(addr00be);
                           }
                        }
                        §§goto(addr009f);
                     }
                  }
                  addr00be:
                  return _loc1_;
               }
               §§goto(addr0064);
            }
            §§goto(addr00b1);
         }
         §§goto(addr0064);
      }
      
      private function _InfrastructureUpgradeMiniLayer_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.horizontalAlign = "center";
            if(!_loc2_)
            {
               _loc1_.maxWidth = 470;
               if(!_loc2_)
               {
                  _loc1_.minWidth = 1;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.gap = 16;
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.mxmlContent = [this._InfrastructureUpgradeMiniLayer_RequirementMiniComponent1_i(),this._InfrastructureUpgradeMiniLayer_RequirementMiniComponent2_i(),this._InfrastructureUpgradeMiniLayer_RequirementMiniComponent3_i()];
                        addr0066:
                        if(_loc3_)
                        {
                           addr008d:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(this))
                              {
                                 addr00a1:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr00a5);
                     }
                     §§goto(addr00a1);
                  }
                  addr00a5:
                  return _loc1_;
               }
               §§goto(addr0066);
            }
            §§goto(addr008d);
         }
         §§goto(addr00a1);
      }
      
      private function _InfrastructureUpgradeMiniLayer_RequirementMiniComponent1_i() : RequirementMiniComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:RequirementMiniComponent = new RequirementMiniComponent();
         if(!_loc2_)
         {
            _loc1_.id = "cost1";
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     _loc1_.document = this;
                     if(_loc3_ || Boolean(this))
                     {
                        addr0063:
                        this.cost1 = _loc1_;
                        if(_loc3_)
                        {
                           addr006d:
                           BindingManager.executeBindings(this,"cost1",this.cost1);
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0063);
            }
            §§goto(addr006d);
         }
         §§goto(addr0063);
      }
      
      private function _InfrastructureUpgradeMiniLayer_RequirementMiniComponent2_i() : RequirementMiniComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:RequirementMiniComponent = new RequirementMiniComponent();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.id = "cost2";
            if(!(_loc3_ && _loc3_))
            {
               addr0047:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr005e);
                  }
               }
               §§goto(addr006f);
            }
            addr005e:
            _loc1_.document = this;
            if(_loc2_ || _loc2_)
            {
               addr006f:
               this.cost2 = _loc1_;
               if(_loc2_)
               {
                  BindingManager.executeBindings(this,"cost2",this.cost2);
               }
            }
            return _loc1_;
         }
         §§goto(addr0047);
      }
      
      private function _InfrastructureUpgradeMiniLayer_RequirementMiniComponent3_i() : RequirementMiniComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:RequirementMiniComponent = new RequirementMiniComponent();
         if(!_loc2_)
         {
            _loc1_.id = "cost3";
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     _loc1_.document = this;
                     if(!_loc2_)
                     {
                        §§goto(addr0060);
                     }
                     §§goto(addr0072);
                  }
               }
               addr0060:
               this.cost3 = _loc1_;
               if(_loc3_ || Boolean(this))
               {
                  addr0072:
                  BindingManager.executeBindings(this,"cost3",this.cost3);
               }
               §§goto(addr007f);
            }
            addr007f:
            return _loc1_;
         }
         §§goto(addr0060);
      }
      
      private function _InfrastructureUpgradeMiniLayer_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc3_)
               {
                  _loc1_.gap = 8;
                  if(!_loc3_)
                  {
                     _loc1_.mxmlContent = [this._InfrastructureUpgradeMiniLayer_Group2_c(),this._InfrastructureUpgradeMiniLayer_DynamicPlusButton1_i()];
                     if(_loc2_ || _loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr0088:
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
               }
               §§goto(addr008c);
            }
            §§goto(addr0088);
         }
         addr008c:
         return _loc1_;
      }
      
      private function _InfrastructureUpgradeMiniLayer_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.mxmlContent = [this._InfrastructureUpgradeMiniLayer_HGroup4_c(),this._InfrastructureUpgradeMiniLayer_MultistateButton1_i()];
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr004d:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr004d);
      }
      
      private function _InfrastructureUpgradeMiniLayer_HGroup4_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.width = 204;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr006f:
                        _loc1_.verticalAlign = "middle";
                        if(!_loc2_)
                        {
                           §§goto(addr007a);
                        }
                        §§goto(addr0084);
                     }
                     §§goto(addr00a8);
                  }
                  addr007a:
                  _loc1_.horizontalAlign = "center";
                  if(_loc3_)
                  {
                     _loc1_.mxmlContent = [this._InfrastructureUpgradeMiniLayer_LocaLabel2_i()];
                     addr0084:
                     if(_loc3_ || _loc3_)
                     {
                        addr00a8:
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
               §§goto(addr006f);
            }
            §§goto(addr0084);
         }
         §§goto(addr006f);
      }
      
      private function _InfrastructureUpgradeMiniLayer_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.percentWidth = 90;
            if(!_loc2_)
            {
               addr0033:
               _loc1_.minWidth = 1;
               if(!_loc2_)
               {
                  §§goto(addr003e);
               }
               §§goto(addr0086);
            }
            addr003e:
            _loc1_.maxDisplayedLines = 3;
            if(!_loc2_)
            {
               _loc1_.visible = false;
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr0068);
               }
               §§goto(addr00a6);
            }
            addr0068:
            _loc1_.styleName = "residentialProgressComment";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.id = "rcCostLabel";
               if(_loc3_)
               {
                  addr0086:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr00a6:
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           §§goto(addr00af);
                        }
                     }
                     §§goto(addr00c1);
                  }
                  §§goto(addr00af);
               }
               §§goto(addr00c1);
            }
            addr00af:
            this.rcCostLabel = _loc1_;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr00c1:
               BindingManager.executeBindings(this,"rcCostLabel",this.rcCostLabel);
            }
            return _loc1_;
         }
         §§goto(addr0033);
      }
      
      private function _InfrastructureUpgradeMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.styleName = "confirm";
            if(_loc3_)
            {
               _loc1_.width = 204;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.imageNameLeft = "cc_icon_medium";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0066:
                     _loc1_.libNameLeft = "gui_popups_paperPopup";
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.addEventListener("click",this.__startButton_click);
                        if(!_loc2_)
                        {
                           _loc1_.id = "startButton";
                           if(_loc3_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    _loc1_.document = this;
                                    if(!_loc2_)
                                    {
                                       §§goto(addr00b7);
                                    }
                                    §§goto(addr00c9);
                                 }
                              }
                              addr00b7:
                              this.startButton = _loc1_;
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 addr00c9:
                                 BindingManager.executeBindings(this,"startButton",this.startButton);
                              }
                              §§goto(addr00d6);
                           }
                           §§goto(addr00c9);
                        }
                        addr00d6:
                        return _loc1_;
                     }
                     §§goto(addr00c9);
                  }
                  §§goto(addr00b7);
               }
               §§goto(addr00c9);
            }
         }
         §§goto(addr0066);
      }
      
      public function __startButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.onUpgrade();
         }
      }
      
      private function _InfrastructureUpgradeMiniLayer_DynamicPlusButton1_i() : DynamicPlusButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicPlusButton = new DynamicPlusButton();
         if(_loc2_ || _loc2_)
         {
            _loc1_.width = 40;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.useConfirmation = true;
               if(!_loc3_)
               {
                  addr0047:
                  _loc1_.iconImageName = "dd_button_icon";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.iconLibName = "gui_resources_icons";
                     if(_loc2_)
                     {
                        addr0067:
                        _loc1_.setStyle("skinClass",DynamicPlusButtonSkin);
                        if(_loc2_)
                        {
                           _loc1_.addEventListener("click",this.__rcBuyButton_click);
                           if(!_loc3_)
                           {
                              addr0093:
                              _loc1_.addEventListener("rollOut",this.__rcBuyButton_rollOut);
                              if(_loc2_ || _loc2_)
                              {
                                 §§goto(addr00ac);
                              }
                              §§goto(addr0101);
                           }
                           addr00ac:
                           _loc1_.addEventListener("rollOver",this.__rcBuyButton_rollOver);
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              _loc1_.id = "rcBuyButton";
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 addr00d8:
                                 if(!_loc1_.document)
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       addr00f8:
                                       _loc1_.document = this;
                                       if(_loc2_)
                                       {
                                          §§goto(addr0101);
                                       }
                                       §§goto(addr010b);
                                    }
                                 }
                                 addr0101:
                                 this.rcBuyButton = _loc1_;
                                 if(!_loc3_)
                                 {
                                    addr010b:
                                    BindingManager.executeBindings(this,"rcBuyButton",this.rcBuyButton);
                                 }
                                 §§goto(addr0118);
                              }
                              §§goto(addr00f8);
                           }
                           addr0118:
                           return _loc1_;
                        }
                        §§goto(addr0093);
                     }
                     §§goto(addr00d8);
                  }
                  §§goto(addr0067);
               }
               §§goto(addr0093);
            }
            §§goto(addr0047);
         }
         §§goto(addr010b);
      }
      
      public function __rcBuyButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.onInstaUpgrade();
         }
      }
      
      public function __rcBuyButton_rollOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.rcCostLabel.visible = false;
            if(_loc2_)
            {
               this.startButton.visible = true;
            }
         }
      }
      
      public function __rcBuyButton_rollOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.rcCostLabel.visible = true;
            if(_loc3_ || _loc3_)
            {
               this.startButton.visible = false;
            }
         }
      }
      
      public function ___InfrastructureUpgradeMiniLayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this.handleCreationComplete();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cost1() : RequirementMiniComponent
      {
         return this._94849540cost1;
      }
      
      public function set cost1(param1:RequirementMiniComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._94849540cost1;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._94849540cost1 = param1;
                  if(!_loc4_)
                  {
                     addr0059:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cost1",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0059);
            }
            addr007f:
            return;
         }
         §§goto(addr0059);
      }
      
      [Bindable(event="propertyChange")]
      public function get cost2() : RequirementMiniComponent
      {
         return this._94849541cost2;
      }
      
      public function set cost2(param1:RequirementMiniComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._94849541cost2;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._94849541cost2 = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cost2",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cost3() : RequirementMiniComponent
      {
         return this._94849542cost3;
      }
      
      public function set cost3(param1:RequirementMiniComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._94849542cost3;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._94849542cost3 = param1;
                  if(_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cost3",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0057);
            }
         }
         addr007d:
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourText() : LocaLabel
      {
         return this._800887486flavourText;
      }
      
      public function set flavourText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._800887486flavourText;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._800887486flavourText = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get header() : HeaderComponent
      {
         return this._1221270899header;
      }
      
      public function set header(param1:HeaderComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1221270899header;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1221270899header = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0067:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"header",_loc2_,param1));
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
         §§goto(addr0067);
      }
      
      [Bindable(event="propertyChange")]
      public function get mainGroup() : VGroup
      {
         return this._273241018mainGroup;
      }
      
      public function set mainGroup(param1:VGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._273241018mainGroup;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._273241018mainGroup = param1;
                  if(_loc4_)
                  {
                     §§goto(addr005d);
                  }
                  §§goto(addr0074);
               }
               addr005d:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr0074:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainGroup",_loc2_,param1));
                  }
               }
               §§goto(addr0083);
            }
            addr0083:
            return;
         }
         §§goto(addr005d);
      }
      
      [Bindable(event="propertyChange")]
      public function get rcBuyButton() : DynamicPlusButton
      {
         return this._236614105rcBuyButton;
      }
      
      public function set rcBuyButton(param1:DynamicPlusButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._236614105rcBuyButton;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  this._236614105rcBuyButton = param1;
                  if(!_loc3_)
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rcBuyButton",_loc2_,param1));
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
         §§goto(addr005f);
      }
      
      [Bindable(event="propertyChange")]
      public function get rcCostLabel() : LocaLabel
      {
         return this._746926070rcCostLabel;
      }
      
      public function set rcCostLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._746926070rcCostLabel;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._746926070rcCostLabel = param1;
                  if(_loc4_)
                  {
                     addr004d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rcCostLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0074);
                  }
               }
               §§goto(addr0065);
            }
            addr0074:
            return;
         }
         §§goto(addr004d);
      }
      
      [Bindable(event="propertyChange")]
      public function get startButton() : MultistateButton
      {
         return this._1943111220startButton;
      }
      
      public function set startButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1943111220startButton;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1943111220startButton = param1;
                  if(_loc3_ || _loc3_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"startButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0055);
      }
   }
}

