package net.bigpoint.cityrama.view.residentialBook.ui.components
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
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.detailViews.vo.DropDownAmountListItemVo;
   import net.bigpoint.cityrama.model.improvement.vo.ResidentialImprovementViewVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.vo.ImprovementInventoryItemRendererVo;
   import net.bigpoint.cityrama.view.popup.ui.components.FeatureLockedScreen;
   import net.bigpoint.cityrama.view.residentialBook.ResidentialImprovementContentMediator;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   
   use namespace mx_internal;
   
   public class ResidentialImprovementContentComponent extends Group implements IBindingClient
   {
      
      public static const OPEN_IMPROVEMENT_STORE:String = "OPEN_IMPROVEMENT_STORE";
      
      public static const OPEN_FEATURE_SCREEN:String = "OPEN_FEATURE_SCREEN";
      
      public static const SLOT_CLICKED:String = "SLOT_CLICKED";
      
      public static const SORT_FILTER_NONE:String = "SORT_FILTER_NONE";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!_loc2_)
      {
         OPEN_IMPROVEMENT_STORE = "OPEN_IMPROVEMENT_STORE";
         if(!_loc2_)
         {
            OPEN_FEATURE_SCREEN = "OPEN_FEATURE_SCREEN";
            if(_loc1_)
            {
               SLOT_CLICKED = "SLOT_CLICKED";
               if(_loc1_ || _loc1_)
               {
                  addr0051:
                  SORT_FILTER_NONE = "SORT_FILTER_NONE";
               }
               §§goto(addr005a);
            }
         }
         §§goto(addr0051);
      }
      addr005a:
      
      private var _400476409buildingImage:BriskImageDynaLib;
      
      private var _758761919buildingPolaroidGroup:Group;
      
      private var _1534939953emptyFlavourText:LocaLabel;
      
      private var _1905467180featureScreenButton:DynamicImageButton;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _2020599460inventory:ImprovementInventoryLayerComponent;
      
      private var _1637006254inventoryEmptyGroup:VGroup;
      
      private var _55351677inventoryGroup:HGroup;
      
      private var _51253512inventoryLabel:LocaLabel;
      
      private var _836813949inventorySortFilterDropDown:DropDownAmountListComponent;
      
      private var _1493824286inventorySortFilterLabel:LocaLabel;
      
      private var _2016210966lockedScreen:FeatureLockedScreen;
      
      private var _1215755049nameLabel:LocaLabel;
      
      private var _539958732polaroid:BriskImageDynaLib;
      
      private var _109532659slot1:ImprovementSlotComponent;
      
      private var _109532660slot2:ImprovementSlotComponent;
      
      private var _109532661slot3:ImprovementSlotComponent;
      
      private var _1980899187storeButton:MultistateButton;
      
      private var _1364472877uiInfolayerAlignmentLineBottom:UiInfolayerAlignmentLine;
      
      private var _1457442643uiInfolayerAlignmentLineTop:UiInfolayerAlignmentLine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ResidentialImprovementViewVo;
      
      private var _isDirty:Boolean;
      
      private var _inventoryDirty:Boolean;
      
      private var _currentInventorySortFilter:String = "SORT_FILTER_NONE";
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ResidentialImprovementContentComponent()
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
         if(_loc4_ || _loc2_)
         {
            §§push(null);
            if(!(_loc3_ && _loc2_))
            {
               §§pop().§§slot[3] = §§pop();
               if(!(_loc3_ && Boolean(this)))
               {
                  §§push(§§newactivation());
                  if(_loc4_ || _loc3_)
                  {
                     addr0059:
                     §§pop().§§slot[5] = null;
                     addr0058:
                     if(_loc4_ || Boolean(this))
                     {
                        this.mx_internal::_bindings = [];
                        if(!_loc3_)
                        {
                           this.mx_internal::_watchers = [];
                           if(_loc4_ || _loc1_)
                           {
                              addr008a:
                              this.mx_internal::_bindingsByDestination = {};
                              if(!_loc3_)
                              {
                                 addr0095:
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(_loc4_)
                                 {
                                    super();
                                    if(!_loc3_)
                                    {
                                       mx_internal::_document = this;
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§push(§§newactivation());
                                          if(_loc4_ || Boolean(this))
                                          {
                                             §§pop().§§slot[1] = this._ResidentialImprovementContentComponent_bindingsSetup();
                                             if(!_loc3_)
                                             {
                                                §§push(§§newactivation());
                                                if(_loc4_)
                                                {
                                                   §§pop().§§slot[2] = [];
                                                   if(!(_loc3_ && Boolean(this)))
                                                   {
                                                      addr00fd:
                                                      §§push(§§newactivation());
                                                      if(!_loc3_)
                                                      {
                                                         §§pop().§§slot[3] = this;
                                                         if(!(_loc3_ && _loc1_))
                                                         {
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(!(_loc3_ && Boolean(this)))
                                                                  {
                                                                     addr0133:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_residentialBook_ui_components_ResidentialImprovementContentComponentWatcherSetupUtil");
                                                                     if(_loc4_)
                                                                     {
                                                                        addr0147:
                                                                        §§push(§§newactivation());
                                                                        if(!(_loc3_ && _loc2_))
                                                                        {
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           addr0156:
                                                                           if(_loc4_ || _loc1_)
                                                                           {
                                                                              addr0181:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return ResidentialImprovementContentComponent[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr019f:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!(_loc3_ && Boolean(this)))
                                                                                 {
                                                                                    addr01cd:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!(_loc3_ && _loc3_))
                                                                                    {
                                                                                       addr01fb:
                                                                                       this.percentWidth = 100;
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr0205:
                                                                                          this.percentHeight = 100;
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             addr020f:
                                                                                             this.maxWidth = 755;
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                this.horizontalCenter = 0;
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   this.mxmlContent = [this._ResidentialImprovementContentComponent_VGroup1_c(),this._ResidentialImprovementContentComponent_UiInfolayerAlignmentLine1_i(),this._ResidentialImprovementContentComponent_UiInfolayerAlignmentLine2_i(),this._ResidentialImprovementContentComponent_FeatureLockedScreen1_i()];
                                                                                                   if(!(_loc3_ && _loc2_))
                                                                                                   {
                                                                                                      addr024f:
                                                                                                      this.addEventListener("creationComplete",this.___ResidentialImprovementContentComponent_Group1_creationComplete);
                                                                                                      if(_loc4_ || _loc2_)
                                                                                                      {
                                                                                                         addr026b:
                                                                                                         i = 0;
                                                                                                         addr0269:
                                                                                                      }
                                                                                                      var _temp_20:*;
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
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(§§newactivation());
                                                                                                                  if(_loc4_ || Boolean(this))
                                                                                                                  {
                                                                                                                     §§push(§§pop().§§slot[4]);
                                                                                                                     if(!(_loc3_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§push(uint(§§pop() + 1));
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           §§push(§§newactivation());
                                                                                                                           if(!(_loc3_ && _loc1_))
                                                                                                                           {
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      while(var _temp_20:* = §§pop(), §§pop().§§slot[4] = _temp_20, !(_loc3_ && _loc2_));
                                                                                                      
                                                                                                      return;
                                                                                                      addr02de:
                                                                                                   }
                                                                                                   §§goto(addr0269);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr024f);
                                                                                          }
                                                                                          §§goto(addr02de);
                                                                                       }
                                                                                       §§goto(addr0269);
                                                                                    }
                                                                                    §§goto(addr02de);
                                                                                 }
                                                                                 §§goto(addr020f);
                                                                              }
                                                                              §§goto(addr01cd);
                                                                           }
                                                                           §§goto(addr0205);
                                                                        }
                                                                        §§goto(addr026b);
                                                                     }
                                                                     §§goto(addr0181);
                                                                  }
                                                                  §§goto(addr026b);
                                                               }
                                                            }
                                                            §§goto(addr0181);
                                                         }
                                                         §§goto(addr0147);
                                                      }
                                                      §§goto(addr0133);
                                                   }
                                                   §§goto(addr0181);
                                                }
                                                §§goto(addr0156);
                                             }
                                             §§goto(addr01fb);
                                          }
                                          §§goto(addr0156);
                                       }
                                       §§goto(addr00fd);
                                    }
                                    §§goto(addr01fb);
                                 }
                                 §§goto(addr0181);
                              }
                              §§goto(addr01fb);
                           }
                           §§goto(addr0095);
                        }
                        §§goto(addr019f);
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr0156);
               }
               §§goto(addr0147);
            }
            §§goto(addr0059);
         }
         §§goto(addr0058);
      }
      
      private static function modifyInventoryData(param1:IList) : IList
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:ImprovementInventoryItemRendererVo = null;
         var _loc2_:* = param1.length > 0;
         if(_loc4_ || ResidentialImprovementContentComponent)
         {
            §§push(_loc2_);
            if(!(_loc5_ && Boolean(param1)))
            {
               if(§§pop())
               {
                  if(_loc4_ || Boolean(param1))
                  {
                     addr0050:
                     §§push((param1.getItemAt(0) as ImprovementInventoryItemRendererVo).isGetMore);
                     if(_loc4_ || _loc2_)
                     {
                        §§push(!§§pop());
                        if(!_loc5_)
                        {
                           addr007e:
                           _loc2_ = §§pop();
                           if(!_loc5_)
                           {
                              addr0086:
                              if(_loc2_)
                              {
                                 addr008a:
                                 _loc3_ = new ImprovementInventoryItemRendererVo(false,true);
                                 if(_loc4_ || Boolean(param1))
                                 {
                                    param1.addItemAt(_loc3_,0);
                                 }
                              }
                              while(param1.length < 8)
                              {
                                 param1.addItem(new ImprovementInventoryItemRendererVo(true));
                                 if(_loc5_ && ResidentialImprovementContentComponent)
                                 {
                                    break;
                                 }
                              }
                              return param1;
                              addr00db:
                           }
                           §§goto(addr008a);
                        }
                        §§goto(addr0086);
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr008a);
               }
               §§goto(addr00db);
            }
            §§goto(addr0086);
         }
         §§goto(addr0050);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            ResidentialImprovementContentComponent._watcherSetupUtil = param1;
         }
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            super.moduleFactory = param1;
            if(!(_loc2_ && _loc3_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr0058);
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         addr0058:
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
      
      private function handleCreationComplete() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this.flavourText.text = LocaUtils.getString("rcl.booklayer.residentialImprovement","rcl.booklayer.residentialImprovement.flavour");
            if(!_loc2_)
            {
               addr002c:
               this.inventoryLabel.text = LocaUtils.getString("rcl.booklayer.residentialImprovement","rcl.booklayer.residentialImprovement.inventory.capital");
               if(_loc1_)
               {
                  this.inventorySortFilterLabel.text = LocaUtils.getString("rcl.booklayer.residentialImprovement","rcl.booklayer.residentialImprovement.filter.label");
                  if(_loc1_)
                  {
                     this.emptyFlavourText.text = LocaUtils.getString("rcl.booklayer.residentialImprovement","rcl.booklayer.residentialImprovement.inventoryEmpty.flavour");
                     if(!(_loc2_ && _loc1_))
                     {
                        addr0079:
                        §§push(this.storeButton);
                        if(_loc1_ || Boolean(this))
                        {
                           §§push(LocaUtils.getString("rcl.booklayer.residentialImprovement","rcl.booklayer.residentialImprovement.inventoryEmpty.btn.label.capital"));
                           if(!(_loc2_ && _loc2_))
                           {
                              §§pop().label = §§pop();
                              if(_loc1_)
                              {
                                 addr00c5:
                                 this.storeButton.toolTip = LocaUtils.getString("rcl.booklayer.residentialImprovement","rcl.booklayer.residentialImprovement.inventoryEmpty.btn.tooltip");
                                 addr00b9:
                                 if(_loc1_ || Boolean(this))
                                 {
                                    addr00d4:
                                    this.featureScreenButton.toolTip = LocaUtils.getString("rcl.miniLayer.hip","rcl.miniLayer.hip.info.btn.feature.tooltip");
                                    if(_loc1_ || _loc2_)
                                    {
                                       addr00fd:
                                       this.addEventListener(DropDownAmountListComponent.DROPDOWN_INDEX_CHANGED,this.handleInventorySortFilterChanged);
                                       if(_loc1_)
                                       {
                                          addr0111:
                                          this.addEventListener(ImprovementInventoryLayerComponent.ITEM_SELECTED,this.handleHighlightSlots);
                                          if(!_loc2_)
                                          {
                                             this.addEventListener(ImprovementInventoryLayerComponent.DESELECT_ALL,this.handleDeHighlightSlots);
                                          }
                                       }
                                    }
                                    §§goto(addr0134);
                                 }
                                 §§goto(addr0111);
                              }
                              §§goto(addr00fd);
                           }
                           §§goto(addr00c5);
                        }
                        §§goto(addr00b9);
                     }
                     addr0134:
                     return;
                  }
                  §§goto(addr00fd);
               }
               §§goto(addr00d4);
            }
            §§goto(addr0079);
         }
         §§goto(addr002c);
      }
      
      private function handleDeHighlightSlots(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.highlightSlots(false);
         }
      }
      
      private function handleHighlightSlots(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            param1.stopPropagation();
            if(_loc3_)
            {
               this.highlightSlots();
            }
         }
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:IList = null;
         if(_loc3_)
         {
            super.commitProperties();
            if(_loc3_ || Boolean(this))
            {
               §§push(this._data);
               if(!_loc4_)
               {
                  §§push(§§pop());
                  if(!_loc4_)
                  {
                     var _temp_2:* = §§pop();
                     §§push(_temp_2);
                     §§push(_temp_2);
                     if(_loc3_)
                     {
                        if(§§pop())
                        {
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr0056:
                              §§pop();
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 §§push(this._isDirty);
                                 if(!(_loc4_ && Boolean(this)))
                                 {
                                    §§push(§§pop());
                                    if(!(_loc4_ && Boolean(this)))
                                    {
                                       addr0085:
                                       if(§§pop())
                                       {
                                          if(!(_loc4_ && Boolean(this)))
                                          {
                                             this._isDirty = false;
                                             if(_loc3_ || _loc2_)
                                             {
                                                this.nameLabel.text = this._data.getBuildingName(true);
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   §§goto(addr00c6);
                                                }
                                                §§goto(addr0162);
                                             }
                                             §§goto(addr01d0);
                                          }
                                       }
                                       §§goto(addr0176);
                                    }
                                    §§goto(addr0186);
                                 }
                                 §§goto(addr0085);
                              }
                              §§goto(addr0100);
                           }
                           §§goto(addr0199);
                        }
                        §§goto(addr0085);
                     }
                     §§goto(addr0187);
                  }
                  §§goto(addr0056);
               }
               §§goto(addr01d4);
            }
            addr00c6:
            var _temp_11:* = this.polaroid;
            var _loc2_:*;
            this.buildingImage.toolTip = _loc2_ = this._data.getBuildingName();
            _temp_11.toolTip = _loc2_;
            if(_loc3_ || Boolean(_loc2_))
            {
               this.buildingImage.briskDynaVo = this._data.buildingGfx;
               if(_loc3_)
               {
                  this.slot1.data = this._data.slotData[0];
                  addr0100:
                  if(!(_loc4_ && _loc3_))
                  {
                     addr012c:
                     this.slot2.data = this._data.slotData[1];
                     if(_loc3_)
                     {
                        this.slot3.data = this._data.slotData[2];
                        if(_loc3_ || Boolean(this))
                        {
                           addr0162:
                           this.inventorySortFilterDropDown.dataProvider = this._data.sortFilterData;
                           if(!_loc4_)
                           {
                              addr0176:
                              §§push(this._data);
                              if(_loc3_)
                              {
                                 §§push(§§pop());
                                 if(!_loc4_)
                                 {
                                    addr0186:
                                    var _temp_15:* = §§pop();
                                    addr0187:
                                    §§push(_temp_15);
                                    if(_temp_15)
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          addr0199:
                                          §§pop();
                                          if(_loc3_ || Boolean(this))
                                          {
                                             §§goto(addr01b9);
                                          }
                                          §§goto(addr01cb);
                                       }
                                    }
                                    addr01b9:
                                    §§goto(addr01a7);
                                 }
                                 §§goto(addr0199);
                              }
                              §§goto(addr01d4);
                           }
                        }
                     }
                  }
                  §§goto(addr01d0);
               }
               §§goto(addr0176);
            }
            addr01a7:
            §§push(this._inventoryDirty);
            if(_loc3_ || Boolean(_loc2_))
            {
               §§push(§§pop());
            }
            if(§§pop())
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  addr01cb:
                  this._inventoryDirty = false;
               }
               addr01d4:
               _loc1_ = this._data.inventoryData.getListAsArrayCollectionByType(this._currentInventorySortFilter);
               addr01d0:
               if(_loc3_)
               {
                  this.inventoryGroup.includeInLayout = this.inventoryGroup.visible = _loc1_.length > 0;
                  if(_loc3_)
                  {
                     this.inventoryEmptyGroup.includeInLayout = this.inventoryEmptyGroup.visible = !this.inventoryGroup.visible;
                     if(!_loc4_)
                     {
                        addr022f:
                        this.inventory.data = modifyInventoryData(_loc1_);
                     }
                     §§goto(addr023d);
                  }
               }
               §§goto(addr022f);
            }
            addr023d:
            return;
         }
         §§goto(addr012c);
      }
      
      private function handleInventorySortFilterChanged(param1:IndexChangeEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            §§push(Boolean(this._data));
            if(_loc2_ || Boolean(param1))
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               if(_temp_3)
               {
                  if(!_loc3_)
                  {
                     addr003b:
                     §§pop();
                     if(_loc2_ || Boolean(param1))
                     {
                        §§goto(addr004b);
                     }
                     §§goto(addr008e);
                  }
               }
               addr004b:
               if(Boolean(param1))
               {
                  if(_loc2_ || _loc2_)
                  {
                     this.highlightSlots(false);
                     if(!(_loc3_ && _loc2_))
                     {
                        this._inventoryDirty = true;
                        if(_loc2_ || Boolean(param1))
                        {
                           this._currentInventorySortFilter = (this._data.sortFilterData[param1.newIndex] as DropDownAmountListItemVo).sortType;
                           addr008e:
                           if(!(_loc3_ && _loc3_))
                           {
                              dispatchEvent(new Event(ImprovementInventoryLayerComponent.DESELECT_ALL,true));
                              if(_loc2_)
                              {
                                 addr00d5:
                                 invalidateProperties();
                              }
                           }
                        }
                        §§goto(addr00da);
                     }
                  }
                  §§goto(addr00d5);
               }
               addr00da:
               return;
            }
            §§goto(addr003b);
         }
         §§goto(addr008e);
      }
      
      private function handleFeatureClick() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            dispatchEvent(new Event(OPEN_FEATURE_SCREEN,true));
         }
      }
      
      private function handleOpenStore() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            dispatchEvent(new Event(OPEN_IMPROVEMENT_STORE,true));
         }
      }
      
      public function highlightSlots(param1:Boolean = true) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §§push(this.slot1);
            if(_loc3_)
            {
               §§push(§§pop().currentSlotState);
               if(_loc3_ || param1)
               {
                  §§push(ImprovementSlotComponent.STATE_SLOT_LOCKED);
                  if(_loc3_)
                  {
                     if(§§pop() != §§pop())
                     {
                        if(_loc3_)
                        {
                           addr004a:
                           this.slot1.highlight = param1;
                           addr0046:
                           if(!_loc2_)
                           {
                              addr0053:
                              §§push(this.slot2);
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§push(§§pop().currentSlotState);
                                 if(!_loc2_)
                                 {
                                    addr0077:
                                    §§push(ImprovementSlotComponent.STATE_SLOT_LOCKED);
                                    if(_loc3_)
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          if(!_loc2_)
                                          {
                                             §§goto(addr008f);
                                          }
                                       }
                                       §§goto(addr00a0);
                                    }
                                    §§goto(addr00c7);
                                 }
                                 §§goto(addr00c1);
                              }
                              addr008f:
                              this.slot2.highlight = param1;
                              if(!(_loc2_ && param1))
                              {
                                 addr00a0:
                                 §§push(this.slot3);
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr00c7:
                                    addr00c1:
                                    if(§§pop().currentSlotState != ImprovementSlotComponent.STATE_SLOT_LOCKED)
                                    {
                                       if(!(_loc2_ && param1))
                                       {
                                          addr00dc:
                                          this.slot3.highlight = param1;
                                       }
                                    }
                                    §§goto(addr00e0);
                                 }
                                 §§goto(addr00dc);
                              }
                              §§goto(addr00e0);
                           }
                        }
                        addr00e0:
                        return;
                     }
                     §§goto(addr0053);
                  }
                  §§goto(addr00c7);
               }
               §§goto(addr0077);
            }
            §§goto(addr004a);
         }
         §§goto(addr0046);
      }
      
      public function set data(param1:ResidentialImprovementViewVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(!RandomUtilities.isEqual(param1,this._data))
            {
               if(!_loc2_)
               {
                  addr002d:
                  this._isDirty = true;
                  if(_loc3_ || Boolean(this))
                  {
                     this._inventoryDirty = true;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§goto(addr005c);
                     }
                     §§goto(addr006e);
                  }
                  §§goto(addr00b4);
               }
               addr005c:
               this._data = param1;
               if(!(_loc2_ && Boolean(this)))
               {
                  addr006e:
                  if(this._currentInventorySortFilter == SORT_FILTER_NONE)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        §§goto(addr0090);
                     }
                  }
                  §§goto(addr00b4);
               }
               addr0090:
               this._currentInventorySortFilter = (this._data.sortFilterData[0] as DropDownAmountListItemVo).sortType;
               if(!(_loc2_ && _loc2_))
               {
                  addr00b4:
                  invalidateProperties();
               }
               §§goto(addr00b9);
            }
            addr00b9:
            return;
         }
         §§goto(addr002d);
      }
      
      public function locked(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(this))
         {
            this.mouseEnabled = this.mouseChildren = false;
            if(!(_loc3_ && _loc3_))
            {
               §§push(this.lockedScreen);
               if(!_loc3_)
               {
                  §§pop().includeInLayout = this.lockedScreen.visible = true;
                  if(_loc4_)
                  {
                     addr0078:
                     this.lockedScreen.textLabel.text = LocaUtils.getString("rcl.booklayer.lockedFeature","rcl.booklayer.lockedFeature.residentialImprovement",[param1]);
                     addr0074:
                  }
                  §§goto(addr008c);
               }
               §§goto(addr0078);
            }
            addr008c:
            return;
         }
         §§goto(addr0074);
      }
      
      public function get currentInventorySortFilter() : String
      {
         return this._currentInventorySortFilter;
      }
      
      private function _ResidentialImprovementContentComponent_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc3_)
               {
                  _loc1_.top = -10;
                  if(_loc2_)
                  {
                     _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_HGroup1_c(),this._ResidentialImprovementContentComponent_Group4_c(),this._ResidentialImprovementContentComponent_VGroup3_i(),this._ResidentialImprovementContentComponent_HGroup14_i()];
                     addr0051:
                     if(_loc2_ || _loc3_)
                     {
                        §§goto(addr0086);
                     }
                     §§goto(addr0092);
                  }
                  addr0086:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
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
            §§goto(addr0092);
         }
         §§goto(addr0051);
      }
      
      private function _ResidentialImprovementContentComponent_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.height = 210;
            if(!_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(!_loc3_)
               {
                  addr004a:
                  _loc1_.verticalAlign = "middle";
                  if(_loc2_)
                  {
                     addr0060:
                     _loc1_.horizontalAlign = "center";
                     if(!_loc3_)
                     {
                        addr006a:
                        _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_Group2_i(),this._ResidentialImprovementContentComponent_VGroup2_c()];
                        if(_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 addr008c:
                                 _loc1_.document = this;
                              }
                           }
                           return _loc1_;
                        }
                     }
                  }
                  §§goto(addr008c);
               }
               §§goto(addr006a);
            }
            §§goto(addr004a);
         }
         §§goto(addr0060);
      }
      
      private function _ResidentialImprovementContentComponent_Group2_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.width = 210;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_BriskImageDynaLib1_i(),this._ResidentialImprovementContentComponent_HGroup2_c(),this._ResidentialImprovementContentComponent_BriskMCDynaLib1_c()];
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.id = "buildingPolaroidGroup";
                     if(!_loc3_)
                     {
                        addr0089:
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              _loc1_.document = this;
                              if(!(_loc3_ && Boolean(_loc1_)))
                              {
                                 addr00ba:
                                 this.buildingPolaroidGroup = _loc1_;
                                 if(_loc2_ || _loc3_)
                                 {
                                    addr00cc:
                                    BindingManager.executeBindings(this,"buildingPolaroidGroup",this.buildingPolaroidGroup);
                                 }
                              }
                           }
                           §§goto(addr00d9);
                        }
                        §§goto(addr00ba);
                     }
                     addr00d9:
                     return _loc1_;
                  }
                  §§goto(addr00ba);
               }
            }
            §§goto(addr00cc);
         }
         §§goto(addr0089);
      }
      
      private function _ResidentialImprovementContentComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "building_bg_polaroid_big";
               if(_loc3_ || _loc3_)
               {
                  _loc1_.top = 15;
                  if(_loc3_)
                  {
                     _loc1_.id = "polaroid";
                     if(!(_loc2_ && Boolean(this)))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              addr0087:
                              _loc1_.document = this;
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 addr00a4:
                                 this.polaroid = _loc1_;
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr00b6:
                                    BindingManager.executeBindings(this,"polaroid",this.polaroid);
                                 }
                                 §§goto(addr00c3);
                              }
                              §§goto(addr00b6);
                           }
                           §§goto(addr00c3);
                        }
                        §§goto(addr00a4);
                     }
                     §§goto(addr00c3);
                  }
                  §§goto(addr00a4);
               }
               addr00c3:
               return _loc1_;
            }
         }
         §§goto(addr0087);
      }
      
      private function _ResidentialImprovementContentComponent_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.verticalAlign = "middle";
            if(_loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc3_ && _loc3_))
               {
                  addr0051:
                  _loc1_.width = 180;
                  if(!_loc3_)
                  {
                     addr005c:
                     _loc1_.height = 164;
                     if(_loc2_ || _loc2_)
                     {
                        _loc1_.top = 22;
                        if(_loc2_ || Boolean(this))
                        {
                           _loc1_.left = 7;
                           if(!_loc3_)
                           {
                              addr0098:
                              _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_BriskImageDynaLib2_i()];
                              if(_loc2_)
                              {
                                 addr00a8:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_)
                                    {
                                       addr00b4:
                                       _loc1_.document = this;
                                    }
                                 }
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr00a8);
                     }
                     §§goto(addr00b4);
                  }
                  §§goto(addr0098);
               }
               §§goto(addr00b4);
            }
            §§goto(addr005c);
         }
         §§goto(addr0051);
      }
      
      private function _ResidentialImprovementContentComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.id = "buildingImage";
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.document = this;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr006a:
                        this.buildingImage = _loc1_;
                        if(!(_loc3_ && _loc2_))
                        {
                           addr007c:
                           BindingManager.executeBindings(this,"buildingImage",this.buildingImage);
                        }
                        §§goto(addr0089);
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr0089);
               }
               §§goto(addr006a);
            }
            addr0089:
            return _loc1_;
         }
         §§goto(addr006a);
      }
      
      private function _ResidentialImprovementContentComponent_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.dynaMCSourceName = "stickytape_top";
               if(!_loc3_)
               {
                  _loc1_.height = 25;
                  if(!_loc3_)
                  {
                     addr005e:
                     _loc1_.horizontalCenter = -1;
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.top = 11;
                        addr0070:
                        if(!_loc3_)
                        {
                           _loc1_.width = 140;
                           if(!_loc3_)
                           {
                              §§goto(addr0092);
                           }
                        }
                        §§goto(addr00a6);
                     }
                  }
                  addr0092:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        addr00a6:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0070);
            }
            §§goto(addr00a6);
         }
         §§goto(addr005e);
      }
      
      private function _ResidentialImprovementContentComponent_VGroup2_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.width = 488;
            if(!_loc2_)
            {
               _loc1_.gap = 0;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_Group3_c(),this._ResidentialImprovementContentComponent_HGroup5_c(),this._ResidentialImprovementContentComponent_HGroup6_c()];
                  if(_loc3_ || _loc2_)
                  {
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
                  §§goto(addr008b);
               }
               addr008f:
               return _loc1_;
            }
            §§goto(addr007f);
         }
         §§goto(addr008b);
      }
      
      private function _ResidentialImprovementContentComponent_Group3_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_HGroup3_c(),this._ResidentialImprovementContentComponent_HGroup4_c()];
            if(!(_loc3_ && _loc3_))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_)
                  {
                     addr0053:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0053);
      }
      
      private function _ResidentialImprovementContentComponent_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.gap = 0;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.width = 480;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.height = 28;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr006d:
                     _loc1_.verticalAlign = "middle";
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.horizontalAlign = "center";
                        if(!_loc2_)
                        {
                           _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_BriskImageDynaLib3_c(),this._ResidentialImprovementContentComponent_BriskImageDynaLib4_c(),this._ResidentialImprovementContentComponent_BriskImageDynaLib5_c()];
                           if(!_loc2_)
                           {
                              addr00b3:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_)
                                 {
                                    _loc1_.document = this;
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr00c3);
               }
               §§goto(addr00b3);
            }
            addr00c3:
            return _loc1_;
         }
         §§goto(addr006d);
      }
      
      private function _ResidentialImprovementContentComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_improvements";
            if(_loc2_)
            {
               addr0049:
               _loc1_.dynaBmpSourceName = "headline_left";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0049);
      }
      
      private function _ResidentialImprovementContentComponent_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_improvements";
            if(_loc2_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "headline_middle";
               if(_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     addr0062:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr0076:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0076);
            }
         }
         §§goto(addr0062);
      }
      
      private function _ResidentialImprovementContentComponent_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_improvements";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "headline_right";
               if(!(_loc3_ && Boolean(this)))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr006a:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr006e);
               }
               §§goto(addr006a);
            }
         }
         addr006e:
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_HGroup4_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.width = 480;
            if(!_loc2_)
            {
               _loc1_.height = 28;
               if(!_loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(!_loc2_)
                  {
                     addr0058:
                     _loc1_.verticalAlign = "middle";
                     if(_loc3_)
                     {
                        _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_LocaLabel1_i()];
                        if(_loc3_)
                        {
                           addr0073:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr007f:
                                 _loc1_.document = this;
                              }
                           }
                        }
                        §§goto(addr0083);
                     }
                     §§goto(addr0073);
                  }
                  addr0083:
                  return _loc1_;
               }
               §§goto(addr0058);
            }
            §§goto(addr0073);
         }
         §§goto(addr007f);
      }
      
      private function _ResidentialImprovementContentComponent_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_)
         {
            _loc1_.percentWidth = 90;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.maxDisplayedLines = 1;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.styleName = "progressBarLabel";
                  if(!_loc3_)
                  {
                     _loc1_.id = "nameLabel";
                     if(!(_loc3_ && _loc3_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              _loc1_.document = this;
                              if(_loc2_)
                              {
                                 §§goto(addr008d);
                              }
                           }
                           §§goto(addr0097);
                        }
                     }
                  }
                  addr008d:
                  this.nameLabel = _loc1_;
                  if(!_loc3_)
                  {
                     addr0097:
                     BindingManager.executeBindings(this,"nameLabel",this.nameLabel);
                  }
                  §§goto(addr00a4);
               }
            }
            addr00a4:
            return _loc1_;
         }
         §§goto(addr0097);
      }
      
      private function _ResidentialImprovementContentComponent_HGroup5_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.width = 480;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.height = 40;
               if(_loc3_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_)
                  {
                     addr0052:
                     _loc1_.horizontalAlign = "center";
                     if(_loc3_)
                     {
                        §§goto(addr0066);
                     }
                     §§goto(addr008a);
                  }
                  addr0066:
                  _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_LocaLabel2_i()];
                  if(_loc3_ || Boolean(this))
                  {
                     addr007e:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr008a:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr008a);
            }
            §§goto(addr007e);
         }
         §§goto(addr0052);
      }
      
      private function _ResidentialImprovementContentComponent_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.percentWidth = 90;
            if(_loc3_)
            {
               _loc1_.maxDisplayedLines = 2;
               if(!_loc2_)
               {
                  addr003d:
                  _loc1_.styleName = "improvementLayerText";
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.id = "flavourText";
                     if(!(_loc2_ && Boolean(this)))
                     {
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr0079:
                              _loc1_.document = this;
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§goto(addr0096);
                              }
                              §§goto(addr00a8);
                           }
                        }
                     }
                     §§goto(addr0096);
                  }
                  §§goto(addr0079);
               }
               addr0096:
               this.flavourText = _loc1_;
               if(_loc3_ || Boolean(this))
               {
                  addr00a8:
                  BindingManager.executeBindings(this,"flavourText",this.flavourText);
               }
               return _loc1_;
            }
         }
         §§goto(addr003d);
      }
      
      private function _ResidentialImprovementContentComponent_HGroup6_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.gap = 16;
            if(_loc3_ || _loc2_)
            {
               _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_ImprovementSlotComponent1_i(),this._ResidentialImprovementContentComponent_ImprovementSlotComponent2_i(),this._ResidentialImprovementContentComponent_ImprovementSlotComponent3_i()];
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_ImprovementSlotComponent1_i() : ImprovementSlotComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ImprovementSlotComponent = new ImprovementSlotComponent();
         if(!_loc3_)
         {
            _loc1_.id = "slot1";
            if(_loc2_ || Boolean(_loc1_))
            {
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr0059);
                  }
                  §§goto(addr006c);
               }
            }
            §§goto(addr0062);
         }
         addr0059:
         _loc1_.document = this;
         if(!_loc3_)
         {
            addr0062:
            this.slot1 = _loc1_;
            if(_loc2_)
            {
               addr006c:
               BindingManager.executeBindings(this,"slot1",this.slot1);
            }
         }
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_ImprovementSlotComponent2_i() : ImprovementSlotComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ImprovementSlotComponent = new ImprovementSlotComponent();
         if(!_loc2_)
         {
            _loc1_.id = "slot2";
            if(_loc3_ || Boolean(_loc1_))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     §§goto(addr0057);
                  }
               }
               §§goto(addr0060);
            }
         }
         addr0057:
         _loc1_.document = this;
         if(!_loc2_)
         {
            addr0060:
            this.slot2 = _loc1_;
            if(_loc3_ || _loc2_)
            {
               BindingManager.executeBindings(this,"slot2",this.slot2);
            }
         }
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_ImprovementSlotComponent3_i() : ImprovementSlotComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ImprovementSlotComponent = new ImprovementSlotComponent();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.id = "slot3";
            if(_loc3_ || _loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr0063);
                  }
                  §§goto(addr007e);
               }
               §§goto(addr0074);
            }
         }
         addr0063:
         _loc1_.document = this;
         if(!(_loc2_ && Boolean(this)))
         {
            addr0074:
            this.slot3 = _loc1_;
            if(_loc3_)
            {
               addr007e:
               BindingManager.executeBindings(this,"slot3",this.slot3);
            }
         }
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_HGroup7_c(),this._ResidentialImprovementContentComponent_HGroup8_c()];
               if(_loc3_)
               {
                  §§goto(addr0067);
               }
               §§goto(addr007b);
            }
            addr0067:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  addr007b:
                  _loc1_.document = this;
               }
            }
            §§goto(addr007f);
         }
         addr007f:
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_HGroup7_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.gap = 0;
            if(_loc2_)
            {
               _loc1_.width = 715;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.height = 28;
                  if(_loc2_)
                  {
                     _loc1_.verticalAlign = "middle";
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.horizontalAlign = "center";
                        if(_loc2_ || Boolean(this))
                        {
                           _loc1_.horizontalCenter = 0;
                           if(_loc2_)
                           {
                              _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_BriskImageDynaLib6_c(),this._ResidentialImprovementContentComponent_BriskImageDynaLib7_c(),this._ResidentialImprovementContentComponent_BriskImageDynaLib8_c()];
                              addr0083:
                              if(!(_loc3_ && Boolean(this)))
                              {
                                 §§goto(addr00b2);
                              }
                           }
                           §§goto(addr00c6);
                        }
                        §§goto(addr00b2);
                     }
                  }
                  §§goto(addr0083);
               }
               addr00b2:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr00c6:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
            §§goto(addr0083);
         }
         §§goto(addr00c6);
      }
      
      private function _ResidentialImprovementContentComponent_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_improvements";
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.dynaBmpSourceName = "headline_left";
               if(_loc3_ || _loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr0071:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0071);
      }
      
      private function _ResidentialImprovementContentComponent_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_improvements";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "headline_middle";
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.percentWidth = 100;
                  if(!(_loc2_ && _loc3_))
                  {
                     §§goto(addr0078);
                  }
                  §§goto(addr008c);
               }
               addr0078:
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     addr008c:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0090);
            }
            §§goto(addr008c);
         }
         addr0090:
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_improvements";
            if(_loc2_)
            {
               addr0047:
               _loc1_.dynaBmpSourceName = "headline_right";
               if(_loc2_ || Boolean(_loc1_))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0067:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr006b);
               }
               §§goto(addr0067);
            }
            addr006b:
            return _loc1_;
         }
         §§goto(addr0047);
      }
      
      private function _ResidentialImprovementContentComponent_HGroup8_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.width = 715;
            if(!(_loc2_ && Boolean(this)))
            {
               _loc1_.height = 28;
               if(_loc3_)
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_ || _loc3_)
                  {
                     addr005b:
                     _loc1_.paddingLeft = 25;
                     if(_loc3_)
                     {
                        _loc1_.paddingRight = 5;
                        if(!_loc2_)
                        {
                           addr0071:
                           _loc1_.gap = 2;
                           if(!_loc2_)
                           {
                              _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_HGroup9_c(),this._ResidentialImprovementContentComponent_HGroup10_c(),this._ResidentialImprovementContentComponent_DropDownAmountListComponent1_i(),this._ResidentialImprovementContentComponent_Group5_c(),this._ResidentialImprovementContentComponent_HGroup11_c()];
                              addr007b:
                              if(!(_loc2_ && Boolean(_loc1_)))
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(_loc3_ || Boolean(_loc1_))
                                    {
                                       addr00cb:
                                       _loc1_.document = this;
                                    }
                                 }
                                 §§goto(addr00cf);
                              }
                           }
                           §§goto(addr00cb);
                        }
                        addr00cf:
                        return _loc1_;
                     }
                  }
                  §§goto(addr007b);
               }
               §§goto(addr0071);
            }
         }
         §§goto(addr005b);
      }
      
      private function _ResidentialImprovementContentComponent_HGroup9_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.verticalAlign = "middle";
            if(_loc3_ || _loc2_)
            {
               _loc1_.horizontalAlign = "left";
               if(_loc3_)
               {
                  _loc1_.percentHeight = 100;
                  if(_loc3_)
                  {
                     _loc1_.percentWidth = 100;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr007a:
                        _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_LocaLabel3_i()];
                        if(!_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr0096:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr009a);
                        }
                     }
                  }
                  §§goto(addr0096);
               }
               §§goto(addr009a);
            }
            §§goto(addr007a);
         }
         addr009a:
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.styleName = "departmentSecurityLabel";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.maxDisplayedLines = 1;
               if(!_loc2_)
               {
                  addr0053:
                  _loc1_.id = "inventoryLabel";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0066:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr007d:
                           _loc1_.document = this;
                           if(_loc3_ || _loc2_)
                           {
                              addr008e:
                              this.inventoryLabel = _loc1_;
                              if(!_loc2_)
                              {
                                 addr0098:
                                 BindingManager.executeBindings(this,"inventoryLabel",this.inventoryLabel);
                              }
                              §§goto(addr00a5);
                           }
                           §§goto(addr0098);
                        }
                        addr00a5:
                        return _loc1_;
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0098);
            }
            §§goto(addr0066);
         }
         §§goto(addr0053);
      }
      
      private function _ResidentialImprovementContentComponent_HGroup10_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc3_)
            {
               _loc1_.horizontalAlign = "right";
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr004f:
                  _loc1_.percentHeight = 100;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     §§goto(addr0061);
                  }
                  §§goto(addr0073);
               }
               addr0061:
               _loc1_.percentWidth = 100;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_LocaLabel4_i()];
                  addr0073:
                  if(!(_loc2_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               §§goto(addr00ae);
            }
            §§goto(addr004f);
         }
         addr00ae:
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_LocaLabel4_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc3_)
         {
            _loc1_.styleName = "elevenWhiteRight";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.maxDisplayedLines = 1;
               if(!_loc2_)
               {
                  addr0051:
                  _loc1_.id = "inventorySortFilterLabel";
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr008b:
                              this.inventorySortFilterLabel = _loc1_;
                              if(_loc3_)
                              {
                                 BindingManager.executeBindings(this,"inventorySortFilterLabel",this.inventorySortFilterLabel);
                              }
                           }
                           §§goto(addr00a2);
                        }
                     }
                  }
                  §§goto(addr008b);
               }
               addr00a2:
               return _loc1_;
            }
            §§goto(addr0051);
         }
         §§goto(addr008b);
      }
      
      private function _ResidentialImprovementContentComponent_DropDownAmountListComponent1_i() : DropDownAmountListComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DropDownAmountListComponent = new DropDownAmountListComponent();
         if(!_loc2_)
         {
            _loc1_.width = 200;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.labelField = "categoryLabel";
               if(!_loc2_)
               {
                  _loc1_.itemRenderer = this._ResidentialImprovementContentComponent_ClassFactory1_c();
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.prompt = "";
                     if(_loc3_)
                     {
                        §§goto(addr0071);
                     }
                     §§goto(addr0095);
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0095);
            }
            §§goto(addr007c);
         }
         addr0071:
         _loc1_.id = "inventorySortFilterDropDown";
         if(!_loc2_)
         {
            addr007c:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr0095:
                  _loc1_.document = this;
                  if(!(_loc2_ && _loc3_))
                  {
                     §§goto(addr00a6);
                  }
               }
               §§goto(addr00b0);
            }
         }
         addr00a6:
         this.inventorySortFilterDropDown = _loc1_;
         if(!_loc2_)
         {
            addr00b0:
            BindingManager.executeBindings(this,"inventorySortFilterDropDown",this.inventorySortFilterDropDown);
         }
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_ClassFactory1_c() : ClassFactory
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc3_)
         {
            _loc1_.generator = DropDownAmountListItemRenderer;
         }
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_Group5_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.width = 5;
            if(_loc2_ || Boolean(this))
            {
               if(!_loc1_.document)
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr0066:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr006a);
            }
            §§goto(addr0066);
         }
         addr006a:
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_HGroup11_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.width = 20;
            if(!_loc2_)
            {
               _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_DynamicImageButton1_i()];
               if(!(_loc2_ && _loc2_))
               {
                  addr0063:
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
         §§goto(addr0063);
      }
      
      private function _ResidentialImprovementContentComponent_DynamicImageButton1_i() : DynamicImageButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc3_ || _loc2_)
         {
            _loc1_.styleName = "featureButtonWhite";
            if(_loc3_)
            {
               _loc1_.addEventListener("click",this.__featureScreenButton_click);
               if(!_loc2_)
               {
                  _loc1_.id = "featureScreenButton";
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           §§goto(addr0083);
                        }
                        §§goto(addr009e);
                     }
                     §§goto(addr0094);
                  }
                  §§goto(addr0083);
               }
            }
            §§goto(addr009e);
         }
         addr0083:
         _loc1_.document = this;
         if(!(_loc2_ && _loc2_))
         {
            addr0094:
            this.featureScreenButton = _loc1_;
            if(!_loc2_)
            {
               addr009e:
               BindingManager.executeBindings(this,"featureScreenButton",this.featureScreenButton);
            }
         }
         return _loc1_;
      }
      
      public function __featureScreenButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.handleFeatureClick();
         }
      }
      
      private function _ResidentialImprovementContentComponent_VGroup3_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_ || _loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc2_ || _loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(!_loc3_)
               {
                  _loc1_.width = 715;
                  if(!_loc3_)
                  {
                     _loc1_.includeInLayout = false;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.visible = false;
                        if(_loc2_)
                        {
                           _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_HGroup12_c(),this._ResidentialImprovementContentComponent_HGroup13_c()];
                           if(!_loc3_)
                           {
                              §§goto(addr008a);
                           }
                           §§goto(addr00c0);
                        }
                        addr008a:
                        _loc1_.id = "inventoryEmptyGroup";
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    §§goto(addr00b6);
                                 }
                              }
                              §§goto(addr00c0);
                           }
                        }
                     }
                     §§goto(addr00b6);
                  }
                  §§goto(addr00c0);
               }
            }
            addr00b6:
            this.inventoryEmptyGroup = _loc1_;
            if(!_loc3_)
            {
               addr00c0:
               BindingManager.executeBindings(this,"inventoryEmptyGroup",this.inventoryEmptyGroup);
            }
            §§goto(addr00cd);
         }
         addr00cd:
         return _loc1_;
      }
      
      private function _ResidentialImprovementContentComponent_HGroup12_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.height = 40;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.percentWidth = 100;
               addr0039:
               if(_loc3_)
               {
                  addr004f:
                  _loc1_.verticalAlign = "middle";
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.horizontalAlign = "center";
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_LocaLabel5_i()];
                        if(_loc3_ || _loc3_)
                        {
                           addr0098:
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr00a4:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00a8);
                        }
                        §§goto(addr00a4);
                     }
                     addr00a8:
                     return _loc1_;
                  }
                  §§goto(addr0098);
               }
               §§goto(addr00a4);
            }
            §§goto(addr004f);
         }
         §§goto(addr0039);
      }
      
      private function _ResidentialImprovementContentComponent_LocaLabel5_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.styleName = "improvementLayerText";
            if(!(_loc3_ && Boolean(this)))
            {
               addr0039:
               _loc1_.percentWidth = 85;
               if(_loc2_)
               {
                  _loc1_.maxDisplayedLines = 2;
                  if(_loc2_)
                  {
                     addr005a:
                     _loc1_.id = "emptyFlavourText";
                     if(!(_loc3_ && _loc3_))
                     {
                        addr006d:
                        if(!_loc1_.document)
                        {
                           if(!_loc3_)
                           {
                              _loc1_.document = this;
                              if(_loc2_ || Boolean(this))
                              {
                                 addr0095:
                                 this.emptyFlavourText = _loc1_;
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    BindingManager.executeBindings(this,"emptyFlavourText",this.emptyFlavourText);
                                 }
                              }
                              return _loc1_;
                           }
                        }
                     }
                     §§goto(addr0095);
                  }
               }
               §§goto(addr006d);
            }
            §§goto(addr005a);
         }
         §§goto(addr0039);
      }
      
      private function _ResidentialImprovementContentComponent_HGroup13_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.verticalAlign = "middle";
            if(!_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr0051:
                  _loc1_.percentWidth = 100;
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_MultistateButton1_i()];
                     addr0063:
                     if(!(_loc3_ && _loc3_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_ || Boolean(this))
                           {
                              addr009b:
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr009f);
                  }
                  §§goto(addr009b);
               }
               addr009f:
               return _loc1_;
            }
            §§goto(addr0051);
         }
         §§goto(addr0063);
      }
      
      private function _ResidentialImprovementContentComponent_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.width = 204;
            if(!_loc2_)
            {
               addr0033:
               _loc1_.addEventListener("click",this.__storeButton_click);
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.id = "storeButton";
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr008a:
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr009b:
                              this.storeButton = _loc1_;
                              if(!_loc2_)
                              {
                                 addr00a5:
                                 BindingManager.executeBindings(this,"storeButton",this.storeButton);
                              }
                              §§goto(addr00b2);
                           }
                           §§goto(addr00a5);
                        }
                        addr00b2:
                        return _loc1_;
                     }
                     §§goto(addr009b);
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr008a);
            }
            §§goto(addr00a5);
         }
         §§goto(addr0033);
      }
      
      public function __storeButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.handleOpenStore();
         }
      }
      
      private function _ResidentialImprovementContentComponent_HGroup14_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc2_)
                  {
                     _loc1_.height = 100;
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.mxmlContent = [this._ResidentialImprovementContentComponent_ImprovementInventoryLayerComponent1_i()];
                        if(!_loc2_)
                        {
                           addr007d:
                           _loc1_.id = "inventoryGroup";
                           if(_loc3_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr00a9:
                                    _loc1_.document = this;
                                    if(!_loc2_)
                                    {
                                       addr00b2:
                                       this.inventoryGroup = _loc1_;
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr00c4:
                                          BindingManager.executeBindings(this,"inventoryGroup",this.inventoryGroup);
                                       }
                                    }
                                    §§goto(addr00d1);
                                 }
                                 §§goto(addr00c4);
                              }
                           }
                           §§goto(addr00b2);
                        }
                        addr00d1:
                        return _loc1_;
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr00c4);
               }
               §§goto(addr00a9);
            }
            §§goto(addr007d);
         }
         §§goto(addr00a9);
      }
      
      private function _ResidentialImprovementContentComponent_ImprovementInventoryLayerComponent1_i() : ImprovementInventoryLayerComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ImprovementInventoryLayerComponent = new ImprovementInventoryLayerComponent();
         if(!_loc2_)
         {
            _loc1_.width = 718;
            if(_loc3_)
            {
               _loc1_.percentHeight = 100;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.id = "inventory";
                  if(!_loc2_)
                  {
                     addr0054:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr0076:
                              this.inventory = _loc1_;
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr0088:
                                 BindingManager.executeBindings(this,"inventory",this.inventory);
                              }
                           }
                        }
                        return _loc1_;
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0088);
            }
            §§goto(addr0076);
         }
         §§goto(addr0054);
      }
      
      private function _ResidentialImprovementContentComponent_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         if(!_loc2_)
         {
            _loc1_.left = 220;
            if(_loc3_)
            {
               _loc1_.top = 173;
               if(_loc3_)
               {
                  _loc1_.right = 60;
                  if(_loc3_)
                  {
                     _loc1_.id = "uiInfolayerAlignmentLineTop";
                     if(!_loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(this)))
                           {
                              §§goto(addr007b);
                           }
                           §§goto(addr0096);
                        }
                        §§goto(addr0084);
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr0096);
               }
               addr007b:
               _loc1_.document = this;
               if(!_loc2_)
               {
                  addr0084:
                  this.uiInfolayerAlignmentLineTop = _loc1_;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr0096:
                     BindingManager.executeBindings(this,"uiInfolayerAlignmentLineTop",this.uiInfolayerAlignmentLineTop);
                  }
               }
               §§goto(addr00a3);
            }
            addr00a3:
            return _loc1_;
         }
         §§goto(addr007b);
      }
      
      private function _ResidentialImprovementContentComponent_UiInfolayerAlignmentLine2_i() : UiInfolayerAlignmentLine
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         if(!_loc3_)
         {
            _loc1_.left = 50;
            if(_loc2_)
            {
               _loc1_.top = 252;
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.right = 50;
                  addr003f:
                  if(_loc2_)
                  {
                     _loc1_.id = "uiInfolayerAlignmentLineBottom";
                     if(!_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc2_)
                           {
                              _loc1_.document = this;
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr008b:
                                 this.uiInfolayerAlignmentLineBottom = _loc1_;
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr009d:
                                    BindingManager.executeBindings(this,"uiInfolayerAlignmentLineBottom",this.uiInfolayerAlignmentLineBottom);
                                 }
                              }
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr008b);
                     }
                  }
                  §§goto(addr009d);
               }
               addr00aa:
               return _loc1_;
            }
            §§goto(addr003f);
         }
         §§goto(addr008b);
      }
      
      private function _ResidentialImprovementContentComponent_FeatureLockedScreen1_i() : FeatureLockedScreen
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:FeatureLockedScreen = new FeatureLockedScreen();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.top = -10;
            if(_loc2_)
            {
               _loc1_.bottom = 0;
               if(_loc2_)
               {
                  addr003e:
                  _loc1_.percentHeight = 100;
                  if(!_loc3_)
                  {
                     _loc1_.visible = false;
                     if(!_loc3_)
                     {
                        _loc1_.includeInLayout = false;
                        if(_loc2_ || _loc2_)
                        {
                           §§goto(addr006d);
                        }
                        §§goto(addr0080);
                     }
                     §§goto(addr00a9);
                  }
               }
               addr006d:
               _loc1_.id = "lockedScreen";
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0080:
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr00a0:
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           addr00a9:
                           this.lockedScreen = _loc1_;
                           if(_loc2_ || _loc2_)
                           {
                              addr00bb:
                              BindingManager.executeBindings(this,"lockedScreen",this.lockedScreen);
                           }
                           §§goto(addr00c8);
                        }
                        §§goto(addr00bb);
                     }
                     §§goto(addr00c8);
                  }
                  §§goto(addr00a9);
               }
               addr00c8:
               return _loc1_;
            }
            §§goto(addr003e);
         }
         §§goto(addr00a0);
      }
      
      public function ___ResidentialImprovementContentComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this.handleCreationComplete();
         }
      }
      
      private function _ResidentialImprovementContentComponent_bindingsSetup() : Array
      {
         var result:Array;
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         §§push(§§newactivation());
         if(_loc2_)
         {
            §§pop().§§slot[1] = [];
            if(_loc2_)
            {
               §§push(§§newactivation());
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§§pop().§§slot[1]);
                  if(_loc2_)
                  {
                     §§push(0);
                     if(_loc2_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():uint
                        {
                           return UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM;
                        },null,"uiInfolayerAlignmentLineTop.alignment");
                        if(_loc2_)
                        {
                           §§push(§§newactivation());
                           if(!_loc3_)
                           {
                              addr0061:
                              §§push(§§pop().§§slot[1]);
                              if(_loc2_ || _loc1_)
                              {
                                 addr007c:
                                 §§push(1);
                                 if(_loc2_)
                                 {
                                    addr0083:
                                    §§pop()[§§pop()] = new Binding(this,function():uint
                                    {
                                       return ResidentialImprovementContentMediator.LINE_ID_0;
                                    },null,"uiInfolayerAlignmentLineTop.lineId");
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       §§push(§§newactivation());
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          §§push(§§pop().§§slot[1]);
                                          if(!(_loc3_ && _loc1_))
                                          {
                                             addr00c0:
                                             §§push(2);
                                             if(_loc2_)
                                             {
                                                §§pop()[§§pop()] = new Binding(this,function():uint
                                                {
                                                   return UserInterfaceInfoLayerAlignLineVo.ALIGN_TOP;
                                                },null,"uiInfolayerAlignmentLineBottom.alignment");
                                                if(!_loc3_)
                                                {
                                                   addr00eb:
                                                   §§push(§§newactivation());
                                                   if(!_loc3_)
                                                   {
                                                      §§goto(addr0119);
                                                   }
                                                   §§goto(addr0117);
                                                }
                                                §§goto(addr0115);
                                             }
                                             §§goto(addr0103);
                                          }
                                          addr0119:
                                          §§goto(addr00f2);
                                       }
                                       addr00f2:
                                       §§push(§§pop().§§slot[1]);
                                       if(_loc2_ || _loc3_)
                                       {
                                          addr0103:
                                          §§pop()[3] = new Binding(this,function():uint
                                          {
                                             return ResidentialImprovementContentMediator.LINE_ID_1;
                                          },null,"uiInfolayerAlignmentLineBottom.lineId");
                                          addr0117:
                                          addr0115:
                                          return result;
                                       }
                                    }
                                    §§goto(addr00eb);
                                 }
                                 §§goto(addr0103);
                              }
                              §§goto(addr00c0);
                           }
                           §§goto(addr0117);
                        }
                        §§goto(addr00eb);
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0061);
            }
            §§goto(addr00eb);
         }
         §§goto(addr0061);
      }
      
      [Bindable(event="propertyChange")]
      public function get buildingImage() : BriskImageDynaLib
      {
         return this._400476409buildingImage;
      }
      
      public function set buildingImage(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._400476409buildingImage;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._400476409buildingImage = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buildingImage",_loc2_,param1));
                        }
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr0078);
               }
            }
         }
         addr0087:
      }
      
      [Bindable(event="propertyChange")]
      public function get buildingPolaroidGroup() : Group
      {
         return this._758761919buildingPolaroidGroup;
      }
      
      public function set buildingPolaroidGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._758761919buildingPolaroidGroup;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  addr003a:
                  this._758761919buildingPolaroidGroup = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0053:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buildingPolaroidGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0062);
               }
               §§goto(addr0053);
            }
            addr0062:
            return;
         }
         §§goto(addr003a);
      }
      
      [Bindable(event="propertyChange")]
      public function get emptyFlavourText() : LocaLabel
      {
         return this._1534939953emptyFlavourText;
      }
      
      public function set emptyFlavourText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1534939953emptyFlavourText;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1534939953emptyFlavourText = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"emptyFlavourText",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr0074);
               }
            }
         }
         addr0083:
      }
      
      [Bindable(event="propertyChange")]
      public function get featureScreenButton() : DynamicImageButton
      {
         return this._1905467180featureScreenButton;
      }
      
      public function set featureScreenButton(param1:DynamicImageButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1905467180featureScreenButton;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._1905467180featureScreenButton = param1;
                  if(_loc4_ || _loc3_)
                  {
                     addr006a:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0081:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"featureScreenButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0090);
               }
               §§goto(addr0081);
            }
            addr0090:
            return;
         }
         §§goto(addr006a);
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._800887486flavourText = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
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
         §§goto(addr006e);
      }
      
      [Bindable(event="propertyChange")]
      public function get inventory() : ImprovementInventoryLayerComponent
      {
         return this._2020599460inventory;
      }
      
      public function set inventory(param1:ImprovementInventoryLayerComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2020599460inventory;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._2020599460inventory = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr0065);
                  }
                  §§goto(addr007c);
               }
               addr0065:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr007c:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inventory",_loc2_,param1));
                  }
               }
               §§goto(addr008b);
            }
            addr008b:
            return;
         }
         §§goto(addr007c);
      }
      
      [Bindable(event="propertyChange")]
      public function get inventoryEmptyGroup() : VGroup
      {
         return this._1637006254inventoryEmptyGroup;
      }
      
      public function set inventoryEmptyGroup(param1:VGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1637006254inventoryEmptyGroup;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._1637006254inventoryEmptyGroup = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inventoryEmptyGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007e);
               }
               §§goto(addr006f);
            }
            addr007e:
            return;
         }
         §§goto(addr006f);
      }
      
      [Bindable(event="propertyChange")]
      public function get inventoryGroup() : HGroup
      {
         return this._55351677inventoryGroup;
      }
      
      public function set inventoryGroup(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._55351677inventoryGroup;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._55351677inventoryGroup = param1;
                  addr0040:
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     §§goto(addr005f);
                  }
                  §§goto(addr006f);
               }
               addr005f:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc4_)
                  {
                     addr006f:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inventoryGroup",_loc2_,param1));
                  }
               }
               §§goto(addr007e);
            }
            addr007e:
            return;
         }
         §§goto(addr0040);
      }
      
      [Bindable(event="propertyChange")]
      public function get inventoryLabel() : LocaLabel
      {
         return this._51253512inventoryLabel;
      }
      
      public function set inventoryLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._51253512inventoryLabel;
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  addr0046:
                  this._51253512inventoryLabel = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr007c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inventoryLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008b);
               }
               §§goto(addr007c);
            }
            addr008b:
            return;
         }
         §§goto(addr0046);
      }
      
      [Bindable(event="propertyChange")]
      public function get inventorySortFilterDropDown() : DropDownAmountListComponent
      {
         return this._836813949inventorySortFilterDropDown;
      }
      
      public function set inventorySortFilterDropDown(param1:DropDownAmountListComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._836813949inventorySortFilterDropDown;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._836813949inventorySortFilterDropDown = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inventorySortFilterDropDown",_loc2_,param1));
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
         §§goto(addr006f);
      }
      
      [Bindable(event="propertyChange")]
      public function get inventorySortFilterLabel() : LocaLabel
      {
         return this._1493824286inventorySortFilterLabel;
      }
      
      public function set inventorySortFilterLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1493824286inventorySortFilterLabel;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._1493824286inventorySortFilterLabel = param1;
                  if(_loc3_)
                  {
                     addr0058:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inventorySortFilterLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0058);
            }
            addr0076:
            return;
         }
         §§goto(addr0067);
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
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._2016210966lockedScreen = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lockedScreen",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nameLabel() : LocaLabel
      {
         return this._1215755049nameLabel;
      }
      
      public function set nameLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1215755049nameLabel;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this._1215755049nameLabel = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr0067:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr007e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008d);
               }
               §§goto(addr007e);
            }
            addr008d:
            return;
         }
         §§goto(addr0067);
      }
      
      [Bindable(event="propertyChange")]
      public function get polaroid() : BriskImageDynaLib
      {
         return this._539958732polaroid;
      }
      
      public function set polaroid(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._539958732polaroid;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._539958732polaroid = param1;
                  if(_loc3_)
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"polaroid",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr005c);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1() : ImprovementSlotComponent
      {
         return this._109532659slot1;
      }
      
      public function set slot1(param1:ImprovementSlotComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._109532659slot1;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  addr0051:
                  this._109532659slot1 = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006b:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr006b);
            }
            addr007a:
            return;
         }
         §§goto(addr0051);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2() : ImprovementSlotComponent
      {
         return this._109532660slot2;
      }
      
      public function set slot2(param1:ImprovementSlotComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._109532660slot2;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(param1))
               {
                  this._109532660slot2 = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0063:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0063);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot3() : ImprovementSlotComponent
      {
         return this._109532661slot3;
      }
      
      public function set slot3(param1:ImprovementSlotComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._109532661slot3;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr0036:
                  this._109532661slot3 = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr004f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot3",_loc2_,param1));
                        }
                     }
                     §§goto(addr005e);
                  }
               }
               §§goto(addr004f);
            }
            addr005e:
            return;
         }
         §§goto(addr0036);
      }
      
      [Bindable(event="propertyChange")]
      public function get storeButton() : MultistateButton
      {
         return this._1980899187storeButton;
      }
      
      public function set storeButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1980899187storeButton;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  addr0049:
                  this._1980899187storeButton = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     addr006a:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"storeButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0091);
               }
               §§goto(addr006a);
            }
            addr0091:
            return;
         }
         §§goto(addr0049);
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
         if(!(_loc4_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  addr0052:
                  this._1364472877uiInfolayerAlignmentLineBottom = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLineBottom",_loc2_,param1));
                        }
                     }
                     §§goto(addr007b);
                  }
                  §§goto(addr006c);
               }
            }
            addr007b:
            return;
         }
         §§goto(addr0052);
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1457442643uiInfolayerAlignmentLineTop = param1;
                  addr003f:
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLineTop",_loc2_,param1));
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
         §§goto(addr003f);
      }
   }
}

