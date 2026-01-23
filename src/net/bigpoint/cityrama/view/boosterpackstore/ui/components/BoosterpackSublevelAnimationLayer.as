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
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.cityrama.model.boosterpack.vo.BoosterpackAnimationLayerVo;
   import net.bigpoint.cityrama.model.common.vo.RewardItemComponentVo;
   import net.bigpoint.cityrama.view.boosterpackstore.ui.skins.BoosterpackRewardListSkin;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.events.BriskMCDynaLibEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.layouts.TileLayout;
   
   use namespace mx_internal;
   
   public class BoosterpackSublevelAnimationLayer extends Group implements IBindingClient
   {
      
      public static const SKIP:String = "SKIP";
      
      public static const BUY_BOOSTER_GOOD:String = "BUY_BOOSTER_GOOD";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         SKIP = "SKIP";
         if(_loc2_ || _loc2_)
         {
            addr002c:
            BUY_BOOSTER_GOOD = "BUY_BOOSTER_GOOD";
         }
         return;
      }
      §§goto(addr002c);
      
      private var _2130637772animationLayerStars:BriskMCDynaLib;
      
      private var _779621070boosterpackImage:BriskImageDynaLib;
      
      private var _1463972923boosterpackImageOpened:BriskImageDynaLib;
      
      private var _777207093boosterpackLabel:LocaLabel;
      
      private var _1950300443goodBuyButton:MultistateButton;
      
      private var _1177280081itemList:List;
      
      private var _2121281877pricingBg:BriskImageDynaLib;
      
      private var _319513199skipButton:MultistateButton;
      
      private var _2130779630starsAnim:BriskMCDynaLib;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var _878929322uiInfolayerAlignmentLine2:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _isDirty:Boolean = false;
      
      private var _data:BoosterpackAnimationLayerVo;
      
      private var _startAnimation:Boolean = false;
      
      private var _stars:BitmapClip;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function BoosterpackSublevelAnimationLayer()
      {
         var bindings:Array;
         var watchers:Array;
         var target:Object;
         var i:uint;
         var watcherSetupUtilClass:Object;
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         §§push(§§newactivation());
         if(_loc3_)
         {
            §§push(null);
            if(_loc3_)
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc3_ || _loc1_)
               {
                  §§push(§§newactivation());
                  if(_loc3_)
                  {
                     addr003c:
                     §§pop().§§slot[5] = null;
                     if(!(_loc4_ && Boolean(this)))
                     {
                        this.mx_internal::_bindings = [];
                        if(!(_loc4_ && _loc3_))
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc3_ || _loc3_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc3_ || _loc1_)
                              {
                                 addr0088:
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!_loc4_)
                                 {
                                    super();
                                    if(_loc3_ || _loc3_)
                                    {
                                       mx_internal::_document = this;
                                       if(_loc3_)
                                       {
                                          addr00b6:
                                          §§push(§§newactivation());
                                          if(!_loc4_)
                                          {
                                             addr00be:
                                             §§pop().§§slot[1] = this._BoosterpackSublevelAnimationLayer_bindingsSetup();
                                             if(_loc3_ || _loc3_)
                                             {
                                                addr00d5:
                                                §§push(§§newactivation());
                                                if(_loc3_ || Boolean(this))
                                                {
                                                   addr00e4:
                                                   §§pop().§§slot[2] = [];
                                                   if(!_loc4_)
                                                   {
                                                      addr00f0:
                                                      §§push(§§newactivation());
                                                      if(_loc3_ || Boolean(this))
                                                      {
                                                         addr00ff:
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc3_)
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!(_loc4_ && _loc1_))
                                                               {
                                                                  addr011f:
                                                                  §§push(§§newactivation());
                                                                  if(!(_loc4_ && _loc1_))
                                                                  {
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_boosterpackstore_ui_components_BoosterpackSublevelAnimationLayerWatcherSetupUtil");
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(!(_loc4_ && Boolean(this)))
                                                                        {
                                                                           addr0166:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr017d:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return BoosterpackSublevelAnimationLayer[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc3_)
                                                                              {
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!(_loc4_ && _loc3_))
                                                                                 {
                                                                                    addr01c9:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!(_loc4_ && _loc2_))
                                                                                    {
                                                                                       addr01f8:
                                                                                       this.mxmlContent = [this._BoosterpackSublevelAnimationLayer_HGroup1_c(),this._BoosterpackSublevelAnimationLayer_BriskMCDynaLib3_i()];
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          this.addEventListener("creationComplete",this.___BoosterpackSublevelAnimationLayer_Group1_creationComplete);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             addr0223:
                                                                                             i = 0;
                                                                                             addr0221:
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    loop0:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§newactivation());
                                                                                       loop1:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().§§slot[4]);
                                                                                          loop2:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§newactivation());
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() >= §§pop().§§slot[1].length)
                                                                                                {
                                                                                                   break loop1;
                                                                                                }
                                                                                                Binding(bindings[i]).execute();
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   break loop2;
                                                                                                }
                                                                                                §§push(§§newactivation());
                                                                                                if(_loc3_ || _loc2_)
                                                                                                {
                                                                                                   §§push(§§pop().§§slot[4]);
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(uint(§§pop() + 1));
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(§§newactivation());
                                                                                                   if(!(_loc4_ && _loc1_))
                                                                                                   {
                                                                                                      var _temp_23:* = §§pop();
                                                                                                      §§pop().§§slot[4] = _temp_23;
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         break loop2;
                                                                                                      }
                                                                                                      break loop1;
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                continue loop1;
                                                                                             }
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    return;
                                                                                    addr0288:
                                                                                 }
                                                                                 §§goto(addr0221);
                                                                              }
                                                                              §§goto(addr01c9);
                                                                           }
                                                                           §§goto(addr01f8);
                                                                        }
                                                                        §§goto(addr0223);
                                                                     }
                                                                     §§goto(addr017d);
                                                                  }
                                                                  §§goto(addr0223);
                                                               }
                                                               §§goto(addr0221);
                                                            }
                                                            §§goto(addr017d);
                                                         }
                                                         §§goto(addr0221);
                                                      }
                                                      §§goto(addr0166);
                                                   }
                                                   §§goto(addr011f);
                                                }
                                                §§goto(addr00ff);
                                             }
                                             §§goto(addr0221);
                                          }
                                          §§goto(addr0223);
                                       }
                                       §§goto(addr01f8);
                                    }
                                    §§goto(addr0288);
                                 }
                                 §§goto(addr00b6);
                              }
                              §§goto(addr01f8);
                           }
                           §§goto(addr00f0);
                        }
                        §§goto(addr0088);
                     }
                     §§goto(addr017d);
                  }
                  §§goto(addr00be);
               }
               §§goto(addr00d5);
            }
            §§goto(addr003c);
         }
         §§goto(addr00e4);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            BoosterpackSublevelAnimationLayer._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               addr002f:
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     return;
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
            return;
         }
         §§goto(addr002f);
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
      
      private function onCreationComplete() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            if(this.itemList.dataProvider == null)
            {
               if(_loc2_ || Boolean(this))
               {
                  addr0039:
                  this.itemList.dataProvider = new ArrayCollection();
               }
            }
            return;
         }
         §§goto(addr0039);
      }
      
      public function set data(param1:BoosterpackAnimationLayerVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc3_ || _loc3_)
               {
                  this._data = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr0072);
               }
               addr0060:
               this._isDirty = true;
               if(!(_loc2_ && _loc2_))
               {
                  addr0072:
                  invalidateProperties();
               }
               §§goto(addr0077);
            }
            addr0077:
            return;
         }
         §§goto(addr0072);
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:* = null;
         if(_loc4_ || Boolean(_loc1_))
         {
            super.commitProperties();
            if(_loc4_ || Boolean(_loc1_))
            {
               if(this._isDirty)
               {
                  if(!_loc3_)
                  {
                     this._isDirty = false;
                     if(_loc4_ || _loc2_)
                     {
                        §§push(this.boosterpackImage);
                        §§push("large_");
                        if(_loc4_ || _loc3_)
                        {
                           §§push(§§pop() + this._data.boosterpackVo.gfxId);
                        }
                        §§pop().dynaBmpSourceName = §§pop();
                        if(_loc4_ || Boolean(this))
                        {
                           this.boosterpackImageOpened.dynaBmpSourceName = "sublevel_boosterPack_opened";
                           if(_loc4_)
                           {
                              addr009b:
                              §§push(this.goodBuyButton);
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§push(LocaUtils.getThousendSeperatedNumber(this._data.boosterpackVo.defaultCostAmount));
                                 if(!_loc3_)
                                 {
                                    §§pop().label = §§pop();
                                    if(!(_loc3_ && Boolean(_loc1_)))
                                    {
                                       §§push(LocaUtils);
                                       §§push("rcl.goods.goodname");
                                       §§push("rcl.goods.goodname.");
                                       if(_loc4_)
                                       {
                                          §§push(§§pop() + this._data.boosterpackVo.defaultCostConfig.goodConfig.gfxId);
                                       }
                                       §§push(§§pop().getString(§§pop(),§§pop()));
                                       if(_loc4_)
                                       {
                                          §§push(§§pop());
                                       }
                                       _loc1_ = §§pop();
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§push(this.goodBuyButton);
                                          if(!_loc3_)
                                          {
                                             §§goto(addr0127);
                                          }
                                          §§goto(addr019c);
                                       }
                                       §§goto(addr01b7);
                                    }
                                    §§goto(addr02c1);
                                 }
                                 addr0127:
                                 §§pop().toolTip = LocaUtils.getString("rcl.tooltips.boosterpackstore","rcl.tooltips.boosterpackstore.buyButton.amountType",[this.goodBuyButton.label,_loc1_]);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr0136:
                                    §§push(this.boosterpackLabel);
                                    §§push(LocaUtils);
                                    §§push("rcl.goods.goodname");
                                    §§push("rcl.goods.goodname.");
                                    if(_loc4_)
                                    {
                                       §§push(§§pop() + this._data.boosterpackVo.locaId);
                                    }
                                    §§pop().text = §§pop().getString(§§pop(),§§pop());
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       §§goto(addr0172);
                                    }
                                    §§goto(addr0240);
                                 }
                                 §§goto(addr0172);
                              }
                              §§goto(addr019c);
                           }
                           §§goto(addr0264);
                        }
                        §§goto(addr01cd);
                     }
                     addr0172:
                     this.skipButton.label = LocaUtils.getString("rcl.booklayer.boosterpackStore","rcl.booklayer.boosterpackStore.button.skip");
                     if(!_loc3_)
                     {
                        §§push(this.goodBuyButton);
                        if(_loc4_ || _loc2_)
                        {
                           addr019c:
                           §§pop().enabled = this._data.boosterpackVo.userCanAffordGoodPrice;
                           if(_loc4_ || _loc3_)
                           {
                              addr01b7:
                              if(this._data.boosterpackVo.defaultCostConfig.goodConfig)
                              {
                                 if(!_loc3_)
                                 {
                                    §§goto(addr01cd);
                                 }
                                 §§goto(addr02c1);
                              }
                              §§goto(addr0240);
                           }
                           addr01cd:
                           §§push(this.goodBuyButton);
                           if(!(_loc3_ && _loc2_))
                           {
                              addr01de:
                              §§push("gui_popups_boosterpackBook");
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 §§pop().libNameRight = §§pop();
                                 if(_loc4_ || Boolean(this))
                                 {
                                    §§goto(addr022f);
                                 }
                                 §§goto(addr0240);
                              }
                              addr022f:
                              §§goto(addr0203);
                           }
                           addr0203:
                           §§push(this.goodBuyButton);
                           §§push("icon_");
                           if(_loc4_ || Boolean(this))
                           {
                              §§push(§§pop() + this._data.boosterpackVo.defaultCostConfig.goodConfig.gfxId);
                              if(_loc4_)
                              {
                                 §§push(§§pop() + "_small");
                              }
                           }
                           §§pop().imageNameRight = §§pop();
                           if(_loc4_ || _loc2_)
                           {
                              addr0240:
                              §§push(this.animationLayerStars);
                              if(!(_loc3_ && _loc3_))
                              {
                                 var _loc2_:Boolean;
                                 this.animationLayerStars.includeInLayout = _loc2_ = false;
                                 §§pop().visible = _loc2_;
                                 if(!_loc3_)
                                 {
                                    addr0264:
                                    §§push(this.animationLayerStars);
                                    if(_loc4_)
                                    {
                                       §§pop().addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.onAnimationLoaded);
                                       if(_loc4_ || _loc2_)
                                       {
                                          addr0289:
                                          §§push(this.animationLayerStars);
                                          if(!(_loc3_ && Boolean(this)))
                                          {
                                             addr02a7:
                                             §§push("boosterParticleAnim_Stars");
                                             if(_loc4_)
                                             {
                                                §§pop().dynaMCSourceName = §§pop();
                                                if(!(_loc3_ && Boolean(this)))
                                                {
                                                   addr02c8:
                                                   this.animationLayerStars.dynaLibName = "gui_popups_boosterpackBook";
                                                   addr02c5:
                                                   addr02c1:
                                                }
                                                §§goto(addr02ca);
                                             }
                                             §§goto(addr02c8);
                                          }
                                          §§goto(addr02c5);
                                       }
                                       §§goto(addr02c1);
                                    }
                                    §§goto(addr02c5);
                                 }
                                 §§goto(addr0289);
                              }
                              §§goto(addr02a7);
                           }
                           §§goto(addr02ca);
                        }
                        §§goto(addr01de);
                     }
                     §§goto(addr02ca);
                  }
                  §§goto(addr0136);
               }
               addr02ca:
               return;
            }
            §§goto(addr009b);
         }
         §§goto(addr0172);
      }
      
      private function handleSkip() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            dispatchEvent(new Event(SKIP));
         }
      }
      
      private function handleBuy() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this.goodBuyButton.enabled = false;
            if(_loc2_)
            {
               dispatchEvent(new Event(BUY_BOOSTER_GOOD));
            }
         }
      }
      
      public function addRewardData(param1:RewardItemComponentVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            if(this.itemList.dataProvider == null)
            {
               if(_loc2_ || Boolean(param1))
               {
                  §§goto(addr0044);
               }
               §§goto(addr008d);
            }
            §§goto(addr0068);
         }
         addr0044:
         this.itemList.dataProvider = new ArrayCollection();
         if(_loc2_ || _loc3_)
         {
            addr0068:
            param1.showCreationAnimation = true;
            if(!_loc3_)
            {
               param1.orderId = this.itemList.dataProvider.length;
               if(_loc2_ || _loc3_)
               {
                  addr008d:
                  this.itemList.dataProvider.addItem(param1);
               }
            }
         }
      }
      
      public function adjustLayoutBasedOnRewardAmount(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:TileLayout = null;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(param1 > 3)
            {
               _loc2_ = new TileLayout();
               addr003a:
               if(!_loc3_)
               {
                  _loc2_.requestedColumnCount = 3;
                  if(!_loc3_)
                  {
                     _loc2_.requestedRowCount = 2;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        this.itemList.layout = _loc2_;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr003a);
      }
      
      public function showFinishState() : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:RewardItemComponentVo = null;
         var _loc1_:ArrayCollection = new ArrayCollection();
         var _loc2_:int = 0;
         if(_loc6_ || Boolean(_loc1_))
         {
            this.adjustLayoutBasedOnRewardAmount(this._data.rewards.length);
         }
         for each(_loc3_ in this._data.rewards)
         {
            if(!_loc7_)
            {
               _loc3_.showCreationAnimation = false;
               if(_loc7_ && Boolean(_loc3_))
               {
                  continue;
               }
               _loc3_.orderId = _loc2_;
               if(_loc7_)
               {
                  continue;
               }
               _loc1_.addItem(_loc3_);
               if(!(_loc6_ || Boolean(this)))
               {
                  continue;
               }
            }
            _loc2_++;
         }
         if(!_loc7_)
         {
            this.itemList.useVirtualLayout = false;
            if(!_loc7_)
            {
               this.itemList.dataProvider = _loc1_;
               if(_loc6_)
               {
                  addr00db:
                  this.skipButton.label = LocaUtils.getString("rcl.booklayer.boosterpackStore","rcl.booklayer.boosterpackStore.button.back");
               }
               §§goto(addr00ee);
            }
            §§goto(addr00db);
         }
         addr00ee:
      }
      
      private function onAnimationLoaded(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this.animationLayerStars.removeEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.onAnimationLoaded);
            if(!_loc3_)
            {
               this._stars = new BitmapClip(this.animationLayerStars.movieClip.getChildByName("stars") as MovieClip,"stars",24);
               if(_loc2_ || _loc2_)
               {
                  addr0081:
                  if(this._startAnimation)
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        this.playStarsAnimation();
                     }
                  }
               }
               §§goto(addr009d);
            }
            §§goto(addr0081);
         }
         addr009d:
      }
      
      public function playStarsAnimation() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._startAnimation = true;
            if(!(_loc3_ && Boolean(this)))
            {
               if(this._stars)
               {
                  while(true)
                  {
                     §§push(this.starsAnim);
                     if(!_loc2_)
                     {
                        break;
                     }
                     if(§§pop().numChildren <= 0)
                     {
                        if(!_loc3_)
                        {
                           §§push(this.starsAnim);
                           if(_loc2_)
                           {
                              break;
                           }
                           §§goto(addr00e9);
                        }
                        §§goto(addr0110);
                     }
                     else
                     {
                        §§push(this.starsAnim);
                        if(_loc2_ || _loc2_)
                        {
                           §§pop().removeChildAt(0);
                           if(!_loc3_)
                           {
                              continue;
                           }
                           addr00e5:
                           §§push(this.starsAnim);
                        }
                     }
                     addr00e9:
                     var _loc1_:Boolean;
                     this.starsAnim.visible = _loc1_ = true;
                     §§pop().includeInLayout = _loc1_;
                     if(_loc2_ || _loc2_)
                     {
                        addr0110:
                        §§push(this._stars);
                        if(!_loc3_)
                        {
                           addr0119:
                           §§pop().removeAfterPlay = true;
                           if(!(_loc3_ && _loc1_))
                           {
                              addr012e:
                              this._stars.playOnce();
                              addr012a:
                           }
                           §§goto(addr0132);
                        }
                        §§goto(addr012e);
                     }
                     §§goto(addr0132);
                  }
                  §§pop().addChild(this._stars);
                  if(!_loc3_)
                  {
                     §§push(this._stars);
                     if(_loc2_ || _loc2_)
                     {
                        §§push(-200);
                        if(_loc2_ || _loc1_)
                        {
                           §§pop().x = §§pop();
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(this._stars);
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr00d6:
                                 §§pop().y = -320;
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    §§goto(addr00e5);
                                 }
                                 §§goto(addr012a);
                              }
                              §§goto(addr0119);
                           }
                           §§goto(addr0132);
                        }
                        §§goto(addr00d6);
                     }
                     §§goto(addr0119);
                  }
                  §§goto(addr0110);
                  addr0054:
               }
               addr0132:
               return;
            }
         }
         §§goto(addr0054);
      }
      
      public function switchItemPackImage() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc1_))
         {
            this.boosterpackImage.visible = this.boosterpackImage.includeInLayout = false;
            if(!_loc2_)
            {
               addr0043:
               this.boosterpackImageOpened.visible = this.boosterpackImageOpened.includeInLayout = true;
            }
            return;
         }
         §§goto(addr0043);
      }
      
      private function _BoosterpackSublevelAnimationLayer_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.top = -20;
                  if(_loc2_)
                  {
                     _loc1_.mxmlContent = [this._BoosterpackSublevelAnimationLayer_Group2_c(),this._BoosterpackSublevelAnimationLayer_HGroup3_c(),this._BoosterpackSublevelAnimationLayer_Group6_c()];
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr0092:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0096);
                     }
                  }
               }
            }
            §§goto(addr0092);
         }
         addr0096:
         return _loc1_;
      }
      
      private function _BoosterpackSublevelAnimationLayer_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.width = 290;
            if(_loc2_ || _loc2_)
            {
               _loc1_.percentHeight = 100;
               §§goto(addr003b);
            }
            §§goto(addr0058);
         }
         addr003b:
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.mxmlContent = [this._BoosterpackSublevelAnimationLayer_BriskImageDynaLib1_i(),this._BoosterpackSublevelAnimationLayer_HGroup2_c(),this._BoosterpackSublevelAnimationLayer_BriskImageDynaLib2_c(),this._BoosterpackSublevelAnimationLayer_BriskImageDynaLib3_i(),this._BoosterpackSublevelAnimationLayer_BriskImageDynaLib4_i(),this._BoosterpackSublevelAnimationLayer_BriskMCDynaLib1_c(),this._BoosterpackSublevelAnimationLayer_Group3_c(),this._BoosterpackSublevelAnimationLayer_VGroup1_c()];
            addr0058:
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr00b1:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr00b5);
            }
            §§goto(addr00b1);
         }
         addr00b5:
         return _loc1_;
      }
      
      private function _BoosterpackSublevelAnimationLayer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(!_loc3_)
            {
               _loc1_.top = 200;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.dynaLibName = "gui_popups_paperPopup";
                  if(_loc2_)
                  {
                     _loc1_.dynaBmpSourceName = "rewardcomponentPriceBg_big";
                     if(!_loc3_)
                     {
                        _loc1_.id = "pricingBg";
                        if(_loc2_)
                        {
                           addr0067:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(this))
                              {
                                 addr0089:
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    §§goto(addr0092);
                                 }
                              }
                              §§goto(addr00a4);
                           }
                           addr0092:
                           this.pricingBg = _loc1_;
                           if(_loc2_ || Boolean(this))
                           {
                              addr00a4:
                              BindingManager.executeBindings(this,"pricingBg",this.pricingBg);
                           }
                        }
                        §§goto(addr00b1);
                     }
                     §§goto(addr00a4);
                  }
                  addr00b1:
                  return _loc1_;
               }
               §§goto(addr00a4);
            }
            §§goto(addr0067);
         }
         §§goto(addr0089);
      }
      
      private function _BoosterpackSublevelAnimationLayer_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(!_loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.width = 170;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.height = 38;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0075:
                        _loc1_.top = 212;
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           §§goto(addr0088);
                        }
                        §§goto(addr00c2);
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr009e);
               }
               addr0088:
               _loc1_.left = 61;
               if(!_loc2_)
               {
                  addr009e:
                  _loc1_.mxmlContent = [this._BoosterpackSublevelAnimationLayer_LocaLabel1_i()];
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr00b6);
                  }
                  §§goto(addr00c2);
               }
               addr00b6:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr00c2:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0075);
      }
      
      private function _BoosterpackSublevelAnimationLayer_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.maxDisplayedLines = 2;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.styleName = "boosterpackLabel";
               if(_loc2_)
               {
                  _loc1_.id = "boosterpackLabel";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr0075:
                           _loc1_.document = this;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr0086:
                              this.boosterpackLabel = _loc1_;
                              if(!_loc3_)
                              {
                                 BindingManager.executeBindings(this,"boosterpackLabel",this.boosterpackLabel);
                              }
                           }
                        }
                        return _loc1_;
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr0075);
            }
         }
         §§goto(addr0086);
      }
      
      private function _BoosterpackSublevelAnimationLayer_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.horizontalCenter = 0;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.top = 20;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.dynaBmpSourceName = "sublevel_booster_background_big";
                     if(!_loc2_)
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
               }
            }
         }
         §§goto(addr0083);
      }
      
      private function _BoosterpackSublevelAnimationLayer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.top = 54;
            if(!_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc3_ && Boolean(this)))
               {
                  §§goto(addr0042);
               }
               §§goto(addr00c2);
            }
            §§goto(addr008e);
         }
         addr0042:
         _loc1_.dynaLibName = "gui_popups_largeGoodIcons";
         if(!_loc3_)
         {
            _loc1_.visible = true;
            if(!(_loc3_ && Boolean(this)))
            {
               §§goto(addr006a);
            }
            §§goto(addr00c2);
         }
         addr006a:
         _loc1_.includeInLayout = true;
         if(_loc2_ || Boolean(this))
         {
            _loc1_.id = "boosterpackImage";
            if(_loc2_ || _loc3_)
            {
               addr008e:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.document = this;
                     if(_loc2_)
                     {
                        addr00b8:
                        this.boosterpackImage = _loc1_;
                        if(!_loc3_)
                        {
                           addr00c2:
                           BindingManager.executeBindings(this,"boosterpackImage",this.boosterpackImage);
                        }
                     }
                  }
                  §§goto(addr00cf);
               }
               §§goto(addr00b8);
            }
         }
         addr00cf:
         return _loc1_;
      }
      
      private function _BoosterpackSublevelAnimationLayer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.top = 25;
            if(_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.dynaLibName = "gui_popups_boosterpackBook";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.visible = false;
                     addr0056:
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.includeInLayout = false;
                        if(!_loc3_)
                        {
                           addr007f:
                           _loc1_.id = "boosterpackImageOpened";
                           if(_loc2_)
                           {
                              addr008a:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    addr009e:
                                    _loc1_.document = this;
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§goto(addr00bc);
                                    }
                                 }
                                 §§goto(addr00ce);
                              }
                              §§goto(addr00bc);
                           }
                           §§goto(addr009e);
                        }
                        addr00bc:
                        this.boosterpackImageOpened = _loc1_;
                        if(!(_loc3_ && _loc3_))
                        {
                           addr00ce:
                           BindingManager.executeBindings(this,"boosterpackImageOpened",this.boosterpackImageOpened);
                        }
                        return _loc1_;
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr007f);
               }
            }
            §§goto(addr0056);
         }
         §§goto(addr00ce);
      }
      
      private function _BoosterpackSublevelAnimationLayer_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc2_)
            {
               _loc1_.dynaMCSourceName = "stickytape_top";
               if(!_loc2_)
               {
                  §§goto(addr0043);
               }
               §§goto(addr0084);
            }
         }
         addr0043:
         _loc1_.width = 110;
         if(_loc3_)
         {
            _loc1_.horizontalCenter = 0;
            if(!_loc2_)
            {
               _loc1_.top = 13;
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr0078);
               }
               §§goto(addr0084);
            }
            addr0078:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr0084:
                  _loc1_.document = this;
               }
            }
            §§goto(addr0088);
         }
         addr0088:
         return _loc1_;
      }
      
      private function _BoosterpackSublevelAnimationLayer_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.top = 100;
            if(_loc3_)
            {
               _loc1_.left = 145;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._BoosterpackSublevelAnimationLayer_BriskMCDynaLib2_i()];
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr006e);
                  }
                  §§goto(addr007a);
               }
               addr006e:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr007a:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr007a);
      }
      
      private function _BoosterpackSublevelAnimationLayer_BriskMCDynaLib2_i() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_)
            {
               _loc1_.verticalCenter = 0;
               if(_loc2_)
               {
                  _loc1_.visible = false;
                  if(_loc2_)
                  {
                     _loc1_.includeInLayout = false;
                     if(_loc2_)
                     {
                        _loc1_.id = "animationLayerStars";
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr007b:
                                 _loc1_.document = this;
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr008c:
                                    this.animationLayerStars = _loc1_;
                                    if(_loc2_)
                                    {
                                       addr0096:
                                       BindingManager.executeBindings(this,"animationLayerStars",this.animationLayerStars);
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                        }
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr007b);
               }
            }
         }
         §§goto(addr0096);
      }
      
      private function _BoosterpackSublevelAnimationLayer_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.paddingTop = 290;
                  if(_loc3_ || _loc3_)
                  {
                     addr005d:
                     _loc1_.horizontalAlign = "center";
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.gap = 0;
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr008d);
                        }
                     }
                  }
                  §§goto(addr00a3);
               }
               §§goto(addr00b7);
            }
            addr008d:
            _loc1_.mxmlContent = [this._BoosterpackSublevelAnimationLayer_Group4_c(),this._BoosterpackSublevelAnimationLayer_Group5_c()];
            if(!_loc2_)
            {
               addr00a3:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr00b7:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr005d);
      }
      
      private function _BoosterpackSublevelAnimationLayer_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.height = 10;
            if(_loc3_)
            {
               addr0037:
               _loc1_.mxmlContent = [this._BoosterpackSublevelAnimationLayer_MultistateButton1_i()];
               if(!(_loc2_ && _loc2_))
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
            return _loc1_;
         }
         §§goto(addr0037);
      }
      
      private function _BoosterpackSublevelAnimationLayer_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.bottom = 0;
            if(_loc2_ || _loc2_)
            {
               _loc1_.width = 205;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc3_)
                  {
                     addr0065:
                     _loc1_.addEventListener("click",this.__skipButton_click);
                     if(_loc2_)
                     {
                        addr0075:
                        _loc1_.id = "skipButton";
                        if(!(_loc3_ && _loc3_))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 addr00a1:
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    addr00aa:
                                    this.skipButton = _loc1_;
                                    if(!(_loc3_ && Boolean(_loc1_)))
                                    {
                                       BindingManager.executeBindings(this,"skipButton",this.skipButton);
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr00aa);
                        }
                     }
                  }
                  §§goto(addr00a1);
               }
               §§goto(addr0065);
            }
            §§goto(addr00aa);
         }
         §§goto(addr0075);
      }
      
      public function __skipButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.handleSkip();
         }
      }
      
      private function _BoosterpackSublevelAnimationLayer_Group5_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.mxmlContent = [this._BoosterpackSublevelAnimationLayer_MultistateButton2_i()];
            if(_loc3_ || _loc3_)
            {
               addr0044:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0044);
      }
      
      private function _BoosterpackSublevelAnimationLayer_MultistateButton2_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_ || _loc2_)
         {
            _loc1_.bottom = 0;
            if(!(_loc2_ && _loc2_))
            {
               addr003c:
               _loc1_.width = 205;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.enabled = false;
                  if(_loc3_)
                  {
                     addr0059:
                     _loc1_.horizontalCenter = 0;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr0077:
                        _loc1_.addEventListener("click",this.__goodBuyButton_click);
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           _loc1_.id = "goodBuyButton";
                           if(!_loc2_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr00ae:
                                    _loc1_.document = this;
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr00cc:
                                       this.goodBuyButton = _loc1_;
                                       if(_loc3_ || Boolean(_loc1_))
                                       {
                                          addr00de:
                                          BindingManager.executeBindings(this,"goodBuyButton",this.goodBuyButton);
                                       }
                                    }
                                 }
                                 §§goto(addr00eb);
                              }
                              §§goto(addr00cc);
                           }
                           addr00eb:
                           return _loc1_;
                        }
                        §§goto(addr00ae);
                     }
                  }
                  §§goto(addr00de);
               }
               §§goto(addr0059);
            }
            §§goto(addr0077);
         }
         §§goto(addr003c);
      }
      
      public function __goodBuyButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this.handleBuy();
         }
      }
      
      private function _BoosterpackSublevelAnimationLayer_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc2_)
         {
            _loc1_.top = 10;
            if(_loc2_)
            {
               addr003a:
               _loc1_.width = 45;
               if(!_loc3_)
               {
                  _loc1_.horizontalAlign = "left";
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.mxmlContent = [this._BoosterpackSublevelAnimationLayer_BriskImageDynaLib5_c()];
                     if(_loc2_ || Boolean(_loc1_))
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
                     §§goto(addr0087);
                  }
                  §§goto(addr008b);
               }
               §§goto(addr0087);
            }
            addr008b:
            return _loc1_;
         }
         §§goto(addr003a);
      }
      
      private function _BoosterpackSublevelAnimationLayer_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_boosterpackBook";
            if(!_loc3_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.dynaBmpSourceName = "blue_line_long";
                  if(_loc2_ || _loc3_)
                  {
                     §§goto(addr0071);
                  }
                  §§goto(addr007d);
               }
            }
         }
         addr0071:
         if(!_loc1_.document)
         {
            if(!_loc3_)
            {
               addr007d:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelAnimationLayer_Group6_c() : Group
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
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.mxmlContent = [this._BoosterpackSublevelAnimationLayer_Group7_c()];
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr007f:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0083);
                  }
               }
               §§goto(addr007f);
            }
            addr0083:
            return _loc1_;
         }
         §§goto(addr007f);
      }
      
      private function _BoosterpackSublevelAnimationLayer_Group7_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.top = 10;
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  §§goto(addr0047);
               }
               §§goto(addr008b);
            }
            §§goto(addr0077);
         }
         addr0047:
         _loc1_.percentHeight = 100;
         if(!_loc2_)
         {
            _loc1_.mxmlContent = [this._BoosterpackSublevelAnimationLayer_List1_i(),this._BoosterpackSublevelAnimationLayer_UiInfolayerAlignmentLine1_i(),this._BoosterpackSublevelAnimationLayer_UiInfolayerAlignmentLine2_i()];
            if(!_loc2_)
            {
               addr0077:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(_loc1_)))
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
      
      private function _BoosterpackSublevelAnimationLayer_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(!_loc2_)
         {
            _loc1_.itemRenderer = this._BoosterpackSublevelAnimationLayer_ClassFactory1_c();
            if(_loc3_ || _loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc3_)
               {
                  _loc1_.verticalCenter = 0;
                  if(_loc3_ || _loc2_)
                  {
                     addr005f:
                     _loc1_.percentWidth = 100;
                     if(!_loc2_)
                     {
                        _loc1_.height = 326;
                        if(_loc3_ || Boolean(this))
                        {
                           §§goto(addr007c);
                        }
                        §§goto(addr00af);
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr00c2);
               }
               addr007c:
               _loc1_.setStyle("skinClass",BoosterpackRewardListSkin);
               if(!_loc2_)
               {
                  addr008b:
                  _loc1_.id = "itemList";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr00af:
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              §§goto(addr00b8);
                           }
                        }
                        §§goto(addr00c2);
                     }
                     §§goto(addr00b8);
                  }
                  §§goto(addr00c2);
               }
               addr00b8:
               this.itemList = _loc1_;
               if(!_loc2_)
               {
                  addr00c2:
                  BindingManager.executeBindings(this,"itemList",this.itemList);
               }
               return _loc1_;
            }
            §§goto(addr005f);
         }
         §§goto(addr008b);
      }
      
      private function _BoosterpackSublevelAnimationLayer_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc3_)
         {
            _loc1_.generator = BoosterpackRewardItemRenderer;
         }
         return _loc1_;
      }
      
      private function _BoosterpackSublevelAnimationLayer_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.left = 0;
            if(_loc2_)
            {
               _loc1_.top = 150;
               if(!_loc3_)
               {
                  _loc1_.right = 0;
                  if(_loc2_)
                  {
                     _loc1_.lineId = 8;
                     if(_loc2_ || _loc2_)
                     {
                        addr0066:
                        _loc1_.id = "uiInfolayerAlignmentLine";
                        if(_loc2_ || _loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 _loc1_.document = this;
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§goto(addr00a4);
                                 }
                                 §§goto(addr00ae);
                              }
                           }
                        }
                        addr00a4:
                        this.uiInfolayerAlignmentLine = _loc1_;
                        if(!_loc3_)
                        {
                           addr00ae:
                           BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
                        }
                        §§goto(addr00bb);
                     }
                     addr00bb:
                     return _loc1_;
                  }
                  §§goto(addr0066);
               }
               §§goto(addr00ae);
            }
            §§goto(addr0066);
         }
         §§goto(addr00a4);
      }
      
      private function _BoosterpackSublevelAnimationLayer_UiInfolayerAlignmentLine2_i() : UiInfolayerAlignmentLine
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.left = 0;
            if(_loc2_)
            {
               _loc1_.bottom = 150;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.right = 0;
                  if(_loc2_)
                  {
                     _loc1_.lineId = 9;
                     if(!(_loc3_ && _loc2_))
                     {
                        addr0070:
                        _loc1_.id = "uiInfolayerAlignmentLine2";
                        if(_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    addr00a3:
                                    this.uiInfolayerAlignmentLine2 = _loc1_;
                                    if(_loc2_)
                                    {
                                       addr00ad:
                                       BindingManager.executeBindings(this,"uiInfolayerAlignmentLine2",this.uiInfolayerAlignmentLine2);
                                    }
                                 }
                                 §§goto(addr00ba);
                              }
                           }
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr00ba);
                  }
                  §§goto(addr0070);
               }
               §§goto(addr00ad);
            }
            addr00ba:
            return _loc1_;
         }
         §§goto(addr00ad);
      }
      
      private function _BoosterpackSublevelAnimationLayer_BriskMCDynaLib3_i() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_boosterpackBook";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.id = "starsAnim";
               if(_loc2_)
               {
                  addr0048:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr0067:
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           addr0070:
                           this.starsAnim = _loc1_;
                           if(!_loc3_)
                           {
                              addr007a:
                              BindingManager.executeBindings(this,"starsAnim",this.starsAnim);
                           }
                           §§goto(addr0087);
                        }
                        §§goto(addr007a);
                     }
                     addr0087:
                     return _loc1_;
                  }
               }
               §§goto(addr0070);
            }
            §§goto(addr0067);
         }
         §§goto(addr0048);
      }
      
      public function ___BoosterpackSublevelAnimationLayer_Group1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.onCreationComplete();
         }
      }
      
      private function _BoosterpackSublevelAnimationLayer_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(_loc2_ || Boolean(this))
         {
            §§pop().§§slot[1] = [];
            if(_loc2_)
            {
               §§push(§§newactivation());
               if(_loc2_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(0);
                     if(_loc2_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():uint
                        {
                           return UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM;
                        },null,"uiInfolayerAlignmentLine.alignment");
                        if(_loc2_ || _loc2_)
                        {
                           §§push(§§newactivation());
                           if(_loc2_)
                           {
                              §§push(§§pop().§§slot[1]);
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 §§push(1);
                                 if(_loc2_ || _loc1_)
                                 {
                                    addr009c:
                                    §§pop()[§§pop()] = new Binding(this,function():uint
                                    {
                                       return UserInterfaceInfoLayerAlignLineVo.ALIGN_TOP;
                                    },null,"uiInfolayerAlignmentLine2.alignment");
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr00ba:
                                       §§push(§§newactivation());
                                       if(!(_loc3_ && _loc1_))
                                       {
                                          addr00c9:
                                          §§push(§§pop().§§slot[1]);
                                          if(!_loc3_)
                                          {
                                             §§push(2);
                                             if(!_loc3_)
                                             {
                                                §§pop()[§§pop()] = new Binding(this,function():Number
                                                {
                                                   return animationLayerStars.x;
                                                },null,"starsAnim.x");
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   addr0104:
                                                   §§push(§§newactivation());
                                                   if(_loc2_)
                                                   {
                                                      §§goto(addr010b);
                                                   }
                                                   §§goto(addr0128);
                                                }
                                                §§goto(addr0126);
                                             }
                                             §§goto(addr0114);
                                          }
                                          §§goto(addr0112);
                                       }
                                       §§goto(addr010b);
                                    }
                                    §§goto(addr0104);
                                 }
                                 §§goto(addr0114);
                              }
                              §§goto(addr0112);
                           }
                           addr010b:
                           §§goto(addr012a);
                        }
                        §§goto(addr00ba);
                     }
                     §§goto(addr009c);
                  }
                  addr012a:
                  §§push(§§pop().§§slot[1]);
                  if(!_loc3_)
                  {
                     addr0114:
                     §§pop()[3] = new Binding(this,function():Number
                     {
                        return animationLayerStars.y;
                     },null,"starsAnim.y");
                     addr0128:
                     addr0126:
                     §§push(result);
                     addr0112:
                  }
                  return §§pop();
               }
               §§goto(addr00c9);
            }
            §§goto(addr0126);
         }
         §§goto(addr00c9);
      }
      
      [Bindable(event="propertyChange")]
      public function get animationLayerStars() : BriskMCDynaLib
      {
         return this._2130637772animationLayerStars;
      }
      
      public function set animationLayerStars(param1:BriskMCDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2130637772animationLayerStars;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._2130637772animationLayerStars = param1;
                  addr0040:
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"animationLayerStars",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0040);
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._779621070boosterpackImage = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boosterpackImage",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
               }
               §§goto(addr006d);
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
      }
      
      [Bindable(event="propertyChange")]
      public function get boosterpackImageOpened() : BriskImageDynaLib
      {
         return this._1463972923boosterpackImageOpened;
      }
      
      public function set boosterpackImageOpened(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1463972923boosterpackImageOpened;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1463972923boosterpackImageOpened = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr006d);
               }
               addr0056:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr006d:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boosterpackImageOpened",_loc2_,param1));
                  }
               }
               §§goto(addr007c);
            }
         }
         addr007c:
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
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._777207093boosterpackLabel = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boosterpackLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0073);
                  }
               }
               §§goto(addr0064);
            }
            addr0073:
            return;
         }
         §§goto(addr0064);
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
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr004a:
                  this._1950300443goodBuyButton = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goodBuyButton",_loc2_,param1));
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
         §§goto(addr004a);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemList() : List
      {
         return this._1177280081itemList;
      }
      
      public function set itemList(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1177280081itemList;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  addr003d:
                  this._1177280081itemList = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemList",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0081);
               }
               §§goto(addr0072);
            }
            addr0081:
            return;
         }
         §§goto(addr003d);
      }
      
      [Bindable(event="propertyChange")]
      public function get pricingBg() : BriskImageDynaLib
      {
         return this._2121281877pricingBg;
      }
      
      public function set pricingBg(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2121281877pricingBg;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._2121281877pricingBg = param1;
                  addr003f:
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pricingBg",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007c);
               }
               §§goto(addr006d);
            }
            addr007c:
            return;
         }
         §§goto(addr003f);
      }
      
      [Bindable(event="propertyChange")]
      public function get skipButton() : MultistateButton
      {
         return this._319513199skipButton;
      }
      
      public function set skipButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._319513199skipButton;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._319513199skipButton = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skipButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr007f);
                  }
                  §§goto(addr0070);
               }
            }
            addr007f:
            return;
         }
         §§goto(addr0070);
      }
      
      [Bindable(event="propertyChange")]
      public function get starsAnim() : BriskMCDynaLib
      {
         return this._2130779630starsAnim;
      }
      
      public function set starsAnim(param1:BriskMCDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2130779630starsAnim;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr0039:
                  this._2130779630starsAnim = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0053:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starsAnim",_loc2_,param1));
                        }
                     }
                     §§goto(addr0062);
                  }
               }
               §§goto(addr0053);
            }
            addr0062:
            return;
         }
         §§goto(addr0039);
      }
      
      [Bindable(event="propertyChange")]
      public function get uiInfolayerAlignmentLine() : UiInfolayerAlignmentLine
      {
         return this._1218573432uiInfolayerAlignmentLine;
      }
      
      public function set uiInfolayerAlignmentLine(param1:UiInfolayerAlignmentLine) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1218573432uiInfolayerAlignmentLine;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._1218573432uiInfolayerAlignmentLine = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get uiInfolayerAlignmentLine2() : UiInfolayerAlignmentLine
      {
         return this._878929322uiInfolayerAlignmentLine2;
      }
      
      public function set uiInfolayerAlignmentLine2(param1:UiInfolayerAlignmentLine) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._878929322uiInfolayerAlignmentLine2;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._878929322uiInfolayerAlignmentLine2 = param1;
                  addr0041:
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine2",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr006e);
            }
            addr007d:
            return;
         }
         §§goto(addr0041);
      }
   }
}

