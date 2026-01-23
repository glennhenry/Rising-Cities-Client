package net.bigpoint.cityrama.view.homeImprovement.improvementStore.ui.components
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
   import mx.graphics.GradientEntry;
   import mx.graphics.RadialGradient;
   import mx.styles.*;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.common.vo.RewardImprovementItemComponentVo;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementStoreAnimationLayerVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.ExternalScrollableList;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.VScaleThreeComponent;
   import net.bigpoint.cityrama.view.common.events.BriskMCDynaLibEvent;
   import net.bigpoint.cityrama.view.homeImprovement.improvementStore.ui.components.skins.ImprovementStoreRewardSkinClass;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class ImprovementStoreAnimationGrid extends Group implements IBindingClient
   {
      
      public static const SKIP_ANIMATION:String = "SKIP_ANIMATION";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || ImprovementStoreAnimationGrid)
      {
         SKIP_ANIMATION = "SKIP_ANIMATION";
      }
      
      private var _1351490918buyAgainLabel:LocaLabel;
      
      private var _1271589544buyButton:MultistateButton;
      
      private var _874936911itemAnimation:BriskMCDynaLib;
      
      private var _1295462561itemBackground:BriskImageDynaLib;
      
      private var _1177184812itemIcon:BriskImageDynaLib;
      
      private var _1177280081itemList:ExternalScrollableList;
      
      private var _865758629pageLabel:LocaLabel;
      
      private var _872747822specialIcon:BriskImageDynaLib;
      
      private var _843932899storeFlavourText:LocaLabel;
      
      private var _1364472877uiInfolayerAlignmentLineBottom:UiInfolayerAlignmentLine;
      
      private var _1457442643uiInfolayerAlignmentLineTop:UiInfolayerAlignmentLine;
      
      private var _1429398013yourRewardsLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ImprovementStoreAnimationLayerVo;
      
      private var _isDirty:Boolean;
      
      private var _hasEnoughResources:Boolean;
      
      private var _itemAnimationClip:BitmapClip;
      
      private var _autoStartItemAnimation:Boolean;
      
      private var _currentPage:int;
      
      private var _showingBuyButton:Boolean;
      
      private var _resourcesChanged:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ImprovementStoreAnimationGrid()
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
         if(!(_loc4_ && _loc2_))
         {
            §§push(null);
            if(!_loc4_)
            {
               §§pop().§§slot[3] = §§pop();
               if(!_loc4_)
               {
                  §§push(§§newactivation());
                  if(!_loc4_)
                  {
                     addr0042:
                     §§pop().§§slot[5] = null;
                     if(!_loc4_)
                     {
                        this.mx_internal::_bindings = [];
                        if(!_loc4_)
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc3_ || _loc2_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(!_loc4_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!(_loc4_ && Boolean(this)))
                                 {
                                    super();
                                    if(!(_loc4_ && Boolean(this)))
                                    {
                                       mx_internal::_document = this;
                                       if(_loc3_)
                                       {
                                          §§push(§§newactivation());
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             addr00be:
                                             §§pop().§§slot[1] = this._ImprovementStoreAnimationGrid_bindingsSetup();
                                             if(!_loc4_)
                                             {
                                                §§push(§§newactivation());
                                                if(!_loc4_)
                                                {
                                                   addr00d6:
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      addr00e9:
                                                      §§push(§§newactivation());
                                                      if(!_loc4_)
                                                      {
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            addr0103:
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  addr0110:
                                                                  §§push(§§newactivation());
                                                                  if(_loc3_ || Boolean(this))
                                                                  {
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_homeImprovement_improvementStore_ui_components_ImprovementStoreAnimationGridWatcherSetupUtil");
                                                                     addr011f:
                                                                     if(_loc3_)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(_loc3_)
                                                                           {
                                                                              addr015d:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return ImprovementStoreAnimationGrid[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc3_ || _loc2_)
                                                                              {
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    addr01b0:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       addr01d6:
                                                                                       this.percentWidth = 100;
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          addr01e0:
                                                                                          this.percentHeight = 100;
                                                                                          if(!(_loc4_ && _loc3_))
                                                                                          {
                                                                                             addr01f3:
                                                                                             this.mxmlContent = [this._ImprovementStoreAnimationGrid_VGroup1_c()];
                                                                                             if(!(_loc4_ && _loc3_))
                                                                                             {
                                                                                                addr020c:
                                                                                                this.addEventListener("creationComplete",this.___ImprovementStoreAnimationGrid_Group1_creationComplete);
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   addr021f:
                                                                                                   i = 0;
                                                                                                   addr021d:
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
                                                                                                               break loop2;
                                                                                                            }
                                                                                                            Binding(bindings[i]).execute();
                                                                                                            if(!(_loc3_ || _loc3_))
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(§§newactivation());
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               §§push(§§pop().§§slot[4]);
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§push(uint(§§pop() + 1));
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§push(§§newactivation());
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  var _temp_17:* = §§pop();
                                                                                                                  §§pop().§§slot[4] = _temp_17;
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  break loop2;
                                                                                                               }
                                                                                                               continue;
                                                                                                            }
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         break loop1;
                                                                                                      }
                                                                                                      break loop0;
                                                                                                   }
                                                                                                }
                                                                                                return;
                                                                                                addr027c:
                                                                                             }
                                                                                             §§goto(addr021d);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr027c);
                                                                                    }
                                                                                    §§goto(addr021d);
                                                                                 }
                                                                                 §§goto(addr020c);
                                                                              }
                                                                              §§goto(addr01f3);
                                                                           }
                                                                           §§goto(addr020c);
                                                                        }
                                                                        §§goto(addr021f);
                                                                     }
                                                                     §§goto(addr01f3);
                                                                  }
                                                                  §§goto(addr021f);
                                                               }
                                                            }
                                                            §§goto(addr015d);
                                                         }
                                                         §§goto(addr01e0);
                                                      }
                                                      §§goto(addr011f);
                                                   }
                                                   §§goto(addr021d);
                                                }
                                                §§goto(addr011f);
                                             }
                                             §§goto(addr01b0);
                                          }
                                          §§goto(addr021f);
                                       }
                                       §§goto(addr00e9);
                                    }
                                    §§goto(addr0110);
                                 }
                                 §§goto(addr00e9);
                              }
                              §§goto(addr01e0);
                           }
                        }
                        §§goto(addr01d6);
                     }
                     §§goto(addr0103);
                  }
                  §§goto(addr00d6);
               }
               §§goto(addr021d);
            }
            §§goto(addr0042);
         }
         §§goto(addr00be);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            ImprovementStoreAnimationGrid._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && Boolean(this)))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_)
                  {
                     §§goto(addr0042);
                  }
               }
               else
               {
                  addr0050:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            addr0042:
            return;
         }
         §§goto(addr0050);
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super.initialize();
         }
      }
      
      public function set data(param1:ImprovementStoreAnimationLayerVo) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:RewardImprovementItemComponentVo = null;
         if(_loc6_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(!_loc5_)
               {
                  this._isDirty = true;
                  if(!_loc5_)
                  {
                     addr0041:
                     this._data = param1;
                     if(!(_loc5_ && Boolean(_loc2_)))
                     {
                        addr0054:
                        this.itemList.dataProvider = new ArrayCollection();
                     }
                  }
                  var _loc3_:* = 0;
                  for each(_loc2_ in this._data.rewards)
                  {
                     if(!(_loc5_ && Boolean(this)))
                     {
                        this.itemList.dataProvider.addItem(_loc2_);
                     }
                  }
                  if(_loc6_)
                  {
                     §§push(this.itemIcon);
                     §§push("improvementPack_");
                     if(!(_loc5_ && Boolean(_loc3_)))
                     {
                        §§push(§§pop() + this._data.boosterpackVo.gfxId);
                     }
                     §§pop().dynaBmpSourceName = §§pop();
                     if(!_loc5_)
                     {
                        if(this._data.boosterpackVo.currencyType == ServerResConst.RESOURCE_REALCURRENCY)
                        {
                           if(_loc6_ || Boolean(this))
                           {
                              §§push(this.itemBackground);
                              if(_loc6_ || Boolean(_loc2_))
                              {
                                 §§push("improvement_shop_item_background_big_yellow");
                                 if(!_loc5_)
                                 {
                                    §§pop().dynaBmpSourceName = §§pop();
                                    if(_loc6_)
                                    {
                                       addr011f:
                                       §§push(this.specialIcon);
                                       if(_loc6_ || Boolean(this))
                                       {
                                          §§push(this.specialIcon);
                                          if(_loc6_ || Boolean(param1))
                                          {
                                             §§push(true);
                                             if(_loc6_ || Boolean(param1))
                                             {
                                                var _temp_10:* = §§pop();
                                                §§push(_temp_10);
                                                §§push(_temp_10);
                                                if(_loc6_)
                                                {
                                                   _loc3_ = §§pop();
                                                   if(_loc6_ || Boolean(_loc2_))
                                                   {
                                                      §§pop().includeInLayout = §§pop();
                                                      if(!(_loc5_ && Boolean(_loc3_)))
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc6_)
                                                         {
                                                            if(_loc6_ || Boolean(_loc2_))
                                                            {
                                                               §§pop().visible = §§pop();
                                                               if(_loc5_ && Boolean(_loc3_))
                                                               {
                                                                  addr01d2:
                                                                  §§push(this.specialIcon);
                                                                  this.specialIcon.includeInLayout = _loc3_ = false;
                                                                  addr01d7:
                                                                  §§pop().visible = _loc3_;
                                                                  addr01d5:
                                                                  addr01d4:
                                                                  if(_loc6_)
                                                                  {
                                                                     addr01df:
                                                                     invalidateProperties();
                                                                  }
                                                                  addr01e4:
                                                                  return;
                                                                  addr01d1:
                                                                  addr01d0:
                                                                  addr01cf:
                                                                  addr01cb:
                                                                  addr01c7:
                                                               }
                                                               §§goto(addr01df);
                                                            }
                                                            §§goto(addr01d7);
                                                         }
                                                         §§goto(addr01d5);
                                                      }
                                                      §§goto(addr01d4);
                                                   }
                                                   §§goto(addr01d2);
                                                }
                                                §§goto(addr01d1);
                                             }
                                             §§goto(addr01d0);
                                          }
                                          §§goto(addr01cf);
                                       }
                                       §§goto(addr01cb);
                                    }
                                    §§goto(addr01e4);
                                 }
                                 else
                                 {
                                    addr01b7:
                                    §§pop().dynaBmpSourceName = §§pop();
                                    if(_loc6_ || Boolean(param1))
                                    {
                                       §§goto(addr01c7);
                                    }
                                 }
                                 §§goto(addr01df);
                              }
                              else
                              {
                                 addr01a7:
                                 §§push("improvement_shop_item_background_big_blue");
                              }
                              §§goto(addr01b7);
                           }
                           §§goto(addr01df);
                        }
                        else
                        {
                           §§push(this.itemBackground);
                        }
                        §§goto(addr01a7);
                     }
                  }
                  §§goto(addr011f);
               }
               §§goto(addr0041);
            }
            §§goto(addr01e4);
         }
         §§goto(addr0054);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            super.commitProperties();
            if(!(_loc3_ && _loc3_))
            {
               §§push(this._data);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop());
                  if(_loc2_)
                  {
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     §§push(_temp_4);
                     if(!(_loc3_ && _loc2_))
                     {
                        if(§§pop())
                        {
                           if(!_loc3_)
                           {
                              §§pop();
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§push(this._isDirty);
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr0084:
                                       if(§§pop())
                                       {
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             this._isDirty = false;
                                             if(_loc2_ || _loc3_)
                                             {
                                                §§push(this.itemAnimation);
                                                if(!_loc3_)
                                                {
                                                   var _loc1_:Boolean;
                                                   this.itemAnimation.includeInLayout = _loc1_ = false;
                                                   §§pop().visible = _loc1_;
                                                   if(!(_loc3_ && _loc1_))
                                                   {
                                                      this._autoStartItemAnimation = false;
                                                      if(_loc2_)
                                                      {
                                                         §§push(this.itemAnimation);
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            §§goto(addr00f2);
                                                         }
                                                         §§goto(addr0109);
                                                      }
                                                      §§goto(addr0125);
                                                   }
                                                   §§goto(addr0137);
                                                }
                                                addr00f2:
                                                §§pop().addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.onItemAnimationLoaded);
                                                if(!_loc3_)
                                                {
                                                   addr0109:
                                                   addr0105:
                                                   §§push(this.itemAnimation);
                                                   §§push("improvementStore_pack_");
                                                   if(_loc2_)
                                                   {
                                                      §§push(§§pop() + this._data.boosterpackVo.gfxId);
                                                   }
                                                   §§pop().dynaMCSourceName = §§pop();
                                                   if(!_loc3_)
                                                   {
                                                      addr0125:
                                                      this.ShowBuyButton();
                                                      if(_loc2_ || _loc1_)
                                                      {
                                                         addr0137:
                                                         addr013b:
                                                         §§push(Boolean(this._data));
                                                         if(_loc2_)
                                                         {
                                                            var _temp_13:* = §§pop();
                                                            addr0142:
                                                            §§push(_temp_13);
                                                            if(_temp_13)
                                                            {
                                                               if(_loc2_ || Boolean(this))
                                                               {
                                                                  addr0153:
                                                                  §§pop();
                                                                  if(_loc2_)
                                                                  {
                                                                     addr0159:
                                                                     §§push(this._resourcesChanged);
                                                                     if(!(_loc3_ && _loc1_))
                                                                     {
                                                                        addr016a:
                                                                        §§push(§§pop());
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§goto(addr0170);
                                                                        }
                                                                        §§goto(addr01a2);
                                                                     }
                                                                     addr0170:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc2_ || _loc2_)
                                                                        {
                                                                           addr018b:
                                                                           this._resourcesChanged = false;
                                                                           if(_loc2_ || _loc1_)
                                                                           {
                                                                              §§goto(addr019d);
                                                                           }
                                                                           §§goto(addr01b3);
                                                                        }
                                                                        addr019d:
                                                                        addr01a2:
                                                                        if(this._showingBuyButton)
                                                                        {
                                                                           if(_loc2_ || _loc2_)
                                                                           {
                                                                              addr01b3:
                                                                              this.ShowBuyButton();
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr01b8);
                                                               }
                                                               §§goto(addr016a);
                                                            }
                                                            §§goto(addr0170);
                                                         }
                                                         §§goto(addr016a);
                                                      }
                                                      §§goto(addr01b3);
                                                   }
                                                   §§goto(addr019d);
                                                }
                                                addr01b8:
                                                return;
                                             }
                                             §§goto(addr0159);
                                          }
                                       }
                                       §§goto(addr0137);
                                    }
                                    §§goto(addr0153);
                                 }
                                 §§goto(addr0170);
                              }
                              §§goto(addr0137);
                           }
                        }
                        §§goto(addr0084);
                     }
                     §§goto(addr0142);
                  }
                  §§goto(addr016a);
               }
               §§goto(addr013b);
            }
            §§goto(addr018b);
         }
         §§goto(addr0105);
      }
      
      private function handleBuy(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(this.buyButton.showPlus)
            {
               if(!_loc2_)
               {
                  addr0029:
                  §§push(this._data);
                  if(_loc3_ || Boolean(this))
                  {
                     §§push(§§pop().boosterpackVo);
                     if(!_loc2_)
                     {
                        §§push(§§pop().currencyType);
                        if(_loc3_ || _loc3_)
                        {
                           §§push(ServerResConst.RESOURCE_REALCURRENCY);
                           if(_loc3_ || Boolean(this))
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(_loc3_ || _loc2_)
                                 {
                                    dispatchEvent(new Event(ImprovementStoreDataGrid.OPEN_CURRENCY_REAL,true,true));
                                    if(_loc2_ && _loc2_)
                                    {
                                       dispatchEvent(new Event(ImprovementStoreDataGrid.OPEN_CURRENCY_VIRTUAL,true,true));
                                       addr00bb:
                                       if(_loc2_ && _loc3_)
                                       {
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 addr00b2:
                                 addr00ad:
                                 addr00aa:
                                 addr00a7:
                                 if(this._data.boosterpackVo.currencyType == ServerResConst.RESOURCE_VIRTUALCURRENCY)
                                 {
                                    if(_loc3_)
                                    {
                                       §§goto(addr00bb);
                                    }
                                 }
                              }
                              §§goto(addr00fb);
                           }
                           §§goto(addr00b2);
                        }
                        §§goto(addr00ad);
                     }
                     §§goto(addr00aa);
                  }
                  §§goto(addr00a7);
               }
               §§goto(addr00bb);
            }
            else
            {
               dispatchEvent(new Event(ImprovementStoreDataGrid.BUY_PACK,true,true));
            }
            addr00fb:
            return;
         }
         §§goto(addr0029);
      }
      
      private function handleSkip(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            dispatchEvent(new Event(SKIP_ANIMATION,true));
         }
      }
      
      public function ShowBuyButton() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(this.buyButton);
            if(!_loc3_)
            {
               if(§§pop().hasEventListener(MouseEvent.CLICK))
               {
                  if(_loc2_)
                  {
                     §§push(this.buyButton);
                     if(_loc2_ || _loc1_)
                     {
                        addr0041:
                        §§pop().removeEventListener(MouseEvent.CLICK,this.handleSkip);
                        if(!_loc3_)
                        {
                           §§goto(addr0053);
                        }
                        §§goto(addr0137);
                     }
                     §§goto(addr011f);
                  }
                  §§goto(addr017c);
               }
               addr0053:
               this._showingBuyButton = true;
               if(_loc2_ || Boolean(this))
               {
                  this.buyAgainLabel.text = LocaUtils.getString("rcl.booklayer.hipStore","rcl.booklayer.hipStore.buyAgain");
                  if(!_loc3_)
                  {
                     addr007d:
                     §§push(this.buyButton);
                     if(!(_loc3_ && _loc1_))
                     {
                        §§push(this._hasEnoughResources);
                        if(_loc2_ || Boolean(this))
                        {
                           §§push(!§§pop());
                           if(!(_loc3_ && _loc1_))
                           {
                              §§pop().showPlus = §§pop();
                              if(!_loc3_)
                              {
                                 addr00b5:
                                 §§push(this.buyButton);
                                 if(!_loc3_)
                                 {
                                    §§push(this._data);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§push(§§pop().boosterpackVo);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop().currencyType);
                                          if(!(_loc3_ && Boolean(this)))
                                          {
                                             §§push(ServerResConst.RESOURCE_REALCURRENCY);
                                             if(_loc2_)
                                             {
                                                addr00fe:
                                                §§pop().useConfirmation = §§pop() == §§pop();
                                                if(!(_loc3_ && _loc1_))
                                                {
                                                   §§push(this.buyButton);
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      addr011f:
                                                      §§pop().priceToConfirm = Math.abs(this._data.boosterpackVo.defaultCostAmount);
                                                      if(_loc2_)
                                                      {
                                                         addr0137:
                                                         §§push(this.buyButton);
                                                         if(!(_loc3_ && Boolean(this)))
                                                         {
                                                            addr0157:
                                                            addr0152:
                                                            addr014f:
                                                            addr014c:
                                                            if(this._data.boosterpackVo.currencyType == ServerResConst.RESOURCE_REALCURRENCY)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  addr0160:
                                                                  §§push("layer_rc_icon");
                                                                  if(_loc2_)
                                                                  {
                                                                  }
                                                                  addr0174:
                                                                  §§pop().imageNameRight = §§pop();
                                                                  if(!_loc3_)
                                                                  {
                                                                     addr017c:
                                                                     §§push(this.buyButton);
                                                                     if(_loc2_ || _loc3_)
                                                                     {
                                                                        addr018d:
                                                                        §§pop().iconRight.visible = this.buyButton.iconRight.includeInLayout = true;
                                                                        if(_loc2_ || _loc3_)
                                                                        {
                                                                           addr01ae:
                                                                           §§push(this.buyButton);
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr01d8:
                                                                              §§pop().label = Math.abs(this._data.boosterpackVo.defaultCostAmount) + "";
                                                                              §§goto(addr01c5);
                                                                           }
                                                                           §§goto(addr01ec);
                                                                        }
                                                                        §§goto(addr01e8);
                                                                     }
                                                                     addr01c5:
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        addr01ec:
                                                                        this.buyButton.addEventListener(MouseEvent.CLICK,this.handleBuy);
                                                                        addr01e8:
                                                                     }
                                                                     §§goto(addr01f9);
                                                                  }
                                                                  §§goto(addr01ae);
                                                               }
                                                               §§goto(addr018d);
                                                            }
                                                            else
                                                            {
                                                               §§push("layer_cc_icon");
                                                               if(!_loc3_)
                                                               {
                                                                  §§goto(addr0174);
                                                               }
                                                            }
                                                            §§goto(addr01d8);
                                                         }
                                                         §§goto(addr01ec);
                                                      }
                                                      §§goto(addr01f9);
                                                   }
                                                   §§goto(addr01c5);
                                                }
                                                §§goto(addr017c);
                                             }
                                             §§goto(addr0157);
                                          }
                                          §§goto(addr0152);
                                       }
                                       §§goto(addr014f);
                                    }
                                    §§goto(addr014c);
                                 }
                                 §§goto(addr0160);
                              }
                              §§goto(addr01ae);
                           }
                        }
                        §§goto(addr00fe);
                     }
                     §§goto(addr01ec);
                  }
                  §§goto(addr00b5);
               }
               addr01f9:
               return;
            }
            §§goto(addr0041);
         }
         §§goto(addr007d);
      }
      
      public function hasEnoughResources(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._resourcesChanged = true;
            if(!(_loc2_ && param1))
            {
               this._hasEnoughResources = param1;
               if(_loc3_)
               {
                  addr0047:
                  this.commitProperties();
               }
               return;
            }
         }
         §§goto(addr0047);
      }
      
      public function enableScrolling(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.itemList.enabled = param1;
         }
      }
      
      public function scrollToNextPage() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && _loc2_))
         {
            this._currentPage = this.itemList.pageIndex;
            if(!(_loc3_ && Boolean(this)))
            {
               var _loc1_:* = this;
               §§push(_loc1_._currentPage);
               if(!_loc3_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc2_:* = §§pop();
               if(!_loc3_)
               {
                  _loc1_._currentPage = _loc2_;
               }
               if(!_loc3_)
               {
                  this.pageLabel.text = LocaUtils.getString("rcl.booklayer.hipStore","rcl.booklayer.hipStore.page",[this._currentPage + 1,this.itemList.numPages + 1]);
                  §§goto(addr0063);
               }
               §§goto(addr00a2);
            }
         }
         addr0063:
         if(!(_loc3_ && _loc2_))
         {
            addr00a2:
            this.itemList.scrollToPage(this._currentPage);
         }
      }
      
      public function get hasNextPage() : Boolean
      {
         return this._currentPage < this.itemList.numPages;
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._currentPage = -1;
            if(!_loc2_)
            {
               this.itemList.hscrollerBar.addEventListener(FlexEvent.UPDATE_COMPLETE,this.scrollChangeHandler);
               if(_loc3_ || _loc2_)
               {
                  this.storeFlavourText.text = LocaUtils.getString("rcl.booklayer.hipStore","rcl.booklayer.hipStore.flavour");
                  if(_loc3_)
                  {
                     addr0072:
                     this.yourRewardsLabel.text = LocaUtils.getString("rcl.booklayer.hipStore","rcl.booklayer.hipStore.rewards.capital");
                  }
                  return;
               }
               addr0021:
            }
            §§goto(addr0072);
         }
         §§goto(addr0021);
      }
      
      private function scrollChangeHandler(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(this._currentPage != this.itemList.pageIndex)
            {
               if(_loc2_)
               {
                  this._currentPage = this.itemList.pageIndex;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr005b:
                     this.pageLabel.text = LocaUtils.getString("rcl.booklayer.hipStore","rcl.booklayer.hipStore.page",[this._currentPage + 1,this.itemList.numPages + 1]);
                  }
                  §§goto(addr0080);
               }
               §§goto(addr005b);
            }
         }
         addr0080:
      }
      
      private function onItemAnimationLoaded(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.itemAnimation.removeEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.onItemAnimationLoaded);
            if(!(_loc2_ && _loc3_))
            {
               this._itemAnimationClip = new BitmapClip(this.itemAnimation.movieClip as MovieClip,"improvementStore_pack_" + this._data.boosterpackVo.gfxId,12);
               if(_loc3_ || _loc3_)
               {
                  if(this._autoStartItemAnimation)
                  {
                     if(!_loc2_)
                     {
                        addr0094:
                        this.startItemAnimation();
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0094);
      }
      
      public function startItemAnimation() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._autoStartItemAnimation = true;
            if(_loc2_ || _loc1_)
            {
               §§push(this._itemAnimationClip);
               if(!(_loc3_ && Boolean(this)))
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        this.itemIcon.visible = false;
                        if(!_loc3_)
                        {
                           addr0056:
                           §§push(this.itemAnimation);
                           if(_loc2_ || _loc2_)
                           {
                              §§pop().removeChildren();
                              if(_loc2_)
                              {
                                 addr007e:
                                 §§push(this.itemAnimation);
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§pop().addChild(this._itemAnimationClip);
                                    if(!_loc3_)
                                    {
                                       addr00a0:
                                       var _temp_6:* = this.itemAnimation;
                                       var _loc1_:Boolean;
                                       this.itemAnimation.includeInLayout = _loc1_ = true;
                                       _temp_6.visible = _loc1_;
                                       if(_loc2_)
                                       {
                                          addr00b3:
                                          §§push(this._itemAnimationClip);
                                          if(!(_loc3_ && _loc1_))
                                          {
                                             §§pop().removeAfterPlay = true;
                                             if(!_loc3_)
                                             {
                                                addr00cd:
                                                §§push(this._itemAnimationClip);
                                                if(_loc2_ || _loc3_)
                                                {
                                                   §§pop().addEventListener(Event.REMOVED,this.RemoveItemAnimation);
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      addr0108:
                                                      this._itemAnimationClip.playOnce();
                                                      addr0104:
                                                   }
                                                   §§goto(addr010c);
                                                }
                                                §§goto(addr0108);
                                             }
                                             §§goto(addr0104);
                                          }
                                          §§goto(addr0108);
                                       }
                                       §§goto(addr0104);
                                    }
                                    §§goto(addr00cd);
                                 }
                                 §§goto(addr00a0);
                              }
                              §§goto(addr00cd);
                           }
                           §§goto(addr00a0);
                        }
                        §§goto(addr0104);
                     }
                     §§goto(addr0056);
                  }
                  addr010c:
                  return;
               }
               §§goto(addr0108);
            }
            §§goto(addr00b3);
         }
         §§goto(addr007e);
      }
      
      public function RemoveItemAnimation(param1:Event) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            §§push(this.itemIcon);
            if(!(_loc4_ && Boolean(param1)))
            {
               §§pop().visible = true;
               if(_loc3_ || Boolean(param1))
               {
                  §§goto(addr0049);
               }
               §§goto(addr007a);
            }
            addr0049:
            §§goto(addr0045);
         }
         addr0045:
         §§push(this.itemIcon);
         §§push("improvementPackUnwrapped_");
         if(_loc3_)
         {
            §§push(§§pop() + this._data.boosterpackVo.gfxId);
         }
         §§pop().dynaBmpSourceName = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            addr007a:
            this.itemAnimation.visible = this.itemAnimation.includeInLayout = false;
         }
      }
      
      private function _ImprovementStoreAnimationGrid_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.width = 675;
            if(_loc3_ || _loc3_)
            {
               _loc1_.top = -11;
               if(_loc3_)
               {
                  _loc1_.paddingLeft = 14;
                  if(!_loc2_)
                  {
                     _loc1_.paddingRight = 6;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.percentHeight = 100;
                        addr005c:
                        if(!_loc2_)
                        {
                           _loc1_.gap = 0;
                           if(!(_loc2_ && _loc3_))
                           {
                              _loc1_.verticalAlign = "top";
                              if(_loc3_ || _loc3_)
                              {
                                 _loc1_.horizontalAlign = "center";
                                 if(_loc3_)
                                 {
                                    _loc1_.horizontalCenter = 0;
                                    if(!_loc2_)
                                    {
                                       addr00b6:
                                       _loc1_.mxmlContent = [this._ImprovementStoreAnimationGrid_VGroup2_c(),this._ImprovementStoreAnimationGrid_HGroup1_c()];
                                       if(_loc3_)
                                       {
                                          §§goto(addr00cc);
                                       }
                                       §§goto(addr00e0);
                                    }
                                    §§goto(addr00cc);
                                 }
                                 §§goto(addr00e0);
                              }
                              §§goto(addr00b6);
                           }
                           addr00cc:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 addr00e0:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00e4);
                        }
                        §§goto(addr00e0);
                     }
                     addr00e4:
                     return _loc1_;
                  }
                  §§goto(addr00b6);
               }
               §§goto(addr00cc);
            }
            §§goto(addr00b6);
         }
         §§goto(addr005c);
      }
      
      private function _ImprovementStoreAnimationGrid_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.height = 35;
            if(!_loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_)
               {
                  addr0057:
                  _loc1_.mxmlContent = [this._ImprovementStoreAnimationGrid_LocaLabel1_i()];
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc2_)
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
         }
         §§goto(addr0057);
      }
      
      private function _ImprovementStoreAnimationGrid_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || _loc2_)
         {
            _loc1_.text = "DEV: Some explanation text here";
            if(_loc2_ || _loc3_)
            {
               §§goto(addr003b);
            }
            §§goto(addr0079);
         }
         addr003b:
         _loc1_.maxDisplayedLines = 2;
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.styleName = "flavorText";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.maxWidth = 675;
               if(!_loc3_)
               {
                  addr0079:
                  _loc1_.setStyle("textAlign","center");
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.id = "storeFlavourText";
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && Boolean(_loc1_)))
                           {
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr00c4:
                                 this.storeFlavourText = _loc1_;
                                 if(!_loc3_)
                                 {
                                    addr00ce:
                                    BindingManager.executeBindings(this,"storeFlavourText",this.storeFlavourText);
                                 }
                              }
                           }
                           §§goto(addr00db);
                        }
                        §§goto(addr00c4);
                     }
                     §§goto(addr00ce);
                  }
               }
               §§goto(addr00c4);
            }
         }
         addr00db:
         return _loc1_;
      }
      
      private function _ImprovementStoreAnimationGrid_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.mxmlContent = [this._ImprovementStoreAnimationGrid_VGroup3_c(),this._ImprovementStoreAnimationGrid_Group3_c()];
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr006a:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr006a);
      }
      
      private function _ImprovementStoreAnimationGrid_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.horizontalAlign = "center";
            if(_loc2_)
            {
               _loc1_.gap = 0;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.mxmlContent = [this._ImprovementStoreAnimationGrid_Group2_c(),this._ImprovementStoreAnimationGrid_VGroup4_c(),this._ImprovementStoreAnimationGrid_MultistateButton1_i()];
                  if(_loc2_ || _loc3_)
                  {
                     addr0079:
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(this))
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
      
      private function _ImprovementStoreAnimationGrid_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.width = 202;
            if(_loc3_ || _loc3_)
            {
               _loc1_.height = 195;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.mxmlContent = [this._ImprovementStoreAnimationGrid_BriskImageDynaLib1_i(),this._ImprovementStoreAnimationGrid_BriskImageDynaLib2_i(),this._ImprovementStoreAnimationGrid_BriskMCDynaLib1_i(),this._ImprovementStoreAnimationGrid_BriskImageDynaLib3_i()];
                  if(_loc3_)
                  {
                     addr0087:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0087);
      }
      
      private function _ImprovementStoreAnimationGrid_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.width = 202;
            if(!(_loc3_ && _loc3_))
            {
               addr0031:
               _loc1_.height = 188;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.dynaLibName = "gui_popups_paperPopup";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.id = "itemBackground";
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr0075:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(this))
                           {
                              _loc1_.document = this;
                              if(!_loc3_)
                              {
                                 addr009d:
                                 this.itemBackground = _loc1_;
                                 if(_loc2_)
                                 {
                                    addr00a7:
                                    BindingManager.executeBindings(this,"itemBackground",this.itemBackground);
                                 }
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr00a7);
                  }
               }
               §§goto(addr009d);
            }
            §§goto(addr0075);
         }
         §§goto(addr0031);
      }
      
      private function _ImprovementStoreAnimationGrid_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_improvementStore";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.horizontalCenter = 0;
               if(_loc3_)
               {
                  _loc1_.verticalCenter = -4;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0066:
                     _loc1_.id = "itemIcon";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              §§goto(addr008a);
                           }
                           §§goto(addr009d);
                        }
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr009d);
               }
               addr008a:
               _loc1_.document = this;
               if(!_loc2_)
               {
                  addr0093:
                  this.itemIcon = _loc1_;
                  if(!_loc2_)
                  {
                     addr009d:
                     BindingManager.executeBindings(this,"itemIcon",this.itemIcon);
                  }
               }
               return _loc1_;
            }
            §§goto(addr0093);
         }
         §§goto(addr0066);
      }
      
      private function _ImprovementStoreAnimationGrid_BriskMCDynaLib1_i() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!_loc2_)
         {
            _loc1_.left = 101;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.top = 10;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.dynaLibName = "gui_popups_improvementStore";
                  if(!_loc2_)
                  {
                     _loc1_.id = "itemAnimation";
                     if(_loc3_ || Boolean(this))
                     {
                        addr006c:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              addr008c:
                              _loc1_.document = this;
                              if(_loc3_ || _loc3_)
                              {
                                 §§goto(addr009d);
                              }
                           }
                           §§goto(addr00a7);
                        }
                     }
                     §§goto(addr009d);
                  }
                  §§goto(addr008c);
               }
               §§goto(addr006c);
            }
            addr009d:
            this.itemAnimation = _loc1_;
            if(_loc3_)
            {
               addr00a7:
               BindingManager.executeBindings(this,"itemAnimation",this.itemAnimation);
            }
            return _loc1_;
         }
         §§goto(addr00a7);
      }
      
      private function _ImprovementStoreAnimationGrid_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.top = -18;
            if(_loc3_)
            {
               _loc1_.left = -11;
               if(!_loc2_)
               {
                  _loc1_.dynaLibName = "gui_popups_paperPopup";
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.dynaBmpSourceName = "improvement_shop_sparkle_big";
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.visible = false;
                        if(_loc3_ || Boolean(this))
                        {
                           addr0078:
                           _loc1_.includeInLayout = false;
                           if(_loc3_)
                           {
                              _loc1_.id = "specialIcon";
                              if(_loc3_)
                              {
                                 addr008c:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc3_)
                                    {
                                       _loc1_.document = this;
                                       if(!_loc2_)
                                       {
                                          §§goto(addr00ad);
                                       }
                                    }
                                    §§goto(addr00bf);
                                 }
                              }
                              addr00ad:
                              this.specialIcon = _loc1_;
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr00bf:
                                 BindingManager.executeBindings(this,"specialIcon",this.specialIcon);
                              }
                              return _loc1_;
                           }
                        }
                        §§goto(addr008c);
                     }
                  }
               }
               §§goto(addr0078);
            }
            §§goto(addr00bf);
         }
         §§goto(addr0078);
      }
      
      private function _ImprovementStoreAnimationGrid_VGroup4_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.height = 55;
            if(!_loc2_)
            {
               _loc1_.paddingTop = 10;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.verticalAlign = "middle";
                  if(!_loc2_)
                  {
                     addr006a:
                     _loc1_.mxmlContent = [this._ImprovementStoreAnimationGrid_LocaLabel2_i()];
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr008e:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0092);
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr0092);
               }
            }
            §§goto(addr006a);
         }
         addr0092:
         return _loc1_;
      }
      
      private function _ImprovementStoreAnimationGrid_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.text = "";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.maxWidth = 180;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr0046:
                  _loc1_.width = 180;
                  if(_loc3_)
                  {
                     _loc1_.maxDisplayedLines = 2;
                     addr0051:
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.styleName = "improvementStoreDescription";
                        if(_loc3_)
                        {
                           addr007a:
                           _loc1_.setStyle("textAlign","center");
                           if(_loc3_)
                           {
                              §§goto(addr0088);
                           }
                           §§goto(addr00b2);
                        }
                        addr0088:
                        _loc1_.id = "buyAgainLabel";
                        if(_loc3_ || Boolean(this))
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr00b2:
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    addr00bb:
                                    this.buyAgainLabel = _loc1_;
                                    if(_loc3_)
                                    {
                                       addr00c5:
                                       BindingManager.executeBindings(this,"buyAgainLabel",this.buyAgainLabel);
                                    }
                                 }
                                 §§goto(addr00d2);
                              }
                              §§goto(addr00c5);
                           }
                           §§goto(addr00bb);
                        }
                        addr00d2:
                        return _loc1_;
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr00bb);
               }
               §§goto(addr0051);
            }
            §§goto(addr0046);
         }
         §§goto(addr00bb);
      }
      
      private function _ImprovementStoreAnimationGrid_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_)
         {
            _loc1_.libNameRight = "gui_resources_icons";
            if(_loc3_ || Boolean(this))
            {
               addr0036:
               _loc1_.label = "";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.width = 180;
                  if(!(_loc2_ && _loc3_))
                  {
                     addr0068:
                     _loc1_.horizontalCenter = 0;
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.id = "buyButton";
                        if(_loc3_ || _loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 §§goto(addr00a5);
                              }
                              §§goto(addr00c0);
                           }
                           §§goto(addr00b6);
                        }
                     }
                     addr00a5:
                     _loc1_.document = this;
                     if(_loc3_ || _loc3_)
                     {
                        addr00b6:
                        this.buyButton = _loc1_;
                        if(!_loc2_)
                        {
                           addr00c0:
                           BindingManager.executeBindings(this,"buyButton",this.buyButton);
                        }
                     }
                     §§goto(addr00cd);
                  }
                  addr00cd:
                  return _loc1_;
               }
               §§goto(addr0068);
            }
            §§goto(addr00a5);
         }
         §§goto(addr0036);
      }
      
      private function _ImprovementStoreAnimationGrid_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.mxmlContent = [this._ImprovementStoreAnimationGrid_VScaleThreeComponent1_c(),this._ImprovementStoreAnimationGrid_VGroup5_c()];
            if(!_loc2_)
            {
               addr0047:
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
         §§goto(addr0047);
      }
      
      private function _ImprovementStoreAnimationGrid_VScaleThreeComponent1_c() : VScaleThreeComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VScaleThreeComponent = new VScaleThreeComponent();
         if(_loc2_)
         {
            _loc1_.top = 0;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.left = 0;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.width = 472;
                  if(_loc2_)
                  {
                     _loc1_.height = 315;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.dynaLibName = "gui_popups_paperPopup";
                        if(_loc2_)
                        {
                           _loc1_.dynaBmpSourceNameTop = "improvement_shop_item_description_background_top";
                           if(_loc2_)
                           {
                              _loc1_.dynaBmpSourceNameMiddle = "improvement_shop_item_description_background_middle";
                              addr0089:
                              if(_loc2_ || Boolean(this))
                              {
                                 addr00aa:
                                 _loc1_.dynaBmpSourceNameBottom = "improvement_shop_item_description_background_bottom";
                                 if(!_loc3_)
                                 {
                                    if(!_loc1_.document)
                                    {
                                       if(!_loc3_)
                                       {
                                          addr00c3:
                                          _loc1_.document = this;
                                       }
                                    }
                                    §§goto(addr00c7);
                                 }
                              }
                              §§goto(addr00c3);
                           }
                        }
                        addr00c7:
                        return _loc1_;
                     }
                  }
                  §§goto(addr0089);
               }
               §§goto(addr00aa);
            }
            §§goto(addr00c3);
         }
         §§goto(addr00aa);
      }
      
      private function _ImprovementStoreAnimationGrid_VGroup5_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.top = 0;
            if(_loc2_)
            {
               _loc1_.left = 0;
               if(_loc2_)
               {
                  _loc1_.width = 472;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0059:
                     _loc1_.height = 315;
                     if(_loc2_)
                     {
                        §§goto(addr0064);
                     }
                     §§goto(addr0076);
                  }
                  addr0064:
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0076:
                     _loc1_.paddingBottom = 15;
                     if(_loc2_)
                     {
                        _loc1_.mxmlContent = [this._ImprovementStoreAnimationGrid_Group4_c(),this._ImprovementStoreAnimationGrid_Group5_c(),this._ImprovementStoreAnimationGrid_LocaLabel4_i()];
                        if(!(_loc3_ && _loc2_))
                        {
                           §§goto(addr00b0);
                        }
                        §§goto(addr00bc);
                     }
                  }
                  addr00b0:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr00bc:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0059);
         }
         §§goto(addr0076);
      }
      
      private function _ImprovementStoreAnimationGrid_Group4_c() : Group
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
               _loc1_.height = 45;
               if(_loc2_ || Boolean(this))
               {
                  addr0054:
                  _loc1_.mxmlContent = [this._ImprovementStoreAnimationGrid_Rect1_c(),this._ImprovementStoreAnimationGrid_HGroup2_c()];
                  if(_loc2_ || _loc2_)
                  {
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
               }
               §§goto(addr007e);
            }
            §§goto(addr0054);
         }
         §§goto(addr007e);
      }
      
      private function _ImprovementStoreAnimationGrid_Rect1_c() : Rect
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Rect = new Rect();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.left = 10;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.right = 10;
               if(!_loc2_)
               {
                  _loc1_.top = 10;
                  if(_loc3_)
                  {
                     addr0051:
                     _loc1_.bottomLeftRadiusX = 10;
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.bottomLeftRadiusY = 30;
                        if(!_loc2_)
                        {
                           §§goto(addr006f);
                        }
                        §§goto(addr0133);
                     }
                     §§goto(addr00ea);
                  }
                  §§goto(addr00bf);
               }
               §§goto(addr0051);
            }
            addr006f:
            _loc1_.bottomRightRadiusX = 10;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.bottomRightRadiusY = 30;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.topLeftRadiusX = 10;
                  if(!_loc2_)
                  {
                     §§goto(addr00ac);
                  }
                  §§goto(addr0133);
               }
               §§goto(addr00ea);
            }
            addr00ac:
            _loc1_.topLeftRadiusY = 30;
            if(_loc3_ || _loc2_)
            {
               addr00bf:
               _loc1_.topRightRadiusX = 10;
               if(_loc3_)
               {
                  _loc1_.topRightRadiusY = 30;
                  if(_loc3_)
                  {
                     addr00d5:
                     _loc1_.percentHeight = 100;
                     if(_loc3_)
                     {
                        _loc1_.minHeight = 35;
                        if(!_loc2_)
                        {
                           addr00ea:
                           _loc1_.maxHeight = 35;
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              _loc1_.fill = this._ImprovementStoreAnimationGrid_RadialGradient1_c();
                              if(!_loc2_)
                              {
                                 _loc1_.filters = [this._ImprovementStoreAnimationGrid_DropShadowFilter1_c()];
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr0133:
                                    _loc1_.initialized(this,null);
                                 }
                                 §§goto(addr013a);
                              }
                           }
                           §§goto(addr0133);
                        }
                        §§goto(addr013a);
                     }
                     §§goto(addr00ea);
                  }
                  §§goto(addr013a);
               }
               §§goto(addr00d5);
            }
            addr013a:
            return _loc1_;
         }
         §§goto(addr00d5);
      }
      
      private function _ImprovementStoreAnimationGrid_RadialGradient1_c() : RadialGradient
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:RadialGradient = new RadialGradient();
         if(!_loc3_)
         {
            _loc1_.entries = [this._ImprovementStoreAnimationGrid_GradientEntry1_c()];
         }
         return _loc1_;
      }
      
      private function _ImprovementStoreAnimationGrid_GradientEntry1_c() : GradientEntry
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:GradientEntry = new GradientEntry();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.color = 165328;
            if(!_loc2_)
            {
               _loc1_.ratio = 0.5;
               if(_loc3_)
               {
                  addr004e:
                  _loc1_.alpha = 0.45;
               }
               return _loc1_;
            }
         }
         §§goto(addr004e);
      }
      
      private function _ImprovementStoreAnimationGrid_DropShadowFilter1_c() : DropShadowFilter
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.distance = 0;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.blurX = 3;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.blurY = 3;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.color = 165328;
                     if(_loc2_)
                     {
                        addr0089:
                        _loc1_.alpha = 0.45;
                     }
                  }
                  §§goto(addr008f);
               }
               §§goto(addr0089);
            }
         }
         addr008f:
         return _loc1_;
      }
      
      private function _ImprovementStoreAnimationGrid_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.paddingLeft = 18;
               if(_loc3_)
               {
                  addr0053:
                  _loc1_.paddingRight = 18;
                  if(_loc3_)
                  {
                     addr005e:
                     _loc1_.mxmlContent = [this._ImprovementStoreAnimationGrid_LocaLabel3_i()];
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr007a:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr007e);
                     }
                     §§goto(addr007a);
                  }
               }
               addr007e:
               return _loc1_;
            }
            §§goto(addr0053);
         }
         §§goto(addr005e);
      }
      
      private function _ImprovementStoreAnimationGrid_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc2_)
         {
            _loc1_.styleName = "StatusBarStylePadding";
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_ || Boolean(this))
               {
                  addr0045:
                  _loc1_.maxDisplayedLines = 1;
                  if(_loc3_)
                  {
                     _loc1_.text = "";
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.setStyle("fontSize",13);
                        if(_loc3_ || Boolean(this))
                        {
                           _loc1_.setStyle("paddingTop",24);
                           if(!_loc2_)
                           {
                              _loc1_.setStyle("textAlign","center");
                              if(!_loc2_)
                              {
                                 addr00a1:
                                 _loc1_.id = "yourRewardsLabel";
                                 if(!_loc2_)
                                 {
                                    if(!_loc1_.document)
                                    {
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          addr00cd:
                                          _loc1_.document = this;
                                          if(_loc3_ || _loc2_)
                                          {
                                             §§goto(addr00de);
                                          }
                                       }
                                       §§goto(addr00e8);
                                    }
                                 }
                              }
                              addr00de:
                              this.yourRewardsLabel = _loc1_;
                              if(!_loc2_)
                              {
                                 addr00e8:
                                 BindingManager.executeBindings(this,"yourRewardsLabel",this.yourRewardsLabel);
                              }
                              §§goto(addr00f5);
                           }
                           §§goto(addr00a1);
                        }
                        §§goto(addr00e8);
                     }
                     §§goto(addr00cd);
                  }
                  §§goto(addr00e8);
               }
               addr00f5:
               return _loc1_;
            }
            §§goto(addr00a1);
         }
         §§goto(addr0045);
      }
      
      private function _ImprovementStoreAnimationGrid_Group5_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.mxmlContent = [this._ImprovementStoreAnimationGrid_ExternalScrollableList1_i(),this._ImprovementStoreAnimationGrid_UiInfolayerAlignmentLine1_i(),this._ImprovementStoreAnimationGrid_UiInfolayerAlignmentLine2_i()];
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr0056:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0056);
      }
      
      private function _ImprovementStoreAnimationGrid_ExternalScrollableList1_i() : ExternalScrollableList
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ExternalScrollableList = new ExternalScrollableList();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.itemRenderer = this._ImprovementStoreAnimationGrid_ClassFactory1_c();
            if(_loc3_ || _loc2_)
            {
               _loc1_.width = 448;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.height = 240;
                  if(!(_loc2_ && _loc3_))
                  {
                     addr0074:
                     _loc1_.setStyle("skinClass",ImprovementStoreRewardSkinClass);
                     if(_loc3_)
                     {
                        addr0083:
                        _loc1_.id = "itemList";
                        if(_loc3_ || Boolean(this))
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 _loc1_.document = this;
                                 if(_loc3_)
                                 {
                                    §§goto(addr00bf);
                                 }
                              }
                              §§goto(addr00c9);
                           }
                           §§goto(addr00bf);
                        }
                     }
                     §§goto(addr00c9);
                  }
                  addr00bf:
                  this.itemList = _loc1_;
                  if(_loc3_)
                  {
                     addr00c9:
                     BindingManager.executeBindings(this,"itemList",this.itemList);
                  }
                  §§goto(addr00d6);
               }
               addr00d6:
               return _loc1_;
            }
            §§goto(addr0083);
         }
         §§goto(addr0074);
      }
      
      private function _ImprovementStoreAnimationGrid_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.generator = ImprovementStoreRewardItemRenderer;
         }
         return _loc1_;
      }
      
      private function _ImprovementStoreAnimationGrid_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         if(_loc2_)
         {
            _loc1_.left = 90;
            if(_loc2_)
            {
               _loc1_.top = 70;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.right = 90;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr005b:
                     _loc1_.lineId = 0;
                     if(_loc2_ || _loc2_)
                     {
                        addr006e:
                        _loc1_.id = "uiInfolayerAlignmentLineTop";
                        if(!_loc3_)
                        {
                           addr0079:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(this))
                              {
                                 addr0099:
                                 _loc1_.document = this;
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr00aa:
                                    this.uiInfolayerAlignmentLineTop = _loc1_;
                                    if(!_loc3_)
                                    {
                                       addr00b4:
                                       BindingManager.executeBindings(this,"uiInfolayerAlignmentLineTop",this.uiInfolayerAlignmentLineTop);
                                    }
                                    §§goto(addr00c1);
                                 }
                                 §§goto(addr00b4);
                              }
                              addr00c1:
                              return _loc1_;
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr0099);
                     }
                  }
                  §§goto(addr00b4);
               }
               §§goto(addr0079);
            }
            §§goto(addr005b);
         }
         §§goto(addr006e);
      }
      
      private function _ImprovementStoreAnimationGrid_UiInfolayerAlignmentLine2_i() : UiInfolayerAlignmentLine
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         if(_loc3_)
         {
            _loc1_.left = 90;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.top = 190;
               if(!_loc2_)
               {
                  _loc1_.right = 90;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.lineId = 1;
                     if(!_loc2_)
                     {
                        §§goto(addr006a);
                     }
                  }
                  §§goto(addr00a9);
               }
               addr006a:
               _loc1_.id = "uiInfolayerAlignmentLineBottom";
               if(!_loc2_)
               {
                  addr0075:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           §§goto(addr009f);
                        }
                        §§goto(addr00a9);
                     }
                  }
                  addr009f:
                  this.uiInfolayerAlignmentLineBottom = _loc1_;
                  if(_loc3_)
                  {
                     addr00a9:
                     BindingManager.executeBindings(this,"uiInfolayerAlignmentLineBottom",this.uiInfolayerAlignmentLineBottom);
                  }
                  §§goto(addr00b6);
               }
               addr00b6:
               return _loc1_;
            }
            §§goto(addr009f);
         }
         §§goto(addr0075);
      }
      
      private function _ImprovementStoreAnimationGrid_LocaLabel4_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "improvementStorePage";
            if(!_loc2_)
            {
               _loc1_.id = "pageLabel";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.document = this;
                        if(_loc3_ || Boolean(this))
                        {
                           addr0076:
                           this.pageLabel = _loc1_;
                           if(!_loc2_)
                           {
                              addr0080:
                              BindingManager.executeBindings(this,"pageLabel",this.pageLabel);
                           }
                        }
                        §§goto(addr008d);
                     }
                  }
               }
               §§goto(addr0076);
            }
            §§goto(addr0080);
         }
         addr008d:
         return _loc1_;
      }
      
      public function ___ImprovementStoreAnimationGrid_Group1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.creationCompleteHandler(param1);
         }
      }
      
      private function _ImprovementStoreAnimationGrid_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!(_loc2_ && _loc1_))
         {
            §§pop().§§slot[1] = [];
            if(_loc3_)
            {
               §§push(§§newactivation());
               if(_loc3_ || _loc2_)
               {
                  addr004c:
                  §§push(§§pop().§§slot[1]);
                  if(!_loc2_)
                  {
                     §§push(0);
                     if(!(_loc2_ && _loc3_))
                     {
                        §§pop()[§§pop()] = new Binding(this,function():uint
                        {
                           return UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM;
                        },null,"uiInfolayerAlignmentLineTop.alignment");
                        if(_loc3_ || _loc2_)
                        {
                           addr008e:
                           §§push(§§newactivation());
                           if(!_loc2_)
                           {
                              §§push(§§pop().§§slot[1]);
                              if(_loc3_ || _loc1_)
                              {
                                 addr00a6:
                                 §§pop()[1] = new Binding(this,function():uint
                                 {
                                    return UserInterfaceInfoLayerAlignLineVo.ALIGN_TOP;
                                 },null,"uiInfolayerAlignmentLineBottom.alignment");
                                 addr00ba:
                                 addr00b8:
                                 §§push(result);
                                 addr00a4:
                              }
                              return §§pop();
                           }
                           §§goto(addr00ba);
                        }
                        §§goto(addr00b8);
                     }
                     §§goto(addr00a6);
                  }
                  §§goto(addr00a4);
               }
               §§goto(addr00ba);
            }
            §§goto(addr008e);
         }
         §§goto(addr004c);
      }
      
      [Bindable(event="propertyChange")]
      public function get buyAgainLabel() : LocaLabel
      {
         return this._1351490918buyAgainLabel;
      }
      
      public function set buyAgainLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1351490918buyAgainLabel;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._1351490918buyAgainLabel = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyAgainLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr006e);
               }
            }
            addr007d:
            return;
         }
         §§goto(addr005e);
      }
      
      [Bindable(event="propertyChange")]
      public function get buyButton() : MultistateButton
      {
         return this._1271589544buyButton;
      }
      
      public function set buyButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1271589544buyButton;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1271589544buyButton = param1;
                  if(!_loc4_)
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0063:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0072);
                  }
               }
               §§goto(addr0063);
            }
            addr0072:
            return;
         }
         §§goto(addr0054);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemAnimation() : BriskMCDynaLib
      {
         return this._874936911itemAnimation;
      }
      
      public function set itemAnimation(param1:BriskMCDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._874936911itemAnimation;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._874936911itemAnimation = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr0066);
                  }
                  §§goto(addr0076);
               }
               addr0066:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr0076:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemAnimation",_loc2_,param1));
                  }
               }
               §§goto(addr0085);
            }
            addr0085:
            return;
         }
         §§goto(addr0066);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemBackground() : BriskImageDynaLib
      {
         return this._1295462561itemBackground;
      }
      
      public function set itemBackground(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1295462561itemBackground;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1295462561itemBackground = param1;
                  if(_loc3_)
                  {
                     addr0042:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0052:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemBackground",_loc2_,param1));
                        }
                     }
                     §§goto(addr0061);
                  }
                  §§goto(addr0052);
               }
            }
            addr0061:
            return;
         }
         §§goto(addr0042);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemIcon() : BriskImageDynaLib
      {
         return this._1177184812itemIcon;
      }
      
      public function set itemIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1177184812itemIcon;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._1177184812itemIcon = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0067:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr007f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemIcon",_loc2_,param1));
                        }
                     }
                     §§goto(addr008e);
                  }
               }
               §§goto(addr007f);
            }
            addr008e:
            return;
         }
         §§goto(addr0067);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemList() : ExternalScrollableList
      {
         return this._1177280081itemList;
      }
      
      public function set itemList(param1:ExternalScrollableList) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1177280081itemList;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1177280081itemList = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemList",_loc2_,param1));
                        }
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr0078);
               }
            }
            addr0087:
            return;
         }
         §§goto(addr0078);
      }
      
      [Bindable(event="propertyChange")]
      public function get pageLabel() : LocaLabel
      {
         return this._865758629pageLabel;
      }
      
      public function set pageLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._865758629pageLabel;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._865758629pageLabel = param1;
                  addr0047:
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr0074);
               }
            }
            addr0083:
            return;
         }
         §§goto(addr0047);
      }
      
      [Bindable(event="propertyChange")]
      public function get specialIcon() : BriskImageDynaLib
      {
         return this._872747822specialIcon;
      }
      
      public function set specialIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._872747822specialIcon;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._872747822specialIcon = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"specialIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0086);
               }
               §§goto(addr005f);
            }
            addr0086:
            return;
         }
         §§goto(addr005f);
      }
      
      [Bindable(event="propertyChange")]
      public function get storeFlavourText() : LocaLabel
      {
         return this._843932899storeFlavourText;
      }
      
      public function set storeFlavourText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._843932899storeFlavourText;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._843932899storeFlavourText = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0050:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"storeFlavourText",_loc2_,param1));
                        }
                     }
                     §§goto(addr005f);
                  }
                  §§goto(addr0050);
               }
            }
            addr005f:
            return;
         }
         §§goto(addr0050);
      }
      
      [Bindable(event="propertyChange")]
      public function get uiInfolayerAlignmentLineBottom() : UiInfolayerAlignmentLine
      {
         return this._1364472877uiInfolayerAlignmentLineBottom;
      }
      
      public function set uiInfolayerAlignmentLineBottom(param1:UiInfolayerAlignmentLine) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1364472877uiInfolayerAlignmentLineBottom;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1364472877uiInfolayerAlignmentLineBottom = param1;
                  addr003e:
                  if(!(_loc4_ && _loc3_))
                  {
                     §§goto(addr005c);
                  }
                  §§goto(addr006b);
               }
               addr005c:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr006b:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLineBottom",_loc2_,param1));
                  }
               }
               §§goto(addr007a);
            }
            addr007a:
            return;
         }
         §§goto(addr003e);
      }
      
      [Bindable(event="propertyChange")]
      public function get uiInfolayerAlignmentLineTop() : UiInfolayerAlignmentLine
      {
         return this._1457442643uiInfolayerAlignmentLineTop;
      }
      
      public function set uiInfolayerAlignmentLineTop(param1:UiInfolayerAlignmentLine) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1457442643uiInfolayerAlignmentLineTop;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._1457442643uiInfolayerAlignmentLineTop = param1;
                  if(_loc3_)
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLineTop",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0056);
            }
            addr007d:
            return;
         }
         §§goto(addr006e);
      }
      
      [Bindable(event="propertyChange")]
      public function get yourRewardsLabel() : LocaLabel
      {
         return this._1429398013yourRewardsLabel;
      }
      
      public function set yourRewardsLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1429398013yourRewardsLabel;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1429398013yourRewardsLabel = param1;
                  addr0040:
                  if(_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"yourRewardsLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0057);
            }
            addr007d:
            return;
         }
         §§goto(addr0040);
      }
   }
}

