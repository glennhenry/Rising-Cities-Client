package net.bigpoint.cityrama.view.shopBook.ui.components
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
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.detailViews.vo.ShopDetailViewVo;
   import net.bigpoint.cityrama.model.good.vo.GoodObjectVo;
   import net.bigpoint.cityrama.model.good.vo.ShopStockGoodVo;
   import net.bigpoint.cityrama.model.residentialBook.vo.UpgradeProgressVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.common.components.UpgradeProgressComponent;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ResidentialHeaderComponent;
   import net.bigpoint.cityrama.view.shopBook.ui.skins.SorageInterestsListSkin;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class ShopPopup extends PaperPopupWindow implements IBindingClient
   {
      
      public static const TO_STORE:String = "toStore";
      
      public static const TO_STORAGE:String = "toStorage";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc1_))
      {
         TO_STORE = "toStore";
         if(!(_loc2_ && ShopPopup))
         {
            TO_STORAGE = "toStorage";
            if(!_loc2_)
            {
               _skinParts = {
                  "moveArea":false,
                  "closeButton":false,
                  "controlBarGroup":false,
                  "contentGroup":false,
                  "backButton":false,
                  "tabBar":false,
                  "sideMenu":false,
                  "titleDisplay":false
               };
            }
         }
      }
      
      public var _ShopPopup_BriskImageDynaLib9:BriskImageDynaLib;
      
      private var _271979082cardBoard:BriskImageDynaLib;
      
      private var _713468034effectHeader:ResidentialHeaderComponent;
      
      private var _911984155effectsComponent:StickyNoteComponent;
      
      private var _1464688417energyIcon:BriskImageDynaLib;
      
      private var _1836601012energyLabel:LocaLabel;
      
      private var _1415215337evaluationHeader:ResidentialHeaderComponent;
      
      private var _1684755691flavorText:LocaLabel;
      
      private var _1356539550goodImage:BriskImageDynaLib;
      
      private var _895838659moodLabel:LocaLabel;
      
      private var _884864252numericStepper:NumericMaxStepperComponent;
      
      private var _186942507radiusIcon:BriskImageDynaLib;
      
      private var _1502948738radiusLabel:LocaLabel;
      
      private var _1463740125shopHeader:LocaLabel;
      
      private var _345533260shopList:List;
      
      private var _1267755849stockItem:BriskImageDynaLib;
      
      private var _647927166stockLabel:LocaLabel;
      
      private var _1378814184storageHeader:LocaLabel;
      
      private var _525815367storageList:List;
      
      private var _747477888toStorage:MultistateButton;
      
      private var _1165701338toStore:MultistateButton;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var _2007548268upgradeProgressComponent:UpgradeProgressComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ShopDetailViewVo;
      
      private var _dataIsDirty:Boolean;
      
      private var _itemIndex:int = 0;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ShopPopup()
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
         if(_loc3_ || Boolean(this))
         {
            §§push(null);
            if(_loc3_ || Boolean(this))
            {
               §§pop().§§slot[3] = §§pop();
               if(!(_loc4_ && _loc2_))
               {
                  §§push(§§newactivation());
                  if(!(_loc4_ && Boolean(this)))
                  {
                     addr0057:
                     §§pop().§§slot[5] = null;
                     addr0056:
                     if(_loc3_ || _loc2_)
                     {
                        addr0068:
                        this.mx_internal::_bindings = [];
                        if(!_loc4_)
                        {
                           this.mx_internal::_watchers = [];
                           if(!(_loc4_ && _loc1_))
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc3_ || Boolean(this))
                              {
                                 addr009b:
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(_loc3_)
                                 {
                                    super();
                                    if(!_loc4_)
                                    {
                                       mx_internal::_document = this;
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§push(§§newactivation());
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             §§pop().§§slot[1] = this._ShopPopup_bindingsSetup();
                                             if(!_loc4_)
                                             {
                                                §§push(§§newactivation());
                                                if(_loc3_ || _loc3_)
                                                {
                                                   addr00f8:
                                                   §§pop().§§slot[2] = [];
                                                   if(_loc3_ || _loc1_)
                                                   {
                                                      addr010b:
                                                      §§push(§§newactivation());
                                                      if(!_loc4_)
                                                      {
                                                         addr0113:
                                                         §§pop().§§slot[3] = this;
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            addr0126:
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!(_loc4_ && _loc2_))
                                                               {
                                                                  addr013c:
                                                                  §§push(§§newactivation());
                                                                  if(!(_loc4_ && Boolean(this)))
                                                                  {
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_shopBook_ui_components_ShopPopupWatcherSetupUtil");
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(_loc3_)
                                                                        {
                                                                           addr017c:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(_loc3_ || _loc1_)
                                                                           {
                                                                              addr019a:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return ShopPopup[param1];
                                                                              },bindings,watchers);
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr01b7:
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr01de:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr0205:
                                                                                       this.styleName = "shop";
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§goto(addr0211);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr021b);
                                                                                 }
                                                                                 §§goto(addr0205);
                                                                              }
                                                                              §§goto(addr021b);
                                                                           }
                                                                           §§goto(addr0258);
                                                                        }
                                                                        §§goto(addr0274);
                                                                     }
                                                                     §§goto(addr0205);
                                                                  }
                                                                  §§goto(addr0274);
                                                               }
                                                               §§goto(addr0205);
                                                            }
                                                            §§goto(addr019a);
                                                         }
                                                         §§goto(addr0227);
                                                      }
                                                      §§goto(addr017c);
                                                   }
                                                   §§goto(addr01b7);
                                                }
                                                §§goto(addr0113);
                                             }
                                             §§goto(addr010b);
                                          }
                                          §§goto(addr00f8);
                                       }
                                       §§goto(addr021b);
                                    }
                                    §§goto(addr01de);
                                 }
                                 §§goto(addr0211);
                              }
                              §§goto(addr0126);
                           }
                           addr0211:
                           this.showBackButton = false;
                           if(_loc3_)
                           {
                              addr021b:
                              this.width = 785;
                              if(!_loc4_)
                              {
                                 addr0227:
                                 this.height = 430;
                                 if(_loc3_ || Boolean(this))
                                 {
                                    §§goto(addr023a);
                                 }
                              }
                              §§goto(addr0272);
                           }
                           addr023a:
                           this.mxmlContentFactory = new DeferredInstanceFromFunction(this._ShopPopup_Array1_c);
                           if(!(_loc4_ && _loc1_))
                           {
                              addr0258:
                              this.addEventListener("creationComplete",this.___ShopPopup_PaperPopupWindow1_creationComplete);
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 addr0274:
                                 i = 0;
                                 addr0272:
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
                                       if(!(_loc3_ || _loc3_))
                                       {
                                          break;
                                       }
                                       §§push(§§newactivation());
                                       if(_loc3_ || Boolean(this))
                                       {
                                          §§push(§§pop().§§slot[4]);
                                          if(!_loc4_)
                                          {
                                             §§push(uint(§§pop() + 1));
                                             if(_loc4_)
                                             {
                                                continue loop2;
                                             }
                                          }
                                          §§push(§§newactivation());
                                          if(_loc3_)
                                          {
                                             var _temp_27:* = §§pop();
                                             §§pop().§§slot[4] = _temp_27;
                                             if(!(_loc4_ && _loc1_))
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
                        }
                        §§goto(addr013c);
                     }
                     §§goto(addr009b);
                  }
                  §§goto(addr0274);
               }
               §§goto(addr0068);
            }
            §§goto(addr0057);
         }
         §§goto(addr0056);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || ShopPopup)
         {
            ShopPopup._watcherSetupUtil = param1;
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
            if(!(_loc2_ && _loc3_))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc2_ && Boolean(param1)))
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
         if(!_loc1_)
         {
            super.initialize();
         }
      }
      
      private function handleCreationComplete() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.storageHeader.text = LocaUtils.getString("rcl.shopbook.layer","rcl.shopbook.layer.yourStorage");
            if(!_loc2_)
            {
               this.toStorage.label = LocaUtils.getString("rcl.shopbook.layer","rcl.shopbook.layer.toStorage");
               if(!_loc2_)
               {
                  addr0046:
                  this.toStore.label = LocaUtils.getString("rcl.shopbook.layer","rcl.shopbook.layer.deliver");
                  if(!(_loc2_ && _loc3_))
                  {
                     this.flavorText.text = LocaUtils.getString("rcl.shopbook.layer","rcl.shopbook.layer.flavorText");
                     if(!_loc2_)
                     {
                        addr007d:
                        this.effectHeader.text = LocaUtils.getString("rcl.shopbook.layer","rcl.shopbook.layer.stats.capital");
                        if(!(_loc2_ && _loc2_))
                        {
                           addr009c:
                           this.evaluationHeader.text = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.currentUpgrade",[this._data.currentLevel]);
                        }
                     }
                     §§push(LocaUtils);
                     §§push("rcl.tooltips.shopBook");
                     §§push("rcl.tooltips.shopBook.fillShop");
                     §§push(LocaUtils);
                     §§push("rcl.playfielditems.name");
                     §§push("rcl.playfielditems.name.");
                     if(!_loc2_)
                     {
                        §§push(§§pop() + this._data.localeId.toString());
                     }
                     §§push(§§pop().getString(§§pop(),§§pop(),[§§pop().getString(§§pop(),§§pop())]));
                     if(_loc3_)
                     {
                        §§push(§§pop());
                     }
                     var _loc1_:* = §§pop();
                     if(_loc3_)
                     {
                        §§push(this.numericStepper);
                        if(_loc3_ || _loc2_)
                        {
                           §§push("tooltipMaxPlus");
                           if(!_loc2_)
                           {
                              §§push(_loc1_);
                              if(_loc3_ || Boolean(this))
                              {
                                 §§pop().setStyle(§§pop(),§§pop());
                                 if(_loc3_)
                                 {
                                    §§push(this.numericStepper);
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr0146:
                                       §§pop().setStyle("tooltipMaxMinus",LocaUtils.getString("rcl.tooltips.shopBook","rcl.tooltips.shopBook.fillStorage"));
                                       addr013a:
                                       addr0137:
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          §§push(this.upgradeProgressComponent);
                                          if(_loc3_)
                                          {
                                             §§pop().buyButton.addEventListener(MouseEvent.MOUSE_OVER,this.shopUpgradeValues);
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                addr017f:
                                                this.upgradeProgressComponent.upgradeButton.addEventListener(MouseEvent.MOUSE_OVER,this.shopUpgradeValues);
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   addr019b:
                                                   §§push(this.numericStepper);
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      §§pop().addEventListener(Event.CHANGE,this.handleStepperChange);
                                                      if(!_loc2_)
                                                      {
                                                         addr01c2:
                                                         this.numericStepper.addEventListener(NumericStepperComponent.KEY_RETURN,this.handleReturn);
                                                         if(_loc3_)
                                                         {
                                                            this.toStorage.addEventListener(MouseEvent.CLICK,this.handleToStorageClick);
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               addr0201:
                                                               this.toStore.addEventListener(MouseEvent.CLICK,this.handleToStoreClick);
                                                            }
                                                         }
                                                         addr0212:
                                                         return;
                                                         addr01be:
                                                      }
                                                      §§goto(addr0201);
                                                   }
                                                   §§goto(addr01c2);
                                                }
                                                §§goto(addr01be);
                                             }
                                             §§goto(addr0212);
                                          }
                                          §§goto(addr017f);
                                       }
                                       §§goto(addr0201);
                                    }
                                    §§goto(addr01c2);
                                 }
                                 §§goto(addr019b);
                              }
                              §§goto(addr0146);
                           }
                           §§goto(addr013a);
                        }
                        §§goto(addr0137);
                     }
                     §§goto(addr0201);
                  }
                  §§goto(addr007d);
               }
               §§goto(addr009c);
            }
         }
         §§goto(addr0046);
      }
      
      private function shopUpgradeValues(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            §§push(this.upgradeProgressComponent);
            if(!(_loc3_ && Boolean(param1)))
            {
               §§push(§§pop().buyButton);
               if(!(_loc3_ && _loc3_))
               {
                  §§pop().removeEventListener(MouseEvent.MOUSE_OVER,this.shopUpgradeValues);
                  if(_loc2_)
                  {
                     §§push(this.upgradeProgressComponent);
                     if(!_loc3_)
                     {
                        §§push(§§pop().upgradeButton);
                        if(!_loc3_)
                        {
                           §§pop().removeEventListener(MouseEvent.MOUSE_OVER,this.shopUpgradeValues);
                           if(!_loc3_)
                           {
                              §§push(this.upgradeProgressComponent);
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr0087:
                                 §§pop().buyButton.addEventListener(MouseEvent.MOUSE_OUT,this.showCurrentLevelData);
                                 addr0084:
                                 if(!_loc3_)
                                 {
                                    addr009f:
                                    this.upgradeProgressComponent.upgradeButton.addEventListener(MouseEvent.MOUSE_OUT,this.showCurrentLevelData);
                                    addr009c:
                                    if(_loc2_ || Boolean(param1))
                                    {
                                       addr00b8:
                                       this.stockLabel.text = this._data.nextLevelData.maxStock.toString();
                                       if(_loc2_ || Boolean(param1))
                                       {
                                          addr00d9:
                                          this.radiusLabel.text = this._data.nextLevelData.radiusX + LocaUtils.getString("rcl.shopbook.layer","rcl.shopbook.layer.radiusDivider") + this._data.nextLevelData.radiusY;
                                          if(_loc2_)
                                          {
                                             addr0106:
                                             §§push(this.moodLabel);
                                             if(!_loc3_)
                                             {
                                                §§pop().text = this._data.nextLevelData.currentMood.toString();
                                                if(_loc2_ || _loc3_)
                                                {
                                                   addr012c:
                                                   §§push(this.energyLabel);
                                                   if(!(_loc3_ && Boolean(param1)))
                                                   {
                                                      §§pop().text = this._data.nextLevelData.currentEnergy.toString();
                                                      if(_loc2_)
                                                      {
                                                         §§push(this._data);
                                                         if(_loc2_ || Boolean(param1))
                                                         {
                                                            §§push(§§pop().nextLevelData);
                                                            if(_loc2_)
                                                            {
                                                               §§push(§§pop().currentMood);
                                                               if(_loc2_)
                                                               {
                                                                  §§push(0);
                                                                  if(!(_loc3_ && Boolean(param1)))
                                                                  {
                                                                     if(§§pop() > §§pop())
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr0197:
                                                                           §§push(this.moodLabel);
                                                                           if(_loc2_ || _loc2_)
                                                                           {
                                                                              §§push("shopEffectsPositive");
                                                                              if(_loc2_ || _loc3_)
                                                                              {
                                                                                 §§pop().styleName = §§pop();
                                                                                 if(_loc2_ || Boolean(param1))
                                                                                 {
                                                                                    addr0236:
                                                                                    §§push(this._data);
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       addr023f:
                                                                                       §§push(§§pop().nextLevelData);
                                                                                       if(!(_loc3_ && Boolean(param1)))
                                                                                       {
                                                                                          §§push(§§pop().currentEnergy);
                                                                                          if(!(_loc3_ && _loc3_))
                                                                                          {
                                                                                             addr025f:
                                                                                             §§push(0);
                                                                                             if(_loc2_ || _loc3_)
                                                                                             {
                                                                                                addr026e:
                                                                                                if(§§pop() > §§pop())
                                                                                                {
                                                                                                   if(_loc2_ || Boolean(param1))
                                                                                                   {
                                                                                                      addr027f:
                                                                                                      §§push(this.energyLabel);
                                                                                                      if(_loc2_ || _loc3_)
                                                                                                      {
                                                                                                         addr0290:
                                                                                                         §§push("shopEffectsPositive");
                                                                                                         if(!(_loc3_ && Boolean(this)))
                                                                                                         {
                                                                                                            §§pop().styleName = §§pop();
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr02ed:
                                                                                                            §§pop().styleName = §§pop();
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr02ff:
                                                                                                         §§pop().styleName = "shopEffectsNeutral";
                                                                                                         addr02fc:
                                                                                                      }
                                                                                                      §§goto(addr0301);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr02c0:
                                                                                                      §§push(this.energyLabel);
                                                                                                      if(!(_loc3_ && _loc2_))
                                                                                                      {
                                                                                                         §§push("shopEffectsNegative");
                                                                                                         if(!(_loc3_ && Boolean(param1)))
                                                                                                         {
                                                                                                            §§goto(addr02ed);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr02ff);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr02fc);
                                                                                                      }
                                                                                                      §§goto(addr02ff);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr02b7:
                                                                                                   addr02b5:
                                                                                                   addr02b2:
                                                                                                   addr02af:
                                                                                                   if(this._data.nextLevelData.currentEnergy < 0)
                                                                                                   {
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         §§goto(addr02c0);
                                                                                                      }
                                                                                                      addr0301:
                                                                                                      return;
                                                                                                   }
                                                                                                   §§push(this.energyLabel);
                                                                                                }
                                                                                                §§goto(addr02fc);
                                                                                             }
                                                                                             §§goto(addr02b7);
                                                                                          }
                                                                                          §§goto(addr02b5);
                                                                                       }
                                                                                       §§goto(addr02b2);
                                                                                    }
                                                                                    §§goto(addr02af);
                                                                                 }
                                                                                 §§goto(addr02c0);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr0215:
                                                                                 §§pop().styleName = §§pop();
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§goto(addr0236);
                                                                                 }
                                                                              }
                                                                              §§goto(addr027f);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr0227:
                                                                              §§pop().styleName = "shopEffectsNeutral";
                                                                              addr0224:
                                                                              if(_loc2_ || _loc3_)
                                                                              {
                                                                                 §§goto(addr0236);
                                                                              }
                                                                           }
                                                                           §§goto(addr02c0);
                                                                        }
                                                                        §§goto(addr027f);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(this._data);
                                                                        if(_loc2_)
                                                                        {
                                                                           §§push(§§pop().nextLevelData);
                                                                           if(_loc2_)
                                                                           {
                                                                              §§push(§§pop().currentMood);
                                                                              if(_loc2_ || _loc2_)
                                                                              {
                                                                                 addr01ec:
                                                                                 §§push(0);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(§§pop() < §§pop())
                                                                                    {
                                                                                       if(!(_loc3_ && _loc3_))
                                                                                       {
                                                                                          §§push(this.moodLabel);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§push("shopEffectsNegative");
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                §§goto(addr0215);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr0227);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr0224);
                                                                                          }
                                                                                          §§goto(addr0227);
                                                                                       }
                                                                                       §§goto(addr02c0);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(this.moodLabel);
                                                                                    }
                                                                                    §§goto(addr0224);
                                                                                 }
                                                                                 §§goto(addr026e);
                                                                              }
                                                                              §§goto(addr025f);
                                                                           }
                                                                           §§goto(addr02b2);
                                                                        }
                                                                     }
                                                                     §§goto(addr023f);
                                                                  }
                                                                  §§goto(addr026e);
                                                               }
                                                               §§goto(addr01ec);
                                                            }
                                                            §§goto(addr02b2);
                                                         }
                                                         §§goto(addr023f);
                                                      }
                                                      §§goto(addr027f);
                                                   }
                                                   §§goto(addr0290);
                                                }
                                                §§goto(addr0236);
                                             }
                                             §§goto(addr0224);
                                          }
                                          §§goto(addr012c);
                                       }
                                       §§goto(addr0106);
                                    }
                                    §§goto(addr00d9);
                                 }
                                 §§goto(addr0197);
                              }
                              §§goto(addr009c);
                           }
                           §§goto(addr0236);
                        }
                        §§goto(addr009f);
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr00b8);
               }
               §§goto(addr0087);
            }
            §§goto(addr009c);
         }
         §§goto(addr0236);
      }
      
      private function showCurrentLevelData(param1:MouseEvent = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            if(param1 != null)
            {
               if(!_loc2_)
               {
                  §§push(this.upgradeProgressComponent);
                  if(!(_loc2_ && Boolean(param1)))
                  {
                     §§push(§§pop().buyButton);
                     if(_loc3_)
                     {
                        §§pop().addEventListener(MouseEvent.MOUSE_OVER,this.shopUpgradeValues);
                        if(_loc3_)
                        {
                           §§push(this.upgradeProgressComponent);
                           if(_loc3_ || _loc2_)
                           {
                              §§push(§§pop().upgradeButton);
                              if(!(_loc2_ && Boolean(param1)))
                              {
                                 §§pop().addEventListener(MouseEvent.MOUSE_OVER,this.shopUpgradeValues);
                                 if(_loc3_ || Boolean(param1))
                                 {
                                    §§push(this.upgradeProgressComponent);
                                    if(!_loc2_)
                                    {
                                       addr009c:
                                       §§pop().buyButton.removeEventListener(MouseEvent.MOUSE_OUT,this.showCurrentLevelData);
                                       addr0099:
                                       if(_loc3_)
                                       {
                                          addr00b4:
                                          this.upgradeProgressComponent.upgradeButton.removeEventListener(MouseEvent.MOUSE_OUT,this.showCurrentLevelData);
                                          addr00b1:
                                          if(_loc3_)
                                          {
                                             addr00c5:
                                             this.stockLabel.text = this._data.maxStock.toString();
                                             if(_loc3_ || _loc2_)
                                             {
                                                this.radiusLabel.text = this._data.radiusX + LocaUtils.getString("rcl.shopbook.layer","rcl.shopbook.layer.radiusDivider") + this._data.radiusY;
                                                if(_loc3_)
                                                {
                                                   §§push(this.moodLabel);
                                                   if(_loc3_)
                                                   {
                                                      §§pop().text = this._data.currentMood.toString();
                                                      if(_loc3_ || Boolean(this))
                                                      {
                                                         addr012d:
                                                         §§push(this.energyLabel);
                                                         if(!_loc2_)
                                                         {
                                                            §§pop().text = this._data.currentEnergy.toString();
                                                            if(!_loc2_)
                                                            {
                                                               addr0148:
                                                               §§push(this._data);
                                                               if(!_loc2_)
                                                               {
                                                                  §§push(§§pop().currentMood);
                                                                  if(!(_loc2_ && Boolean(param1)))
                                                                  {
                                                                     §§push(0);
                                                                     if(!_loc2_)
                                                                     {
                                                                        if(§§pop() > §§pop())
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(this.moodLabel);
                                                                              if(!(_loc2_ && Boolean(param1)))
                                                                              {
                                                                                 §§push("shopEffectsPositive");
                                                                                 if(!(_loc2_ && Boolean(param1)))
                                                                                 {
                                                                                    §§pop().styleName = §§pop();
                                                                                    if(!(_loc3_ || Boolean(param1)))
                                                                                    {
                                                                                       addr01e2:
                                                                                       §§push(this.moodLabel);
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          §§push("shopEffectsNegative");
                                                                                          if(!(_loc2_ && _loc3_))
                                                                                          {
                                                                                             §§pop().styleName = §§pop();
                                                                                             if(!(_loc2_ && _loc2_))
                                                                                             {
                                                                                                addr021c:
                                                                                                §§push(this._data);
                                                                                                if(_loc3_ || Boolean(this))
                                                                                                {
                                                                                                   addr022d:
                                                                                                   §§push(§§pop().currentEnergy);
                                                                                                   if(_loc3_ || Boolean(this))
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         if(§§pop() > §§pop())
                                                                                                         {
                                                                                                            if(_loc3_ || Boolean(param1))
                                                                                                            {
                                                                                                               addr0255:
                                                                                                               §§push(this.energyLabel);
                                                                                                               if(_loc3_ || Boolean(param1))
                                                                                                               {
                                                                                                                  §§push("shopEffectsPositive");
                                                                                                                  if(_loc3_ || _loc2_)
                                                                                                                  {
                                                                                                                     §§pop().styleName = §§pop();
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr02d2:
                                                                                                                     §§pop().styleName = §§pop();
                                                                                                                  }
                                                                                                                  §§goto(addr02d4);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr02cf:
                                                                                                                  §§push("shopEffectsNeutral");
                                                                                                               }
                                                                                                               §§goto(addr02d2);
                                                                                                            }
                                                                                                            §§goto(addr02d4);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr028a:
                                                                                                            addr0288:
                                                                                                            addr0285:
                                                                                                            if(this._data.currentEnergy < 0)
                                                                                                            {
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  §§push(this.energyLabel);
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     §§push("shopEffectsNegative");
                                                                                                                     if(!(_loc2_ && Boolean(this)))
                                                                                                                     {
                                                                                                                        §§pop().styleName = §§pop();
                                                                                                                        if(_loc2_ && _loc2_)
                                                                                                                        {
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr02d2);
                                                                                                                     }
                                                                                                                     §§goto(addr02d4);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr02cf);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr02d4);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(this.energyLabel);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr02cf);
                                                                                                      }
                                                                                                      §§goto(addr028a);
                                                                                                   }
                                                                                                   §§goto(addr0288);
                                                                                                }
                                                                                                §§goto(addr0285);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr0215:
                                                                                             §§pop().styleName = §§pop();
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                §§goto(addr021c);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr02d4);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr0212:
                                                                                          §§push("shopEffectsNeutral");
                                                                                       }
                                                                                       §§goto(addr0215);
                                                                                    }
                                                                                    §§goto(addr021c);
                                                                                 }
                                                                                 §§goto(addr0215);
                                                                              }
                                                                              §§goto(addr0212);
                                                                           }
                                                                           §§goto(addr01e2);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(this._data);
                                                                           if(!(_loc2_ && Boolean(param1)))
                                                                           {
                                                                              §§push(§§pop().currentMood);
                                                                              if(_loc3_ || _loc2_)
                                                                              {
                                                                                 addr01d2:
                                                                                 §§push(0);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    addr01d9:
                                                                                    if(§§pop() < §§pop())
                                                                                    {
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          §§goto(addr01e2);
                                                                                       }
                                                                                       §§goto(addr02d4);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(this.moodLabel);
                                                                                    }
                                                                                    §§goto(addr0212);
                                                                                 }
                                                                                 §§goto(addr028a);
                                                                              }
                                                                              §§goto(addr0288);
                                                                           }
                                                                        }
                                                                        §§goto(addr0285);
                                                                     }
                                                                     §§goto(addr01d9);
                                                                  }
                                                                  §§goto(addr01d2);
                                                               }
                                                               §§goto(addr022d);
                                                            }
                                                            §§goto(addr0255);
                                                         }
                                                         §§goto(addr02cf);
                                                      }
                                                      addr02d4:
                                                      return;
                                                   }
                                                   §§goto(addr0212);
                                                }
                                                §§goto(addr01e2);
                                             }
                                             §§goto(addr021c);
                                          }
                                          §§goto(addr0255);
                                       }
                                       §§goto(addr021c);
                                    }
                                    §§goto(addr00b1);
                                 }
                                 §§goto(addr0148);
                              }
                              §§goto(addr00b4);
                           }
                           §§goto(addr00b1);
                        }
                        §§goto(addr0148);
                     }
                     §§goto(addr009c);
                  }
                  §§goto(addr0099);
               }
               §§goto(addr01e2);
            }
            §§goto(addr00c5);
         }
         §§goto(addr012d);
      }
      
      private function handleReturn(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            §§push(this.toStore);
            if(!_loc3_)
            {
               if(§§pop().enabled)
               {
                  if(_loc2_)
                  {
                     if(this._data.storeStock[this._itemIndex].stockCurrent + this.numericStepper.value <= this._data.storeStock[this._itemIndex].stockMax)
                     {
                        if(_loc2_)
                        {
                           §§push(this.toStore);
                           if(!(_loc3_ && _loc3_))
                           {
                              addr007d:
                              §§push(false);
                              if(_loc2_ || Boolean(this))
                              {
                                 §§pop().enabled = §§pop();
                                 if(!_loc3_)
                                 {
                                    addr0093:
                                    this.setMouse(this.toStore,false);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       dispatchEvent(new Event(TO_STORE));
                                       if(_loc2_ || _loc3_)
                                       {
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 addr00da:
                                 §§pop().enabled = §§pop();
                              }
                              §§goto(addr00dd);
                           }
                           else
                           {
                              addr00d9:
                              §§push(false);
                           }
                           §§goto(addr00da);
                        }
                        §§goto(addr00dd);
                     }
                     else
                     {
                        §§push(this.toStore);
                     }
                     §§goto(addr00d9);
                  }
               }
               addr00dd:
               return;
            }
            §§goto(addr007d);
         }
         §§goto(addr0093);
      }
      
      private function handleToStoreClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(this._data.storeStock[this._itemIndex].stockCurrent + this.numericStepper.value <= this._data.storeStock[this._itemIndex].stockMax)
            {
               if(!_loc3_)
               {
                  §§push(this.toStore);
                  if(_loc2_)
                  {
                     §§push(false);
                     if(_loc2_)
                     {
                        §§pop().enabled = §§pop();
                        if(_loc2_)
                        {
                           this.setMouse(this.toStore,false);
                           addr006f:
                           if(!_loc3_)
                           {
                              addr008b:
                              dispatchEvent(new Event(TO_STORE));
                              if(_loc2_ || Boolean(param1))
                              {
                              }
                           }
                           §§goto(addr00b1);
                        }
                        §§goto(addr008b);
                     }
                     else
                     {
                        addr00ae:
                        §§pop().enabled = §§pop();
                     }
                     §§goto(addr00b1);
                  }
                  else
                  {
                     addr00ad:
                     §§push(false);
                  }
                  §§goto(addr00ae);
               }
               addr00b1:
               return;
            }
            §§push(this.toStore);
            §§goto(addr00ad);
         }
         §§goto(addr006f);
      }
      
      private function handleToStorageClick(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            if(this._data.storeStock[this._itemIndex].stockCurrent >= this.numericStepper.value)
            {
               if(!_loc3_)
               {
                  §§push(this.toStorage);
                  if(_loc2_ || Boolean(param1))
                  {
                     §§push(false);
                     if(!_loc3_)
                     {
                        §§pop().enabled = §§pop();
                        if(!(_loc3_ && _loc3_))
                        {
                           this.setMouse(this.toStorage,false);
                           if(_loc2_ || _loc2_)
                           {
                              §§push(this.toStorage);
                              if(!(_loc3_ && Boolean(param1)))
                              {
                                 §§push(false);
                                 if(_loc2_)
                                 {
                                    §§pop().mouseEnabled = §§pop();
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr00b1:
                                       §§push(this.toStorage);
                                       if(_loc2_ || _loc2_)
                                       {
                                          addr00cd:
                                          §§push(false);
                                          if(_loc2_)
                                          {
                                             addr00d3:
                                             §§pop().mouseChildren = §§pop();
                                             if(_loc2_ || _loc2_)
                                             {
                                                addr00e3:
                                                dispatchEvent(new Event(TO_STORAGE));
                                                if(_loc2_)
                                                {
                                                }
                                             }
                                          }
                                          else
                                          {
                                             addr00fe:
                                             §§pop().enabled = §§pop();
                                          }
                                          §§goto(addr0101);
                                       }
                                       else
                                       {
                                          addr00fd:
                                          §§push(false);
                                       }
                                       §§goto(addr00fe);
                                    }
                                    §§goto(addr0101);
                                 }
                                 §§goto(addr00fe);
                              }
                              §§goto(addr00fd);
                           }
                           §§goto(addr0101);
                        }
                        §§goto(addr00b1);
                     }
                     §§goto(addr00d3);
                  }
                  §§goto(addr00cd);
               }
               addr0101:
               return;
            }
            §§push(this.toStorage);
            §§goto(addr00fd);
         }
         §§goto(addr00e3);
      }
      
      private function handleStepperChange(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.actionButtonCheck();
         }
      }
      
      private function actionButtonCheck() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:GoodObjectVo = this._data.storageInterests[this._itemIndex];
         var _loc2_:ShopStockGoodVo = this._data.storeStock[this._itemIndex];
         if(_loc4_)
         {
            §§push(this.numericStepper);
            if(_loc4_)
            {
               §§push(§§pop().value);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(_loc2_.stockCurrent);
                  if(!_loc3_)
                  {
                     if(§§pop() > §§pop())
                     {
                        if(_loc4_ || Boolean(_loc1_))
                        {
                           §§push(this.toStorage);
                           if(_loc4_)
                           {
                              §§push(false);
                              if(!(_loc3_ && Boolean(_loc2_)))
                              {
                                 §§pop().enabled = §§pop();
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    this.setMouse(this.toStorage,false);
                                    if(_loc4_)
                                    {
                                       addr00e6:
                                       §§push(this.numericStepper);
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§push(§§pop().value);
                                          if(!_loc3_)
                                          {
                                             §§push(_loc1_.playerStock);
                                             if(_loc4_)
                                             {
                                                addr010a:
                                                §§push(§§pop() > §§pop());
                                                if(_loc4_ || Boolean(_loc2_))
                                                {
                                                   var _temp_8:* = §§pop();
                                                   §§push(_temp_8);
                                                   if(!_temp_8)
                                                   {
                                                      if(_loc4_ || Boolean(this))
                                                      {
                                                         addr0138:
                                                         §§pop();
                                                         if(!(_loc3_ && Boolean(this)))
                                                         {
                                                            addr0146:
                                                            §§push(this.numericStepper);
                                                            if(_loc4_)
                                                            {
                                                               addr0150:
                                                               §§push(§§pop().value);
                                                               if(_loc4_)
                                                               {
                                                                  §§push(_loc2_.stockMax);
                                                                  if(_loc4_)
                                                                  {
                                                                     addr0169:
                                                                     if(§§pop() > §§pop() - _loc2_.stockCurrent)
                                                                     {
                                                                        if(_loc4_ || Boolean(_loc1_))
                                                                        {
                                                                           addr017b:
                                                                           §§push(this.toStore);
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§push(false);
                                                                              if(_loc4_ || Boolean(this))
                                                                              {
                                                                                 §§pop().enabled = §§pop();
                                                                                 if(_loc4_ || Boolean(_loc1_))
                                                                                 {
                                                                                    this.setMouse(this.toStore,false);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       addr01f6:
                                                                                       addr01ff:
                                                                                       addr01fd:
                                                                                       addr01fa:
                                                                                       if(this.numericStepper.value == 0)
                                                                                       {
                                                                                          if(!(_loc3_ && Boolean(_loc1_)))
                                                                                          {
                                                                                             addr0215:
                                                                                             this.toStorage.enabled = false;
                                                                                             addr0210:
                                                                                             addr0214:
                                                                                             if(!(_loc3_ && Boolean(_loc2_)))
                                                                                             {
                                                                                                addr0232:
                                                                                                this.setMouse(this.toStorage,false);
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr0247:
                                                                                                   this.toStore.enabled = false;
                                                                                                   addr0242:
                                                                                                   addr0246:
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      addr024f:
                                                                                                      this.setMouse(this.toStore,false);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr0259);
                                                                                             }
                                                                                             §§goto(addr0242);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr0259);
                                                                                 }
                                                                                 §§goto(addr024f);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr01c1:
                                                                              §§push(true);
                                                                              if(!(_loc3_ && Boolean(_loc2_)))
                                                                              {
                                                                                 §§pop().enabled = §§pop();
                                                                                 if(!(_loc3_ && Boolean(_loc1_)))
                                                                                 {
                                                                                    addr01df:
                                                                                    this.setMouse(this.toStore,true);
                                                                                    if(!(_loc3_ && Boolean(_loc1_)))
                                                                                    {
                                                                                       §§goto(addr01f6);
                                                                                    }
                                                                                    §§goto(addr0259);
                                                                                 }
                                                                                 §§goto(addr0232);
                                                                              }
                                                                           }
                                                                           §§goto(addr0247);
                                                                        }
                                                                        §§goto(addr01f6);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(this.toStore);
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§goto(addr01c1);
                                                                        }
                                                                     }
                                                                     §§goto(addr0246);
                                                                  }
                                                                  §§goto(addr01ff);
                                                               }
                                                               §§goto(addr01fd);
                                                            }
                                                            §§goto(addr01fa);
                                                         }
                                                         §§goto(addr0210);
                                                      }
                                                   }
                                                   §§goto(addr0169);
                                                }
                                                §§goto(addr0138);
                                             }
                                             §§goto(addr01ff);
                                          }
                                          §§goto(addr01fd);
                                       }
                                       §§goto(addr01fa);
                                    }
                                    §§goto(addr0146);
                                 }
                              }
                              else
                              {
                                 addr00c7:
                                 §§pop().enabled = §§pop();
                                 if(!(_loc3_ && Boolean(_loc1_)))
                                 {
                                    this.setMouse(this.toStorage,true);
                                    if(!_loc3_)
                                    {
                                       §§goto(addr00e6);
                                    }
                                    addr0259:
                                    return;
                                 }
                              }
                              §§goto(addr017b);
                           }
                           else
                           {
                              addr00b9:
                              §§push(true);
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§goto(addr00c7);
                              }
                           }
                           §§goto(addr0215);
                        }
                        §§goto(addr01f6);
                     }
                     else
                     {
                        §§push(this.toStorage);
                        if(_loc4_)
                        {
                           §§goto(addr00b9);
                        }
                     }
                     §§goto(addr0214);
                  }
                  §§goto(addr010a);
               }
               §§goto(addr01fd);
            }
            §§goto(addr0150);
         }
         §§goto(addr01df);
      }
      
      public function get amount() : int
      {
         return this.numericStepper.value;
      }
      
      public function get good() : GoodObjectVo
      {
         return this._data.storageInterests[this._itemIndex];
      }
      
      private function showGood() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(this._data.storageInterests.length <= 0)
            {
               throw new ArgumentError("StorageInterests empty!");
            }
            if(!_loc1_)
            {
               §§push(this.goodImage);
               §§push("large_");
               if(!(_loc1_ && _loc2_))
               {
                  §§push(§§pop() + this._data.storageInterests[this._itemIndex].gfxId);
               }
               §§pop().dynaBmpSourceName = §§pop();
               if(!(_loc1_ && _loc2_))
               {
                  addr0073:
                  this.numericStepper.value = 1;
                  if(_loc2_ || _loc1_)
                  {
                  }
               }
               return;
            }
         }
         §§goto(addr0073);
      }
      
      private function handleClose(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            dispatchEvent(param1);
         }
      }
      
      public function set data(param1:ShopDetailViewVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._data = param1;
            if(!(_loc3_ && Boolean(this)))
            {
               this._dataIsDirty = true;
               if(_loc2_ || Boolean(param1))
               {
                  addr0053:
                  invalidateProperties();
               }
            }
            return;
         }
         §§goto(addr0053);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc1_:ArrayCollection = null;
         var _loc2_:GoodObjectVo = null;
         var _loc3_:ArrayCollection = null;
         var _loc4_:ShopStockGoodVo = null;
         var _loc5_:UpgradeProgressVo = null;
         if(!_loc9_)
         {
            super.commitProperties();
            if(!(_loc9_ && Boolean(_loc2_)))
            {
               if(this._dataIsDirty)
               {
                  if(_loc8_ || Boolean(this))
                  {
                     addr005c:
                     this._dataIsDirty = false;
                     if(!_loc9_)
                     {
                        §§push(§§findproperty(title));
                        §§push(LocaUtils);
                        §§push("rcl.playfielditems.name");
                        §§push("rcl.playfielditems.name.");
                        if(!(_loc9_ && Boolean(this)))
                        {
                           §§push(§§pop() + this._data.localeId.toString());
                        }
                        §§pop().title = §§pop().getString(§§pop(),§§pop());
                        if(_loc8_ || Boolean(this))
                        {
                           addr00a0:
                           §§push(this.shopHeader);
                           §§push(LocaUtils);
                           §§push("rcl.playfielditems.name");
                           §§push("rcl.playfielditems.name.");
                           if(_loc8_)
                           {
                              §§push(§§pop() + this._data.localeId.toString());
                           }
                           §§pop().text = §§pop().getString(§§pop(),§§pop()).toUpperCase();
                        }
                        §§goto(addr00c7);
                     }
                     §§goto(addr00a0);
                  }
                  addr00c7:
                  _loc1_ = new ArrayCollection();
                  for each(_loc2_ in this._data.storageInterests)
                  {
                     if(!_loc9_)
                     {
                        _loc1_.addItem(_loc2_);
                     }
                  }
                  if(_loc8_ || Boolean(_loc1_))
                  {
                     this.storageList.dataProvider = _loc1_;
                  }
                  _loc3_ = new ArrayCollection();
                  if(_loc8_ || Boolean(_loc2_))
                  {
                     var _loc6_:int = 0;
                     if(!_loc9_)
                     {
                        for each(_loc4_ in this._data.storeStock)
                        {
                           if(_loc8_ || Boolean(_loc2_))
                           {
                              _loc3_.addItem(_loc4_);
                           }
                        }
                     }
                     if(_loc8_)
                     {
                        this.shopList.dataProvider = _loc3_;
                        if(_loc8_ || Boolean(this))
                        {
                           §§goto(addr019c);
                        }
                     }
                     §§goto(addr01d8);
                  }
                  addr019c:
                  this.setTooltips();
                  if(_loc8_ || Boolean(this))
                  {
                     this.showGood();
                     if(_loc8_ || Boolean(this))
                     {
                        this.updateButtons();
                        if(!(_loc9_ && Boolean(_loc1_)))
                        {
                           addr01d8:
                           this.actionButtonCheck();
                        }
                     }
                  }
                  _loc5_ = new UpgradeProgressVo();
                  _loc5_.currentProgress = 1;
                  if(!_loc9_)
                  {
                     _loc5_.hasEnoughMoney = this._data.hasEnoughDD;
                     if(_loc8_)
                     {
                        _loc5_.neededProgress = 1;
                        if(_loc8_ || Boolean(this))
                        {
                           _loc5_.price = this._data.upgradeMMPrice;
                           if(!_loc9_)
                           {
                              §§goto(addr022f);
                           }
                           §§goto(addr027a);
                        }
                        §§goto(addr0296);
                     }
                     §§goto(addr0249);
                  }
                  addr022f:
                  _loc5_.upgradeCurrentLevel = this._data.currentLevel;
                  if(_loc8_ || Boolean(_loc3_))
                  {
                     addr0249:
                     _loc5_.upgradeMaxLevel = this._data.upgradeMaxLevel;
                     if(!_loc9_)
                     {
                        _loc5_.upgradeNextLevel = this._data.upgradeNextLevel;
                        if(!_loc9_)
                        {
                           addr027a:
                           §§push(this.upgradeProgressComponent);
                           if(!(_loc9_ && Boolean(_loc2_)))
                           {
                              §§pop().data = _loc5_;
                              if(!_loc9_)
                              {
                                 §§goto(addr029a);
                              }
                              §§goto(addr02a7);
                           }
                           addr029a:
                           this.upgradeProgressComponent.buyButton.showSparkle = true;
                           addr0296:
                           if(_loc8_)
                           {
                              addr02a7:
                              this.showCurrentLevelData();
                           }
                           §§goto(addr02ac);
                        }
                        §§goto(addr02a7);
                     }
                  }
                  §§goto(addr02ac);
               }
               addr02ac:
               return;
            }
         }
         §§goto(addr005c);
      }
      
      private function updateButtons() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.numericStepper);
            if(!_loc1_)
            {
               §§push(this._data);
               if(_loc2_)
               {
                  §§push(§§pop().storeStock[this._itemIndex].stockCurrent > 0);
                  if(!_loc1_)
                  {
                     §§pop().enableMaxMinusButton(§§pop());
                     if(_loc2_)
                     {
                        §§push(this.numericStepper);
                        if(!_loc1_)
                        {
                           §§push(this._data);
                           if(_loc2_ || _loc2_)
                           {
                              §§push(§§pop().storageInterests[this._itemIndex].playerStock > 0);
                              if(_loc2_ || _loc2_)
                              {
                                 var _temp_4:* = §§pop();
                                 §§push(_temp_4);
                                 if(_temp_4)
                                 {
                                    if(!_loc1_)
                                    {
                                       addr009c:
                                       §§pop();
                                       addr00a1:
                                       addr009d:
                                       §§push(this._data.storeStock[this._itemIndex].stockCurrent < this._data.storeStock[this._itemIndex].stockMax);
                                    }
                                 }
                                 §§pop().enableMaxPlusButton(§§pop());
                                 §§goto(addr00c4);
                              }
                              §§goto(addr009c);
                           }
                           §§goto(addr00a1);
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr00c4);
                  }
                  §§goto(addr009c);
               }
               §§goto(addr00a1);
            }
            §§goto(addr009d);
         }
         addr00c4:
      }
      
      private function setTooltips() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.toStorage.toolTip = LocaUtils.getString("rcl.tooltips.shopBook","rcl.tooltips.shopBook.into.storage");
         }
         §§push(LocaUtils);
         §§push("rcl.playfielditems.name");
         §§push("rcl.playfielditems.name.");
         if(_loc2_)
         {
            §§push(§§pop() + this._data.localeId);
         }
         §§push(§§pop().getString(§§pop(),§§pop()));
         if(!(_loc3_ && Boolean(this)))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!(_loc3_ && _loc1_))
         {
            this.toStore.toolTip = LocaUtils.getString("rcl.tooltips.shopBook","rcl.tooltips.shopBook.into.shop",[_loc1_]);
            if(!_loc3_)
            {
               §§push(this.upgradeProgressComponent);
               if(!_loc3_)
               {
                  §§pop().upgradeButton.toolTip = LocaUtils.getString("rcl.tooltips.shopBook","rcl.tooltips.shopBook.button.upgrade");
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(this._data);
                     if(_loc2_)
                     {
                        if(§§pop())
                        {
                           if(_loc2_)
                           {
                              addr00c0:
                              addr00bc:
                              if(!this._data.hasEnoughDD)
                              {
                                 if(!_loc3_)
                                 {
                                    addr00cc:
                                    §§push(this.upgradeProgressComponent);
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       §§push(§§pop().buyButton);
                                       if(_loc2_ || Boolean(this))
                                       {
                                          §§push(LocaUtils.getString("rcl.tooltips.shopBook","rcl.tooltips.shopBook.button.getMore"));
                                          if(!_loc3_)
                                          {
                                             §§pop().toolTip = §§pop();
                                             if(_loc2_ || _loc3_)
                                             {
                                             }
                                          }
                                          else
                                          {
                                             addr0131:
                                             §§pop().toolTip = §§pop();
                                          }
                                          §§goto(addr0133);
                                       }
                                       else
                                       {
                                          addr0125:
                                          §§push(LocaUtils.getString("rcl.tooltips.shopBook","rcl.tooltips.shopBook.button.instantupgrade"));
                                       }
                                       §§goto(addr0131);
                                    }
                                    else
                                    {
                                       addr0122:
                                       §§push(§§pop().buyButton);
                                    }
                                    §§goto(addr0125);
                                 }
                                 §§goto(addr0133);
                              }
                              else
                              {
                                 §§push(this.upgradeProgressComponent);
                              }
                              §§goto(addr0122);
                           }
                           §§goto(addr00cc);
                        }
                        addr0133:
                        return;
                     }
                     §§goto(addr00c0);
                  }
                  §§goto(addr00cc);
               }
               §§goto(addr0122);
            }
         }
         §§goto(addr00bc);
      }
      
      private function setMouse(param1:MultistateButton, param2:Boolean) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            param1.mouseChildren = param2;
            if(!(_loc4_ && param2))
            {
               param1.mouseEnabled = param2;
            }
         }
      }
      
      private function cardBoard_rollOverHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this._data.storageInterests[0].groupType,this._data.storageInterests[0].config.id));
         }
      }
      
      private function cardBoard_rollOutHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER));
         }
      }
      
      private function _ShopPopup_Array1_c() : Array
      {
         return [this._ShopPopup_VGroup1_c()];
      }
      
      private function _ShopPopup_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.height = 340;
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr0059);
               }
               §§goto(addr0097);
            }
            addr0059:
            _loc1_.bottom = 10;
            if(!_loc3_)
            {
               _loc1_.verticalAlign = "middle";
               if(!(_loc3_ && _loc3_))
               {
                  addr0077:
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_)
                  {
                     _loc1_.gap = 10;
                     if(!_loc3_)
                     {
                        §§goto(addr0097);
                     }
                     §§goto(addr00b9);
                  }
               }
               addr0097:
               _loc1_.mxmlContent = [this._ShopPopup_LocaLabel1_i(),this._ShopPopup_HGroup1_c()];
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr00b9:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr00bd);
            }
            addr00bd:
            return _loc1_;
         }
         §§goto(addr0077);
      }
      
      private function _ShopPopup_LocaLabel1_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || _loc2_)
         {
            _loc1_.percentWidth = 90;
            if(!_loc3_)
            {
               _loc1_.height = 25;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.styleName = "flavorText";
                  if(!_loc3_)
                  {
                     _loc1_.text = "";
                     if(_loc2_ || _loc3_)
                     {
                        addr006c:
                        _loc1_.id = "flavorText";
                        if(_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 addr0099:
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    addr00a2:
                                    this.flavorText = _loc1_;
                                    if(_loc2_ || Boolean(this))
                                    {
                                       addr00b4:
                                       BindingManager.executeBindings(this,"flavorText",this.flavorText);
                                    }
                                 }
                              }
                              §§goto(addr00c1);
                           }
                           §§goto(addr00a2);
                        }
                        §§goto(addr00b4);
                     }
                     addr00c1:
                     return _loc1_;
                  }
                  §§goto(addr0099);
               }
               §§goto(addr006c);
            }
         }
         §§goto(addr00a2);
      }
      
      private function _ShopPopup_HGroup1_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.percentHeight = 100;
               if(_loc2_ || _loc2_)
               {
                  _loc1_.horizontalAlign = "center";
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.gap = 0;
                     if(!(_loc3_ && _loc3_))
                     {
                        addr0080:
                        _loc1_.mxmlContent = [this._ShopPopup_Group1_c(),this._ShopPopup_HGroup3_c(),this._ShopPopup_Group6_c()];
                        if(_loc2_)
                        {
                           addr009c:
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0080);
            }
         }
         §§goto(addr009c);
      }
      
      private function _ShopPopup_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc2_)
         {
            _loc1_.width = 240;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.height = 300;
               if(!_loc2_)
               {
                  _loc1_.mxmlContent = [this._ShopPopup_Group2_c(),this._ShopPopup_BriskImageDynaLib1_c(),this._ShopPopup_HGroup2_c(),this._ShopPopup_StickyNoteComponent1_c()];
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr0088:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
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
            §§goto(addr0094);
         }
         §§goto(addr0088);
      }
      
      private function _ShopPopup_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.height = 11;
            if(_loc3_ || _loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr0052:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0052);
      }
      
      private function _ShopPopup_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_popups_productionPopup";
            if(!(_loc3_ && Boolean(this)))
            {
               addr0047:
               _loc1_.left = 3;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.dynaBmpSourceName = "quadrillepaper_medium";
                  if(!_loc3_)
                  {
                     §§goto(addr0072);
                  }
                  §§goto(addr0086);
               }
            }
            addr0072:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && _loc2_))
               {
                  addr0086:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0047);
      }
      
      private function _ShopPopup_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.paddingTop = 110;
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.percentHeight = 100;
                  if(!_loc2_)
                  {
                     _loc1_.mxmlContent = [this._ShopPopup_Group3_c()];
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr0081:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0085);
                     }
                     §§goto(addr0081);
                  }
                  addr0085:
                  return _loc1_;
               }
            }
         }
         §§goto(addr0081);
      }
      
      private function _ShopPopup_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr0044:
               _loc1_.percentHeight = 100;
               if(_loc3_ || _loc2_)
               {
                  _loc1_.mxmlContent = [this._ShopPopup_LocaLabel2_i(),this._ShopPopup_BriskImageDynaLib2_c(),this._ShopPopup_List1_i(),this._ShopPopup_MultistateButton1_i()];
                  if(!_loc2_)
                  {
                     addr0084:
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr0090:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0084);
            }
            §§goto(addr0090);
         }
         §§goto(addr0044);
      }
      
      private function _ShopPopup_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.horizontalCenter = 0;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.percentWidth = 100;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.styleName = "residentialOutputHeader";
                  if(_loc3_)
                  {
                     _loc1_.top = 22;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr0075:
                        _loc1_.id = "storageHeader";
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr009e:
                                 _loc1_.document = this;
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr00af:
                                    this.storageHeader = _loc1_;
                                    if(!_loc2_)
                                    {
                                       addr00b9:
                                       BindingManager.executeBindings(this,"storageHeader",this.storageHeader);
                                    }
                                    §§goto(addr00c6);
                                 }
                                 §§goto(addr00b9);
                              }
                              §§goto(addr00c6);
                           }
                           §§goto(addr00af);
                        }
                        §§goto(addr009e);
                     }
                     §§goto(addr00af);
                  }
                  §§goto(addr00c6);
               }
               §§goto(addr0075);
            }
            §§goto(addr009e);
         }
         addr00c6:
         return _loc1_;
      }
      
      private function _ShopPopup_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_productionPopup";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "head_line_medium";
               if(_loc3_)
               {
                  _loc1_.top = 34;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!(_loc2_ && _loc2_))
                     {
                        addr007e:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                     §§goto(addr0096);
                  }
               }
               §§goto(addr007e);
            }
            addr0096:
            return _loc1_;
         }
         §§goto(addr007e);
      }
      
      private function _ShopPopup_List1_i() : List
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:List = new List();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.itemRenderer = this._ShopPopup_ClassFactory1_c();
            if(!_loc3_)
            {
               _loc1_.left = 20;
               if(_loc2_)
               {
                  addr0040:
                  _loc1_.right = 20;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.verticalCenter = 0;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr006f:
                        _loc1_.setStyle("skinClass",SorageInterestsListSkin);
                        if(_loc2_)
                        {
                           _loc1_.id = "storageList";
                           if(_loc2_)
                           {
                              addr0089:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§goto(addr00a9);
                                 }
                                 §§goto(addr00c4);
                              }
                           }
                        }
                        §§goto(addr00b2);
                     }
                     §§goto(addr0089);
                  }
                  §§goto(addr00c4);
               }
               addr00a9:
               _loc1_.document = this;
               if(!_loc3_)
               {
                  addr00b2:
                  this.storageList = _loc1_;
                  if(_loc2_ || _loc2_)
                  {
                     addr00c4:
                     BindingManager.executeBindings(this,"storageList",this.storageList);
                  }
               }
               return _loc1_;
            }
            §§goto(addr0040);
         }
         §§goto(addr006f);
      }
      
      private function _ShopPopup_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(!_loc3_)
         {
            _loc1_.generator = StorageInterestItemRendered;
         }
         return _loc1_;
      }
      
      private function _ShopPopup_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(!_loc3_)
         {
            _loc1_.bottom = 8;
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               _loc1_.width = 186;
               if(_loc2_ || Boolean(_loc1_))
               {
                  _loc1_.imageNameLeft = "button_icon_storage";
                  if(_loc2_)
                  {
                     addr0051:
                     _loc1_.libNameLeft = "gui_popups_shopBook";
                     if(!_loc3_)
                     {
                        _loc1_.horizontalCenter = 0;
                        if(_loc2_ || _loc2_)
                        {
                           addr007b:
                           _loc1_.enabled = false;
                           if(_loc2_ || _loc2_)
                           {
                              addr008d:
                              _loc1_.id = "toStorage";
                              if(!_loc3_)
                              {
                                 addr0098:
                                 if(!_loc1_.document)
                                 {
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       _loc1_.document = this;
                                       if(_loc2_)
                                       {
                                          addr00c0:
                                          this.toStorage = _loc1_;
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             addr00d2:
                                             BindingManager.executeBindings(this,"toStorage",this.toStorage);
                                          }
                                       }
                                    }
                                    §§goto(addr00df);
                                 }
                                 §§goto(addr00c0);
                              }
                              §§goto(addr00d2);
                           }
                           §§goto(addr0098);
                        }
                        §§goto(addr008d);
                     }
                     §§goto(addr00c0);
                  }
                  §§goto(addr008d);
               }
               §§goto(addr0051);
            }
            addr00df:
            return _loc1_;
         }
         §§goto(addr007b);
      }
      
      private function _ShopPopup_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc3_)
         {
            _loc1_.height = 128;
            if(_loc3_)
            {
               _loc1_.right = 2;
               if(_loc3_)
               {
                  _loc1_.tapeTop = true;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.top = -5;
                     if(_loc3_)
                     {
                        addr005c:
                        _loc1_.horizontalCenter = 0;
                        if(!(_loc2_ && _loc3_))
                        {
                           _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ShopPopup_Array7_c);
                           if(!(_loc2_ && _loc3_))
                           {
                              addr0099:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr00ad:
                                    _loc1_.document = this;
                                 }
                              }
                              §§goto(addr00b1);
                           }
                           §§goto(addr00ad);
                        }
                     }
                     §§goto(addr00b1);
                  }
                  §§goto(addr005c);
               }
               addr00b1:
               return _loc1_;
            }
            §§goto(addr00ad);
         }
         §§goto(addr0099);
      }
      
      private function _ShopPopup_Array7_c() : Array
      {
         return [this._ShopPopup_VGroup2_c()];
      }
      
      private function _ShopPopup_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_)
            {
               _loc1_.mxmlContent = [this._ShopPopup_ResidentialHeaderComponent1_i(),this._ShopPopup_UpgradeProgressComponent1_i()];
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr005d:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr0075);
            }
            §§goto(addr005d);
         }
         addr0075:
         return _loc1_;
      }
      
      private function _ShopPopup_ResidentialHeaderComponent1_i() : ResidentialHeaderComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ResidentialHeaderComponent = new ResidentialHeaderComponent();
         if(_loc3_)
         {
            _loc1_.id = "evaluationHeader";
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr0047:
                     _loc1_.document = this;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr0063:
                        this.evaluationHeader = _loc1_;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           BindingManager.executeBindings(this,"evaluationHeader",this.evaluationHeader);
                        }
                     }
                     §§goto(addr0082);
                  }
               }
               §§goto(addr0063);
            }
            addr0082:
            return _loc1_;
         }
         §§goto(addr0047);
      }
      
      private function _ShopPopup_UpgradeProgressComponent1_i() : UpgradeProgressComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:UpgradeProgressComponent = new UpgradeProgressComponent();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.id = "upgradeProgressComponent";
            if(_loc2_ || _loc3_)
            {
               addr004b:
               if(!_loc1_.document)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     _loc1_.document = this;
                     if(_loc2_ || _loc3_)
                     {
                        addr007c:
                        this.upgradeProgressComponent = _loc1_;
                        if(!_loc3_)
                        {
                           addr0086:
                           BindingManager.executeBindings(this,"upgradeProgressComponent",this.upgradeProgressComponent);
                        }
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr0086);
               }
               §§goto(addr007c);
            }
            addr0093:
            return _loc1_;
         }
         §§goto(addr004b);
      }
      
      private function _ShopPopup_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!_loc3_)
         {
            _loc1_.percentHeight = 100;
            if(!_loc3_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc2_ || _loc2_)
               {
                  _loc1_.gap = -10;
                  if(!_loc3_)
                  {
                     addr0051:
                     _loc1_.width = 270;
                     if(!_loc3_)
                     {
                        _loc1_.mxmlContent = [this._ShopPopup_Group4_c()];
                        if(!(_loc3_ && _loc3_))
                        {
                           §§goto(addr0081);
                        }
                        §§goto(addr008d);
                     }
                     addr0081:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
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
            §§goto(addr0051);
         }
         §§goto(addr008d);
      }
      
      private function _ShopPopup_Group4_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.mxmlContent = [this._ShopPopup_Group5_c(),this._ShopPopup_BriskImageDynaLib3_i(),this._ShopPopup_BriskImageDynaLib4_i(),this._ShopPopup_BriskMCDynaLib1_c(),this._ShopPopup_UiInfolayerAlignmentLine1_i(),this._ShopPopup_NumericMaxStepperComponent1_i()];
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
      
      private function _ShopPopup_Group5_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc2_)
         {
            _loc1_.width = 210;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.height = 75;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.top = 194;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.horizontalCenter = 0;
                     addr006c:
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        §§goto(addr008b);
                     }
                  }
                  §§goto(addr009f);
               }
               addr008b:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr009f:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr00a3);
            }
            addr00a3:
            return _loc1_;
         }
         §§goto(addr006c);
      }
      
      private function _ShopPopup_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_productionPopup";
            if(_loc3_)
            {
               addr0029:
               _loc1_.dynaBmpSourceName = "ressource_cardboard_big";
               if(!(_loc2_ && _loc3_))
               {
                  addr003c:
                  _loc1_.horizontalCenter = 0;
                  if(!_loc2_)
                  {
                     _loc1_.top = 6;
                     if(!_loc2_)
                     {
                        _loc1_.addEventListener("rollOut",this.__cardBoard_rollOut);
                        if(_loc3_)
                        {
                           _loc1_.addEventListener("rollOver",this.__cardBoard_rollOver);
                           if(_loc3_ || Boolean(this))
                           {
                              addr0084:
                              _loc1_.id = "cardBoard";
                              if(_loc3_)
                              {
                                 addr009b:
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc2_)
                                    {
                                       _loc1_.document = this;
                                       if(!_loc2_)
                                       {
                                          addr00b0:
                                          this.cardBoard = _loc1_;
                                          if(!_loc2_)
                                          {
                                             addr00ba:
                                             BindingManager.executeBindings(this,"cardBoard",this.cardBoard);
                                          }
                                          §§goto(addr00c7);
                                       }
                                       §§goto(addr00ba);
                                    }
                                    §§goto(addr00c7);
                                 }
                              }
                              §§goto(addr00b0);
                           }
                        }
                        §§goto(addr009b);
                     }
                     addr00c7:
                     return _loc1_;
                  }
                  §§goto(addr0084);
               }
               §§goto(addr009b);
            }
            §§goto(addr003c);
         }
         §§goto(addr0029);
      }
      
      public function __cardBoard_rollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this.cardBoard_rollOutHandler(param1);
         }
      }
      
      public function __cardBoard_rollOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this.cardBoard_rollOverHandler(param1);
         }
      }
      
      private function _ShopPopup_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_largeGoodIcons";
            if(!_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.verticalCenter = -40;
                  if(_loc3_)
                  {
                     _loc1_.mouseChildren = false;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.mouseEnabled = false;
                        if(_loc3_ || _loc2_)
                        {
                           addr0080:
                           _loc1_.id = "goodImage";
                           if(_loc3_ || _loc3_)
                           {
                              addr0093:
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    addr00ab:
                                    _loc1_.document = this;
                                    if(_loc3_ || Boolean(this))
                                    {
                                       addr00bc:
                                       this.goodImage = _loc1_;
                                       if(_loc3_)
                                       {
                                          addr00c6:
                                          BindingManager.executeBindings(this,"goodImage",this.goodImage);
                                       }
                                    }
                                 }
                                 §§goto(addr00d3);
                              }
                              §§goto(addr00bc);
                           }
                           §§goto(addr00ab);
                        }
                        §§goto(addr00bc);
                     }
                     addr00d3:
                     return _loc1_;
                  }
                  §§goto(addr0080);
               }
               §§goto(addr00c6);
            }
            §§goto(addr0093);
         }
         §§goto(addr00bc);
      }
      
      private function _ShopPopup_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.dynaMCSourceName = "stickytape_top";
               if(_loc2_)
               {
                  _loc1_.top = 0;
                  if(_loc2_)
                  {
                     addr0053:
                     _loc1_.horizontalCenter = 0;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        _loc1_.width = 140;
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || Boolean(this))
                              {
                                 addr0091:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr0095);
                        }
                        §§goto(addr0091);
                     }
                     §§goto(addr0095);
                  }
                  §§goto(addr0091);
               }
            }
            addr0095:
            return _loc1_;
         }
         §§goto(addr0053);
      }
      
      private function _ShopPopup_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         if(_loc2_)
         {
            _loc1_.left = 0;
            if(_loc2_)
            {
               _loc1_.top = 120;
               if(_loc2_)
               {
                  addr0037:
                  _loc1_.right = 0;
                  if(_loc2_)
                  {
                     _loc1_.lineId = 0;
                     if(_loc2_)
                     {
                        addr0057:
                        _loc1_.id = "uiInfolayerAlignmentLine";
                        if(!_loc3_)
                        {
                           addr0062:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 _loc1_.document = this;
                                 if(_loc2_ || Boolean(this))
                                 {
                                    addr0092:
                                    this.uiInfolayerAlignmentLine = _loc1_;
                                    if(_loc2_ || _loc3_)
                                    {
                                       BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                        }
                        §§goto(addr0092);
                     }
                     §§goto(addr0062);
                  }
                  §§goto(addr0057);
               }
               §§goto(addr0062);
            }
            §§goto(addr0037);
         }
         §§goto(addr0062);
      }
      
      private function _ShopPopup_NumericMaxStepperComponent1_i() : NumericMaxStepperComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:NumericMaxStepperComponent = new NumericMaxStepperComponent();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.bottom = 17;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr003c:
               _loc1_.width = 230;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.id = "numericStepper";
                  if(_loc3_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr008f:
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr0098:
                              this.numericStepper = _loc1_;
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr00aa:
                                 BindingManager.executeBindings(this,"numericStepper",this.numericStepper);
                              }
                              §§goto(addr00b7);
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr00b7);
                     }
                  }
                  §§goto(addr0098);
               }
               §§goto(addr008f);
            }
            addr00b7:
            return _loc1_;
         }
         §§goto(addr003c);
      }
      
      private function _ShopPopup_Group6_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.width = 240;
            if(!_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.mxmlContent = [this._ShopPopup_Group7_c(),this._ShopPopup_BriskImageDynaLib5_c(),this._ShopPopup_HGroup4_c(),this._ShopPopup_HGroup5_c()];
                  if(_loc3_ || _loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr008a:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr008e);
                  }
               }
               §§goto(addr008a);
            }
         }
         addr008e:
         return _loc1_;
      }
      
      private function _ShopPopup_Group7_c() : Group
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
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     addr004c:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr004c);
      }
      
      private function _ShopPopup_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_productionPopup";
            if(_loc3_)
            {
               _loc1_.left = 6;
               if(!(_loc2_ && _loc3_))
               {
                  addr0055:
                  _loc1_.top = 5;
                  if(!_loc2_)
                  {
                     _loc1_.dynaBmpSourceName = "quadrillepaper_medium";
                     if(_loc3_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr0076:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr007a);
                     }
                  }
                  §§goto(addr0076);
               }
               addr007a:
               return _loc1_;
            }
         }
         §§goto(addr0055);
      }
      
      private function _ShopPopup_HGroup4_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.paddingTop = 110;
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               addr002c:
               if(_loc3_ || Boolean(this))
               {
                  §§goto(addr004c);
               }
               §§goto(addr007a);
            }
            addr004c:
            _loc1_.percentHeight = 100;
            if(!_loc2_)
            {
               _loc1_.mxmlContent = [this._ShopPopup_Group8_c()];
               if(_loc3_ || _loc3_)
               {
                  addr007a:
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
         §§goto(addr002c);
      }
      
      private function _ShopPopup_Group8_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_)
            {
               addr0031:
               _loc1_.percentHeight = 100;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.mxmlContent = [this._ShopPopup_LocaLabel3_i(),this._ShopPopup_BriskImageDynaLib6_c(),this._ShopPopup_List2_i(),this._ShopPopup_MultistateButton2_i()];
                  if(!(_loc3_ && _loc3_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr0098:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr009c);
                  }
                  §§goto(addr0098);
               }
            }
            addr009c:
            return _loc1_;
         }
         §§goto(addr0031);
      }
      
      private function _ShopPopup_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.horizontalCenter = 0;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.percentWidth = 100;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.styleName = "residentialOutputHeader";
                  if(_loc3_)
                  {
                     _loc1_.top = 22;
                     if(!_loc2_)
                     {
                        _loc1_.id = "shopHeader";
                        if(!_loc2_)
                        {
                           addr0079:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§goto(addr0099);
                              }
                           }
                           §§goto(addr00a2);
                        }
                        addr0099:
                        _loc1_.document = this;
                        if(!_loc2_)
                        {
                           addr00a2:
                           this.shopHeader = _loc1_;
                           if(!(_loc2_ && _loc3_))
                           {
                              addr00b4:
                              BindingManager.executeBindings(this,"shopHeader",this.shopHeader);
                           }
                        }
                        §§goto(addr00c1);
                     }
                     §§goto(addr00b4);
                  }
                  §§goto(addr00a2);
               }
               addr00c1:
               return _loc1_;
            }
            §§goto(addr00a2);
         }
         §§goto(addr0079);
      }
      
      private function _ShopPopup_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_productionPopup";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "head_line_medium";
               if(!(_loc2_ && Boolean(this)))
               {
                  §§goto(addr0058);
               }
               §§goto(addr0062);
            }
            §§goto(addr006c);
         }
         addr0058:
         _loc1_.top = 34;
         if(!_loc2_)
         {
            addr0062:
            _loc1_.horizontalCenter = 0;
            if(!_loc2_)
            {
               addr006c:
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     addr0078:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr007c);
            }
            §§goto(addr0078);
         }
         addr007c:
         return _loc1_;
      }
      
      private function _ShopPopup_List2_i() : List
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:List = new List();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.itemRenderer = this._ShopPopup_ClassFactory2_c();
            if(_loc3_ || _loc3_)
            {
               _loc1_.top = 57;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.left = 20;
                  if(!_loc2_)
                  {
                     addr0067:
                     _loc1_.right = 20;
                     if(_loc3_)
                     {
                        §§goto(addr0071);
                     }
                     §§goto(addr0088);
                  }
                  §§goto(addr009b);
               }
               §§goto(addr0067);
            }
            §§goto(addr00c5);
         }
         addr0071:
         _loc1_.setStyle("skinClass",SorageInterestsListSkin);
         if(_loc3_ || _loc3_)
         {
            addr0088:
            _loc1_.id = "shopList";
            if(_loc3_ || _loc2_)
            {
               addr009b:
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.document = this;
                     if(!_loc2_)
                     {
                        addr00c5:
                        this.shopList = _loc1_;
                        if(!(_loc2_ && _loc2_))
                        {
                           addr00d7:
                           BindingManager.executeBindings(this,"shopList",this.shopList);
                        }
                        §§goto(addr00e4);
                     }
                     §§goto(addr00d7);
                  }
                  §§goto(addr00e4);
               }
               §§goto(addr00c5);
            }
            §§goto(addr00d7);
         }
         addr00e4:
         return _loc1_;
      }
      
      private function _ShopPopup_ClassFactory2_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.generator = ShopStockItemRendered;
         }
         return _loc1_;
      }
      
      private function _ShopPopup_MultistateButton2_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_ || _loc2_)
         {
            _loc1_.bottom = 18;
            if(!_loc2_)
            {
               _loc1_.width = 186;
               if(!_loc2_)
               {
                  _loc1_.imageNameLeft = "button_icon_commercial";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.libNameLeft = "gui_popups_shopBook";
                     if(!_loc2_)
                     {
                        addr006d:
                        _loc1_.horizontalCenter = 0;
                        if(!(_loc2_ && _loc3_))
                        {
                           §§goto(addr007f);
                        }
                        §§goto(addr00c8);
                     }
                     §§goto(addr00ad);
                  }
                  §§goto(addr006d);
               }
            }
            addr007f:
            _loc1_.enabled = false;
            if(!_loc2_)
            {
               _loc1_.id = "toStore";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr00ad:
                        _loc1_.document = this;
                        if(_loc3_ || _loc3_)
                        {
                           addr00be:
                           this.toStore = _loc1_;
                           if(!_loc2_)
                           {
                              addr00c8:
                              BindingManager.executeBindings(this,"toStore",this.toStore);
                           }
                        }
                        §§goto(addr00d5);
                     }
                     §§goto(addr00c8);
                  }
                  §§goto(addr00be);
               }
               §§goto(addr00c8);
            }
            addr00d5:
            return _loc1_;
         }
         §§goto(addr006d);
      }
      
      private function _ShopPopup_HGroup5_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.horizontalAlign = "center";
            if(_loc3_)
            {
               addr003f:
               _loc1_.percentWidth = 100;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.mxmlContent = [this._ShopPopup_StickyNoteComponent2_i()];
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr0075:
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
            }
            §§goto(addr0075);
         }
         §§goto(addr003f);
      }
      
      private function _ShopPopup_StickyNoteComponent2_i() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.height = 130;
            if(_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.tapeTop = true;
                  if(!_loc2_)
                  {
                     _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ShopPopup_Array15_c);
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0077:
                        _loc1_.id = "effectsComponent";
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 addr00a2:
                                 _loc1_.document = this;
                                 if(!_loc2_)
                                 {
                                    §§goto(addr00ab);
                                 }
                              }
                              §§goto(addr00bd);
                           }
                        }
                     }
                     §§goto(addr00ab);
                  }
                  §§goto(addr0077);
               }
               addr00ab:
               this.effectsComponent = _loc1_;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr00bd:
                  BindingManager.executeBindings(this,"effectsComponent",this.effectsComponent);
               }
               §§goto(addr00ca);
            }
            addr00ca:
            return _loc1_;
         }
         §§goto(addr00a2);
      }
      
      private function _ShopPopup_Array15_c() : Array
      {
         return [this._ShopPopup_VGroup3_c()];
      }
      
      private function _ShopPopup_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.paddingLeft = 5;
            if(!_loc3_)
            {
               addr0033:
               _loc1_.paddingRight = 5;
               if(_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  §§goto(addr003e);
               }
               §§goto(addr007c);
            }
            addr003e:
            if(_loc2_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr0066);
               }
               §§goto(addr00a6);
            }
            addr0066:
            _loc1_.horizontalAlign = "center";
            if(!_loc3_)
            {
               addr007c:
               _loc1_.mxmlContent = [this._ShopPopup_ResidentialHeaderComponent2_i(),this._ShopPopup_HGroup6_c()];
               if(!_loc3_)
               {
                  §§goto(addr0092);
               }
               §§goto(addr00a6);
            }
            addr0092:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  addr00a6:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0033);
      }
      
      private function _ShopPopup_ResidentialHeaderComponent2_i() : ResidentialHeaderComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ResidentialHeaderComponent = new ResidentialHeaderComponent();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.gap = 0;
            if(_loc3_)
            {
               _loc1_.text = "";
               if(!_loc2_)
               {
                  _loc1_.top = -5;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr005e:
                     _loc1_.id = "effectHeader";
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr0071:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              §§goto(addr0093);
                           }
                           §§goto(addr00ae);
                        }
                        §§goto(addr009c);
                     }
                     §§goto(addr00ae);
                  }
                  addr0093:
                  _loc1_.document = this;
                  if(!_loc2_)
                  {
                     addr009c:
                     this.effectHeader = _loc1_;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr00ae:
                        BindingManager.executeBindings(this,"effectHeader",this.effectHeader);
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr009c);
            }
            §§goto(addr0071);
         }
         §§goto(addr005e);
      }
      
      private function _ShopPopup_HGroup6_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.gap = 7;
            if(_loc3_ || _loc2_)
            {
               _loc1_.percentWidth = 100;
               if(_loc3_ || Boolean(this))
               {
                  addr0051:
                  _loc1_.percentHeight = 100;
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.mxmlContent = [this._ShopPopup_VGroup4_c(),this._ShopPopup_VGroup5_c(),this._ShopPopup_Group9_c(),this._ShopPopup_VGroup6_c(),this._ShopPopup_VGroup7_c()];
                     if(!_loc2_)
                     {
                        addr0097:
                        if(!_loc1_.document)
                        {
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              addr00ab:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr00ab);
               }
               §§goto(addr0097);
            }
            §§goto(addr00ab);
         }
         §§goto(addr0051);
      }
      
      private function _ShopPopup_VGroup4_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.horizontalAlign = "center";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.mxmlContent = [this._ShopPopup_BriskImageDynaLib7_i(),this._ShopPopup_BriskImageDynaLib8_i()];
               if(_loc3_ || _loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr007c:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr007c);
      }
      
      private function _ShopPopup_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_shopBook";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "shopstock";
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.id = "stockItem";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           §§goto(addr0079);
                        }
                        §§goto(addr0094);
                     }
                     §§goto(addr0082);
                  }
                  addr0079:
                  _loc1_.document = this;
                  if(_loc3_)
                  {
                     addr0082:
                     this.stockItem = _loc1_;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0094:
                        BindingManager.executeBindings(this,"stockItem",this.stockItem);
                     }
                  }
                  §§goto(addr00a1);
               }
               §§goto(addr0082);
            }
         }
         addr00a1:
         return _loc1_;
      }
      
      private function _ShopPopup_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_shopBook";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "shopradius";
               if(!_loc2_)
               {
                  _loc1_.id = "radiusIcon";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc2_)
                        {
                           addr005e:
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(_loc1_)))
                           {
                              §§goto(addr007a);
                           }
                        }
                        §§goto(addr008c);
                     }
                     addr007a:
                     this.radiusIcon = _loc1_;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr008c:
                        BindingManager.executeBindings(this,"radiusIcon",this.radiusIcon);
                     }
                     §§goto(addr0099);
                  }
               }
               §§goto(addr005e);
            }
         }
         addr0099:
         return _loc1_;
      }
      
      private function _ShopPopup_VGroup5_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.minWidth = 55;
            if(_loc2_)
            {
               _loc1_.horizontalAlign = "left";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc3_)
                  {
                     _loc1_.percentHeight = 100;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        addr006e:
                        _loc1_.gap = 20;
                        if(!_loc3_)
                        {
                           addr0078:
                           _loc1_.paddingTop = 7;
                           if(!_loc3_)
                           {
                              addr0090:
                              _loc1_.mxmlContent = [this._ShopPopup_LocaLabel4_i(),this._ShopPopup_LocaLabel5_i()];
                              if(_loc2_ || Boolean(this))
                              {
                                 addr00ae:
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc3_)
                                    {
                                       addr00ba:
                                       _loc1_.document = this;
                                    }
                                 }
                                 §§goto(addr00be);
                              }
                              §§goto(addr00ba);
                           }
                           §§goto(addr00be);
                        }
                        §§goto(addr00ae);
                     }
                     §§goto(addr0090);
                  }
                  addr00be:
                  return _loc1_;
               }
               §§goto(addr006e);
            }
            §§goto(addr00ba);
         }
         §§goto(addr0078);
      }
      
      private function _ShopPopup_LocaLabel4_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.styleName = "shopEffectsNeutral";
            if(!_loc2_)
            {
               _loc1_.id = "stockLabel";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0062:
                        _loc1_.document = this;
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           §§goto(addr0073);
                        }
                     }
                     §§goto(addr007d);
                  }
                  addr0073:
                  this.stockLabel = _loc1_;
                  if(!_loc2_)
                  {
                     addr007d:
                     BindingManager.executeBindings(this,"stockLabel",this.stockLabel);
                  }
                  §§goto(addr008a);
               }
               §§goto(addr0062);
            }
            addr008a:
            return _loc1_;
         }
         §§goto(addr0073);
      }
      
      private function _ShopPopup_LocaLabel5_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc3_)
         {
            _loc1_.styleName = "shopEffectsNeutral";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.id = "radiusLabel";
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.document = this;
                        if(_loc2_ || Boolean(_loc1_))
                        {
                           addr007b:
                           this.radiusLabel = _loc1_;
                           if(!(_loc3_ && Boolean(this)))
                           {
                              addr008d:
                              BindingManager.executeBindings(this,"radiusLabel",this.radiusLabel);
                           }
                           §§goto(addr009a);
                        }
                        §§goto(addr008d);
                     }
                     §§goto(addr009a);
                  }
               }
            }
            §§goto(addr007b);
         }
         addr009a:
         return _loc1_;
      }
      
      private function _ShopPopup_Group9_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc3_)
         {
            _loc1_.width = 10;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr0050:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0050);
      }
      
      private function _ShopPopup_VGroup6_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.horizontalAlign = "center";
            if(!_loc2_)
            {
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(_loc3_ || _loc2_)
                  {
                     addr0060:
                     _loc1_.mxmlContent = [this._ShopPopup_BriskImageDynaLib9_i(),this._ShopPopup_BriskImageDynaLib10_i()];
                     if(_loc3_ || _loc2_)
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_)
                           {
                              addr008a:
                              _loc1_.document = this;
                           }
                        }
                        return _loc1_;
                     }
                  }
               }
            }
            §§goto(addr008a);
         }
         §§goto(addr0060);
      }
      
      private function _ShopPopup_BriskImageDynaLib9_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "layer_happyness_icon";
               if(!_loc3_)
               {
                  _loc1_.id = "_ShopPopup_BriskImageDynaLib9";
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           _loc1_.document = this;
                           if(!_loc3_)
                           {
                              addr0086:
                              this._ShopPopup_BriskImageDynaLib9 = _loc1_;
                              if(!_loc3_)
                              {
                                 addr0091:
                                 BindingManager.executeBindings(this,"_ShopPopup_BriskImageDynaLib9",this._ShopPopup_BriskImageDynaLib9);
                              }
                           }
                        }
                        §§goto(addr009f);
                     }
                     §§goto(addr0086);
                  }
                  §§goto(addr009f);
               }
               §§goto(addr0091);
            }
            §§goto(addr0086);
         }
         addr009f:
         return _loc1_;
      }
      
      private function _ShopPopup_BriskImageDynaLib10_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_shopBook";
            if(_loc3_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "shopenergy";
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.id = "energyIcon";
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0073:
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              §§goto(addr0090);
                           }
                        }
                        §§goto(addr00a2);
                     }
                     §§goto(addr0090);
                  }
                  §§goto(addr00a2);
               }
            }
            addr0090:
            this.energyIcon = _loc1_;
            if(_loc3_ || Boolean(this))
            {
               addr00a2:
               BindingManager.executeBindings(this,"energyIcon",this.energyIcon);
            }
            return _loc1_;
         }
         §§goto(addr0073);
      }
      
      private function _ShopPopup_VGroup7_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.horizontalAlign = "left";
            if(!(_loc2_ && Boolean(this)))
            {
               addr003b:
               _loc1_.percentWidth = 100;
               if(!_loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     §§goto(addr0063);
                  }
                  §§goto(addr008c);
               }
               §§goto(addr0075);
            }
            addr0063:
            _loc1_.gap = 20;
            if(_loc3_ || Boolean(_loc1_))
            {
               addr0075:
               _loc1_.paddingTop = 7;
               if(!_loc2_)
               {
                  addr008c:
                  _loc1_.mxmlContent = [this._ShopPopup_LocaLabel6_i(),this._ShopPopup_LocaLabel7_i()];
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr00b6:
                           _loc1_.document = this;
                        }
                     }
                  }
                  §§goto(addr00ba);
               }
               §§goto(addr00b6);
            }
            addr00ba:
            return _loc1_;
         }
         §§goto(addr003b);
      }
      
      private function _ShopPopup_LocaLabel6_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.styleName = "shopEffectsNegative";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.id = "moodLabel";
               if(_loc3_ || Boolean(_loc1_))
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        §§goto(addr0078);
                     }
                  }
               }
               §§goto(addr0089);
            }
         }
         addr0078:
         _loc1_.document = this;
         if(_loc3_ || Boolean(_loc1_))
         {
            addr0089:
            this.moodLabel = _loc1_;
            if(!_loc2_)
            {
               BindingManager.executeBindings(this,"moodLabel",this.moodLabel);
            }
         }
         return _loc1_;
      }
      
      private function _ShopPopup_LocaLabel7_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.text = "";
            if(!_loc3_)
            {
               _loc1_.styleName = "shopEffectsPositive";
               if(!_loc3_)
               {
                  _loc1_.id = "energyLabel";
                  if(!_loc3_)
                  {
                     addr0061:
                     if(!_loc1_.document)
                     {
                        if(_loc2_)
                        {
                           _loc1_.document = this;
                           if(_loc2_)
                           {
                              §§goto(addr0076);
                           }
                           §§goto(addr0080);
                        }
                     }
                     addr0076:
                     this.energyLabel = _loc1_;
                     if(!_loc3_)
                     {
                        addr0080:
                        BindingManager.executeBindings(this,"energyLabel",this.energyLabel);
                     }
                     §§goto(addr008d);
                  }
               }
               addr008d:
               return _loc1_;
            }
            §§goto(addr0080);
         }
         §§goto(addr0061);
      }
      
      public function ___ShopPopup_PaperPopupWindow1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this.handleCreationComplete();
         }
      }
      
      private function _ShopPopup_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc3_ || _loc3_)
         {
            §§pop().§§slot[1] = [];
            if(!_loc2_)
            {
               §§push(§§newactivation());
               if(_loc3_)
               {
                  §§push(§§pop().§§slot[1]);
                  if(!_loc2_)
                  {
                     §§push(0);
                     if(!_loc2_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():uint
                        {
                           return UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM;
                        },null,"uiInfolayerAlignmentLine.alignment");
                        if(_loc3_ || _loc2_)
                        {
                           addr0063:
                           §§push(§§newactivation());
                           if(_loc3_)
                           {
                              §§push(§§pop().§§slot[1]);
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(1);
                                 if(!_loc2_)
                                 {
                                    §§pop()[§§pop()] = new Binding(this,function():String
                                    {
                                       var _loc1_:* = LocaUtils.getString("rcl.tooltips.shopBook","rcl.tooltips.shopBook.maxStock");
                                       return _loc1_ == undefined ? null : String(_loc1_);
                                    },null,"stockItem.toolTip");
                                    if(_loc3_ || Boolean(this))
                                    {
                                       §§push(§§newactivation());
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          §§push(§§pop().§§slot[1]);
                                          if(!_loc2_)
                                          {
                                             addr00b5:
                                             §§push(2);
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                §§pop()[§§pop()] = new Binding(this,function():String
                                                {
                                                   var _loc1_:* = LocaUtils.getString("rcl.tooltips.shopBook","rcl.tooltips.shopBook.radius");
                                                   return _loc1_ == undefined ? null : String(_loc1_);
                                                },null,"radiusIcon.toolTip");
                                                if(_loc3_ || _loc3_)
                                                {
                                                   §§push(§§newactivation());
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      addr00f2:
                                                      §§push(§§pop().§§slot[1]);
                                                      if(_loc3_ || _loc1_)
                                                      {
                                                         addr0101:
                                                         §§push(3);
                                                         if(!_loc2_)
                                                         {
                                                            §§pop()[§§pop()] = new Binding(this,function():String
                                                            {
                                                               var _loc1_:* = LocaUtils.getString("rcl.tooltips.shopBook","rcl.tooltips.shopBook.maxStock");
                                                               return _loc1_ == undefined ? null : String(_loc1_);
                                                            },null,"stockLabel.toolTip");
                                                            addr0108:
                                                            if(_loc3_)
                                                            {
                                                               addr012b:
                                                               §§push(§§newactivation());
                                                               if(!(_loc2_ && _loc3_))
                                                               {
                                                                  addr013a:
                                                                  §§push(§§pop().§§slot[1]);
                                                                  if(!(_loc2_ && _loc1_))
                                                                  {
                                                                     §§push(4);
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        addr0158:
                                                                        §§pop()[§§pop()] = new Binding(this,function():String
                                                                        {
                                                                           var _loc1_:* = LocaUtils.getString("rcl.tooltips.shopBook","rcl.tooltips.shopBook.radius");
                                                                           return _loc1_ == undefined ? null : String(_loc1_);
                                                                        },null,"radiusLabel.toolTip");
                                                                        if(_loc3_ || _loc3_)
                                                                        {
                                                                           §§push(§§newactivation());
                                                                           if(!(_loc2_ && _loc3_))
                                                                           {
                                                                              addr0186:
                                                                              §§push(§§pop().§§slot[1]);
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§push(5);
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    addr0194:
                                                                                    §§pop()[§§pop()] = new Binding(this,function():String
                                                                                    {
                                                                                       var _loc1_:* = LocaUtils.getString("rcl.tooltips.shopBook","rcl.tooltips.shopBook.mood");
                                                                                       return _loc1_ == undefined ? null : String(_loc1_);
                                                                                    },null,"_ShopPopup_BriskImageDynaLib9.toolTip");
                                                                                    if(_loc3_ || _loc1_)
                                                                                    {
                                                                                       §§goto(addr01b3);
                                                                                    }
                                                                                    §§goto(addr01ef);
                                                                                 }
                                                                                 §§goto(addr024e);
                                                                              }
                                                                              §§goto(addr024c);
                                                                           }
                                                                           §§goto(addr01f6);
                                                                        }
                                                                        §§goto(addr01ef);
                                                                     }
                                                                     §§goto(addr0194);
                                                                  }
                                                                  §§goto(addr01fd);
                                                               }
                                                               §§goto(addr01f6);
                                                            }
                                                            §§goto(addr01ef);
                                                         }
                                                         §§goto(addr01d0);
                                                      }
                                                      §§goto(addr024c);
                                                   }
                                                   §§goto(addr0186);
                                                }
                                                §§goto(addr012b);
                                             }
                                             §§goto(addr0108);
                                          }
                                          §§goto(addr0101);
                                       }
                                       §§goto(addr00f2);
                                    }
                                    §§goto(addr01ef);
                                 }
                                 §§goto(addr0158);
                              }
                              §§goto(addr00b5);
                           }
                           §§goto(addr013a);
                        }
                        addr01b3:
                        §§push(§§newactivation());
                        if(_loc3_ || Boolean(this))
                        {
                           §§push(§§pop().§§slot[1]);
                           if(!_loc2_)
                           {
                              addr01c9:
                              §§push(6);
                              if(!_loc2_)
                              {
                                 addr01d0:
                                 §§pop()[§§pop()] = new Binding(this,function():String
                                 {
                                    var _loc1_:* = LocaUtils.getString("rcl.tooltips.shopBook","rcl.tooltips.shopBook.energy");
                                    return _loc1_ == undefined ? null : String(_loc1_);
                                 },null,"energyIcon.toolTip");
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr01ef:
                                    §§push(§§newactivation());
                                    if(_loc3_)
                                    {
                                       addr01f6:
                                       §§push(§§pop().§§slot[1]);
                                       if(!_loc2_)
                                       {
                                          addr01fd:
                                          §§push(7);
                                          if(!_loc2_)
                                          {
                                             addr0204:
                                             §§pop()[§§pop()] = new Binding(this,function():String
                                             {
                                                var _loc1_:* = LocaUtils.getString("rcl.tooltips.shopBook","rcl.tooltips.shopBook.mood");
                                                return _loc1_ == undefined ? null : String(_loc1_);
                                             },null,"moodLabel.toolTip");
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                addr0223:
                                                §§push(§§newactivation());
                                                if(_loc3_ || _loc3_)
                                                {
                                                   §§goto(addr0264);
                                                }
                                                §§goto(addr0262);
                                             }
                                             §§goto(addr0260);
                                          }
                                          §§goto(addr024e);
                                       }
                                       addr0264:
                                    }
                                    §§goto(addr023d);
                                 }
                                 §§goto(addr0223);
                              }
                              §§goto(addr0204);
                           }
                           §§goto(addr0264);
                        }
                        §§goto(addr023d);
                     }
                     §§goto(addr0108);
                  }
                  §§goto(addr01c9);
               }
               addr023d:
               §§push(§§pop().§§slot[1]);
               if(_loc3_ || _loc1_)
               {
                  addr024e:
                  §§pop()[8] = new Binding(this,function():String
                  {
                     var _loc1_:* = LocaUtils.getString("rcl.tooltips.shopBook","rcl.tooltips.shopBook.energy");
                     return _loc1_ == undefined ? null : String(_loc1_);
                  },null,"energyLabel.toolTip");
                  addr0262:
                  addr0260:
                  §§push(result);
                  addr024c:
               }
               return §§pop();
            }
            §§goto(addr0063);
         }
         §§goto(addr00f2);
      }
      
      [Bindable(event="propertyChange")]
      public function get cardBoard() : BriskImageDynaLib
      {
         return this._271979082cardBoard;
      }
      
      public function set cardBoard(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._271979082cardBoard;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._271979082cardBoard = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(_loc2_)))
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cardBoard",_loc2_,param1));
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
      public function get effectHeader() : ResidentialHeaderComponent
      {
         return this._713468034effectHeader;
      }
      
      public function set effectHeader(param1:ResidentialHeaderComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._713468034effectHeader;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._713468034effectHeader = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0051:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectHeader",_loc2_,param1));
                        }
                     }
                     §§goto(addr0060);
                  }
                  §§goto(addr0051);
               }
            }
         }
         addr0060:
      }
      
      [Bindable(event="propertyChange")]
      public function get effectsComponent() : StickyNoteComponent
      {
         return this._911984155effectsComponent;
      }
      
      public function set effectsComponent(param1:StickyNoteComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._911984155effectsComponent;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._911984155effectsComponent = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0060);
                  }
                  §§goto(addr0070);
               }
               addr0060:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_)
                  {
                     addr0070:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectsComponent",_loc2_,param1));
                  }
               }
               §§goto(addr007f);
            }
            addr007f:
            return;
         }
         §§goto(addr0070);
      }
      
      [Bindable(event="propertyChange")]
      public function get energyIcon() : BriskImageDynaLib
      {
         return this._1464688417energyIcon;
      }
      
      public function set energyIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1464688417energyIcon;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1464688417energyIcon = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr0059:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"energyIcon",_loc2_,param1));
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
      public function get energyLabel() : LocaLabel
      {
         return this._1836601012energyLabel;
      }
      
      public function set energyLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1836601012energyLabel;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1836601012energyLabel = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"energyLabel",_loc2_,param1));
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
      public function get evaluationHeader() : ResidentialHeaderComponent
      {
         return this._1415215337evaluationHeader;
      }
      
      public function set evaluationHeader(param1:ResidentialHeaderComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1415215337evaluationHeader;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr0043:
                  this._1415215337evaluationHeader = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     §§goto(addr0061);
                  }
                  §§goto(addr0079);
               }
               addr0061:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(this))
                  {
                     addr0079:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"evaluationHeader",_loc2_,param1));
                  }
               }
               §§goto(addr0088);
            }
            addr0088:
            return;
         }
         §§goto(addr0043);
      }
      
      [Bindable(event="propertyChange")]
      public function get flavorText() : LocaLabel
      {
         return this._1684755691flavorText;
      }
      
      public function set flavorText(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1684755691flavorText;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._1684755691flavorText = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     §§goto(addr006b);
                  }
                  §§goto(addr007a);
               }
               addr006b:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr007a:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavorText",_loc2_,param1));
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
      public function get goodImage() : BriskImageDynaLib
      {
         return this._1356539550goodImage;
      }
      
      public function set goodImage(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1356539550goodImage;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1356539550goodImage = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0056:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goodImage",_loc2_,param1));
                        }
                     }
                     §§goto(addr0065);
                  }
                  §§goto(addr0056);
               }
            }
            addr0065:
            return;
         }
         §§goto(addr0056);
      }
      
      [Bindable(event="propertyChange")]
      public function get moodLabel() : LocaLabel
      {
         return this._895838659moodLabel;
      }
      
      public function set moodLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._895838659moodLabel;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._895838659moodLabel = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodLabel",_loc2_,param1));
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
      public function get numericStepper() : NumericMaxStepperComponent
      {
         return this._884864252numericStepper;
      }
      
      public function set numericStepper(param1:NumericMaxStepperComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._884864252numericStepper;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._884864252numericStepper = param1;
                  addr003f:
                  if(_loc4_)
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr006e);
               }
               addr0056:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr006e:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numericStepper",_loc2_,param1));
                  }
               }
               §§goto(addr007d);
            }
            addr007d:
            return;
         }
         §§goto(addr003f);
      }
      
      [Bindable(event="propertyChange")]
      public function get radiusIcon() : BriskImageDynaLib
      {
         return this._186942507radiusIcon;
      }
      
      public function set radiusIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._186942507radiusIcon;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._186942507radiusIcon = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     addr0064:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"radiusIcon",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0064);
      }
      
      [Bindable(event="propertyChange")]
      public function get radiusLabel() : LocaLabel
      {
         return this._1502948738radiusLabel;
      }
      
      public function set radiusLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1502948738radiusLabel;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1502948738radiusLabel = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr0076:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"radiusLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0076);
            }
            addr0085:
            return;
         }
         §§goto(addr005e);
      }
      
      [Bindable(event="propertyChange")]
      public function get shopHeader() : LocaLabel
      {
         return this._1463740125shopHeader;
      }
      
      public function set shopHeader(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1463740125shopHeader;
         if(!(_loc3_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr0049:
                  this._1463740125shopHeader = param1;
                  if(!_loc3_)
                  {
                     §§goto(addr0053);
                  }
                  §§goto(addr0062);
               }
               addr0053:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!_loc3_)
                  {
                     addr0062:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopHeader",_loc2_,param1));
                  }
               }
               §§goto(addr0071);
            }
            addr0071:
            return;
         }
         §§goto(addr0049);
      }
      
      [Bindable(event="propertyChange")]
      public function get shopList() : List
      {
         return this._345533260shopList;
      }
      
      public function set shopList(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._345533260shopList;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._345533260shopList = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopList",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stockItem() : BriskImageDynaLib
      {
         return this._1267755849stockItem;
      }
      
      public function set stockItem(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1267755849stockItem;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1267755849stockItem = param1;
                  if(_loc3_)
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
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stockItem",_loc2_,param1));
                  }
               }
               §§goto(addr007e);
            }
            addr007e:
            return;
         }
         §§goto(addr005f);
      }
      
      [Bindable(event="propertyChange")]
      public function get stockLabel() : LocaLabel
      {
         return this._647927166stockLabel;
      }
      
      public function set stockLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._647927166stockLabel;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._647927166stockLabel = param1;
                  if(!_loc4_)
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006c:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stockLabel",_loc2_,param1));
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
         §§goto(addr005c);
      }
      
      [Bindable(event="propertyChange")]
      public function get storageHeader() : LocaLabel
      {
         return this._1378814184storageHeader;
      }
      
      public function set storageHeader(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1378814184storageHeader;
         if(!(_loc4_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1378814184storageHeader = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     §§goto(addr005d);
                  }
                  §§goto(addr0074);
               }
               addr005d:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_ || Boolean(this))
                  {
                     addr0074:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"storageHeader",_loc2_,param1));
                  }
               }
               §§goto(addr0083);
            }
         }
         addr0083:
      }
      
      [Bindable(event="propertyChange")]
      public function get storageList() : List
      {
         return this._525815367storageList;
      }
      
      public function set storageList(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._525815367storageList;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._525815367storageList = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr0053:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0063:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"storageList",_loc2_,param1));
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
         §§goto(addr0053);
      }
      
      [Bindable(event="propertyChange")]
      public function get toStorage() : MultistateButton
      {
         return this._747477888toStorage;
      }
      
      public function set toStorage(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._747477888toStorage;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._747477888toStorage = param1;
                  if(!_loc4_)
                  {
                     §§goto(addr0042);
                  }
                  §§goto(addr0051);
               }
               addr0042:
               if(this.hasEventListener("propertyChange"))
               {
                  if(_loc3_)
                  {
                     addr0051:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"toStorage",_loc2_,param1));
                  }
               }
               §§goto(addr0060);
            }
         }
         addr0060:
      }
      
      [Bindable(event="propertyChange")]
      public function get toStore() : MultistateButton
      {
         return this._1165701338toStore;
      }
      
      public function set toStore(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1165701338toStore;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  addr0035:
                  this._1165701338toStore = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0054:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"toStore",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007a);
               }
               §§goto(addr0054);
            }
            addr007a:
            return;
         }
         §§goto(addr0035);
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
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0054:
                  this._1218573432uiInfolayerAlignmentLine = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine",_loc2_,param1));
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
         §§goto(addr0054);
      }
      
      [Bindable(event="propertyChange")]
      public function get upgradeProgressComponent() : UpgradeProgressComponent
      {
         return this._2007548268upgradeProgressComponent;
      }
      
      public function set upgradeProgressComponent(param1:UpgradeProgressComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2007548268upgradeProgressComponent;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._2007548268upgradeProgressComponent = param1;
                  if(_loc3_ || _loc3_)
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upgradeProgressComponent",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0087);
               }
               §§goto(addr0078);
            }
            addr0087:
            return;
         }
         §§goto(addr0060);
      }
   }
}

