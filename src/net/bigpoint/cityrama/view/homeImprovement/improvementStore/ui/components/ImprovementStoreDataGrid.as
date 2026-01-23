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
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementBoosterpackVo;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementStoreListVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.VScaleThreeComponent;
   import net.bigpoint.cityrama.view.homeImprovement.improvementStore.ui.components.skins.ImprovementStoreListSkin;
   import net.bigpoint.cityrama.view.homeImprovement.improvementStore.ui.components.vo.ImprovementStoreDataGridLayerVo;
   import net.bigpoint.cityrama.view.popup.ui.components.FeatureLockedScreen;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class ImprovementStoreDataGrid extends Group implements IBindingClient
   {
      
      public static const BUY_PACK:String = "BUY_PACK";
      
      public static const OPEN_CURRENCY_VIRTUAL:String = "OPEN_CURRENCY_VIRTUAL";
      
      public static const OPEN_CURRENCY_REAL:String = "OPEN_CURRENCY_REAL";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         BUY_PACK = "BUY_PACK";
         if(!(_loc2_ && _loc2_))
         {
            OPEN_CURRENCY_VIRTUAL = "OPEN_CURRENCY_VIRTUAL";
            if(_loc1_)
            {
               addr0043:
               OPEN_CURRENCY_REAL = "OPEN_CURRENCY_REAL";
            }
            §§goto(addr004c);
         }
         §§goto(addr0043);
      }
      addr004c:
      
      private var _724833207availableItemsHeadlineLabel:LocaLabel;
      
      private var _1271589544buyButton:MultistateButton;
      
      private var _1295462561itemBackground:BriskImageDynaLib;
      
      private var _56713611itemDescriptionLabel:LocaLabel;
      
      private var _1177184812itemIcon:BriskImageDynaLib;
      
      private var _1177280081itemList:List;
      
      private var _777691818itemNameLabel:LocaLabel;
      
      private var _2016210966lockedScreen:FeatureLockedScreen;
      
      private var _872747822specialIcon:BriskImageDynaLib;
      
      private var _843932899storeFlavourText:LocaLabel;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ImprovementStoreDataGridLayerVo;
      
      private var _isDirty:Boolean;
      
      private var _selectedIndex:int = 0;
      
      private var _selectedItem:ImprovementBoosterpackVo;
      
      private var _overrideBuyButton:Boolean = true;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ImprovementStoreDataGrid()
      {
         var bindings:Array;
         var watchers:Array;
         var target:Object;
         var i:uint;
         var watcherSetupUtilClass:Object;
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!(_loc3_ && _loc3_))
         {
            §§push(null);
            if(_loc4_ || _loc3_)
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc4_)
               {
                  §§push(§§newactivation());
                  if(_loc4_)
                  {
                     addr0049:
                     §§pop().§§slot[5] = null;
                     addr0048:
                     if(_loc4_ || Boolean(this))
                     {
                        this.mx_internal::_bindings = [];
                        if(_loc4_ || _loc1_)
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc4_ || _loc3_)
                           {
                              addr0083:
                              this.mx_internal::_bindingsByDestination = {};
                              if(!(_loc3_ && _loc2_))
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!_loc3_)
                                 {
                                    super();
                                    if(!_loc3_)
                                    {
                                       mx_internal::_document = this;
                                       if(!_loc3_)
                                       {
                                          addr00bb:
                                          §§push(§§newactivation());
                                          if(!_loc3_)
                                          {
                                             addr00c2:
                                             §§pop().§§slot[1] = this._ImprovementStoreDataGrid_bindingsSetup();
                                             if(!_loc3_)
                                             {
                                                §§push(§§newactivation());
                                                if(_loc4_ || _loc1_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(!_loc3_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc4_)
                                                      {
                                                         addr00f4:
                                                         §§pop().§§slot[3] = this;
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            addr0106:
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  addr0114:
                                                                  §§push(§§newactivation());
                                                                  if(_loc4_)
                                                                  {
                                                                     addr011c:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_homeImprovement_improvementStore_ui_components_ImprovementStoreDataGridWatcherSetupUtil");
                                                                     if(_loc4_)
                                                                     {
                                                                        addr0130:
                                                                        §§push(§§newactivation());
                                                                        if(!(_loc3_ && Boolean(this)))
                                                                        {
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           addr013f:
                                                                           if(_loc4_ || _loc3_)
                                                                           {
                                                                              addr016b:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return ImprovementStoreDataGrid[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc4_ || _loc3_)
                                                                              {
                                                                                 addr0191:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(_loc4_ || Boolean(this))
                                                                                 {
                                                                                    addr01c0:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!(_loc3_ && _loc3_))
                                                                                    {
                                                                                       addr01ee:
                                                                                       this.percentWidth = 100;
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr01f9:
                                                                                          this.percentHeight = 100;
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             this.mxmlContent = [this._ImprovementStoreDataGrid_VGroup1_c(),this._ImprovementStoreDataGrid_FeatureLockedScreen1_i()];
                                                                                             if(!(_loc3_ && _loc3_))
                                                                                             {
                                                                                                addr0221:
                                                                                                this.addEventListener("creationComplete",this.___ImprovementStoreDataGrid_Group1_creationComplete);
                                                                                                if(_loc4_ || Boolean(this))
                                                                                                {
                                                                                                   addr023d:
                                                                                                   i = 0;
                                                                                                   addr023b:
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
                                                                                                            break loop2;
                                                                                                         }
                                                                                                         Binding(bindings[i]).execute();
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(§§newactivation());
                                                                                                         if(!(_loc3_ && _loc1_))
                                                                                                         {
                                                                                                            §§push(§§pop().§§slot[4]);
                                                                                                            if(_loc4_ || _loc1_)
                                                                                                            {
                                                                                                               §§push(uint(§§pop() + 1));
                                                                                                               if(!(_loc4_ || _loc1_))
                                                                                                               {
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                            }
                                                                                                            §§push(§§newactivation());
                                                                                                            if(!(_loc3_ && _loc3_))
                                                                                                            {
                                                                                                               var _temp_30:* = §§pop();
                                                                                                               §§pop().§§slot[4] = _temp_30;
                                                                                                               if(_loc4_ || _loc2_)
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
                                                                                             addr02bc:
                                                                                          }
                                                                                          §§goto(addr023b);
                                                                                       }
                                                                                       §§goto(addr0221);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr02bc);
                                                                           }
                                                                           §§goto(addr01f9);
                                                                        }
                                                                        §§goto(addr023d);
                                                                     }
                                                                     §§goto(addr01ee);
                                                                  }
                                                                  §§goto(addr013f);
                                                               }
                                                               §§goto(addr01f9);
                                                            }
                                                            §§goto(addr016b);
                                                         }
                                                         §§goto(addr0191);
                                                      }
                                                      §§goto(addr023d);
                                                   }
                                                   §§goto(addr0114);
                                                }
                                                §§goto(addr00f4);
                                             }
                                             §§goto(addr01c0);
                                          }
                                          §§goto(addr011c);
                                       }
                                       §§goto(addr0130);
                                    }
                                 }
                                 §§goto(addr0106);
                              }
                              §§goto(addr00bb);
                           }
                           §§goto(addr0221);
                        }
                        §§goto(addr016b);
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr00c2);
               }
               §§goto(addr0106);
            }
            §§goto(addr0049);
         }
         §§goto(addr0048);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            ImprovementStoreDataGrid._watcherSetupUtil = param1;
         }
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
                  if(_loc2_ || _loc2_)
                  {
                     return;
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
            }
         }
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super.initialize();
         }
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.storeFlavourText.text = LocaUtils.getString("rcl.booklayer.hipStore","rcl.booklayer.hipStore.flavour");
            if(_loc2_ || Boolean(this))
            {
               addr0041:
               this.availableItemsHeadlineLabel.text = LocaUtils.getString("rcl.booklayer.hipStore","rcl.booklayer.hipStore.availablePacks.capital");
            }
            return;
         }
         §§goto(addr0041);
      }
      
      public function set data(param1:ImprovementStoreDataGridLayerVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(!(_loc2_ && Boolean(param1)))
               {
                  addr004a:
                  this._isDirty = true;
                  if(_loc3_)
                  {
                     §§goto(addr0054);
                  }
                  §§goto(addr005e);
               }
               addr0054:
               this._data = param1;
               if(!_loc2_)
               {
                  addr005e:
                  invalidateProperties();
               }
               §§goto(addr0063);
            }
            addr0063:
            return;
         }
         §§goto(addr004a);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc1_:ArrayCollection = null;
         var _loc2_:ImprovementStoreListVo = null;
         var _loc3_:ImprovementBoosterpackVo = null;
         if(!_loc7_)
         {
            §§push(Boolean(this._data));
            if(_loc6_)
            {
               var _temp_1:* = §§pop();
               §§push(_temp_1);
               if(_temp_1)
               {
                  if(_loc6_)
                  {
                     §§pop();
                     if(_loc6_ || Boolean(_loc1_))
                     {
                        §§goto(addr0057);
                     }
                     §§goto(addr0069);
                  }
                  §§goto(addr0056);
               }
            }
            addr0057:
            §§goto(addr004c);
         }
         addr004c:
         §§push(this._isDirty);
         if(_loc6_)
         {
            addr0056:
            §§push(§§pop());
         }
         if(§§pop())
         {
            if(_loc6_ || Boolean(_loc1_))
            {
               addr0069:
               this._isDirty = false;
            }
            _loc1_ = new ArrayCollection();
            for each(_loc3_ in this._data.improvementPacks)
            {
               _loc2_ = new ImprovementStoreListVo();
               if(!(_loc7_ && Boolean(_loc2_)))
               {
                  _loc2_.improvementPack = _loc3_;
                  if(_loc6_)
                  {
                     _loc2_.currencyType = _loc3_.currencyType;
                     if(!(_loc6_ || Boolean(this)))
                     {
                        continue;
                     }
                  }
               }
               _loc2_.price = _loc3_.defaultCostAmount;
               if(!(_loc7_ && Boolean(_loc1_)))
               {
                  _loc1_.addItem(_loc2_);
               }
            }
            if(_loc6_ || Boolean(_loc2_))
            {
               this.itemList.dataProvider = _loc1_;
               if(!_loc7_)
               {
                  this.selectItem(this._selectedIndex);
               }
            }
         }
         super.commitProperties();
      }
      
      public function locked(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this);
            var _loc2_:Boolean;
            this.mouseChildren = _loc2_ = false;
            §§pop().mouseEnabled = _loc2_;
            if(_loc4_)
            {
               addr0042:
               §§push(this.lockedScreen);
               if(!(_loc3_ && _loc2_))
               {
                  §§pop().includeInLayout = this.lockedScreen.visible = true;
                  if(!_loc3_)
                  {
                     addr0076:
                     this.lockedScreen.textLabel.text = LocaUtils.getString("rcl.booklayer.lockedFeature","rcl.booklayer.lockedFeature.improvementstore",[param1]);
                  }
                  §§goto(addr008a);
               }
               §§goto(addr0076);
            }
            addr008a:
            return;
         }
         §§goto(addr0042);
      }
      
      private function handleButtonClicked(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(this.itemList.selectedIndex == -1)
            {
               if(_loc2_ || _loc2_)
               {
                  throw new RamaCityError("There is no ImprovementPack to buy!");
               }
               addr007c:
               §§push(this._selectedItem);
               if(!_loc3_)
               {
                  §§push(§§pop().currencyType);
                  if(_loc2_ || _loc3_)
                  {
                     §§push(ServerResConst.RESOURCE_REALCURRENCY);
                     if(!_loc3_)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              dispatchEvent(new Event(OPEN_CURRENCY_REAL,true,true));
                              if(_loc2_ || _loc2_)
                              {
                              }
                           }
                        }
                        else
                        {
                           addr00ea:
                           addr00e5:
                           addr00e2:
                           if(this._selectedItem.currencyType == ServerResConst.RESOURCE_VIRTUALCURRENCY)
                           {
                              if(_loc2_)
                              {
                                 dispatchEvent(new Event(OPEN_CURRENCY_VIRTUAL,true,true));
                                 if(_loc3_ && _loc3_)
                                 {
                                 }
                              }
                           }
                        }
                        §§goto(addr012e);
                     }
                     §§goto(addr00ea);
                  }
                  §§goto(addr00e5);
               }
               §§goto(addr00e2);
            }
            else
            {
               this._selectedItem = this._data.improvementPacks[this.itemList.selectedIndex];
               if(_loc2_ || Boolean(param1))
               {
                  if(this.buyButton.showPlus)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        §§goto(addr007c);
                     }
                  }
                  else
                  {
                     dispatchEvent(new Event(BUY_PACK,true,true));
                  }
               }
            }
         }
         addr012e:
      }
      
      private function selectItem(param1:int) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_ || Boolean(param1))
         {
            §§push(this._data == null);
            if(_loc4_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               §§push(_temp_2);
               if(!_loc5_)
               {
                  if(!§§pop())
                  {
                     if(_loc4_)
                     {
                        §§pop();
                        if(_loc4_ || _loc3_)
                        {
                           addr004e:
                           §§push(param1);
                           if(!_loc5_)
                           {
                              §§push(§§pop() < 0);
                              if(!_loc5_)
                              {
                                 addr005e:
                                 var _temp_4:* = §§pop();
                                 addr005f:
                                 §§push(_temp_4);
                                 if(!_temp_4)
                                 {
                                    if(_loc4_)
                                    {
                                       addr0069:
                                       §§pop();
                                       if(!_loc5_)
                                       {
                                          addr007c:
                                          addr0071:
                                          if(param1 >= this.itemList.dataProvider.length)
                                          {
                                             if(_loc4_ || _loc3_)
                                             {
                                                addr008e:
                                                this.buyButton.enabled = false;
                                                if(_loc5_ && _loc3_)
                                                {
                                                   addr00b9:
                                                   this._selectedIndex = param1;
                                                   addr00be:
                                                   var _loc2_:ImprovementBoosterpackVo = (this.itemList.dataProvider[param1] as ImprovementStoreListVo).improvementPack;
                                                   if(!(_loc5_ && Boolean(param1)))
                                                   {
                                                      if(_loc2_.currencyType == ServerResConst.RESOURCE_REALCURRENCY)
                                                      {
                                                         if(_loc4_ || Boolean(this))
                                                         {
                                                            §§push(this.itemBackground);
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               §§push("improvement_shop_item_background_big_yellow");
                                                               if(_loc4_)
                                                               {
                                                                  §§pop().dynaBmpSourceName = §§pop();
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(this.specialIcon);
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(this.specialIcon);
                                                                        if(_loc4_ || Boolean(this))
                                                                        {
                                                                           §§push(true);
                                                                           if(_loc4_)
                                                                           {
                                                                              var _temp_11:* = §§pop();
                                                                              §§push(_temp_11);
                                                                              §§push(_temp_11);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 var _loc3_:* = §§pop();
                                                                                 if(!(_loc5_ && _loc3_))
                                                                                 {
                                                                                    §§pop().includeInLayout = §§pop();
                                                                                    if(_loc4_ || Boolean(param1))
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       if(_loc4_ || Boolean(param1))
                                                                                       {
                                                                                          if(_loc4_ || Boolean(param1))
                                                                                          {
                                                                                             §§pop().visible = §§pop();
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                addr01c9:
                                                                                                §§push(this.itemIcon);
                                                                                                §§push("improvementPack_");
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   §§push(§§pop() + _loc2_.gfxId);
                                                                                                }
                                                                                                §§pop().dynaBmpSourceName = §§pop();
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   §§goto(addr01e3);
                                                                                                }
                                                                                                §§goto(addr0300);
                                                                                             }
                                                                                             §§goto(addr0270);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr01c1:
                                                                                             §§pop().visible = §§pop();
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                §§goto(addr01c9);
                                                                                             }
                                                                                          }
                                                                                          addr01e3:
                                                                                          §§push(this.itemNameLabel);
                                                                                          §§push(LocaUtils);
                                                                                          §§push("rcl.booklayer.hipStore");
                                                                                          §§push("rcl.booklayer.hipStore.itemLabel.");
                                                                                          if(!(_loc5_ && Boolean(_loc2_)))
                                                                                          {
                                                                                             §§push(§§pop() + _loc2_.locaId);
                                                                                          }
                                                                                          §§pop().text = §§pop().getString(§§pop(),§§pop());
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             §§push(this.itemDescriptionLabel);
                                                                                             §§push(LocaUtils);
                                                                                             §§push("rcl.booklayer.hipStore");
                                                                                             §§push("rcl.booklayer.hipStore.itemContentLabel.");
                                                                                             if(_loc4_ || Boolean(this))
                                                                                             {
                                                                                                §§push(§§pop() + _loc2_.locaId);
                                                                                             }
                                                                                             §§pop().text = §§pop().getString(§§pop(),§§pop());
                                                                                             if(!(_loc5_ && Boolean(param1)))
                                                                                             {
                                                                                                §§goto(addr0241);
                                                                                             }
                                                                                             §§goto(addr0331);
                                                                                          }
                                                                                          §§goto(addr0241);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr01bf:
                                                                                       }
                                                                                       §§goto(addr01c1);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr01be:
                                                                                       §§push(_loc3_);
                                                                                    }
                                                                                    §§goto(addr01bf);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr01bc:
                                                                                    §§pop().includeInLayout = §§pop();
                                                                                 }
                                                                                 §§goto(addr01be);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr01bb:
                                                                                 _loc3_ = §§pop();
                                                                              }
                                                                              §§goto(addr01bc);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr01ba:
                                                                              var _temp_26:* = §§pop();
                                                                              §§push(_temp_26);
                                                                              §§push(_temp_26);
                                                                           }
                                                                           §§goto(addr01bb);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr01b9:
                                                                           §§push(false);
                                                                        }
                                                                        §§goto(addr01ba);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr01b5:
                                                                        §§push(this.specialIcon);
                                                                     }
                                                                     §§goto(addr01b9);
                                                                  }
                                                                  §§goto(addr0300);
                                                               }
                                                               else
                                                               {
                                                                  addr01a9:
                                                                  §§pop().dynaBmpSourceName = §§pop();
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr01b1:
                                                                     §§goto(addr01b5);
                                                                     §§push(this.specialIcon);
                                                                  }
                                                               }
                                                               addr0241:
                                                               §§push(this.buyButton);
                                                               if(_loc4_)
                                                               {
                                                                  §§push(this.getBuyButtonState(_loc2_));
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     if(_loc4_)
                                                                     {
                                                                        §§pop().showPlus = §§pop();
                                                                        if(_loc4_ || Boolean(_loc2_))
                                                                        {
                                                                           addr0270:
                                                                           §§push(this.buyButton);
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§push(Math.abs(_loc2_.defaultCostAmount) + "");
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§pop().label = §§pop();
                                                                                 if(_loc4_ || Boolean(this))
                                                                                 {
                                                                                    addr029e:
                                                                                    §§push(this.buyButton);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§goto(addr02a8);
                                                                                    }
                                                                                    §§goto(addr02d7);
                                                                                 }
                                                                                 §§goto(addr0300);
                                                                              }
                                                                              §§goto(addr02ef);
                                                                           }
                                                                           §§goto(addr0316);
                                                                        }
                                                                        §§goto(addr0331);
                                                                     }
                                                                  }
                                                                  §§goto(addr0320);
                                                               }
                                                               addr02a8:
                                                               §§push(_loc2_.currencyType);
                                                               if(_loc4_)
                                                               {
                                                                  §§push(ServerResConst.RESOURCE_REALCURRENCY);
                                                                  if(!(_loc5_ && Boolean(_loc2_)))
                                                                  {
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        if(!(_loc5_ && Boolean(this)))
                                                                        {
                                                                           addr02d7:
                                                                           §§push("layer_rc_icon");
                                                                           if(_loc4_ || Boolean(this))
                                                                           {
                                                                           }
                                                                           addr02ef:
                                                                           §§pop().imageNameRight = §§pop();
                                                                           if(_loc4_ || _loc3_)
                                                                           {
                                                                              addr0300:
                                                                              §§push(this.buyButton);
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr0320:
                                                                                 §§pop().useConfirmation = _loc2_.currencyType == ServerResConst.RESOURCE_REALCURRENCY;
                                                                                 §§goto(addr0316);
                                                                              }
                                                                              §§goto(addr0335);
                                                                           }
                                                                           §§goto(addr0331);
                                                                        }
                                                                        addr0316:
                                                                        §§goto(addr031f);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push("layer_cc_icon");
                                                                     }
                                                                     §§goto(addr02ef);
                                                                  }
                                                                  addr031f:
                                                                  §§goto(addr031a);
                                                               }
                                                               addr031a:
                                                               if(!(_loc5_ && Boolean(param1)))
                                                               {
                                                                  addr0335:
                                                                  this.buyButton.priceToConfirm = Math.abs(_loc2_.defaultCostAmount);
                                                                  addr0331:
                                                               }
                                                               return;
                                                            }
                                                            addr01a5:
                                                            §§push("improvement_shop_item_background_big_blue");
                                                            §§goto(addr01a9);
                                                         }
                                                         §§goto(addr01b1);
                                                      }
                                                      else
                                                      {
                                                         §§push(this.itemBackground);
                                                      }
                                                      §§goto(addr01a5);
                                                   }
                                                   §§goto(addr029e);
                                                }
                                             }
                                             return;
                                          }
                                          this.itemList.selectedIndex = param1;
                                          if(!_loc5_)
                                          {
                                             §§goto(addr00b9);
                                          }
                                          §§goto(addr00be);
                                       }
                                       §§goto(addr008e);
                                    }
                                 }
                              }
                              §§goto(addr007c);
                           }
                           §§goto(addr0071);
                        }
                        §§goto(addr00b9);
                     }
                  }
                  §§goto(addr005e);
               }
               §§goto(addr005f);
            }
            §§goto(addr0069);
         }
         §§goto(addr004e);
      }
      
      private function itemList_changeHandler(param1:IndexChangeEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.selectItem(param1.newIndex);
         }
      }
      
      public function get selectedItem() : ImprovementBoosterpackVo
      {
         return this._selectedItem;
      }
      
      public function enableBuyButton(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._overrideBuyButton = param1;
            if(_loc3_)
            {
               addr0022:
               this.selectItem(this._selectedIndex);
            }
            return;
         }
         §§goto(addr0022);
      }
      
      private function getBuyButtonState(param1:ImprovementBoosterpackVo) : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(this._overrideBuyButton);
            if(_loc2_)
            {
               §§push(§§pop());
               if(!_loc3_)
               {
                  §§goto(addr0026);
               }
               §§goto(addr0043);
            }
            addr0026:
            var _temp_1:* = §§pop();
            §§push(_temp_1);
            if(_temp_1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0043:
                  §§pop();
                  if(_loc2_ || Boolean(this))
                  {
                     addr005d:
                     if(param1.currencyType == ServerResConst.RESOURCE_REALCURRENCY)
                     {
                        addr006a:
                        §§push(this._data);
                        if(_loc2_)
                        {
                           §§goto(addr0093);
                        }
                        else
                        {
                           addr0084:
                           §§push(§§pop().virtualCurrency);
                        }
                        §§goto(addr0087);
                     }
                     else
                     {
                        §§push(this._data);
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr006a);
               }
            }
            addr0093:
            §§pop().realCurrency;
            return (_loc2_ ? §§pop() : §§pop()) >= Math.abs(param1.defaultCostAmount);
         }
         §§goto(addr005d);
      }
      
      private function _ImprovementStoreDataGrid_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || _loc2_)
         {
            _loc1_.width = 675;
            if(!(_loc3_ && _loc2_))
            {
               addr0039:
               _loc1_.top = -11;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.paddingLeft = 14;
                  if(!_loc3_)
                  {
                     _loc1_.paddingRight = 6;
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.percentHeight = 100;
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.gap = 0;
                           if(_loc2_ || Boolean(this))
                           {
                              _loc1_.verticalAlign = "top";
                              if(_loc2_)
                              {
                                 _loc1_.horizontalAlign = "center";
                                 if(_loc2_)
                                 {
                                    _loc1_.horizontalCenter = 0;
                                    if(!(_loc3_ && Boolean(_loc1_)))
                                    {
                                       _loc1_.mxmlContent = [this._ImprovementStoreDataGrid_VGroup2_c(),this._ImprovementStoreDataGrid_HGroup1_c(),this._ImprovementStoreDataGrid_Group5_c(),this._ImprovementStoreDataGrid_Group6_c()];
                                       §§goto(addr00bf);
                                    }
                                 }
                                 §§goto(addr0100);
                              }
                           }
                           §§goto(addr00bf);
                        }
                        §§goto(addr00ec);
                     }
                     addr00bf:
                     if(!_loc3_)
                     {
                        addr00ec:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              addr0100:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr0104);
                  }
               }
            }
            addr0104:
            return _loc1_;
         }
         §§goto(addr0039);
      }
      
      private function _ImprovementStoreDataGrid_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.height = 35;
            if(!_loc2_)
            {
               _loc1_.verticalAlign = "middle";
               if(_loc3_ || _loc3_)
               {
                  addr0056:
                  _loc1_.mxmlContent = [this._ImprovementStoreDataGrid_LocaLabel1_i()];
                  if(!(_loc2_ && Boolean(this)))
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
         §§goto(addr0056);
      }
      
      private function _ImprovementStoreDataGrid_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.maxDisplayedLines = 2;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.styleName = "flavorText";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.maxWidth = 675;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.setStyle("textAlign","center");
                     if(_loc2_)
                     {
                        addr0073:
                        _loc1_.id = "storeFlavourText";
                        if(_loc2_)
                        {
                           addr007e:
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr009f:
                                 _loc1_.document = this;
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    §§goto(addr00b0);
                                 }
                              }
                              §§goto(addr00ba);
                           }
                        }
                        addr00b0:
                        this.storeFlavourText = _loc1_;
                        if(_loc2_)
                        {
                           addr00ba:
                           BindingManager.executeBindings(this,"storeFlavourText",this.storeFlavourText);
                        }
                        §§goto(addr00c7);
                     }
                     §§goto(addr009f);
                  }
                  addr00c7:
                  return _loc1_;
               }
               §§goto(addr007e);
            }
            §§goto(addr00ba);
         }
         §§goto(addr0073);
      }
      
      private function _ImprovementStoreDataGrid_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.height = 195;
            if(_loc3_)
            {
               _loc1_.mxmlContent = [this._ImprovementStoreDataGrid_Group2_c(),this._ImprovementStoreDataGrid_Group3_c()];
               §§goto(addr0038);
            }
            §§goto(addr0063);
         }
         addr0038:
         if(!(_loc2_ && _loc2_))
         {
            addr0063:
            if(!_loc1_.document)
            {
               if(_loc3_ || _loc3_)
               {
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _ImprovementStoreDataGrid_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.width = 202;
            if(_loc2_)
            {
               _loc1_.height = 195;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._ImprovementStoreDataGrid_BriskImageDynaLib1_i(),this._ImprovementStoreDataGrid_BriskImageDynaLib2_i(),this._ImprovementStoreDataGrid_BriskImageDynaLib3_i()];
                  if(_loc2_)
                  {
                     §§goto(addr0071);
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0071);
            }
            §§goto(addr0085);
         }
         addr0071:
         if(!_loc1_.document)
         {
            if(_loc2_ || Boolean(this))
            {
               addr0085:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _ImprovementStoreDataGrid_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.width = 202;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.height = 188;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.dynaLibName = "gui_popups_paperPopup";
                  if(!_loc2_)
                  {
                     _loc1_.id = "itemBackground";
                     if(_loc3_)
                     {
                        addr0072:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr007e:
                              _loc1_.document = this;
                              if(_loc3_ || _loc2_)
                              {
                                 addr009a:
                                 this.itemBackground = _loc1_;
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr00ac:
                                    BindingManager.executeBindings(this,"itemBackground",this.itemBackground);
                                 }
                              }
                           }
                           §§goto(addr00b9);
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
            §§goto(addr0072);
         }
         §§goto(addr00ac);
      }
      
      private function _ImprovementStoreDataGrid_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_improvementStore";
            if(!_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc3_)
               {
                  _loc1_.verticalCenter = -4;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.id = "itemIcon";
                     if(!_loc2_)
                     {
                        addr0065:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr007d:
                              _loc1_.document = this;
                              if(_loc3_ || _loc3_)
                              {
                                 addr008e:
                                 this.itemIcon = _loc1_;
                                 if(_loc3_)
                                 {
                                    addr0098:
                                    BindingManager.executeBindings(this,"itemIcon",this.itemIcon);
                                 }
                                 §§goto(addr00a5);
                              }
                              §§goto(addr0098);
                           }
                           §§goto(addr00a5);
                        }
                        §§goto(addr008e);
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr008e);
               }
               §§goto(addr0065);
            }
            §§goto(addr007d);
         }
         addr00a5:
         return _loc1_;
      }
      
      private function _ImprovementStoreDataGrid_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.top = -18;
            if(!_loc3_)
            {
               _loc1_.left = -11;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.dynaLibName = "gui_popups_paperPopup";
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.dynaBmpSourceName = "improvement_shop_sparkle_big";
                     if(!_loc3_)
                     {
                        _loc1_.visible = false;
                        if(!_loc3_)
                        {
                           _loc1_.includeInLayout = false;
                           if(_loc2_)
                           {
                              §§goto(addr007c);
                           }
                        }
                        §§goto(addr00a1);
                     }
                     addr007c:
                     _loc1_.id = "specialIcon";
                     if(!_loc3_)
                     {
                        addr0087:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr00a1:
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 §§goto(addr00aa);
                              }
                           }
                           §§goto(addr00bc);
                        }
                     }
                     §§goto(addr00aa);
                  }
                  addr00aa:
                  this.specialIcon = _loc1_;
                  if(_loc2_ || Boolean(this))
                  {
                     addr00bc:
                     BindingManager.executeBindings(this,"specialIcon",this.specialIcon);
                  }
                  return _loc1_;
               }
               §§goto(addr00bc);
            }
            §§goto(addr0087);
         }
         §§goto(addr00bc);
      }
      
      private function _ImprovementStoreDataGrid_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.mxmlContent = [this._ImprovementStoreDataGrid_VScaleThreeComponent1_c(),this._ImprovementStoreDataGrid_VGroup3_c()];
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0073:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0073);
      }
      
      private function _ImprovementStoreDataGrid_VScaleThreeComponent1_c() : VScaleThreeComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VScaleThreeComponent = new VScaleThreeComponent();
         if(!_loc3_)
         {
            _loc1_.top = 0;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.left = 0;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.width = 472;
                  if(!_loc3_)
                  {
                     _loc1_.height = 188;
                     if(!_loc3_)
                     {
                        _loc1_.dynaLibName = "gui_popups_paperPopup";
                        if(!_loc3_)
                        {
                           _loc1_.dynaBmpSourceNameTop = "improvement_shop_item_description_background_top";
                           if(!(_loc3_ && _loc2_))
                           {
                              addr0095:
                              _loc1_.dynaBmpSourceNameMiddle = "improvement_shop_item_description_background_middle";
                              if(!_loc3_)
                              {
                                 addr00a2:
                                 _loc1_.dynaBmpSourceNameBottom = "improvement_shop_item_description_background_bottom";
                                 if(_loc2_)
                                 {
                                    if(!_loc1_.document)
                                    {
                                       if(_loc2_)
                                       {
                                          addr00bb:
                                          _loc1_.document = this;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr00bf);
                           }
                           §§goto(addr00a2);
                        }
                        §§goto(addr00bb);
                     }
                  }
                  addr00bf:
                  return _loc1_;
               }
               §§goto(addr0095);
            }
            §§goto(addr00bb);
         }
         §§goto(addr0095);
      }
      
      private function _ImprovementStoreDataGrid_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.top = 0;
            if(_loc2_)
            {
               _loc1_.left = 0;
               if(_loc2_)
               {
                  _loc1_.width = 472;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.height = 188;
                     if(!(_loc3_ && _loc3_))
                     {
                        addr006d:
                        _loc1_.horizontalAlign = "center";
                        if(_loc2_ || _loc3_)
                        {
                           _loc1_.paddingBottom = 15;
                           if(!_loc3_)
                           {
                              _loc1_.mxmlContent = [this._ImprovementStoreDataGrid_Group4_c(),this._ImprovementStoreDataGrid_VGroup4_c(),this._ImprovementStoreDataGrid_MultistateButton1_i()];
                              addr008a:
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(!(_loc3_ && Boolean(_loc1_)))
                                    {
                                       addr00cf:
                                       _loc1_.document = this;
                                    }
                                 }
                                 §§goto(addr00d3);
                              }
                              §§goto(addr00cf);
                           }
                           §§goto(addr00d3);
                        }
                        §§goto(addr008a);
                     }
                     §§goto(addr00d3);
                  }
               }
               §§goto(addr008a);
            }
            addr00d3:
            return _loc1_;
         }
         §§goto(addr006d);
      }
      
      private function _ImprovementStoreDataGrid_Group4_c() : Group
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
               _loc1_.height = 30;
               if(!_loc3_)
               {
                  _loc1_.mxmlContent = [this._ImprovementStoreDataGrid_Rect1_c(),this._ImprovementStoreDataGrid_HGroup2_c()];
                  if(_loc2_)
                  {
                     addr006c:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr0078:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr0078);
               }
            }
            addr007c:
            return _loc1_;
         }
         §§goto(addr006c);
      }
      
      private function _ImprovementStoreDataGrid_Rect1_c() : Rect
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Rect = new Rect();
         if(_loc3_)
         {
            _loc1_.left = 10;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.right = 10;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.top = 10;
                  if(_loc3_)
                  {
                     _loc1_.bottomLeftRadiusX = 10;
                     if(!_loc2_)
                     {
                        _loc1_.bottomLeftRadiusY = 30;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr006e:
                           _loc1_.bottomRightRadiusX = 10;
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              _loc1_.bottomRightRadiusY = 30;
                              if(!_loc2_)
                              {
                                 _loc1_.topLeftRadiusX = 10;
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr00ab:
                                    _loc1_.topLeftRadiusY = 30;
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr00be:
                                       _loc1_.topRightRadiusX = 10;
                                       if(!_loc2_)
                                       {
                                          addr00c9:
                                          _loc1_.topRightRadiusY = 30;
                                          if(_loc3_ || Boolean(this))
                                          {
                                             _loc1_.percentHeight = 100;
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                addr00ee:
                                                _loc1_.minHeight = 35;
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   §§goto(addr0101);
                                                }
                                                §§goto(addr0141);
                                             }
                                             addr0101:
                                             _loc1_.maxHeight = 35;
                                             if(_loc3_)
                                             {
                                                addr0119:
                                                _loc1_.fill = this._ImprovementStoreDataGrid_RadialGradient1_c();
                                                if(!_loc2_)
                                                {
                                                   addr0128:
                                                   _loc1_.filters = [this._ImprovementStoreDataGrid_DropShadowFilter1_c()];
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      addr0141:
                                                      _loc1_.initialized(this,null);
                                                   }
                                                   §§goto(addr0148);
                                                }
                                                §§goto(addr0141);
                                             }
                                             addr0148:
                                             return _loc1_;
                                          }
                                          §§goto(addr0119);
                                       }
                                       §§goto(addr0128);
                                    }
                                    §§goto(addr0119);
                                 }
                                 §§goto(addr0141);
                              }
                              §§goto(addr00c9);
                           }
                        }
                        §§goto(addr00ab);
                     }
                     §§goto(addr0128);
                  }
                  §§goto(addr0119);
               }
               §§goto(addr006e);
            }
            §§goto(addr00ee);
         }
         §§goto(addr00be);
      }
      
      private function _ImprovementStoreDataGrid_RadialGradient1_c() : RadialGradient
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:RadialGradient = new RadialGradient();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.entries = [this._ImprovementStoreDataGrid_GradientEntry1_c()];
         }
         return _loc1_;
      }
      
      private function _ImprovementStoreDataGrid_GradientEntry1_c() : GradientEntry
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
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0058:
                  _loc1_.alpha = 0.45;
               }
               return _loc1_;
            }
         }
         §§goto(addr0058);
      }
      
      private function _ImprovementStoreDataGrid_DropShadowFilter1_c() : DropShadowFilter
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.distance = 0;
            if(_loc2_)
            {
               _loc1_.blurX = 3;
               if(_loc2_ || Boolean(this))
               {
                  addr005f:
                  _loc1_.blurY = 3;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0072:
                     _loc1_.color = 165328;
                     if(_loc2_)
                     {
                        addr007d:
                        _loc1_.alpha = 0.45;
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr007d);
               }
               addr0083:
               return _loc1_;
            }
            §§goto(addr0072);
         }
         §§goto(addr005f);
      }
      
      private function _ImprovementStoreDataGrid_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.paddingLeft = 18;
               if(!_loc3_)
               {
                  _loc1_.paddingRight = 18;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr0066:
                     _loc1_.mxmlContent = [this._ImprovementStoreDataGrid_LocaLabel2_i()];
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr007e:
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              addr008a:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr008e);
                     }
                     §§goto(addr008a);
                  }
                  addr008e:
                  return _loc1_;
               }
               §§goto(addr007e);
            }
            §§goto(addr0066);
         }
         §§goto(addr007e);
      }
      
      private function _ImprovementStoreDataGrid_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.styleName = "StatusBarStylePadding";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.percentWidth = 100;
               if(_loc2_)
               {
                  _loc1_.maxWidth = 450;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.maxDisplayedLines = 1;
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.setStyle("fontSize",13);
                        if(_loc2_ || _loc3_)
                        {
                           _loc1_.setStyle("paddingTop",24);
                           if(!(_loc3_ && _loc2_))
                           {
                              addr009b:
                              _loc1_.setStyle("textAlign","center");
                              if(_loc2_)
                              {
                                 addr00a9:
                                 _loc1_.id = "itemNameLabel";
                                 if(!_loc3_)
                                 {
                                    addr00b4:
                                    if(!_loc1_.document)
                                    {
                                       if(_loc2_)
                                       {
                                          _loc1_.document = this;
                                          if(_loc2_ || Boolean(this))
                                          {
                                             addr00de:
                                             this.itemNameLabel = _loc1_;
                                             if(_loc2_ || _loc3_)
                                             {
                                                addr00f0:
                                                BindingManager.executeBindings(this,"itemNameLabel",this.itemNameLabel);
                                             }
                                          }
                                          §§goto(addr00fd);
                                       }
                                       §§goto(addr00f0);
                                    }
                                 }
                                 §§goto(addr00de);
                              }
                              §§goto(addr00f0);
                           }
                           §§goto(addr00de);
                        }
                        §§goto(addr00b4);
                     }
                     §§goto(addr00fd);
                  }
                  §§goto(addr00a9);
               }
               addr00fd:
               return _loc1_;
            }
            §§goto(addr009b);
         }
         §§goto(addr00b4);
      }
      
      private function _ImprovementStoreDataGrid_VGroup4_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.paddingTop = 17;
                  if(!_loc2_)
                  {
                     addr0053:
                     _loc1_.verticalAlign = "middle";
                     if(_loc3_)
                     {
                        addr005e:
                        _loc1_.horizontalAlign = "center";
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           _loc1_.mxmlContent = [this._ImprovementStoreDataGrid_LocaLabel3_i()];
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr0095:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           §§goto(addr00a5);
                        }
                     }
                     §§goto(addr0095);
                  }
                  §§goto(addr005e);
               }
               §§goto(addr0095);
            }
            addr00a5:
            return _loc1_;
         }
         §§goto(addr0053);
      }
      
      private function _ImprovementStoreDataGrid_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.maxDisplayedLines = 3;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.maxWidth = 450;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.styleName = "improvementStoreDescription";
                  if(!(_loc2_ && _loc3_))
                  {
                     addr006d:
                     _loc1_.setStyle("textAlign","center");
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.id = "itemDescriptionLabel";
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr00a2:
                                 _loc1_.document = this;
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    §§goto(addr00bd);
                                 }
                              }
                              §§goto(addr00cf);
                           }
                           addr00bd:
                           this.itemDescriptionLabel = _loc1_;
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr00cf:
                              BindingManager.executeBindings(this,"itemDescriptionLabel",this.itemDescriptionLabel);
                           }
                           §§goto(addr00dc);
                        }
                     }
                  }
                  addr00dc:
                  return _loc1_;
               }
               §§goto(addr006d);
            }
         }
         §§goto(addr00a2);
      }
      
      private function _ImprovementStoreDataGrid_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(!_loc3_)
         {
            _loc1_.imageNameRight = "layer_rc_icon";
            if(!_loc3_)
            {
               _loc1_.libNameRight = "gui_resources_icons";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.width = 180;
                  if(!(_loc3_ && _loc2_))
                  {
                     addr0052:
                     _loc1_.horizontalCenter = 0;
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.addEventListener("click",this.__buyButton_click);
                        if(_loc2_)
                        {
                           _loc1_.id = "buyButton";
                           if(_loc2_ || _loc3_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    §§goto(addr00a7);
                                 }
                                 §§goto(addr00d5);
                              }
                           }
                           §§goto(addr00c3);
                        }
                        §§goto(addr00a7);
                     }
                  }
                  §§goto(addr00c3);
               }
               addr00a7:
               _loc1_.document = this;
               if(_loc2_ || _loc2_)
               {
                  addr00c3:
                  this.buyButton = _loc1_;
                  if(_loc2_ || Boolean(this))
                  {
                     addr00d5:
                     BindingManager.executeBindings(this,"buyButton",this.buyButton);
                  }
               }
               return _loc1_;
            }
            §§goto(addr00d5);
         }
         §§goto(addr0052);
      }
      
      public function __buyButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this.handleButtonClicked(param1);
         }
      }
      
      private function _ImprovementStoreDataGrid_Group5_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.top = 10;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.mxmlContent = [this._ImprovementStoreDataGrid_Rect2_c(),this._ImprovementStoreDataGrid_HGroup3_c()];
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr007c:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr0090:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0094);
                  }
                  §§goto(addr0090);
               }
               addr0094:
               return _loc1_;
            }
         }
         §§goto(addr007c);
      }
      
      private function _ImprovementStoreDataGrid_Rect2_c() : Rect
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Rect = new Rect();
         if(_loc2_)
         {
            _loc1_.right = -12;
            if(!_loc3_)
            {
               addr002b:
               _loc1_.left = -10;
               if(!_loc3_)
               {
                  _loc1_.top = -1;
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_.bottomLeftRadiusX = 10;
                     if(!_loc3_)
                     {
                        addr0052:
                        _loc1_.bottomLeftRadiusY = 30;
                        if(!(_loc3_ && _loc2_))
                        {
                           _loc1_.bottomRightRadiusX = 10;
                           if(!_loc3_)
                           {
                              _loc1_.bottomRightRadiusY = 30;
                              if(_loc2_ || Boolean(this))
                              {
                                 _loc1_.topLeftRadiusX = 10;
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    _loc1_.topLeftRadiusY = 30;
                                    if(!_loc3_)
                                    {
                                       addr00ac:
                                       _loc1_.topRightRadiusX = 10;
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          addr00bf:
                                          _loc1_.topRightRadiusY = 30;
                                          if(!_loc3_)
                                          {
                                             §§goto(addr00ca);
                                          }
                                          §§goto(addr0135);
                                       }
                                       addr00ca:
                                       _loc1_.percentHeight = 100;
                                       if(!_loc3_)
                                       {
                                          _loc1_.minHeight = 24;
                                          if(!(_loc3_ && Boolean(this)))
                                          {
                                             _loc1_.maxHeight = 24;
                                             if(_loc2_ || _loc3_)
                                             {
                                                addr00fa:
                                                _loc1_.fill = this._ImprovementStoreDataGrid_RadialGradient2_c();
                                                if(_loc2_ || _loc3_)
                                                {
                                                   _loc1_.filters = [this._ImprovementStoreDataGrid_DropShadowFilter2_c()];
                                                   if(!(_loc3_ && Boolean(this)))
                                                   {
                                                      addr0135:
                                                      _loc1_.initialized(this,null);
                                                   }
                                                }
                                             }
                                             §§goto(addr013c);
                                          }
                                          §§goto(addr00fa);
                                       }
                                    }
                                    §§goto(addr013c);
                                 }
                                 §§goto(addr00ac);
                              }
                           }
                           §§goto(addr00fa);
                        }
                        §§goto(addr00ac);
                     }
                     addr013c:
                     return _loc1_;
                  }
                  §§goto(addr0052);
               }
               §§goto(addr00bf);
            }
            §§goto(addr00fa);
         }
         §§goto(addr002b);
      }
      
      private function _ImprovementStoreDataGrid_RadialGradient2_c() : RadialGradient
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:RadialGradient = new RadialGradient();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.entries = [this._ImprovementStoreDataGrid_GradientEntry2_c()];
         }
         return _loc1_;
      }
      
      private function _ImprovementStoreDataGrid_GradientEntry2_c() : GradientEntry
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:GradientEntry = new GradientEntry();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.color = 165328;
            if(_loc2_ || _loc3_)
            {
               _loc1_.ratio = 0.5;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.alpha = 0.45;
               }
            }
         }
         return _loc1_;
      }
      
      private function _ImprovementStoreDataGrid_DropShadowFilter2_c() : DropShadowFilter
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.distance = 0;
            if(!_loc3_)
            {
               _loc1_.blurX = 3;
               if(!(_loc3_ && _loc3_))
               {
                  addr005e:
                  _loc1_.blurY = 3;
                  if(_loc2_)
                  {
                     §§goto(addr0069);
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0069);
            }
            §§goto(addr005e);
         }
         addr0069:
         _loc1_.color = 165328;
         if(_loc2_ || Boolean(this))
         {
            addr007c:
            _loc1_.alpha = 0.45;
         }
         return _loc1_;
      }
      
      private function _ImprovementStoreDataGrid_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.height = 25;
               if(!_loc3_)
               {
                  _loc1_.top = -4;
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.paddingLeft = 18;
                     if(_loc2_ || Boolean(this))
                     {
                        addr006d:
                        _loc1_.paddingRight = 18;
                        if(!(_loc3_ && _loc2_))
                        {
                           _loc1_.mxmlContent = [this._ImprovementStoreDataGrid_LocaLabel4_i()];
                           if(_loc2_)
                           {
                              §§goto(addr009c);
                           }
                           §§goto(addr00a8);
                        }
                     }
                     addr009c:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr00a8:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr00ac);
                  }
                  §§goto(addr006d);
               }
               addr00ac:
               return _loc1_;
            }
         }
         §§goto(addr009c);
      }
      
      private function _ImprovementStoreDataGrid_LocaLabel4_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.styleName = "StatusBarStylePadding";
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  _loc1_.maxDisplayedLines = 1;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.setStyle("paddingTop",11);
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.setStyle("textAlign","center");
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0083:
                           _loc1_.id = "availableItemsHeadlineLabel";
                           if(_loc3_)
                           {
                              addr008e:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    _loc1_.document = this;
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§goto(addr00bf);
                                    }
                                 }
                                 §§goto(addr00c9);
                              }
                              §§goto(addr00bf);
                           }
                           §§goto(addr00c9);
                        }
                        addr00bf:
                        this.availableItemsHeadlineLabel = _loc1_;
                        if(_loc3_)
                        {
                           addr00c9:
                           BindingManager.executeBindings(this,"availableItemsHeadlineLabel",this.availableItemsHeadlineLabel);
                        }
                        §§goto(addr00d6);
                     }
                     §§goto(addr0083);
                  }
               }
               addr00d6:
               return _loc1_;
            }
            §§goto(addr00c9);
         }
         §§goto(addr008e);
      }
      
      private function _ImprovementStoreDataGrid_Group6_c() : Group
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
               _loc1_.mxmlContent = [this._ImprovementStoreDataGrid_List1_i(),this._ImprovementStoreDataGrid_UiInfolayerAlignmentLine1_i()];
               if(_loc3_ || _loc3_)
               {
                  addr0065:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0071:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0071);
         }
         §§goto(addr0065);
      }
      
      private function _ImprovementStoreDataGrid_List1_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(!_loc2_)
         {
            _loc1_.itemRenderer = this._ImprovementStoreDataGrid_ClassFactory1_c();
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.height = 95;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§goto(addr0061);
                  }
                  §§goto(addr0070);
               }
               §§goto(addr0089);
            }
            §§goto(addr0070);
         }
         addr0061:
         _loc1_.setStyle("skinClass",ImprovementStoreListSkin);
         if(_loc3_)
         {
            addr0070:
            _loc1_.addEventListener("change",this.__itemList_change);
            if(_loc3_ || _loc3_)
            {
               addr0089:
               _loc1_.id = "itemList";
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           addr00b5:
                           this.itemList = _loc1_;
                           if(_loc3_)
                           {
                              BindingManager.executeBindings(this,"itemList",this.itemList);
                           }
                        }
                     }
                     §§goto(addr00cc);
                  }
               }
            }
            §§goto(addr00b5);
         }
         addr00cc:
         return _loc1_;
      }
      
      private function _ImprovementStoreDataGrid_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.generator = ImprovementStoreItemRenderer;
         }
         return _loc1_;
      }
      
      public function __itemList_change(param1:IndexChangeEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.itemList_changeHandler(param1);
         }
      }
      
      private function _ImprovementStoreDataGrid_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.left = 0;
            if(_loc2_ || _loc2_)
            {
               _loc1_.top = 0;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.right = 0;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.lineId = 3;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0080:
                        _loc1_.id = "uiInfolayerAlignmentLine";
                        if(_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§goto(addr00ac);
                              }
                           }
                           §§goto(addr00b5);
                        }
                        §§goto(addr00c7);
                     }
                     addr00ac:
                     _loc1_.document = this;
                     if(_loc2_)
                     {
                        addr00b5:
                        this.uiInfolayerAlignmentLine = _loc1_;
                        if(!(_loc3_ && _loc2_))
                        {
                           addr00c7:
                           BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
                        }
                     }
                     §§goto(addr00d4);
                  }
                  §§goto(addr00b5);
               }
               addr00d4:
               return _loc1_;
            }
            §§goto(addr0080);
         }
         §§goto(addr00c7);
      }
      
      private function _ImprovementStoreDataGrid_FeatureLockedScreen1_i() : FeatureLockedScreen
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:FeatureLockedScreen = new FeatureLockedScreen();
         if(_loc2_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.visible = false;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.includeInLayout = false;
                     if(!_loc3_)
                     {
                        §§goto(addr0072);
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr00af);
               }
            }
            §§goto(addr00b9);
         }
         addr0072:
         _loc1_.id = "lockedScreen";
         if(_loc2_ || _loc2_)
         {
            addr0085:
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  §§goto(addr009e);
               }
               §§goto(addr00b9);
            }
            §§goto(addr00af);
         }
         addr009e:
         _loc1_.document = this;
         if(_loc2_ || Boolean(this))
         {
            addr00af:
            this.lockedScreen = _loc1_;
            if(_loc2_)
            {
               addr00b9:
               BindingManager.executeBindings(this,"lockedScreen",this.lockedScreen);
            }
         }
         return _loc1_;
      }
      
      public function ___ImprovementStoreDataGrid_Group1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this.creationCompleteHandler(param1);
         }
      }
      
      private function _ImprovementStoreDataGrid_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(!(_loc3_ && Boolean(this)))
         {
            §§pop().§§slot[1] = [];
            if(_loc2_ || _loc3_)
            {
               §§push(§§newactivation());
               if(!_loc3_)
               {
                  §§goto(addr0055);
               }
               §§goto(addr0079);
            }
            §§goto(addr0077);
         }
         addr0055:
         §§push(§§pop().§§slot[1]);
         if(!(_loc3_ && _loc2_))
         {
            §§pop()[0] = new Binding(this,function():uint
            {
               return UserInterfaceInfoLayerAlignLineVo.ALIGN_TOP;
            },null,"uiInfolayerAlignmentLine.alignment");
            addr0079:
            addr0077:
            return result;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get availableItemsHeadlineLabel() : LocaLabel
      {
         return this._724833207availableItemsHeadlineLabel;
      }
      
      public function set availableItemsHeadlineLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._724833207availableItemsHeadlineLabel;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._724833207availableItemsHeadlineLabel = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"availableItemsHeadlineLabel",_loc2_,param1));
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
         §§goto(addr0056);
      }
      
      [Bindable(event="propertyChange")]
      public function get buyButton() : MultistateButton
      {
         return this._1271589544buyButton;
      }
      
      public function set buyButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1271589544buyButton;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._1271589544buyButton = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr007b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr007b);
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
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._1295462561itemBackground = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0066:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemBackground",_loc2_,param1));
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
         §§goto(addr0066);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemDescriptionLabel() : LocaLabel
      {
         return this._56713611itemDescriptionLabel;
      }
      
      public function set itemDescriptionLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._56713611itemDescriptionLabel;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._56713611itemDescriptionLabel = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr006e);
               }
               addr0057:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(this))
                  {
                     addr006e:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemDescriptionLabel",_loc2_,param1));
                  }
               }
               §§goto(addr007d);
            }
            addr007d:
            return;
         }
         §§goto(addr006e);
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
               if(_loc4_)
               {
                  this._1177184812itemIcon = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr005f);
            }
         }
         addr007e:
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr0037:
                  this._1177280081itemList = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(this))
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemList",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr006c);
            }
            addr007b:
            return;
         }
         §§goto(addr0037);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemNameLabel() : LocaLabel
      {
         return this._777691818itemNameLabel;
      }
      
      public function set itemNameLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._777691818itemNameLabel;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._777691818itemNameLabel = param1;
                  if(!_loc3_)
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
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemNameLabel",_loc2_,param1));
                  }
               }
               §§goto(addr0074);
            }
            addr0074:
            return;
         }
         §§goto(addr0056);
      }
      
      [Bindable(event="propertyChange")]
      public function get lockedScreen() : FeatureLockedScreen
      {
         return this._2016210966lockedScreen;
      }
      
      public function set lockedScreen(param1:FeatureLockedScreen) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2016210966lockedScreen;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr0036:
                  this._2016210966lockedScreen = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lockedScreen",_loc2_,param1));
                        }
                     }
                     §§goto(addr0079);
                  }
               }
               §§goto(addr006a);
            }
            addr0079:
            return;
         }
         §§goto(addr0036);
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
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  addr0049:
                  this._872747822specialIcon = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"specialIcon",_loc2_,param1));
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
      public function get storeFlavourText() : LocaLabel
      {
         return this._843932899storeFlavourText;
      }
      
      public function set storeFlavourText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._843932899storeFlavourText;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._843932899storeFlavourText = param1;
                  if(!_loc4_)
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"storeFlavourText",_loc2_,param1));
                        }
                     }
                     §§goto(addr007a);
                  }
               }
               §§goto(addr006b);
            }
            addr007a:
            return;
         }
         §§goto(addr005c);
      }
      
      [Bindable(event="propertyChange")]
      public function get uiInfolayerAlignmentLine() : UiInfolayerAlignmentLine
      {
         return this._1218573432uiInfolayerAlignmentLine;
      }
      
      public function set uiInfolayerAlignmentLine(param1:UiInfolayerAlignmentLine) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1218573432uiInfolayerAlignmentLine;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1218573432uiInfolayerAlignmentLine = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0067);
      }
   }
}

