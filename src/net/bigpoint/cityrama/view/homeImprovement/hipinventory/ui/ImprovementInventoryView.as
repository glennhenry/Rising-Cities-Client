package net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui
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
   import mx.collections.IList;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ItemClickEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.ResizeEvent;
   import mx.filters.*;
   import mx.graphics.GradientEntry;
   import mx.graphics.RadialGradient;
   import mx.resources.ResourceManager;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.HScaleThreeComponent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.StandardInventoryList;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.ImprovementInventoryItemRenderer;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.InventoryRadioButton;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.skins.ImprovementInventorySkinClass;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.vo.ImprovementInventoryItemRendererVo;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.vo.ImprovementInventoryViewVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.RadioButtonGroup;
   import spark.components.ToggleButton;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.filters.DropShadowFilter;
   import spark.layouts.HorizontalLayout;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class ImprovementInventoryView extends Group implements IBindingClient
   {
      
      public static const ALL_DESELECTED:String = "ALL_DESELECTED";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         ALL_DESELECTED = "ALL_DESELECTED";
      }
      
      private var _1332194002background:HScaleThreeComponent;
      
      private var _1310457130flavourTextLabel:LocaLabel;
      
      private var _1105049158headerTextLabel:LocaLabel;
      
      private var _1808398663improvementItemList:StandardInventoryList;
      
      private var _678297490minimizeToggle:ToggleButton;
      
      private var _1623077105sortingAllButton:InventoryRadioButton;
      
      private var _1551432119sortingButtonGroup:HGroup;
      
      private var _353794723sortingButtons:RadioButtonGroup;
      
      private var _1821219679sortingCommonButton:InventoryRadioButton;
      
      private var _1371491525sortingEpicButton:InventoryRadioButton;
      
      private var _1591903273sortingLegendaryButton:InventoryRadioButton;
      
      private var _1991244568sortingRareButton:InventoryRadioButton;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _dirty:Boolean;
      
      private var _data:ImprovementInventoryViewVo;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ImprovementInventoryView()
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
         if(_loc4_ || _loc1_)
         {
            §§push(null);
            if(_loc4_ || Boolean(this))
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc4_)
               {
                  §§push(§§newactivation());
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0050:
                     §§pop().§§slot[5] = null;
                     if(!(_loc3_ && _loc3_))
                     {
                        this.mx_internal::_bindings = [];
                        if(_loc4_)
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc4_)
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc4_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    super();
                                    if(_loc4_ || _loc1_)
                                    {
                                       mx_internal::_document = this;
                                       if(_loc4_ || Boolean(this))
                                       {
                                          §§push(§§newactivation());
                                          if(!_loc3_)
                                          {
                                             addr00cb:
                                             §§pop().§§slot[1] = this._ImprovementInventoryView_bindingsSetup();
                                             if(!_loc3_)
                                             {
                                                §§push(§§newactivation());
                                                if(_loc4_ || _loc3_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(!(_loc3_ && _loc1_))
                                                   {
                                                      addr00fd:
                                                      §§push(§§newactivation());
                                                      if(!_loc3_)
                                                      {
                                                         addr0104:
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc4_ || Boolean(this))
                                                         {
                                                            addr0117:
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!(_loc3_ && Boolean(this)))
                                                               {
                                                                  addr012c:
                                                                  §§push(§§newactivation());
                                                                  if(!(_loc3_ && Boolean(this)))
                                                                  {
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_homeImprovement_hipinventory_ui_ImprovementInventoryViewWatcherSetupUtil");
                                                                     addr013b:
                                                                     if(_loc4_ || Boolean(this))
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(_loc4_ || _loc1_)
                                                                        {
                                                                           addr0174:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr018a:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return ImprovementInventoryView[param1];
                                                                              },bindings,watchers);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    addr01cd:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       this.percentWidth = 100;
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr01fe:
                                                                                          this.height = 150;
                                                                                          if(!(_loc3_ && Boolean(this)))
                                                                                          {
                                                                                             addr0211:
                                                                                             this.top = -4;
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                addr021c:
                                                                                                this.mxmlContent = [this._ImprovementInventoryView_HScaleThreeComponent1_i(),this._ImprovementInventoryView_VGroup1_c()];
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr0233:
                                                                                                   this._ImprovementInventoryView_RadioButtonGroup1_i();
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      addr023e:
                                                                                                      this.addEventListener("creationComplete",this.___ImprovementInventoryView_Group1_creationComplete);
                                                                                                      if(!(_loc3_ && Boolean(this)))
                                                                                                      {
                                                                                                         addr0259:
                                                                                                         i = 0;
                                                                                                         addr0257:
                                                                                                      }
                                                                                                      var _temp_19:*;
                                                                                                      loop0:
                                                                                                      do
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
                                                                                                               while(§§pop() < §§pop().§§slot[1].length)
                                                                                                               {
                                                                                                                  Binding(bindings[i]).execute();
                                                                                                                  if(!(_loc4_ || Boolean(this)))
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(_loc4_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().§§slot[4]);
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        §§push(uint(§§pop() + 1));
                                                                                                                        if(!(_loc4_ || Boolean(this)))
                                                                                                                        {
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§push(§§newactivation());
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      while(var _temp_19:* = §§pop(), §§pop().§§slot[4] = _temp_19, _loc4_);
                                                                                                      
                                                                                                      return;
                                                                                                      addr02c9:
                                                                                                   }
                                                                                                   §§goto(addr0257);
                                                                                                }
                                                                                                §§goto(addr02c9);
                                                                                             }
                                                                                             §§goto(addr023e);
                                                                                          }
                                                                                          §§goto(addr02c9);
                                                                                       }
                                                                                       §§goto(addr0211);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr0233);
                                                                              }
                                                                              §§goto(addr01cd);
                                                                           }
                                                                           §§goto(addr0233);
                                                                        }
                                                                        §§goto(addr0259);
                                                                     }
                                                                     §§goto(addr01fe);
                                                                  }
                                                                  §§goto(addr0259);
                                                               }
                                                               §§goto(addr0257);
                                                            }
                                                            §§goto(addr018a);
                                                         }
                                                         §§goto(addr0233);
                                                      }
                                                      §§goto(addr013b);
                                                   }
                                                   §§goto(addr0117);
                                                }
                                                §§goto(addr0104);
                                             }
                                             §§goto(addr0257);
                                          }
                                          §§goto(addr0174);
                                       }
                                    }
                                    §§goto(addr00fd);
                                 }
                                 §§goto(addr018a);
                              }
                              §§goto(addr02c9);
                           }
                           §§goto(addr0233);
                        }
                        §§goto(addr021c);
                     }
                     §§goto(addr0117);
                  }
                  §§goto(addr0104);
               }
               §§goto(addr012c);
            }
            §§goto(addr0050);
         }
         §§goto(addr00cb);
      }
      
      private static function getEmptySlotsCount(param1:IList) : int
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:ImprovementInventoryItemRendererVo = null;
         if(_loc6_ || Boolean(param1))
         {
            if(param1 == null)
            {
               if(_loc6_ || Boolean(param1))
               {
                  §§push(-1);
                  if(_loc6_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr0051:
                  §§push(0);
               }
               var _loc2_:* = §§pop();
               for each(_loc3_ in param1)
               {
                  if(!_loc7_)
                  {
                     if(_loc3_.isEmpty)
                     {
                        if(!_loc7_)
                        {
                           _loc2_++;
                        }
                     }
                  }
               }
               return _loc2_;
            }
         }
         §§goto(addr0051);
      }
      
      private static function getNonEmptySlotsCount(param1:IList) : int
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(param1))
         {
            if(param1 == null)
            {
               if(_loc4_ || _loc3_)
               {
                  §§push(-1);
                  if(_loc4_ || _loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr005c:
                  §§push(int(param1.length));
               }
               var _loc2_:* = §§pop();
               return _loc2_ - getEmptySlotsCount(param1);
            }
         }
         §§goto(addr005c);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            ImprovementInventoryView._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            super.moduleFactory = param1;
            if(_loc2_)
            {
               §§goto(addr0034);
            }
            §§goto(addr0050);
         }
         addr0034:
         if(this.__moduleFactoryInitialized)
         {
            if(_loc2_)
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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super.initialize();
         }
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            §§push(this.headerTextLabel);
            §§push(ResourceManager.getInstance());
            §§push("rcl.booklayer.hipInventory");
            if(_loc3_)
            {
               §§push("");
               if(!_loc2_)
               {
                  addr003b:
                  §§push(§§pop() + §§pop());
                  §§push("rcl.booklayer.hipInventory.title.capital");
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr004c:
                     §§push(§§pop() + "");
                  }
                  §§pop().text = §§pop().getString(§§pop(),§§pop());
                  if(_loc3_ || _loc3_)
                  {
                     addr006c:
                     §§push(this.flavourTextLabel);
                     §§push(ResourceManager.getInstance());
                     §§push("rcl.booklayer.hipInventory");
                     if(_loc3_)
                     {
                        §§push("");
                        if(!_loc2_)
                        {
                           addr0087:
                           §§push(§§pop() + §§pop());
                           §§push("rcl.booklayer.hipInventory.flavour");
                           if(!(_loc2_ && _loc3_))
                           {
                              §§push(§§pop() + "");
                           }
                        }
                        §§pop().text = §§pop().getString(§§pop(),§§pop());
                        if(_loc3_ || Boolean(this))
                        {
                           this.improvementItemList.addEventListener(IndexChangeEvent.CHANGE,this.improvementItemList_changeHandler);
                           if(!(_loc2_ && _loc3_))
                           {
                              addr00d9:
                              this.setToolTips();
                           }
                        }
                        return;
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr00d9);
               }
               §§goto(addr004c);
            }
            §§goto(addr003b);
         }
         §§goto(addr006c);
      }
      
      private function improvementItemList_changeHandler(param1:IndexChangeEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            if(param1.newIndex == -1)
            {
               if(!_loc3_)
               {
                  dispatchEvent(new Event(ALL_DESELECTED,false));
               }
            }
         }
      }
      
      private function setToolTips() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.sortingAllButton);
            §§push(ResourceManager.getInstance());
            §§push("rcl.tooltips.hipInventory");
            if(!(_loc1_ && Boolean(this)))
            {
               §§push("");
               if(_loc2_ || _loc2_)
               {
                  addr0048:
                  §§push(§§pop() + §§pop());
                  §§push("rcl.tooltips.hipInventory.category.all");
                  if(_loc2_)
                  {
                     addr0051:
                     §§push(§§pop() + "");
                  }
                  §§pop().toolTip = §§pop().getString(§§pop(),§§pop());
                  if(_loc2_ || _loc2_)
                  {
                     §§push(this.sortingLegendaryButton);
                     §§push(ResourceManager.getInstance());
                     §§push("rcl.tooltips.hipInventory");
                     if(!(_loc1_ && _loc1_))
                     {
                        §§push("");
                        if(!_loc1_)
                        {
                           addr0089:
                           §§push(§§pop() + §§pop());
                           §§push("rcl.tooltips.hipInventory.category.legendary");
                           if(!_loc1_)
                           {
                              §§push(§§pop() + "");
                           }
                        }
                        §§pop().toolTip = §§pop().getString(§§pop(),§§pop());
                        if(_loc2_)
                        {
                           §§push(this.sortingEpicButton);
                           §§push(ResourceManager.getInstance());
                           §§push("rcl.tooltips.hipInventory");
                           if(!_loc1_)
                           {
                              §§push("");
                              if(_loc2_)
                              {
                                 addr00c4:
                                 §§push(§§pop() + §§pop());
                                 §§push("rcl.tooltips.hipInventory.category.epic");
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    §§push(§§pop() + "");
                                 }
                              }
                              §§pop().toolTip = §§pop().getString(§§pop(),§§pop());
                              if(_loc2_)
                              {
                                 addr00e3:
                                 §§push(this.sortingCommonButton);
                                 §§push(ResourceManager.getInstance());
                                 §§push("rcl.tooltips.hipInventory");
                                 if(!_loc1_)
                                 {
                                    §§push("");
                                    if(_loc2_ || _loc1_)
                                    {
                                       addr0105:
                                       §§push(§§pop() + §§pop());
                                       §§push("rcl.tooltips.hipInventory.category.common");
                                       if(_loc2_ || _loc1_)
                                       {
                                          addr0116:
                                          §§push(§§pop() + "");
                                       }
                                       §§pop().toolTip = §§pop().getString(§§pop(),§§pop());
                                       if(_loc2_ || _loc1_)
                                       {
                                          addr012c:
                                          §§push(this.sortingRareButton);
                                          §§push(ResourceManager.getInstance());
                                          §§push("rcl.tooltips.hipInventory");
                                          if(!(_loc1_ && Boolean(this)))
                                          {
                                             §§push("");
                                             if(!_loc1_)
                                             {
                                                addr014e:
                                                §§push(§§pop() + §§pop());
                                                §§push("rcl.tooltips.hipInventory.category.rare");
                                                if(!(_loc1_ && _loc1_))
                                                {
                                                   §§push(§§pop() + "");
                                                }
                                             }
                                             §§pop().toolTip = §§pop().getString(§§pop(),§§pop());
                                             if(_loc2_)
                                             {
                                                addr0177:
                                                this.minimizeToggle.toolTip = ResourceManager.getInstance().getString("rcl.tooltips.hipInventory" + "","rcl.tooltips.hipInventory.minimize" + "");
                                             }
                                             §§goto(addr0194);
                                          }
                                          §§goto(addr014e);
                                       }
                                       §§goto(addr0177);
                                    }
                                    §§goto(addr0116);
                                 }
                                 §§goto(addr0105);
                              }
                              §§goto(addr0177);
                           }
                           §§goto(addr00c4);
                        }
                        §§goto(addr012c);
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr00e3);
               }
               §§goto(addr0051);
            }
            §§goto(addr0048);
         }
         addr0194:
      }
      
      public function set data(param1:ImprovementInventoryViewVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc3_ || _loc3_)
               {
                  this._dirty = true;
                  if(_loc3_ || Boolean(this))
                  {
                     §§goto(addr0058);
                  }
               }
            }
            §§goto(addr0062);
         }
         addr0058:
         this._data = param1;
         if(!_loc2_)
         {
            addr0062:
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            if(this._dirty)
            {
               if(_loc1_)
               {
                  addr0022:
                  this._dirty = false;
                  if(_loc1_ || _loc2_)
                  {
                     this.sorting_changeHandler();
                     if(_loc1_)
                     {
                        this.sortingAllButton.amountLabelValue = this._data.getAmountByType(this.sortingAllButton.value.toString()).toString();
                        if(!_loc2_)
                        {
                           this.sortingLegendaryButton.amountLabelValue = this._data.getAmountByType(this.sortingLegendaryButton.value.toString()).toString();
                           §§goto(addr0062);
                        }
                        §§goto(addr008f);
                     }
                     §§goto(addr0114);
                  }
                  addr0062:
                  if(!_loc2_)
                  {
                     addr008f:
                     this.sortingEpicButton.amountLabelValue = this._data.getAmountByType(this.sortingEpicButton.value.toString()).toString();
                     if(_loc1_ || Boolean(this))
                     {
                        this.sortingCommonButton.amountLabelValue = this._data.getAmountByType(this.sortingCommonButton.value.toString()).toString();
                        if(_loc1_)
                        {
                           this.sortingRareButton.amountLabelValue = this._data.getAmountByType(this.sortingRareButton.value.toString()).toString();
                           if(!_loc2_)
                           {
                              addr010a:
                              this.ManageEmptyItems();
                              if(!_loc2_)
                              {
                                 addr0114:
                                 super.commitProperties();
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr0119);
               }
               addr0119:
               return;
            }
            §§goto(addr010a);
         }
         §§goto(addr0022);
      }
      
      private function sorting_changeHandler(param1:ItemClickEvent = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            dispatchEvent(new Event(ALL_DESELECTED,false));
            if(_loc2_ || _loc2_)
            {
               §§push(this.improvementItemList);
               §§push(this._data);
               if(!_loc3_)
               {
                  if(this.sortingButtons.selectedValue == null)
                  {
                     addr006c:
                     §§push(ImprovementInventoryViewVo.SORT_ALL);
                     if(!_loc3_)
                     {
                        §§push(§§pop());
                        if(_loc2_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(this.sortingButtons.selectedValue.toString());
                  }
                  §§pop().dataProvider = §§pop().getListAsArrayCollectionByType(§§pop());
                  if(!_loc3_)
                  {
                     addr0099:
                     this.ManageEmptyItems();
                  }
                  return;
               }
               §§goto(addr006c);
            }
         }
         §§goto(addr0099);
      }
      
      private function minimizeToggle_changeHandler(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && _loc2_))
         {
            if(!this.minimizeToggle.selected)
            {
               if(_loc4_ || _loc2_)
               {
                  §§push(this.background);
                  if(_loc4_ || _loc2_)
                  {
                     §§push(0);
                     if(_loc4_ || Boolean(param1))
                     {
                        §§pop().top = §§pop();
                        if(!_loc3_)
                        {
                           if(this.hasEventListener(MouseEvent.ROLL_OUT))
                           {
                              if(!_loc3_)
                              {
                                 this.removeEventListener(MouseEvent.ROLL_OUT,this.mouseOutHandler);
                                 if(!_loc3_)
                                 {
                                    addr0088:
                                    this.height = 150;
                                    if(!_loc3_)
                                    {
                                       §§push(this.flavourTextLabel);
                                       if(!(_loc3_ && Boolean(param1)))
                                       {
                                          §§push(this.flavourTextLabel);
                                          if(!_loc3_)
                                          {
                                             §§push(true);
                                             if(_loc4_ || Boolean(param1))
                                             {
                                                var _temp_8:* = §§pop();
                                                §§push(_temp_8);
                                                §§push(_temp_8);
                                                if(_loc4_)
                                                {
                                                   var _loc2_:* = §§pop();
                                                   if(!(_loc3_ && Boolean(this)))
                                                   {
                                                      §§pop().includeInLayout = §§pop();
                                                      if(_loc4_ || Boolean(param1))
                                                      {
                                                         §§push(_loc2_);
                                                         if(_loc4_ || Boolean(param1))
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               §§pop().visible = §§pop();
                                                               if(_loc4_)
                                                               {
                                                                  §§push(this.sortingButtonGroup);
                                                                  this.sortingButtonGroup.includeInLayout = _loc2_ = true;
                                                                  §§pop().visible = _loc2_;
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     addr012c:
                                                                     §§push(this.improvementItemList);
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(this.improvementItemList);
                                                                        if(_loc4_ || Boolean(this))
                                                                        {
                                                                           §§push(true);
                                                                           if(!_loc3_)
                                                                           {
                                                                              var _temp_14:* = §§pop();
                                                                              §§push(_temp_14);
                                                                              §§push(_temp_14);
                                                                              if(!(_loc3_ && Boolean(this)))
                                                                              {
                                                                                 _loc2_ = §§pop();
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§pop().includeInLayout = §§pop();
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§push(_loc2_);
                                                                                       if(_loc4_ || Boolean(this))
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§pop().visible = §§pop();
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                var _temp_17:* = this.sortingButtonGroup;
                                                                                                this.sortingButtonGroup.includeInLayout = _loc2_ = false;
                                                                                                _temp_17.visible = _loc2_;
                                                                                                addr0202:
                                                                                                if(!(_loc3_ && _loc2_))
                                                                                                {
                                                                                                   addr0238:
                                                                                                   §§push(this.improvementItemList);
                                                                                                   this.improvementItemList.includeInLayout = _loc2_ = false;
                                                                                                   addr023d:
                                                                                                   §§pop().visible = _loc2_;
                                                                                                   addr023b:
                                                                                                   addr023a:
                                                                                                   addr0237:
                                                                                                   addr0236:
                                                                                                   addr0235:
                                                                                                   addr0231:
                                                                                                   addr022d:
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr023f);
                                                                                          }
                                                                                          §§goto(addr023d);
                                                                                       }
                                                                                       §§goto(addr023b);
                                                                                    }
                                                                                    §§goto(addr023a);
                                                                                 }
                                                                                 §§goto(addr0238);
                                                                              }
                                                                              §§goto(addr0237);
                                                                           }
                                                                           §§goto(addr0236);
                                                                        }
                                                                        §§goto(addr0235);
                                                                     }
                                                                     §§goto(addr0231);
                                                                  }
                                                               }
                                                               §§goto(addr023f);
                                                            }
                                                            else
                                                            {
                                                               addr01f2:
                                                               §§pop().visible = §§pop();
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  §§goto(addr0202);
                                                               }
                                                            }
                                                            §§goto(addr022d);
                                                         }
                                                         else
                                                         {
                                                            addr01f0:
                                                         }
                                                         §§goto(addr01f2);
                                                      }
                                                      else
                                                      {
                                                         addr01ef:
                                                         §§push(_loc2_);
                                                      }
                                                      §§goto(addr01f0);
                                                   }
                                                   else
                                                   {
                                                      addr01ed:
                                                      §§pop().includeInLayout = §§pop();
                                                   }
                                                   §§goto(addr01ef);
                                                }
                                                else
                                                {
                                                   addr01ec:
                                                   _loc2_ = §§pop();
                                                }
                                                §§goto(addr01ed);
                                             }
                                             else
                                             {
                                                addr01eb:
                                                var _temp_20:* = §§pop();
                                                §§push(_temp_20);
                                                §§push(_temp_20);
                                             }
                                             §§goto(addr01ec);
                                          }
                                          else
                                          {
                                             addr01ea:
                                             §§push(false);
                                          }
                                          §§goto(addr01eb);
                                       }
                                       else
                                       {
                                          addr01e6:
                                          §§push(this.flavourTextLabel);
                                       }
                                       §§goto(addr01ea);
                                    }
                                    §§goto(addr022d);
                                 }
                                 else
                                 {
                                    addr0198:
                                    this.addEventListener(MouseEvent.ROLL_OUT,this.mouseOutHandler);
                                    if(!_loc3_)
                                    {
                                       if(this.hasEventListener(MouseEvent.ROLL_OVER))
                                       {
                                          if(!_loc3_)
                                          {
                                             addr01bc:
                                             this.removeEventListener(MouseEvent.ROLL_OVER,this.mouseOverHandler);
                                             if(_loc4_)
                                             {
                                                addr01cf:
                                                this.height = 40;
                                                if(_loc4_ || Boolean(this))
                                                {
                                                   addr01e2:
                                                   §§goto(addr01e6);
                                                   §§push(this.flavourTextLabel);
                                                }
                                                §§goto(addr022d);
                                             }
                                             §§goto(addr0202);
                                          }
                                          addr023f:
                                          return;
                                       }
                                       §§goto(addr01cf);
                                    }
                                    §§goto(addr01bc);
                                 }
                              }
                              §§goto(addr012c);
                           }
                           §§goto(addr0088);
                        }
                     }
                     else
                     {
                        addr0191:
                        §§pop().top = §§pop();
                        if(!_loc3_)
                        {
                           §§goto(addr0198);
                        }
                     }
                     §§goto(addr01e2);
                  }
                  else
                  {
                     addr018f:
                     §§push(-110);
                  }
                  §§goto(addr0191);
               }
               §§goto(addr01cf);
            }
            else
            {
               §§push(this.background);
            }
            §§goto(addr018f);
         }
         §§goto(addr01cf);
      }
      
      private function mouseOverHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            if(this.minimizeToggle.selected)
            {
               if(_loc3_)
               {
                  addr0029:
                  this.background.top = 0;
                  if(_loc3_)
                  {
                     if(this.hasEventListener(MouseEvent.ROLL_OVER))
                     {
                        if(_loc3_)
                        {
                           addr0048:
                           this.removeEventListener(MouseEvent.ROLL_OVER,this.mouseOverHandler);
                           if(_loc3_ || Boolean(param1))
                           {
                              addr006d:
                              this.addEventListener(MouseEvent.ROLL_OUT,this.mouseOutHandler);
                              if(!_loc4_)
                              {
                                 §§goto(addr0080);
                              }
                              §§goto(addr00ba);
                           }
                           addr0080:
                           this.flavourTextLabel.visible = this.flavourTextLabel.includeInLayout = true;
                           if(!_loc4_)
                           {
                              this.sortingButtonGroup.visible = this.sortingButtonGroup.includeInLayout = true;
                              if(_loc3_)
                              {
                                 addr00ba:
                                 this.improvementItemList.visible = this.improvementItemList.includeInLayout = true;
                              }
                           }
                        }
                        §§goto(addr00cc);
                     }
                     §§goto(addr006d);
                  }
                  §§goto(addr0048);
               }
               §§goto(addr00ba);
            }
            addr00cc:
            return;
         }
         §§goto(addr0029);
      }
      
      private function mouseOutHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            this.background.top = -110;
            if(!_loc4_)
            {
               this.height = 40;
               if(_loc3_)
               {
                  this.flavourTextLabel.visible = this.flavourTextLabel.includeInLayout = false;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     this.sortingButtonGroup.visible = this.sortingButtonGroup.includeInLayout = false;
                     §§goto(addr0051);
                  }
                  §§goto(addr00d8);
               }
            }
            §§goto(addr00bd);
         }
         addr0051:
         if(!(_loc4_ && _loc3_))
         {
            var _temp_3:* = this.improvementItemList;
            var _loc2_:Boolean;
            this.improvementItemList.includeInLayout = _loc2_ = false;
            _temp_3.visible = _loc2_;
            if(_loc3_ || _loc2_)
            {
               if(this.hasEventListener(MouseEvent.ROLL_OUT))
               {
                  if(!_loc4_)
                  {
                     addr00bd:
                     this.removeEventListener(MouseEvent.ROLL_OUT,this.mouseOutHandler);
                     if(!(_loc4_ && _loc3_))
                     {
                        addr00d8:
                        this.addEventListener(MouseEvent.ROLL_OVER,this.mouseOverHandler);
                     }
                     §§goto(addr00e5);
                  }
               }
            }
            §§goto(addr00d8);
         }
         addr00e5:
      }
      
      private function improvementItemList_resizeHandler(param1:ResizeEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.ManageEmptyItems();
         }
      }
      
      private function ManageEmptyItems() : void
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc9_:* = 0;
         var _loc10_:ImprovementInventoryItemRendererVo = null;
         var _loc11_:* = 0;
         if(!(_loc13_ && _loc1_))
         {
            if(this.improvementItemList.dataProvider == null)
            {
               if(_loc12_ || _loc3_)
               {
                  return;
               }
            }
         }
         §§push(getEmptySlotsCount(this.improvementItemList.dataProvider));
         if(!(_loc13_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(ImprovementInventoryItemRenderer.itemWidth);
         if(!(_loc13_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Number = 82;
         §§push(this.improvementItemList.width - _loc3_);
         if(!(_loc13_ && Boolean(_loc3_)))
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:int = Math.floor(_loc4_ / _loc2_);
         var _loc6_:int = this.improvementItemList.dataProvider.length - _loc1_;
         §§push(_loc5_);
         if(!(_loc13_ && Boolean(this)))
         {
            §§push(_loc6_);
            if(_loc12_ || Boolean(this))
            {
               addr00de:
               var _temp_8:* = int(§§pop() - §§pop() % _loc5_);
               §§push(_temp_8);
               §§push(_temp_8);
            }
            var _loc7_:* = §§pop();
            if(_loc12_ || _loc1_)
            {
               if(§§pop() == _loc5_)
               {
                  if(_loc12_)
                  {
                     addr00fd:
                     _loc7_ = 0;
                  }
               }
               §§push(Number(_loc4_ - _loc5_ * _loc2_) / Number(_loc5_));
               if(_loc12_ || _loc2_)
               {
                  §§push(§§pop());
               }
               var _loc8_:* = §§pop();
               if(!_loc13_)
               {
                  (this.improvementItemList.dataGroup.layout as HorizontalLayout).gap = _loc8_;
                  if(!_loc13_)
                  {
                     addr0142:
                     §§push(_loc7_);
                     if(_loc12_)
                     {
                        if(§§pop() > _loc1_)
                        {
                           if(_loc12_ || _loc1_)
                           {
                              addr016c:
                              _loc9_ = 0;
                              addr016a:
                           }
                           loop0:
                           while(true)
                           {
                              §§push(_loc9_);
                              if(_loc12_ || Boolean(_loc3_))
                              {
                                 §§push(_loc7_);
                                 if(!_loc13_)
                                 {
                                    §§push(_loc1_);
                                    if(_loc12_ || Boolean(this))
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!(_loc13_ && Boolean(_loc3_)))
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             _loc10_ = new ImprovementInventoryItemRendererVo(true);
                                             if(!_loc13_)
                                             {
                                                this.improvementItemList.dataProvider.addItem(_loc10_);
                                                if(_loc12_ || _loc2_)
                                                {
                                                   _loc9_++;
                                                }
                                             }
                                             continue;
                                          }
                                          if(!_loc13_)
                                          {
                                             break;
                                          }
                                          while(true)
                                          {
                                             _loc11_++;
                                             if(_loc13_)
                                             {
                                                break loop0;
                                             }
                                             loop6:
                                             while(true)
                                             {
                                                §§push(_loc11_);
                                                if(_loc12_ || _loc2_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc1_);
                                                      if(!_loc13_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc7_);
                                                            addr02bd:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               addr02be:
                                                               while(true)
                                                               {
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     if(_loc12_ || _loc1_)
                                                                     {
                                                                     }
                                                                     break loop0;
                                                                  }
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc9_);
                                                                     if(!_loc13_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() - 1);
                                                                           if(!(_loc13_ && _loc1_))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 _loc9_ = §§pop();
                                                                                 if(!(_loc12_ || _loc1_))
                                                                                 {
                                                                                    break loop0;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc9_);
                                                                                    break;
                                                                                 }
                                                                              }
                                                                              addr02f5:
                                                                           }
                                                                           addr0307:
                                                                           while(true)
                                                                           {
                                                                              §§push(0);
                                                                              addr0309:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() < §§pop())
                                                                                 {
                                                                                    break loop0;
                                                                                 }
                                                                                 §§push(this.improvementItemList);
                                                                                 if(!(_loc13_ && Boolean(_loc3_)))
                                                                                 {
                                                                                    while((§§pop().dataProvider[_loc9_] as ImprovementInventoryItemRendererVo).isEmpty)
                                                                                    {
                                                                                       if(_loc13_ && Boolean(this))
                                                                                       {
                                                                                          continue loop6;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.improvementItemList);
                                                                                       }
                                                                                    }
                                                                                    continue loop10;
                                                                                    addr0267:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().dataProvider.removeItemAt(_loc9_);
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       break loop0;
                                                                                    }
                                                                                    break loop6;
                                                                                 }
                                                                              }
                                                                              break;
                                                                           }
                                                                        }
                                                                        addr02e6:
                                                                     }
                                                                     §§goto(addr02f5);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr02bb:
                                                      }
                                                      §§goto(addr0309);
                                                   }
                                                   addr02b4:
                                                }
                                                §§goto(addr02e6);
                                             }
                                          }
                                       }
                                       §§goto(addr02be);
                                    }
                                    §§goto(addr02bd);
                                 }
                                 §§goto(addr0309);
                              }
                              else
                              {
                                 addr0220:
                                 _loc11_ = §§pop();
                                 if(!_loc12_)
                                 {
                                    break;
                                 }
                                 §§push(this.improvementItemList);
                                 if(_loc12_)
                                 {
                                    §§push(int(§§pop().dataProvider.length - 1));
                                    if(!_loc13_)
                                    {
                                       _loc9_ = §§pop();
                                       if(!(_loc13_ && _loc2_))
                                       {
                                          §§goto(addr0305);
                                       }
                                       §§goto(addr0288);
                                    }
                                    §§goto(addr02b4);
                                 }
                              }
                              §§goto(addr0267);
                           }
                           §§goto(addr030d);
                        }
                        else
                        {
                           §§push(_loc7_);
                           if(!_loc13_)
                           {
                              §§push(_loc1_);
                              if(_loc12_ || Boolean(_loc3_))
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    if(_loc12_ || Boolean(_loc3_))
                                    {
                                       §§push(0);
                                       if(!(_loc13_ && Boolean(this)))
                                       {
                                          §§goto(addr0220);
                                       }
                                       §§goto(addr02e6);
                                    }
                                    §§goto(addr0228);
                                 }
                                 addr030d:
                                 return;
                              }
                              §§goto(addr02bb);
                           }
                        }
                        §§goto(addr0307);
                     }
                     §§goto(addr016c);
                  }
                  §§goto(addr016a);
               }
               §§goto(addr0142);
            }
            §§goto(addr00fd);
         }
         §§goto(addr00de);
      }
      
      private function _ImprovementInventoryView_RadioButtonGroup1_i() : RadioButtonGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:RadioButtonGroup = new RadioButtonGroup();
         if(_loc2_)
         {
            _loc1_.addEventListener("itemClick",this.__sortingButtons_itemClick);
            if(!_loc3_)
            {
               _loc1_.initialized(this,"sortingButtons");
               if(!(_loc3_ && Boolean(this)))
               {
                  §§goto(addr0060);
               }
               §§goto(addr006a);
            }
            addr0060:
            this.sortingButtons = _loc1_;
            if(_loc2_)
            {
               addr006a:
               BindingManager.executeBindings(this,"sortingButtons",this.sortingButtons);
            }
            return _loc1_;
         }
         §§goto(addr006a);
      }
      
      public function __sortingButtons_itemClick(param1:ItemClickEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.sorting_changeHandler(param1);
         }
      }
      
      private function _ImprovementInventoryView_HScaleThreeComponent1_i() : HScaleThreeComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HScaleThreeComponent = new HScaleThreeComponent();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               _loc1_.height = 150;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.dynaLibName = "gui_ui_inventory";
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.dynaBmpSourceNameLeft = "inventory_bg_left";
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.dynaBmpSourceNameMiddle = "inventory_bg_middle";
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0087:
                           _loc1_.dynaBmpSourceNameRight = "inventory_bg_right";
                           if(_loc3_ || _loc2_)
                           {
                              addr009d:
                              _loc1_.id = "background";
                              if(_loc3_)
                              {
                                 addr00a8:
                                 if(!_loc1_.document)
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       _loc1_.document = this;
                                       if(_loc3_)
                                       {
                                          §§goto(addr00d0);
                                       }
                                    }
                                    §§goto(addr00e2);
                                 }
                              }
                              §§goto(addr00d0);
                           }
                           §§goto(addr00a8);
                        }
                        §§goto(addr00d0);
                     }
                     §§goto(addr00e2);
                  }
                  §§goto(addr009d);
               }
               addr00d0:
               this.background = _loc1_;
               if(!(_loc2_ && _loc2_))
               {
                  addr00e2:
                  BindingManager.executeBindings(this,"background",this.background);
               }
               return _loc1_;
            }
            §§goto(addr0087);
         }
         §§goto(addr00e2);
      }
      
      private function _ImprovementInventoryView_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || _loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.mxmlContent = [this._ImprovementInventoryView_Group2_c(),this._ImprovementInventoryView_LocaLabel2_i(),this._ImprovementInventoryView_HGroup3_c()];
               if(_loc2_)
               {
                  addr006c:
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
         §§goto(addr006c);
      }
      
      private function _ImprovementInventoryView_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.height = 30;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.mxmlContent = [this._ImprovementInventoryView_Rect1_c(),this._ImprovementInventoryView_HGroup1_c()];
                  if(_loc3_)
                  {
                     addr0076:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr0082:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr0082);
               }
               §§goto(addr0086);
            }
            §§goto(addr0076);
         }
         addr0086:
         return _loc1_;
      }
      
      private function _ImprovementInventoryView_Rect1_c() : Rect
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Rect = new Rect();
         if(!_loc2_)
         {
            _loc1_.left = 10;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.right = 10;
               if(!_loc2_)
               {
                  _loc1_.top = 5;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0051:
                     _loc1_.bottomLeftRadiusX = 10;
                     if(_loc3_)
                     {
                        _loc1_.bottomLeftRadiusY = 30;
                        if(_loc3_)
                        {
                           addr0067:
                           _loc1_.bottomRightRadiusX = 10;
                           if(_loc3_ || _loc3_)
                           {
                              _loc1_.bottomRightRadiusY = 30;
                              if(_loc3_)
                              {
                                 addr0085:
                                 _loc1_.topLeftRadiusX = 10;
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    _loc1_.topLeftRadiusY = 30;
                                    if(_loc3_ || Boolean(_loc1_))
                                    {
                                       _loc1_.topRightRadiusX = 10;
                                       if(_loc3_ || Boolean(this))
                                       {
                                          addr00c8:
                                          _loc1_.topRightRadiusY = 30;
                                          if(_loc3_ || _loc3_)
                                          {
                                             _loc1_.percentHeight = 100;
                                             if(!(_loc2_ && Boolean(this)))
                                             {
                                                §§goto(addr00ed);
                                             }
                                             §§goto(addr0115);
                                          }
                                          §§goto(addr013d);
                                       }
                                       addr00ed:
                                       _loc1_.minHeight = 24;
                                       if(_loc3_)
                                       {
                                          addr00f8:
                                          _loc1_.maxHeight = 24;
                                          if(_loc3_ || Boolean(this))
                                          {
                                             addr0115:
                                             _loc1_.fill = this._ImprovementInventoryView_RadialGradient1_c();
                                             if(!_loc2_)
                                             {
                                                addr0124:
                                                _loc1_.filters = [this._ImprovementInventoryView_DropShadowFilter1_c()];
                                                if(_loc3_ || _loc3_)
                                                {
                                                   addr013d:
                                                   _loc1_.initialized(this,null);
                                                }
                                             }
                                             §§goto(addr0144);
                                          }
                                          §§goto(addr0124);
                                       }
                                       §§goto(addr0144);
                                    }
                                    addr0144:
                                    return _loc1_;
                                 }
                                 §§goto(addr00f8);
                              }
                              §§goto(addr013d);
                           }
                           §§goto(addr0115);
                        }
                        §§goto(addr00c8);
                     }
                     §§goto(addr0115);
                  }
                  §§goto(addr013d);
               }
               §§goto(addr0085);
            }
            §§goto(addr0051);
         }
         §§goto(addr0067);
      }
      
      private function _ImprovementInventoryView_RadialGradient1_c() : RadialGradient
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:RadialGradient = new RadialGradient();
         if(!_loc3_)
         {
            _loc1_.entries = [this._ImprovementInventoryView_GradientEntry1_c()];
         }
         return _loc1_;
      }
      
      private function _ImprovementInventoryView_GradientEntry1_c() : GradientEntry
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:GradientEntry = new GradientEntry();
         if(!_loc2_)
         {
            _loc1_.color = 165328;
            if(_loc3_)
            {
               _loc1_.ratio = 0.5;
               if(_loc3_)
               {
                  addr0042:
                  _loc1_.alpha = 0.45;
               }
               return _loc1_;
            }
         }
         §§goto(addr0042);
      }
      
      private function _ImprovementInventoryView_DropShadowFilter1_c() : DropShadowFilter
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         if(_loc3_ || _loc2_)
         {
            _loc1_.distance = 0;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.blurX = 3;
               if(!_loc2_)
               {
                  §§goto(addr005e);
               }
               §§goto(addr007c);
            }
            §§goto(addr0071);
         }
         addr005e:
         _loc1_.blurY = 3;
         if(_loc3_ || _loc2_)
         {
            addr0071:
            _loc1_.color = 165328;
            if(!_loc2_)
            {
               addr007c:
               _loc1_.alpha = 0.45;
            }
         }
         return _loc1_;
      }
      
      private function _ImprovementInventoryView_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.paddingLeft = 18;
               if(!_loc3_)
               {
                  _loc1_.paddingRight = 16;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.mxmlContent = [this._ImprovementInventoryView_BriskImageDynaLib1_c(),this._ImprovementInventoryView_LocaLabel1_i(),this._ImprovementInventoryView_HGroup2_i(),this._ImprovementInventoryView_VGroup2_c()];
                     addr0053:
                     if(_loc2_)
                     {
                        §§goto(addr0080);
                     }
                     §§goto(addr0094);
                  }
                  addr0080:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(this)))
                     {
                        addr0094:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0098);
               }
               §§goto(addr0094);
            }
            addr0098:
            return _loc1_;
         }
         §§goto(addr0053);
      }
      
      private function _ImprovementInventoryView_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.height = 35;
            if(_loc3_)
            {
               _loc1_.width = 38;
               addr0030:
               if(_loc3_)
               {
                  _loc1_.dynaLibName = "gui_ui_inventory";
                  if(_loc3_)
                  {
                     _loc1_.dynaBmpSourceName = "header_icon_improvements";
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0073:
                        _loc1_.top = 4;
                        if(_loc3_)
                        {
                           §§goto(addr007d);
                        }
                        §§goto(addr0091);
                     }
                     addr007d:
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr0091:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0091);
               }
            }
            §§goto(addr0073);
         }
         §§goto(addr0030);
      }
      
      private function _ImprovementInventoryView_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "StatusBarStylePadding";
            if(!(_loc2_ && Boolean(this)))
            {
               addr0033:
               _loc1_.percentWidth = 100;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.maxDisplayedLines = 1;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.setStyle("paddingTop",11);
                     if(!(_loc2_ && _loc3_))
                     {
                        §§goto(addr007c);
                     }
                     §§goto(addr00b2);
                  }
                  addr007c:
                  _loc1_.id = "headerTextLabel";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           §§goto(addr0093);
                        }
                     }
                     §§goto(addr00b2);
                  }
                  §§goto(addr0093);
               }
               §§goto(addr00c4);
            }
            addr0093:
            _loc1_.document = this;
            if(!(_loc2_ && _loc2_))
            {
               addr00b2:
               this.headerTextLabel = _loc1_;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr00c4:
                  BindingManager.executeBindings(this,"headerTextLabel",this.headerTextLabel);
               }
            }
            return _loc1_;
         }
         §§goto(addr0033);
      }
      
      private function _ImprovementInventoryView_HGroup2_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.gap = -4;
            if(_loc3_ || _loc2_)
            {
               _loc1_.mxmlContent = [this._ImprovementInventoryView_InventoryRadioButton1_i(),this._ImprovementInventoryView_InventoryRadioButton2_i(),this._ImprovementInventoryView_InventoryRadioButton3_i(),this._ImprovementInventoryView_InventoryRadioButton4_i(),this._ImprovementInventoryView_InventoryRadioButton5_i()];
               addr003a:
               if(!_loc2_)
               {
                  _loc1_.id = "sortingButtonGroup";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr00a1:
                              this.sortingButtonGroup = _loc1_;
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 BindingManager.executeBindings(this,"sortingButtonGroup",this.sortingButtonGroup);
                              }
                           }
                           §§goto(addr00c0);
                        }
                     }
                  }
                  §§goto(addr00a1);
               }
            }
            addr00c0:
            return _loc1_;
         }
         §§goto(addr003a);
      }
      
      private function _ImprovementInventoryView_InventoryRadioButton1_i() : InventoryRadioButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:InventoryRadioButton = new InventoryRadioButton();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.styleName = "improvementall";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.groupName = "sortingButtons";
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr005d:
                  _loc1_.id = "sortingAllButton";
                  if(!_loc2_)
                  {
                     §§goto(addr0074);
                  }
                  §§goto(addr0093);
               }
               addr0074:
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     _loc1_.document = this;
                     if(_loc3_)
                     {
                        §§goto(addr0089);
                     }
                  }
                  §§goto(addr0093);
               }
               §§goto(addr0089);
            }
            addr0089:
            this.sortingAllButton = _loc1_;
            if(_loc3_)
            {
               addr0093:
               BindingManager.executeBindings(this,"sortingAllButton",this.sortingAllButton);
            }
            return _loc1_;
         }
         §§goto(addr005d);
      }
      
      private function _ImprovementInventoryView_InventoryRadioButton2_i() : InventoryRadioButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:InventoryRadioButton = new InventoryRadioButton();
         if(!_loc3_)
         {
            _loc1_.styleName = "improvementlegendary";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.groupName = "sortingButtons";
               if(_loc2_)
               {
                  _loc1_.id = "sortingLegendaryButton";
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0062:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr007b:
                           _loc1_.document = this;
                           if(!(_loc3_ && _loc3_))
                           {
                              addr008c:
                              this.sortingLegendaryButton = _loc1_;
                              if(!_loc3_)
                              {
                                 addr0096:
                                 BindingManager.executeBindings(this,"sortingLegendaryButton",this.sortingLegendaryButton);
                              }
                              §§goto(addr00a3);
                           }
                           §§goto(addr0096);
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr007b);
               }
               addr00a3:
               return _loc1_;
            }
            §§goto(addr0096);
         }
         §§goto(addr0062);
      }
      
      private function _ImprovementInventoryView_InventoryRadioButton3_i() : InventoryRadioButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:InventoryRadioButton = new InventoryRadioButton();
         if(_loc2_)
         {
            _loc1_.styleName = "improvementepic";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.groupName = "sortingButtons";
               if(_loc2_ || Boolean(_loc1_))
               {
                  §§goto(addr0057);
               }
               §§goto(addr0094);
            }
         }
         addr0057:
         _loc1_.id = "sortingEpicButton";
         if(!_loc3_)
         {
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  _loc1_.document = this;
                  if(_loc2_)
                  {
                     §§goto(addr0082);
                  }
               }
               §§goto(addr0094);
            }
         }
         addr0082:
         this.sortingEpicButton = _loc1_;
         if(!(_loc3_ && Boolean(this)))
         {
            addr0094:
            BindingManager.executeBindings(this,"sortingEpicButton",this.sortingEpicButton);
         }
         return _loc1_;
      }
      
      private function _ImprovementInventoryView_InventoryRadioButton4_i() : InventoryRadioButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:InventoryRadioButton = new InventoryRadioButton();
         if(_loc2_)
         {
            _loc1_.styleName = "improvementrare";
            if(!_loc3_)
            {
               _loc1_.groupName = "sortingButtons";
               if(!_loc3_)
               {
                  _loc1_.id = "sortingRareButton";
                  if(!(_loc3_ && _loc2_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                           if(_loc2_ || _loc3_)
                           {
                              addr0080:
                              this.sortingRareButton = _loc1_;
                              if(_loc2_)
                              {
                                 addr008a:
                                 BindingManager.executeBindings(this,"sortingRareButton",this.sortingRareButton);
                              }
                              §§goto(addr0097);
                           }
                           §§goto(addr008a);
                        }
                        §§goto(addr0097);
                     }
                     §§goto(addr0080);
                  }
                  addr0097:
                  return _loc1_;
               }
               §§goto(addr008a);
            }
         }
         §§goto(addr0080);
      }
      
      private function _ImprovementInventoryView_InventoryRadioButton5_i() : InventoryRadioButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:InventoryRadioButton = new InventoryRadioButton();
         if(_loc3_)
         {
            _loc1_.styleName = "improvementcommon";
            if(!_loc2_)
            {
               _loc1_.groupName = "sortingButtons";
               if(_loc3_)
               {
                  addr0046:
                  _loc1_.id = "sortingCommonButton";
                  if(_loc3_ || _loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           §§goto(addr0072);
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               addr0072:
               _loc1_.document = this;
               if(_loc3_ || _loc2_)
               {
                  addr0083:
                  this.sortingCommonButton = _loc1_;
                  if(!_loc2_)
                  {
                     BindingManager.executeBindings(this,"sortingCommonButton",this.sortingCommonButton);
                  }
               }
               return _loc1_;
            }
            §§goto(addr0083);
         }
         §§goto(addr0046);
      }
      
      private function _ImprovementInventoryView_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.paddingTop = 10;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.mxmlContent = [this._ImprovementInventoryView_ToggleButton1_i()];
               if(_loc3_ || Boolean(this))
               {
                  addr0069:
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
         §§goto(addr0069);
      }
      
      private function _ImprovementInventoryView_ToggleButton1_i() : ToggleButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ToggleButton = new ToggleButton();
         if(_loc2_ || _loc3_)
         {
            _loc1_.styleName = "inventoryMinimize";
            if(!_loc3_)
            {
               _loc1_.addEventListener("change",this.__minimizeToggle_change);
               if(!_loc3_)
               {
                  _loc1_.id = "minimizeToggle";
                  if(_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           addr007a:
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              §§goto(addr0083);
                           }
                           §§goto(addr008d);
                        }
                     }
                     addr0083:
                     this.minimizeToggle = _loc1_;
                     if(!_loc3_)
                     {
                        addr008d:
                        BindingManager.executeBindings(this,"minimizeToggle",this.minimizeToggle);
                     }
                  }
                  §§goto(addr009a);
               }
               §§goto(addr0083);
            }
            addr009a:
            return _loc1_;
         }
         §§goto(addr007a);
      }
      
      public function __minimizeToggle_change(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this.minimizeToggle_changeHandler(param1);
         }
      }
      
      private function _ImprovementInventoryView_LocaLabel2_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.styleName = "improvementInventoryFlavour";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.maxDisplayedLines = 1;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.setStyle("paddingLeft",58);
                  if(_loc2_)
                  {
                     _loc1_.setStyle("paddingTop",2);
                     if(!_loc3_)
                     {
                        addr0075:
                        _loc1_.id = "flavourTextLabel";
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr009a:
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    addr00a3:
                                    this.flavourTextLabel = _loc1_;
                                    if(_loc2_)
                                    {
                                       addr00ad:
                                       BindingManager.executeBindings(this,"flavourTextLabel",this.flavourTextLabel);
                                    }
                                    §§goto(addr00ba);
                                 }
                                 §§goto(addr00ad);
                              }
                              addr00ba:
                              return _loc1_;
                           }
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr009a);
                  }
                  §§goto(addr0075);
               }
               §§goto(addr00ad);
            }
         }
         §§goto(addr0075);
      }
      
      private function _ImprovementInventoryView_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.percentWidth = 100;
            if(!_loc3_)
            {
               _loc1_.paddingLeft = 9;
               if(_loc2_)
               {
                  _loc1_.paddingRight = 9;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.paddingTop = -5;
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._ImprovementInventoryView_Group3_c()];
                        if(_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 addr0095:
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                     §§goto(addr0099);
                  }
               }
               §§goto(addr0095);
            }
            addr0099:
            return _loc1_;
         }
         §§goto(addr0095);
      }
      
      private function _ImprovementInventoryView_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || _loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || Boolean(this))
               {
                  §§goto(addr0063);
               }
               §§goto(addr0079);
            }
            §§goto(addr0085);
         }
         addr0063:
         _loc1_.mxmlContent = [this._ImprovementInventoryView_StandardInventoryList1_i(),this._ImprovementInventoryView_UiInfolayerAlignmentLine1_i()];
         if(!_loc2_)
         {
            addr0079:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr0085:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _ImprovementInventoryView_StandardInventoryList1_i() : StandardInventoryList
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StandardInventoryList = new StandardInventoryList();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.itemRenderer = this._ImprovementInventoryView_ClassFactory1_c();
            if(_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.percentHeight = 100;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.setStyle("skinClass",ImprovementInventorySkinClass);
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.addEventListener("resize",this.__improvementItemList_resize);
                        if(_loc2_)
                        {
                           addr0092:
                           _loc1_.id = "improvementItemList";
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr00b1:
                              if(!_loc1_.document)
                              {
                                 if(_loc2_)
                                 {
                                    _loc1_.document = this;
                                    if(_loc2_)
                                    {
                                       §§goto(addr00c6);
                                    }
                                 }
                                 §§goto(addr00d0);
                              }
                           }
                           addr00c6:
                           this.improvementItemList = _loc1_;
                           if(!_loc3_)
                           {
                              addr00d0:
                              BindingManager.executeBindings(this,"improvementItemList",this.improvementItemList);
                           }
                        }
                        §§goto(addr00dd);
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr00c6);
               }
               §§goto(addr00b1);
            }
         }
         addr00dd:
         return _loc1_;
      }
      
      private function _ImprovementInventoryView_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc3_)
         {
            _loc1_.generator = ImprovementInventoryItemRenderer;
         }
         return _loc1_;
      }
      
      public function __improvementItemList_resize(param1:ResizeEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.improvementItemList_resizeHandler(param1);
         }
      }
      
      private function _ImprovementInventoryView_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         if(_loc3_)
         {
            _loc1_.left = 90;
            if(_loc3_)
            {
               _loc1_.top = 90;
               if(_loc3_)
               {
                  §§goto(addr0039);
               }
               §§goto(addr00b0);
            }
            addr0039:
            _loc1_.right = 90;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.lineId = 0;
               if(_loc3_)
               {
                  §§goto(addr0062);
               }
               §§goto(addr0095);
            }
            addr0062:
            _loc1_.id = "uiInfolayerAlignmentLine";
            if(_loc3_ || _loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0095:
                     _loc1_.document = this;
                     if(_loc3_)
                     {
                        addr009e:
                        this.uiInfolayerAlignmentLine = _loc1_;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr00b0:
                           BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
                        }
                        §§goto(addr00bd);
                     }
                     §§goto(addr00b0);
                  }
                  §§goto(addr00bd);
               }
               §§goto(addr009e);
            }
            addr00bd:
            return _loc1_;
         }
         §§goto(addr00b0);
      }
      
      public function ___ImprovementInventoryView_Group1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.creationCompleteHandler(param1);
         }
      }
      
      private function _ImprovementInventoryView_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!(_loc2_ && _loc2_))
         {
            §§pop().§§slot[1] = [];
            if(_loc3_)
            {
               §§push(§§newactivation());
               if(!_loc2_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc3_)
                  {
                     §§push(0);
                     if(_loc3_ || _loc1_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():Object
                        {
                           return ImprovementInventoryViewVo.SORT_ALL;
                        },null,"sortingButtons.selectedValue");
                        if(!_loc2_)
                        {
                           §§push(§§newactivation());
                           if(_loc3_)
                           {
                              §§push(§§pop().§§slot[1]);
                              if(_loc3_ || _loc1_)
                              {
                                 §§push(1);
                                 if(_loc3_)
                                 {
                                    §§pop()[§§pop()] = new Binding(this,function():Object
                                    {
                                       return ImprovementInventoryViewVo.SORT_ALL;
                                    },null,"sortingAllButton.value");
                                    if(_loc3_)
                                    {
                                       §§push(§§newactivation());
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          addr00a8:
                                          §§push(§§pop().§§slot[1]);
                                          if(_loc3_)
                                          {
                                             §§push(2);
                                             if(_loc3_ || _loc2_)
                                             {
                                                §§pop()[§§pop()] = new Binding(this,function():Object
                                                {
                                                   return ImprovementInventoryViewVo.SORT_LEGENDARY;
                                                },null,"sortingLegendaryButton.value");
                                                if(_loc3_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(_loc3_ || _loc1_)
                                                   {
                                                      addr00f2:
                                                      §§push(§§pop().§§slot[1]);
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         addr0101:
                                                         §§push(3);
                                                         if(!_loc2_)
                                                         {
                                                            §§goto(addr0108);
                                                         }
                                                         §§goto(addr0188);
                                                      }
                                                      §§goto(addr0179);
                                                   }
                                                   §§goto(addr0172);
                                                }
                                                §§goto(addr01ad);
                                             }
                                             addr0108:
                                             §§pop()[§§pop()] = new Binding(this,function():Object
                                             {
                                                return ImprovementInventoryViewVo.SORT_EPIC;
                                             },null,"sortingEpicButton.value");
                                             if(_loc3_ || _loc3_)
                                             {
                                                addr0127:
                                                §§push(§§newactivation());
                                                if(_loc3_)
                                                {
                                                   §§push(§§pop().§§slot[1]);
                                                   if(!(_loc2_ && Boolean(this)))
                                                   {
                                                      §§push(4);
                                                      if(!(_loc2_ && Boolean(this)))
                                                      {
                                                         §§pop()[§§pop()] = new Binding(this,function():Object
                                                         {
                                                            return ImprovementInventoryViewVo.SORT_RARE;
                                                         },null,"sortingRareButton.value");
                                                         if(!(_loc2_ && Boolean(this)))
                                                         {
                                                            §§goto(addr016b);
                                                         }
                                                         §§goto(addr01ce);
                                                      }
                                                      §§goto(addr0188);
                                                   }
                                                   §§goto(addr01bb);
                                                }
                                                §§goto(addr0172);
                                             }
                                             §§goto(addr016b);
                                          }
                                          §§goto(addr0179);
                                       }
                                       §§goto(addr00f2);
                                    }
                                    §§goto(addr01ad);
                                 }
                                 §§goto(addr01bd);
                              }
                              §§goto(addr0101);
                           }
                           §§goto(addr0172);
                        }
                        §§goto(addr0127);
                     }
                     §§goto(addr01bd);
                  }
                  §§goto(addr01bb);
               }
               §§goto(addr00f2);
            }
            addr016b:
            §§push(§§newactivation());
            if(!_loc2_)
            {
               addr0172:
               §§push(§§pop().§§slot[1]);
               if(!_loc2_)
               {
                  addr0179:
                  §§push(5);
                  if(_loc3_ || _loc3_)
                  {
                     §§pop()[§§pop()] = new Binding(this,function():Object
                     {
                        return ImprovementInventoryViewVo.SORT_COMMON;
                     },null,"sortingCommonButton.value");
                     addr0188:
                     if(!_loc2_)
                     {
                        addr01ad:
                        §§push(§§newactivation());
                        if(!_loc2_)
                        {
                           §§goto(addr01d2);
                        }
                        §§goto(addr01d0);
                     }
                     §§goto(addr01ce);
                  }
                  §§goto(addr01bd);
               }
               addr01d2:
               §§goto(addr01b4);
            }
            addr01b4:
            §§push(§§pop().§§slot[1]);
            if(_loc3_)
            {
               addr01bd:
               §§pop()[6] = new Binding(this,function():uint
               {
                  return UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM;
               },null,"uiInfolayerAlignmentLine.alignment");
               addr01d0:
               addr01ce:
               §§push(result);
               addr01bb:
            }
            return §§pop();
         }
         §§goto(addr00a8);
      }
      
      [Bindable(event="propertyChange")]
      public function get background() : HScaleThreeComponent
      {
         return this._1332194002background;
      }
      
      public function set background(param1:HScaleThreeComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1332194002background;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  addr0056:
                  this._1332194002background = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"background",_loc2_,param1));
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
         §§goto(addr0056);
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourTextLabel() : LocaLabel
      {
         return this._1310457130flavourTextLabel;
      }
      
      public function set flavourTextLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1310457130flavourTextLabel;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._1310457130flavourTextLabel = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourTextLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0074);
                  }
                  §§goto(addr0065);
               }
            }
         }
         addr0074:
      }
      
      [Bindable(event="propertyChange")]
      public function get headerTextLabel() : LocaLabel
      {
         return this._1105049158headerTextLabel;
      }
      
      public function set headerTextLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1105049158headerTextLabel;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1105049158headerTextLabel = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerTextLabel",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr005e);
      }
      
      [Bindable(event="propertyChange")]
      public function get improvementItemList() : StandardInventoryList
      {
         return this._1808398663improvementItemList;
      }
      
      public function set improvementItemList(param1:StandardInventoryList) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1808398663improvementItemList;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1808398663improvementItemList = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0054);
                  }
                  §§goto(addr006c);
               }
               addr0054:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr006c:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvementItemList",_loc2_,param1));
                  }
               }
               §§goto(addr007b);
            }
         }
         addr007b:
      }
      
      [Bindable(event="propertyChange")]
      public function get minimizeToggle() : ToggleButton
      {
         return this._678297490minimizeToggle;
      }
      
      public function set minimizeToggle(param1:ToggleButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._678297490minimizeToggle;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr003b:
                  this._678297490minimizeToggle = param1;
                  if(!_loc3_)
                  {
                     addr0045:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"minimizeToggle",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0063);
               }
               §§goto(addr0045);
            }
            addr0063:
            return;
         }
         §§goto(addr003b);
      }
      
      [Bindable(event="propertyChange")]
      public function get sortingAllButton() : InventoryRadioButton
      {
         return this._1623077105sortingAllButton;
      }
      
      public function set sortingAllButton(param1:InventoryRadioButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1623077105sortingAllButton;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1623077105sortingAllButton = param1;
                  if(!_loc3_)
                  {
                     addr004e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sortingAllButton",_loc2_,param1));
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
         §§goto(addr004e);
      }
      
      [Bindable(event="propertyChange")]
      public function get sortingButtonGroup() : HGroup
      {
         return this._1551432119sortingButtonGroup;
      }
      
      public function set sortingButtonGroup(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1551432119sortingButtonGroup;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1551432119sortingButtonGroup = param1;
                  if(_loc3_)
                  {
                     §§goto(addr0051);
                  }
                  §§goto(addr0069);
               }
               addr0051:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     addr0069:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sortingButtonGroup",_loc2_,param1));
                  }
               }
               §§goto(addr0078);
            }
            addr0078:
            return;
         }
         §§goto(addr0069);
      }
      
      [Bindable(event="propertyChange")]
      public function get sortingButtons() : RadioButtonGroup
      {
         return this._353794723sortingButtons;
      }
      
      public function set sortingButtons(param1:RadioButtonGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._353794723sortingButtons;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr0035:
                  this._353794723sortingButtons = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sortingButtons",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0054);
            }
            addr007b:
            return;
         }
         §§goto(addr0035);
      }
      
      [Bindable(event="propertyChange")]
      public function get sortingCommonButton() : InventoryRadioButton
      {
         return this._1821219679sortingCommonButton;
      }
      
      public function set sortingCommonButton(param1:InventoryRadioButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1821219679sortingCommonButton;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._1821219679sortingCommonButton = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0061);
                  }
                  §§goto(addr0070);
               }
               addr0061:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0070:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sortingCommonButton",_loc2_,param1));
                  }
               }
               §§goto(addr007f);
            }
            addr007f:
            return;
         }
         §§goto(addr0061);
      }
      
      [Bindable(event="propertyChange")]
      public function get sortingEpicButton() : InventoryRadioButton
      {
         return this._1371491525sortingEpicButton;
      }
      
      public function set sortingEpicButton(param1:InventoryRadioButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1371491525sortingEpicButton;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1371491525sortingEpicButton = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr007b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sortingEpicButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr007b);
               }
            }
         }
         addr008a:
      }
      
      [Bindable(event="propertyChange")]
      public function get sortingLegendaryButton() : InventoryRadioButton
      {
         return this._1591903273sortingLegendaryButton;
      }
      
      public function set sortingLegendaryButton(param1:InventoryRadioButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1591903273sortingLegendaryButton;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1591903273sortingLegendaryButton = param1;
                  if(!_loc4_)
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sortingLegendaryButton",_loc2_,param1));
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
         §§goto(addr0056);
      }
      
      [Bindable(event="propertyChange")]
      public function get sortingRareButton() : InventoryRadioButton
      {
         return this._1991244568sortingRareButton;
      }
      
      public function set sortingRareButton(param1:InventoryRadioButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1991244568sortingRareButton;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1991244568sortingRareButton = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006a:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sortingRareButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0079);
               }
               §§goto(addr006a);
            }
            addr0079:
            return;
         }
         §§goto(addr006a);
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
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._1218573432uiInfolayerAlignmentLine = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr0069:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0090);
               }
               §§goto(addr0069);
            }
            addr0090:
            return;
         }
         §§goto(addr0069);
      }
   }
}

