package net.bigpoint.cityrama.view.playfieldItemInventory.ui.components
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
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ItemClickEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.ResizeEvent;
   import mx.filters.*;
   import mx.graphics.GradientEntry;
   import mx.graphics.RadialGradient;
   import mx.styles.*;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.inventory.PlayfieldItemInventoryViewProxy;
   import net.bigpoint.cityrama.model.inventory.vo.PlayfieldItemInventoryViewVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.HScaleThreeComponent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.StandardInventoryList;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.ImprovementInventoryItemRenderer;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.InventoryRadioButton;
   import net.bigpoint.cityrama.view.playfieldItemInventory.ui.skins.PlayfieldItemInventoryListSkin;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
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
   
   public class PlayfieldItemInventoryView extends Group implements IBindingClient
   {
      
      public static const EVENT_ALL_DESELECTED:String = "EVENT_ALL_DESELECTED";
      
      public static const EVENT_MINIMIZED_CHANGED:String = "EVENT_MINIMIZED_CHANGED";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc1_))
      {
         EVENT_ALL_DESELECTED = "EVENT_ALL_DESELECTED";
         if(_loc2_)
         {
            EVENT_MINIMIZED_CHANGED = "EVENT_MINIMIZED_CHANGED";
         }
      }
      
      private var _1332194002background:HScaleThreeComponent;
      
      private var _1310457130flavourTextLabel:LocaLabel;
      
      private var _1105049158headerTextLabel:LocaLabel;
      
      private var _854143319minimiseButton:ToggleButton;
      
      private var _1789086453minimisedLabel:LocaLabel;
      
      private var _1943769783playfieldItemList:StandardInventoryList;
      
      private var _1551432119sortingButtonGroup:HGroup;
      
      private var _353794723sortingButtons:RadioButtonGroup;
      
      private var _62340928sortingCommercialButton:InventoryRadioButton;
      
      private var _930584998sortingDecorationButton:InventoryRadioButton;
      
      private var _752823809sortingEmergencyButton:InventoryRadioButton;
      
      private var _527723058sortingResidentialButton:InventoryRadioButton;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:PlayfieldItemInventoryViewVo;
      
      private var _isDirty:Boolean;
      
      private var _scrollIndexWaiting:int = -1;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function PlayfieldItemInventoryView()
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
         if(_loc4_)
         {
            §§push(null);
            if(_loc4_)
            {
               §§pop().§§slot[3] = §§pop();
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§newactivation());
                  if(_loc4_ || _loc1_)
                  {
                     addr0048:
                     §§pop().§§slot[5] = null;
                     if(!_loc3_)
                     {
                        this.mx_internal::_bindings = [];
                        if(!_loc3_)
                        {
                           this.mx_internal::_watchers = [];
                           if(!(_loc3_ && _loc2_))
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc4_ || _loc2_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    super();
                                    if(!_loc3_)
                                    {
                                       mx_internal::_document = this;
                                       if(_loc4_)
                                       {
                                          addr00b1:
                                          §§push(§§newactivation());
                                          if(_loc4_ || _loc1_)
                                          {
                                             §§pop().§§slot[1] = this._PlayfieldItemInventoryView_bindingsSetup();
                                             if(!(_loc3_ && _loc1_))
                                             {
                                                §§push(§§newactivation());
                                                if(_loc4_)
                                                {
                                                   addr00e0:
                                                   §§pop().§§slot[2] = [];
                                                   if(!_loc3_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!_loc3_)
                                                      {
                                                         §§pop().§§slot[3] = this;
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(_loc4_ || Boolean(this))
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!(_loc3_ && Boolean(this)))
                                                                  {
                                                                     addr0129:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_playfieldItemInventory_ui_components_PlayfieldItemInventoryViewWatcherSetupUtil");
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        addr0151:
                                                                        §§push(§§newactivation());
                                                                        if(_loc4_ || _loc1_)
                                                                        {
                                                                           addr0161:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr0177:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return PlayfieldItemInventoryView[param1];
                                                                              },bindings,watchers);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr0194:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr01e0:
                                                                                       this.percentWidth = 100;
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr01eb:
                                                                                          this.height = 150;
                                                                                          if(!(_loc3_ && _loc1_))
                                                                                          {
                                                                                             addr01fe:
                                                                                             this.top = -4;
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                addr0209:
                                                                                                this.mxmlContent = [this._PlayfieldItemInventoryView_HScaleThreeComponent1_i(),this._PlayfieldItemInventoryView_VGroup1_c()];
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr0220:
                                                                                                   this._PlayfieldItemInventoryView_RadioButtonGroup1_i();
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      addr022b:
                                                                                                      this.addEventListener("creationComplete",this.___PlayfieldItemInventoryView_Group1_creationComplete);
                                                                                                      if(_loc4_ || _loc3_)
                                                                                                      {
                                                                                                         addr0247:
                                                                                                         i = 0;
                                                                                                         addr0245:
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
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     break loop2;
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().§§slot[4]);
                                                                                                                     if(_loc3_ && Boolean(this))
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(uint(§§pop() + 1));
                                                                                                                     if(_loc3_ && _loc3_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(§§newactivation());
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        var _temp_22:* = §§pop();
                                                                                                                        §§pop().§§slot[4] = _temp_22;
                                                                                                                        if(_loc4_ || _loc2_)
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
                                                                                                      addr02b3:
                                                                                                   }
                                                                                                   §§goto(addr0245);
                                                                                                }
                                                                                                §§goto(addr022b);
                                                                                             }
                                                                                             §§goto(addr0220);
                                                                                          }
                                                                                          §§goto(addr0209);
                                                                                       }
                                                                                       §§goto(addr0220);
                                                                                    }
                                                                                    §§goto(addr0209);
                                                                                 }
                                                                                 §§goto(addr0245);
                                                                              }
                                                                              §§goto(addr0209);
                                                                           }
                                                                           §§goto(addr0245);
                                                                        }
                                                                        §§goto(addr0247);
                                                                     }
                                                                     §§goto(addr01eb);
                                                                  }
                                                                  §§goto(addr0247);
                                                               }
                                                               §§goto(addr022b);
                                                            }
                                                            §§goto(addr0177);
                                                         }
                                                         §§goto(addr02b3);
                                                      }
                                                      §§goto(addr0129);
                                                   }
                                                   §§goto(addr0245);
                                                }
                                                §§goto(addr0161);
                                             }
                                             §§goto(addr022b);
                                          }
                                          §§goto(addr00e0);
                                       }
                                    }
                                    §§goto(addr01e0);
                                 }
                                 §§goto(addr0194);
                              }
                              §§goto(addr00b1);
                           }
                           §§goto(addr0151);
                        }
                        §§goto(addr01fe);
                     }
                     §§goto(addr0209);
                  }
                  §§goto(addr0129);
               }
               §§goto(addr0209);
            }
            §§goto(addr0048);
         }
         §§goto(addr00e0);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            PlayfieldItemInventoryView._watcherSetupUtil = param1;
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
            if(_loc2_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     §§goto(addr0040);
                  }
               }
               else
               {
                  addr004e:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            addr0040:
            return;
         }
         §§goto(addr004e);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super.initialize();
         }
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.headerTextLabel.text = LocaUtils.getString("rcl.booklayer.inventory","rcl.booklayer.inventory.buildings.title.capital");
            if(!_loc2_)
            {
               this.minimisedLabel.text = LocaUtils.getString("rcl.booklayer.inventory","rcl.booklayer.inventory.minimised");
               if(!(_loc2_ && _loc3_))
               {
                  this.flavourTextLabel.text = LocaUtils.getString("rcl.booklayer.inventory","rcl.booklayer.inventory.flavour");
                  if(!_loc2_)
                  {
                     §§goto(addr007d);
                  }
                  §§goto(addr009c);
               }
               addr007d:
               this.playfieldItemList.addEventListener(IndexChangeEvent.CHANGE,this.handleListIndexChanged);
               if(_loc3_ || Boolean(param1))
               {
                  addr009c:
                  this.setTooltips();
               }
               return;
            }
         }
         §§goto(addr009c);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.commitProperties();
            if(!(_loc2_ && _loc1_))
            {
               §§goto(addr0027);
            }
            §§goto(addr007e);
         }
         addr0027:
         §§push(Boolean(this._data));
         if(_loc1_ || Boolean(this))
         {
            var _temp_3:* = §§pop();
            §§push(_temp_3);
            if(_temp_3)
            {
               if(_loc1_ || _loc1_)
               {
                  §§pop();
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§goto(addr006b);
                  }
                  §§goto(addr007e);
               }
            }
         }
         addr006b:
         §§push(this._isDirty);
         if(!(_loc2_ && _loc2_))
         {
            §§push(§§pop());
         }
         if(§§pop())
         {
            if(_loc1_)
            {
               this._isDirty = false;
               if(_loc1_)
               {
                  addr007e:
                  this.calculateListGap();
                  if(_loc1_ || _loc1_)
                  {
                     this.handleSortingChanged();
                     if(!(_loc2_ && _loc2_))
                     {
                        this.checkPreSelection();
                        if(_loc1_)
                        {
                           this.sortingResidentialButton.amountLabelValue = this._data.getCategoryAmountLabel(this.sortingResidentialButton.value.toString());
                           if(_loc1_)
                           {
                              addr00d7:
                              this.sortingCommercialButton.amountLabelValue = this._data.getCategoryAmountLabel(this.sortingCommercialButton.value.toString());
                              if(_loc1_ || _loc2_)
                              {
                                 this.sortingDecorationButton.amountLabelValue = this._data.getCategoryAmountLabel(this.sortingDecorationButton.value.toString());
                                 if(_loc1_)
                                 {
                                    this.sortingEmergencyButton.amountLabelValue = this._data.getCategoryAmountLabel(this.sortingEmergencyButton.value.toString());
                                    if(!_loc2_)
                                    {
                                       addr0146:
                                       this.minimize = this._data.minimized;
                                    }
                                    §§goto(addr0152);
                                 }
                              }
                           }
                           §§goto(addr0146);
                        }
                        §§goto(addr0152);
                     }
                     §§goto(addr00d7);
                  }
               }
            }
         }
         addr0152:
      }
      
      private function checkPreSelection() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            if(this._data.preselectedIndex != -1)
            {
               if(_loc1_)
               {
                  addr0039:
                  this.playfieldItemList.addEventListener(FlexEvent.UPDATE_COMPLETE,this.handleListUpdate);
               }
            }
            return;
         }
         §§goto(addr0039);
      }
      
      private function handleListUpdate(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(this.playfieldItemList);
            if(!(_loc3_ && _loc2_))
            {
               §§pop().removeEventListener(FlexEvent.UPDATE_COMPLETE,this.handleListUpdate);
               if(_loc2_)
               {
                  §§push(this.playfieldItemList);
                  if(_loc2_)
                  {
                     addr0053:
                     §§push(this._data);
                     if(_loc2_ || Boolean(this))
                     {
                        §§push(§§pop().preselectedIndex);
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           §§pop().selectedIndex = §§pop();
                           if(!(_loc3_ && _loc2_))
                           {
                              addr009a:
                              this.playfieldItemList.ensureIndexIsVisible(this._data.preselectedIndex);
                              addr0097:
                              addr0093:
                              addr008f:
                           }
                           §§goto(addr009e);
                        }
                        §§goto(addr009a);
                     }
                     §§goto(addr0097);
                  }
                  §§goto(addr0093);
               }
               addr009e:
               return;
            }
            §§goto(addr0053);
         }
         §§goto(addr008f);
      }
      
      private function handleSortingChanged(param1:ItemClickEvent = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            if(param1)
            {
               if(_loc3_)
               {
                  dispatchEvent(new Event(EVENT_ALL_DESELECTED,false));
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0052:
                     §§push(this.playfieldItemList);
                     §§push(this._data);
                     if(_loc3_)
                     {
                        if(this.sortingButtons.selectedValue == null)
                        {
                           addr006c:
                           §§push(ServerTagConstants.RESIDENTIAL);
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(§§pop());
                              if(_loc3_ || Boolean(param1))
                              {
                              }
                           }
                        }
                        else
                        {
                           §§push(this.sortingButtons.selectedValue.toString());
                        }
                        §§pop().dataProvider = §§pop().getSortedItemList(§§pop());
                        §§goto(addr00b0);
                     }
                     §§goto(addr006c);
                  }
               }
               §§goto(addr00b0);
            }
            §§goto(addr0052);
         }
         addr00b0:
      }
      
      private function set minimize(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(this.minimiseButton)
            {
               if(_loc3_ || _loc3_)
               {
                  addr003b:
                  this.minimiseButton.selected = param1;
                  if(!_loc2_)
                  {
                     this.handleMinimiseButton();
                  }
               }
            }
            return;
         }
         §§goto(addr003b);
      }
      
      private function handleMinimiseButton(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            if(!this.minimiseButton.selected)
            {
               if(_loc4_)
               {
                  §§push(this.background);
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     §§push(0);
                     if(_loc4_ || Boolean(param1))
                     {
                        §§pop().top = §§pop();
                        if(!_loc3_)
                        {
                           addr0052:
                           this.height = 150;
                           if(!(_loc3_ && Boolean(param1)))
                           {
                              §§push(this.minimisedLabel);
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§push(false);
                                 if(!_loc3_)
                                 {
                                    §§pop().visible = §§pop();
                                    if(!(_loc3_ && Boolean(this)))
                                    {
                                       §§push(this.flavourTextLabel);
                                       if(!_loc3_)
                                       {
                                          §§push(this.flavourTextLabel);
                                          if(_loc4_)
                                          {
                                             §§push(true);
                                             if(_loc4_)
                                             {
                                                var _temp_7:* = §§pop();
                                                §§push(_temp_7);
                                                §§push(_temp_7);
                                                if(!_loc3_)
                                                {
                                                   var _loc2_:* = §§pop();
                                                   if(!(_loc3_ && Boolean(this)))
                                                   {
                                                      §§pop().includeInLayout = §§pop();
                                                      if(_loc4_ || Boolean(param1))
                                                      {
                                                         §§push(_loc2_);
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               §§pop().visible = §§pop();
                                                               if(!_loc3_)
                                                               {
                                                                  addr00ed:
                                                                  §§push(this.sortingButtonGroup);
                                                                  this.sortingButtonGroup.includeInLayout = _loc2_ = true;
                                                                  §§pop().visible = _loc2_;
                                                                  if(!(_loc3_ && Boolean(param1)))
                                                                  {
                                                                     §§push(this.playfieldItemList);
                                                                     if(_loc4_ || Boolean(param1))
                                                                     {
                                                                        §§push(this.playfieldItemList);
                                                                        if(_loc4_ || _loc2_)
                                                                        {
                                                                           §§push(true);
                                                                           if(_loc4_)
                                                                           {
                                                                              var _temp_15:* = §§pop();
                                                                              §§push(_temp_15);
                                                                              §§push(_temp_15);
                                                                              if(_loc4_)
                                                                              {
                                                                                 _loc2_ = §§pop();
                                                                                 if(!(_loc3_ && _loc2_))
                                                                                 {
                                                                                    §§pop().includeInLayout = §§pop();
                                                                                    if(_loc4_ || Boolean(this))
                                                                                    {
                                                                                       §§push(_loc2_);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             §§pop().visible = §§pop();
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr01b9:
                                                                                                §§push(this.flavourTextLabel);
                                                                                                this.flavourTextLabel.includeInLayout = _loc2_ = false;
                                                                                                addr01be:
                                                                                                §§pop().visible = _loc2_;
                                                                                                addr01bc:
                                                                                                addr01bb:
                                                                                                if(_loc4_ || _loc2_)
                                                                                                {
                                                                                                   addr01ce:
                                                                                                   this.sortingButtonGroup.visible = this.sortingButtonGroup.includeInLayout = false;
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      addr01fc:
                                                                                                      §§push(this.playfieldItemList);
                                                                                                      this.playfieldItemList.includeInLayout = _loc2_ = false;
                                                                                                      addr0201:
                                                                                                      §§pop().visible = _loc2_;
                                                                                                      addr01ff:
                                                                                                      addr01fe:
                                                                                                      if(_loc4_ || Boolean(param1))
                                                                                                      {
                                                                                                         addr0211:
                                                                                                         dispatchEvent(new Event(EVENT_MINIMIZED_CHANGED,true));
                                                                                                      }
                                                                                                      addr021f:
                                                                                                      return;
                                                                                                      addr01e5:
                                                                                                      addr01fb:
                                                                                                      addr01fa:
                                                                                                      addr01f9:
                                                                                                      addr01f5:
                                                                                                   }
                                                                                                   §§goto(addr0211);
                                                                                                }
                                                                                                §§goto(addr01e5);
                                                                                                addr01b8:
                                                                                                addr01b7:
                                                                                                addr01b6:
                                                                                                addr01b2:
                                                                                                addr01ae:
                                                                                             }
                                                                                             §§goto(addr0211);
                                                                                          }
                                                                                          §§goto(addr0201);
                                                                                       }
                                                                                       §§goto(addr01ff);
                                                                                    }
                                                                                    §§goto(addr01fe);
                                                                                 }
                                                                                 §§goto(addr01fc);
                                                                              }
                                                                              §§goto(addr01fb);
                                                                           }
                                                                           §§goto(addr01fa);
                                                                        }
                                                                        §§goto(addr01f9);
                                                                     }
                                                                     §§goto(addr01f5);
                                                                  }
                                                                  §§goto(addr01ce);
                                                               }
                                                               §§goto(addr0211);
                                                            }
                                                            §§goto(addr01be);
                                                         }
                                                         §§goto(addr01bc);
                                                      }
                                                      §§goto(addr01bb);
                                                   }
                                                   §§goto(addr01b9);
                                                }
                                                §§goto(addr01b8);
                                             }
                                             §§goto(addr01b7);
                                          }
                                          §§goto(addr01b6);
                                       }
                                       §§goto(addr01b2);
                                    }
                                    else
                                    {
                                       addr0198:
                                       this.height = 40;
                                       if(!_loc3_)
                                       {
                                          addr01a7:
                                          this.minimisedLabel.visible = true;
                                          addr01a6:
                                          if(!_loc3_)
                                          {
                                             §§goto(addr01ae);
                                          }
                                          §§goto(addr021f);
                                       }
                                    }
                                    §§goto(addr01e5);
                                 }
                                 §§goto(addr01a7);
                              }
                              §§goto(addr01a6);
                           }
                           §§goto(addr01ce);
                        }
                        §§goto(addr0211);
                     }
                     else
                     {
                        addr0188:
                        §§pop().top = §§pop();
                        if(_loc4_ || _loc2_)
                        {
                           §§goto(addr0198);
                        }
                     }
                     §§goto(addr01e5);
                  }
                  else
                  {
                     addr0186:
                     §§push(-110);
                  }
                  §§goto(addr0188);
               }
               §§goto(addr0052);
            }
            else
            {
               §§push(this.background);
            }
            §§goto(addr0186);
         }
         §§goto(addr00ed);
      }
      
      private function setTooltips() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this.sortingResidentialButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.category.residential");
            if(!_loc2_)
            {
               this.sortingCommercialButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.category.shops");
               if(_loc1_)
               {
                  this.sortingDecorationButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.category.decoration");
                  if(_loc1_)
                  {
                     §§goto(addr006e);
                  }
               }
               §§goto(addr0085);
            }
            addr006e:
            this.sortingEmergencyButton.toolTip = LocaUtils.getString("rcl.booklayer.inventory","rcl.booklayer.inventory.category.tooltip.emergencyItems");
            if(!_loc2_)
            {
               addr0085:
               this.minimiseButton.toolTip = LocaUtils.getString("rcl.tooltips.hipInventory","rcl.tooltips.hipInventory.minimize");
            }
            §§goto(addr0097);
         }
         addr0097:
      }
      
      private function handleListIndexChanged(param1:IndexChangeEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(param1.newIndex == -1)
            {
               if(_loc2_ || Boolean(this))
               {
                  dispatchEvent(new Event(EVENT_ALL_DESELECTED,false));
               }
            }
         }
      }
      
      public function set data(param1:PlayfieldItemInventoryViewVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(_loc3_)
               {
                  this._isDirty = true;
                  if(!_loc2_)
                  {
                     addr004b:
                     this._data = param1;
                     if(_loc3_)
                     {
                        invalidateProperties();
                     }
                  }
                  §§goto(addr005a);
               }
               §§goto(addr004b);
            }
            addr005a:
            return;
         }
         §§goto(addr004b);
      }
      
      public function set sortCategory(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.sortingButtons.selectedValue = param1;
            if(!_loc3_)
            {
               this.handleSortingChanged();
            }
         }
      }
      
      public function get inventoryMinimized() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            if(this.minimiseButton)
            {
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr002a);
               }
            }
            return false;
         }
         addr002a:
         return this.minimiseButton.selected;
      }
      
      public function scrollToIndex(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(param1 != -1)
            {
               if(_loc3_)
               {
                  §§push(this.playfieldItemList);
                  if(!_loc2_)
                  {
                     if(§§pop().currentState == null)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           this._scrollIndexWaiting = param1;
                           if(_loc3_)
                           {
                              addr0063:
                              §§push(this.playfieldItemList);
                              if(_loc3_ || Boolean(this))
                              {
                                 §§pop().addEventListener(FlexEvent.UPDATE_COMPLETE,this.handleListReadyToScroll);
                                 if(!_loc2_)
                                 {
                                    return;
                                 }
                              }
                              else
                              {
                                 addr0090:
                                 §§pop().ensureIndexIsVisible(param1);
                              }
                              §§goto(addr0095);
                           }
                           else
                           {
                              addr008c:
                              §§push(this.playfieldItemList);
                           }
                           §§goto(addr0090);
                        }
                        §§goto(addr0095);
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr0090);
               }
               §§goto(addr008c);
            }
            addr0095:
            return;
         }
         §§goto(addr0063);
      }
      
      public function resetSelection() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this.playfieldItemList.selectedIndex = -1;
            if(_loc1_ || Boolean(this))
            {
               addr0035:
               dispatchEvent(new Event(EVENT_ALL_DESELECTED,false));
            }
            return;
         }
         §§goto(addr0035);
      }
      
      private function handleListReadyToScroll(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            §§push(this.playfieldItemList);
            if(!_loc2_)
            {
               §§pop().removeEventListener(FlexEvent.UPDATE_COMPLETE,this.handleListReadyToScroll);
               if(_loc3_)
               {
                  if(this._scrollIndexWaiting != -1)
                  {
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr006c:
                        this.playfieldItemList.ensureIndexIsVisible(this._scrollIndexWaiting);
                        addr0068:
                        if(_loc3_ || Boolean(this))
                        {
                           addr0081:
                           this._scrollIndexWaiting = -1;
                        }
                        §§goto(addr0087);
                     }
                     §§goto(addr0081);
                  }
               }
               addr0087:
               return;
            }
            §§goto(addr006c);
         }
         §§goto(addr0068);
      }
      
      private function calculateListGap() : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(_loc5_ || _loc2_)
         {
            if(!this.playfieldItemList.dataProvider)
            {
               if(!(_loc6_ && Boolean(this)))
               {
                  §§goto(addr003c);
               }
            }
            §§push(ImprovementInventoryItemRenderer.itemWidth);
            if(!(_loc6_ && Boolean(this)))
            {
               §§push(§§pop());
            }
            var _loc1_:* = §§pop();
            var _loc2_:Number = 82;
            §§push(this.playfieldItemList.width - _loc2_);
            if(!(_loc6_ && Boolean(this)))
            {
               §§push(§§pop());
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = Math.floor(_loc3_ / _loc1_);
            if(!(_loc6_ && Boolean(_loc2_)))
            {
               (this.playfieldItemList.dataGroup.layout as HorizontalLayout).gap = (_loc3_ - _loc4_ * _loc1_) / _loc4_;
            }
            return;
         }
         addr003c:
      }
      
      private function handleMinimisedComponentClick(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(Boolean(this._data));
            if(!_loc2_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(_temp_2)
               {
                  if(_loc3_)
                  {
                     §§pop();
                     if(_loc3_)
                     {
                        addr003c:
                        §§push(this.inventoryMinimized);
                        if(!_loc2_)
                        {
                           addr0052:
                           §§push(§§pop());
                           if(!_loc2_)
                           {
                              §§goto(addr0058);
                           }
                        }
                        §§goto(addr0069);
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr0069);
               }
               addr0058:
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr0069:
                     if(!(param1.target is ToggleButton))
                     {
                        if(!(_loc2_ && Boolean(param1)))
                        {
                           addr007a:
                           this.minimize = false;
                        }
                     }
                  }
               }
               return;
            }
            §§goto(addr0052);
         }
         §§goto(addr003c);
      }
      
      private function _PlayfieldItemInventoryView_RadioButtonGroup1_i() : RadioButtonGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:RadioButtonGroup = new RadioButtonGroup();
         if(!_loc3_)
         {
            _loc1_.addEventListener("itemClick",this.__sortingButtons_itemClick);
            if(_loc2_ || Boolean(this))
            {
               _loc1_.initialized(this,"sortingButtons");
               if(!_loc3_)
               {
                  addr0062:
                  this.sortingButtons = _loc1_;
                  if(!_loc3_)
                  {
                     BindingManager.executeBindings(this,"sortingButtons",this.sortingButtons);
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0062);
      }
      
      public function __sortingButtons_itemClick(param1:ItemClickEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.handleSortingChanged(param1);
         }
      }
      
      private function _PlayfieldItemInventoryView_HScaleThreeComponent1_i() : HScaleThreeComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HScaleThreeComponent = new HScaleThreeComponent();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc3_))
            {
               addr003b:
               _loc1_.height = 150;
               if(_loc3_)
               {
                  _loc1_.dynaLibName = "gui_ui_inventory";
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.dynaBmpSourceNameLeft = "inventory_bg_left";
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr007a:
                        _loc1_.dynaBmpSourceNameMiddle = "inventory_bg_middle";
                        if(!_loc2_)
                        {
                           _loc1_.dynaBmpSourceNameRight = "inventory_bg_right";
                           if(_loc3_)
                           {
                              §§goto(addr0095);
                           }
                           §§goto(addr00ca);
                        }
                     }
                     addr0095:
                     _loc1_.id = "background";
                     if(!_loc2_)
                     {
                        addr00a0:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              §§goto(addr00b9);
                           }
                        }
                        §§goto(addr00ca);
                     }
                     addr00b9:
                     _loc1_.document = this;
                     if(_loc3_ || Boolean(this))
                     {
                        addr00ca:
                        this.background = _loc1_;
                        if(_loc3_)
                        {
                           addr00d4:
                           BindingManager.executeBindings(this,"background",this.background);
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr007a);
               }
               §§goto(addr00d4);
            }
            §§goto(addr00a0);
         }
         §§goto(addr003b);
      }
      
      private function _PlayfieldItemInventoryView_VGroup1_c() : VGroup
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
               _loc1_.mxmlContent = [this._PlayfieldItemInventoryView_Group2_c(),this._PlayfieldItemInventoryView_LocaLabel3_i(),this._PlayfieldItemInventoryView_HGroup3_c()];
               if(!_loc3_)
               {
                  addr0066:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        addr007a:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr007a);
         }
         §§goto(addr0066);
      }
      
      private function _PlayfieldItemInventoryView_Group2_c() : Group
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
               _loc1_.height = 30;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.mxmlContent = [this._PlayfieldItemInventoryView_Rect1_c(),this._PlayfieldItemInventoryView_HGroup1_c()];
                  if(_loc2_)
                  {
                     addr0068:
                     _loc1_.addEventListener("click",this.___PlayfieldItemInventoryView_Group2_click);
                     if(_loc2_)
                     {
                        addr0079:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr008d:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0091);
                     }
                     §§goto(addr008d);
                  }
                  addr0091:
                  return _loc1_;
               }
               §§goto(addr0079);
            }
            §§goto(addr0068);
         }
         §§goto(addr0079);
      }
      
      private function _PlayfieldItemInventoryView_Rect1_c() : Rect
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Rect = new Rect();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.left = 10;
            if(_loc2_)
            {
               _loc1_.right = 10;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.top = 5;
                  if(!_loc3_)
                  {
                     _loc1_.bottomLeftRadiusX = 10;
                     if(_loc2_)
                     {
                        _loc1_.bottomLeftRadiusY = 30;
                        if(!_loc3_)
                        {
                           §§goto(addr0067);
                        }
                        §§goto(addr00f0);
                     }
                     §§goto(addr00b5);
                  }
                  §§goto(addr00d3);
               }
               addr0067:
               _loc1_.bottomRightRadiusX = 10;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.bottomRightRadiusY = 30;
                  if(_loc2_)
                  {
                     _loc1_.topLeftRadiusX = 10;
                     if(_loc2_ || _loc2_)
                     {
                        _loc1_.topLeftRadiusY = 30;
                        if(!(_loc3_ && _loc3_))
                        {
                           addr00b5:
                           _loc1_.topRightRadiusX = 10;
                           if(_loc2_ || Boolean(this))
                           {
                              §§goto(addr00c8);
                           }
                           §§goto(addr00f0);
                        }
                        §§goto(addr011e);
                     }
                     §§goto(addr00c8);
                  }
                  §§goto(addr010f);
               }
               addr00c8:
               _loc1_.topRightRadiusY = 30;
               if(!_loc3_)
               {
                  addr00d3:
                  _loc1_.percentHeight = 100;
                  if(!_loc3_)
                  {
                     _loc1_.minHeight = 24;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr00f0:
                        _loc1_.maxHeight = 24;
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr010f:
                           _loc1_.fill = this._PlayfieldItemInventoryView_RadialGradient1_c();
                           if(_loc2_)
                           {
                              §§goto(addr011e);
                           }
                           §§goto(addr0137);
                        }
                        addr011e:
                        _loc1_.filters = [this._PlayfieldItemInventoryView_DropShadowFilter1_c()];
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr0137:
                           _loc1_.initialized(this,null);
                        }
                     }
                     §§goto(addr013e);
                  }
                  §§goto(addr010f);
               }
               addr013e:
               return _loc1_;
            }
            §§goto(addr00b5);
         }
         §§goto(addr011e);
      }
      
      private function _PlayfieldItemInventoryView_RadialGradient1_c() : RadialGradient
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:RadialGradient = new RadialGradient();
         if(_loc3_ || _loc2_)
         {
            _loc1_.entries = [this._PlayfieldItemInventoryView_GradientEntry1_c()];
         }
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryView_GradientEntry1_c() : GradientEntry
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:GradientEntry = new GradientEntry();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.color = 165328;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.ratio = 0.5;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.alpha = 0.45;
               }
            }
         }
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryView_DropShadowFilter1_c() : DropShadowFilter
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         if(_loc2_)
         {
            _loc1_.distance = 0;
            if(_loc2_ || Boolean(_loc1_))
            {
               addr003f:
               _loc1_.blurX = 3;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.blurY = 3;
                  if(_loc2_ || Boolean(this))
                  {
                     §§goto(addr0070);
                  }
               }
               §§goto(addr0083);
            }
            addr0070:
            _loc1_.color = 165328;
            if(_loc2_ || Boolean(_loc1_))
            {
               addr0083:
               _loc1_.alpha = 0.45;
            }
            return _loc1_;
         }
         §§goto(addr003f);
      }
      
      private function _PlayfieldItemInventoryView_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               _loc1_.paddingLeft = 18;
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0045:
                  _loc1_.paddingRight = 16;
                  if(!_loc3_)
                  {
                     _loc1_.mxmlContent = [this._PlayfieldItemInventoryView_BriskImageDynaLib1_c(),this._PlayfieldItemInventoryView_LocaLabel1_i(),this._PlayfieldItemInventoryView_Group3_c(),this._PlayfieldItemInventoryView_LocaLabel2_i(),this._PlayfieldItemInventoryView_HGroup2_i(),this._PlayfieldItemInventoryView_VGroup2_c()];
                     if(_loc2_)
                     {
                        §§goto(addr008a);
                     }
                  }
                  §§goto(addr0096);
               }
               addr008a:
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr0096:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
            §§goto(addr0096);
         }
         §§goto(addr0045);
      }
      
      private function _PlayfieldItemInventoryView_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.height = 37;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.width = 49;
               if(_loc3_)
               {
                  §§goto(addr0048);
               }
               §§goto(addr008b);
            }
            addr0048:
            _loc1_.dynaLibName = "gui_ui_inventory";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.dynaBmpSourceName = "icon_puzzle";
               if(!_loc2_)
               {
                  addr0075:
                  _loc1_.top = 4;
                  if(!_loc2_)
                  {
                     §§goto(addr007f);
                  }
                  §§goto(addr008b);
               }
               addr007f:
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr008b:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr008f);
            }
            addr008f:
            return _loc1_;
         }
         §§goto(addr0075);
      }
      
      private function _PlayfieldItemInventoryView_LocaLabel1_i() : LocaLabel
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
               _loc1_.maxDisplayedLines = 1;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.setStyle("paddingTop",11);
                  if(_loc3_ || Boolean(this))
                  {
                     addr0063:
                     _loc1_.id = "headerTextLabel";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              _loc1_.document = this;
                              if(!_loc2_)
                              {
                                 addr0090:
                                 this.headerTextLabel = _loc1_;
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr00a2:
                                    BindingManager.executeBindings(this,"headerTextLabel",this.headerTextLabel);
                                 }
                              }
                              §§goto(addr00af);
                           }
                           §§goto(addr00a2);
                        }
                        §§goto(addr0090);
                     }
                     §§goto(addr00af);
                  }
                  §§goto(addr00a2);
               }
               §§goto(addr00af);
            }
            §§goto(addr0063);
         }
         addr00af:
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryView_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(!_loc3_)
         {
            _loc1_.width = 18;
            if(!(_loc3_ && _loc3_))
            {
               §§goto(addr003e);
            }
            §§goto(addr0052);
         }
         addr003e:
         if(!_loc1_.document)
         {
            if(!(_loc3_ && Boolean(this)))
            {
               addr0052:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryView_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "elevenWhiteLeft";
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  _loc1_.maxDisplayedLines = 1;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.visible = false;
                     if(!_loc2_)
                     {
                        _loc1_.setStyle("paddingTop",13);
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           §§goto(addr0072);
                        }
                     }
                     §§goto(addr00b7);
                  }
                  addr0072:
                  _loc1_.id = "minimisedLabel";
                  if(!_loc2_)
                  {
                     addr007d:
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
                        }
                        §§goto(addr00b7);
                     }
                     addr00a5:
                     this.minimisedLabel = _loc1_;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr00b7:
                        BindingManager.executeBindings(this,"minimisedLabel",this.minimisedLabel);
                     }
                  }
                  §§goto(addr00c4);
               }
               §§goto(addr007d);
            }
            §§goto(addr009c);
         }
         addr00c4:
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryView_HGroup2_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.gap = -4;
            if(!_loc2_)
            {
               _loc1_.mxmlContent = [this._PlayfieldItemInventoryView_InventoryRadioButton1_i(),this._PlayfieldItemInventoryView_InventoryRadioButton2_i(),this._PlayfieldItemInventoryView_InventoryRadioButton3_i(),this._PlayfieldItemInventoryView_InventoryRadioButton4_i()];
               if(_loc3_)
               {
                  addr0058:
                  _loc1_.id = "sortingButtonGroup";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0083:
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr008c:
                              this.sortingButtonGroup = _loc1_;
                              if(_loc3_)
                              {
                                 addr0096:
                                 BindingManager.executeBindings(this,"sortingButtonGroup",this.sortingButtonGroup);
                              }
                              §§goto(addr00a3);
                           }
                           §§goto(addr0096);
                        }
                        addr00a3:
                        return _loc1_;
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr0096);
               }
               §§goto(addr0083);
            }
            §§goto(addr0058);
         }
         §§goto(addr0096);
      }
      
      private function _PlayfieldItemInventoryView_InventoryRadioButton1_i() : InventoryRadioButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:InventoryRadioButton = new InventoryRadioButton();
         if(_loc3_)
         {
            _loc1_.styleName = "residentials";
            if(!(_loc2_ && _loc2_))
            {
               §§goto(addr0039);
            }
            §§goto(addr0082);
         }
         addr0039:
         _loc1_.groupName = "sortingButtons";
         if(_loc3_ || _loc2_)
         {
            _loc1_.id = "sortingResidentialButton";
            if(_loc3_ || Boolean(this))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0082:
                     _loc1_.document = this;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        §§goto(addr00a0);
                     }
                  }
                  §§goto(addr00b2);
               }
               addr00a0:
               this.sortingResidentialButton = _loc1_;
               if(!(_loc2_ && _loc2_))
               {
                  addr00b2:
                  BindingManager.executeBindings(this,"sortingResidentialButton",this.sortingResidentialButton);
               }
               §§goto(addr00bf);
            }
            §§goto(addr0082);
         }
         addr00bf:
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryView_InventoryRadioButton2_i() : InventoryRadioButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:InventoryRadioButton = new InventoryRadioButton();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.styleName = "commercials";
            if(!_loc2_)
            {
               _loc1_.groupName = "sortingButtons";
               if(_loc3_)
               {
                  _loc1_.id = "sortingCommercialButton";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              §§goto(addr0084);
                           }
                        }
                        §§goto(addr0096);
                     }
                  }
                  addr0084:
                  this.sortingCommercialButton = _loc1_;
                  if(_loc3_ || _loc3_)
                  {
                     addr0096:
                     BindingManager.executeBindings(this,"sortingCommercialButton",this.sortingCommercialButton);
                  }
               }
               §§goto(addr00a3);
            }
            §§goto(addr0096);
         }
         addr00a3:
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryView_InventoryRadioButton3_i() : InventoryRadioButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:InventoryRadioButton = new InventoryRadioButton();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.styleName = "decorations";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.groupName = "sortingButtons";
               if(_loc2_)
               {
                  §§goto(addr0057);
               }
               §§goto(addr0062);
            }
            addr0057:
            _loc1_.id = "sortingDecorationButton";
            if(!_loc3_)
            {
               addr0062:
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.document = this;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr0094:
                        this.sortingDecorationButton = _loc1_;
                        if(!_loc3_)
                        {
                           addr009e:
                           BindingManager.executeBindings(this,"sortingDecorationButton",this.sortingDecorationButton);
                        }
                     }
                     §§goto(addr00ab);
                  }
                  §§goto(addr009e);
               }
               §§goto(addr0094);
            }
            addr00ab:
            return _loc1_;
         }
         §§goto(addr009e);
      }
      
      private function _PlayfieldItemInventoryView_InventoryRadioButton4_i() : InventoryRadioButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:InventoryRadioButton = new InventoryRadioButton();
         if(_loc3_)
         {
            _loc1_.styleName = "emergency";
            if(_loc3_ || _loc3_)
            {
               _loc1_.groupName = "sortingButtons";
               if(_loc3_)
               {
                  _loc1_.id = "sortingEmergencyButton";
                  if(_loc3_ || _loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              §§goto(addr0088);
                           }
                           §§goto(addr0092);
                        }
                     }
                  }
                  addr0088:
                  this.sortingEmergencyButton = _loc1_;
                  if(!_loc2_)
                  {
                     addr0092:
                     BindingManager.executeBindings(this,"sortingEmergencyButton",this.sortingEmergencyButton);
                  }
                  §§goto(addr009f);
               }
               addr009f:
               return _loc1_;
            }
            §§goto(addr0092);
         }
         §§goto(addr0088);
      }
      
      private function _PlayfieldItemInventoryView_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.paddingTop = 10;
            if(_loc2_)
            {
               _loc1_.mxmlContent = [this._PlayfieldItemInventoryView_ToggleButton1_i()];
               addr0035:
               if(_loc2_ || _loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0035);
      }
      
      private function _PlayfieldItemInventoryView_ToggleButton1_i() : ToggleButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ToggleButton = new ToggleButton();
         if(!_loc2_)
         {
            _loc1_.styleName = "inventoryMinimize";
            if(!_loc2_)
            {
               _loc1_.addEventListener("change",this.__minimiseButton_change);
               if(_loc3_)
               {
                  _loc1_.id = "minimiseButton";
                  if(_loc3_)
                  {
                     addr0063:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr006f:
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              §§goto(addr0078);
                           }
                           §§goto(addr0082);
                        }
                     }
                  }
                  addr0078:
                  this.minimiseButton = _loc1_;
                  if(_loc3_)
                  {
                     addr0082:
                     BindingManager.executeBindings(this,"minimiseButton",this.minimiseButton);
                  }
                  §§goto(addr008f);
               }
               §§goto(addr006f);
            }
            §§goto(addr0063);
         }
         addr008f:
         return _loc1_;
      }
      
      public function __minimiseButton_change(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.handleMinimiseButton(param1);
         }
      }
      
      public function ___PlayfieldItemInventoryView_Group2_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this.handleMinimisedComponentClick(param1);
         }
      }
      
      private function _PlayfieldItemInventoryView_LocaLabel3_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.styleName = "improvementInventoryFlavour";
            if(_loc2_ || Boolean(this))
            {
               _loc1_.maxDisplayedLines = 1;
               if(!_loc3_)
               {
                  _loc1_.setStyle("paddingLeft",58);
                  if(!_loc3_)
                  {
                     _loc1_.setStyle("paddingTop",2);
                     if(!_loc3_)
                     {
                        _loc1_.id = "flavourTextLabel";
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr007e:
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 addr008a:
                                 _loc1_.document = this;
                                 if(_loc2_ || Boolean(_loc1_))
                                 {
                                    addr00a7:
                                    this.flavourTextLabel = _loc1_;
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       addr00b9:
                                       BindingManager.executeBindings(this,"flavourTextLabel",this.flavourTextLabel);
                                    }
                                    §§goto(addr00c6);
                                 }
                                 §§goto(addr00b9);
                              }
                              addr00c6:
                              return _loc1_;
                           }
                        }
                        §§goto(addr00a7);
                     }
                  }
                  §§goto(addr008a);
               }
               §§goto(addr00b9);
            }
         }
         §§goto(addr007e);
      }
      
      private function _PlayfieldItemInventoryView_HGroup3_c() : HGroup
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
               _loc1_.paddingLeft = 9;
               if(_loc2_)
               {
                  addr003d:
                  _loc1_.paddingRight = 9;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     _loc1_.paddingTop = -5;
                     if(_loc2_)
                     {
                        addr0066:
                        _loc1_.mxmlContent = [this._PlayfieldItemInventoryView_Group4_c()];
                        if(!_loc3_)
                        {
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
               }
               §§goto(addr0066);
            }
            §§goto(addr003d);
         }
         §§goto(addr0066);
      }
      
      private function _PlayfieldItemInventoryView_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && Boolean(this)))
               {
                  §§goto(addr005d);
               }
               §§goto(addr0087);
            }
            addr005d:
            _loc1_.mxmlContent = [this._PlayfieldItemInventoryView_StandardInventoryList1_i(),this._PlayfieldItemInventoryView_UiInfolayerAlignmentLine1_i()];
            if(!(_loc2_ && Boolean(this)))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr0087:
                     _loc1_.document = this;
                  }
               }
            }
            §§goto(addr008b);
         }
         addr008b:
         return _loc1_;
      }
      
      private function _PlayfieldItemInventoryView_StandardInventoryList1_i() : StandardInventoryList
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StandardInventoryList = new StandardInventoryList();
         if(_loc3_ || _loc2_)
         {
            _loc1_.itemRenderer = this._PlayfieldItemInventoryView_ClassFactory1_c();
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_)
               {
                  _loc1_.percentHeight = 100;
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.setStyle("skinClass",PlayfieldItemInventoryListSkin);
                     if(_loc3_ || Boolean(this))
                     {
                        addr007a:
                        _loc1_.addEventListener("resize",this.__playfieldItemList_resize);
                        if(!_loc2_)
                        {
                           _loc1_.id = "playfieldItemList";
                           if(!_loc2_)
                           {
                              addr0096:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    _loc1_.document = this;
                                    if(!_loc2_)
                                    {
                                       addr00b9:
                                       this.playfieldItemList = _loc1_;
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr00cb:
                                          BindingManager.executeBindings(this,"playfieldItemList",this.playfieldItemList);
                                       }
                                    }
                                    §§goto(addr00d8);
                                 }
                              }
                              §§goto(addr00b9);
                           }
                           §§goto(addr00d8);
                        }
                        §§goto(addr00b9);
                     }
                     §§goto(addr00cb);
                  }
                  addr00d8:
                  return _loc1_;
               }
               §§goto(addr00cb);
            }
            §§goto(addr0096);
         }
         §§goto(addr007a);
      }
      
      private function _PlayfieldItemInventoryView_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.generator = PlayfieldItemInventoryRenderer;
         }
         return _loc1_;
      }
      
      public function __playfieldItemList_resize(param1:ResizeEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this.calculateListGap();
         }
      }
      
      private function _PlayfieldItemInventoryView_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         if(!_loc2_)
         {
            _loc1_.left = 90;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.top = 90;
               if(_loc3_)
               {
                  _loc1_.right = 90;
                  if(_loc3_)
                  {
                     _loc1_.lineId = 0;
                     if(!_loc2_)
                     {
                        addr0060:
                        _loc1_.id = "uiInfolayerAlignmentLine";
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr0073);
                        }
                        §§goto(addr00a6);
                     }
                     addr0073:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              §§goto(addr0094);
                           }
                        }
                        §§goto(addr00a6);
                     }
                     §§goto(addr0094);
                  }
               }
               addr0094:
               this.uiInfolayerAlignmentLine = _loc1_;
               if(!(_loc2_ && _loc2_))
               {
                  addr00a6:
                  BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
               }
               §§goto(addr00b3);
            }
            §§goto(addr0060);
         }
         addr00b3:
         return _loc1_;
      }
      
      public function ___PlayfieldItemInventoryView_Group1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.creationCompleteHandler(param1);
         }
      }
      
      private function _PlayfieldItemInventoryView_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(!(_loc3_ && _loc2_))
         {
            §§pop().§§slot[1] = [];
            if(_loc2_)
            {
               §§push(§§newactivation());
               if(!_loc3_)
               {
                  §§goto(addr0036);
               }
               §§goto(addr00b6);
            }
            §§goto(addr0134);
         }
         addr0036:
         §§push(§§pop().§§slot[1]);
         if(!(_loc3_ && _loc2_))
         {
            §§push(0);
            if(!(_loc3_ && _loc2_))
            {
               §§pop()[§§pop()] = new Binding(this,function():Object
               {
                  return ServerTagConstants.RESIDENTIAL;
               },null,"sortingButtons.selectedValue");
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§newactivation());
                  if(_loc2_ || _loc3_)
                  {
                     §§push(§§pop().§§slot[1]);
                     if(_loc2_)
                     {
                        §§push(1);
                        if(!_loc3_)
                        {
                           addr0090:
                           §§pop()[§§pop()] = new Binding(this,function():Object
                           {
                              return ServerTagConstants.RESIDENTIAL;
                           },null,"sortingResidentialButton.value");
                           if(!_loc3_)
                           {
                              §§push(§§newactivation());
                              if(_loc2_ || _loc3_)
                              {
                                 addr00b6:
                                 §§push(§§pop().§§slot[1]);
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    addr00d2:
                                    §§push(2);
                                    if(_loc2_ || Boolean(this))
                                    {
                                       §§pop()[§§pop()] = new Binding(this,function():Object
                                       {
                                          return ServerTagConstants.SHOP;
                                       },null,"sortingCommercialButton.value");
                                       if(!_loc3_)
                                       {
                                          §§push(§§newactivation());
                                          if(_loc2_)
                                          {
                                             §§push(§§pop().§§slot[1]);
                                             if(_loc2_ || Boolean(this))
                                             {
                                                addr010e:
                                                §§push(3);
                                                if(_loc2_)
                                                {
                                                   §§pop()[§§pop()] = new Binding(this,function():Object
                                                   {
                                                      return ServerTagConstants.DECORATION;
                                                   },null,"sortingDecorationButton.value");
                                                   if(_loc2_ || _loc1_)
                                                   {
                                                      addr0134:
                                                      §§push(§§newactivation());
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         addr0143:
                                                         §§push(§§pop().§§slot[1]);
                                                         if(!_loc3_)
                                                         {
                                                            addr014a:
                                                            §§push(4);
                                                            if(_loc2_ || Boolean(this))
                                                            {
                                                               addr0159:
                                                               §§pop()[§§pop()] = new Binding(this,function():Object
                                                               {
                                                                  return PlayfieldItemInventoryViewProxy.CATEGORY_EMERGENCY_INVENTORY;
                                                               },null,"sortingEmergencyButton.value");
                                                               if(!_loc3_)
                                                               {
                                                                  addr0170:
                                                                  §§push(§§newactivation());
                                                                  if(_loc2_ || _loc1_)
                                                                  {
                                                                     §§goto(addr018a);
                                                                  }
                                                                  §§goto(addr01ae);
                                                               }
                                                               §§goto(addr01ac);
                                                            }
                                                            §§goto(addr019b);
                                                         }
                                                         §§goto(addr0199);
                                                      }
                                                      §§goto(addr018a);
                                                   }
                                                   §§goto(addr01ac);
                                                }
                                                §§goto(addr019b);
                                             }
                                             §§goto(addr014a);
                                          }
                                          §§goto(addr01ae);
                                       }
                                       §§goto(addr0170);
                                    }
                                    §§goto(addr0159);
                                 }
                                 §§goto(addr010e);
                              }
                              §§goto(addr0143);
                           }
                           §§goto(addr01ac);
                        }
                        §§goto(addr0159);
                     }
                     §§goto(addr00d2);
                  }
                  addr018a:
                  §§goto(addr01b0);
               }
               §§goto(addr0134);
            }
            §§goto(addr0090);
         }
         addr01b0:
         §§push(§§pop().§§slot[1]);
         if(!(_loc3_ && _loc1_))
         {
            addr019b:
            §§pop()[5] = new Binding(this,function():uint
            {
               return UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM;
            },null,"uiInfolayerAlignmentLine.alignment");
            addr01ae:
            addr01ac:
            §§push(result);
            addr0199:
         }
         return §§pop();
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
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1332194002background = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"background",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr005d);
            }
         }
         addr0084:
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourTextLabel() : LocaLabel
      {
         return this._1310457130flavourTextLabel;
      }
      
      public function set flavourTextLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1310457130flavourTextLabel;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  this._1310457130flavourTextLabel = param1;
                  addr0047:
                  if(!(_loc4_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourTextLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0075);
            }
            addr0084:
            return;
         }
         §§goto(addr0047);
      }
      
      [Bindable(event="propertyChange")]
      public function get headerTextLabel() : LocaLabel
      {
         return this._1105049158headerTextLabel;
      }
      
      public function set headerTextLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1105049158headerTextLabel;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1105049158headerTextLabel = param1;
                  addr0037:
                  if(_loc3_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerTextLabel",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0037);
      }
      
      [Bindable(event="propertyChange")]
      public function get minimiseButton() : ToggleButton
      {
         return this._854143319minimiseButton;
      }
      
      public function set minimiseButton(param1:ToggleButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._854143319minimiseButton;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr004c:
                  this._854143319minimiseButton = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0066:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"minimiseButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0075);
                  }
                  §§goto(addr0066);
               }
            }
            addr0075:
            return;
         }
         §§goto(addr004c);
      }
      
      [Bindable(event="propertyChange")]
      public function get minimisedLabel() : LocaLabel
      {
         return this._1789086453minimisedLabel;
      }
      
      public function set minimisedLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1789086453minimisedLabel;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1789086453minimisedLabel = param1;
                  if(_loc4_)
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"minimisedLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0054);
            }
         }
         addr0073:
      }
      
      [Bindable(event="propertyChange")]
      public function get playfieldItemList() : StandardInventoryList
      {
         return this._1943769783playfieldItemList;
      }
      
      public function set playfieldItemList(param1:StandardInventoryList) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1943769783playfieldItemList;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1943769783playfieldItemList = param1;
                  if(!_loc4_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"playfieldItemList",_loc2_,param1));
                        }
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr006f);
               }
            }
            addr007e:
            return;
         }
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get sortingButtonGroup() : HGroup
      {
         return this._1551432119sortingButtonGroup;
      }
      
      public function set sortingButtonGroup(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1551432119sortingButtonGroup;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1551432119sortingButtonGroup = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr0053:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0062:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sortingButtonGroup",_loc2_,param1));
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
         §§goto(addr0053);
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
               if(_loc3_)
               {
                  this._353794723sortingButtons = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sortingButtons",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr006d);
               }
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
      }
      
      [Bindable(event="propertyChange")]
      public function get sortingCommercialButton() : InventoryRadioButton
      {
         return this._62340928sortingCommercialButton;
      }
      
      public function set sortingCommercialButton(param1:InventoryRadioButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._62340928sortingCommercialButton;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._62340928sortingCommercialButton = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0065:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sortingCommercialButton",_loc2_,param1));
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
         §§goto(addr0065);
      }
      
      [Bindable(event="propertyChange")]
      public function get sortingDecorationButton() : InventoryRadioButton
      {
         return this._930584998sortingDecorationButton;
      }
      
      public function set sortingDecorationButton(param1:InventoryRadioButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._930584998sortingDecorationButton;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._930584998sortingDecorationButton = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sortingDecorationButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr0054);
            }
         }
         addr007a:
      }
      
      [Bindable(event="propertyChange")]
      public function get sortingEmergencyButton() : InventoryRadioButton
      {
         return this._752823809sortingEmergencyButton;
      }
      
      public function set sortingEmergencyButton(param1:InventoryRadioButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._752823809sortingEmergencyButton;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._752823809sortingEmergencyButton = param1;
                  if(_loc3_)
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sortingEmergencyButton",_loc2_,param1));
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
         §§goto(addr0054);
      }
      
      [Bindable(event="propertyChange")]
      public function get sortingResidentialButton() : InventoryRadioButton
      {
         return this._527723058sortingResidentialButton;
      }
      
      public function set sortingResidentialButton(param1:InventoryRadioButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._527723058sortingResidentialButton;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._527723058sortingResidentialButton = param1;
                  if(!_loc3_)
                  {
                     addr005a:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sortingResidentialButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr005a);
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1218573432uiInfolayerAlignmentLine = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr006d);
               }
               addr0056:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     addr006d:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine",_loc2_,param1));
                  }
               }
               §§goto(addr007c);
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
      }
   }
}

