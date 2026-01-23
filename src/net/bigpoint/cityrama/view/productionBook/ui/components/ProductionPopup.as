package net.bigpoint.cityrama.view.productionBook.ui.components
{
   import com.greensock.TweenMax;
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
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.detailViews.vo.GoodRequireVo;
   import net.bigpoint.cityrama.model.detailViews.vo.ProductionDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.ProductionNeedVo;
   import net.bigpoint.cityrama.model.detailViews.vo.SimpleItemVo;
   import net.bigpoint.cityrama.model.good.vo.ProductionGoodObjectVo;
   import net.bigpoint.cityrama.model.residentialBook.vo.UpgradeProgressVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.common.components.PostitHeaderComponent;
   import net.bigpoint.cityrama.view.common.components.PriceComponent;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.common.components.UpgradeProgressComponent;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.cityrama.view.productionBook.ui.skins.NeedsListSkin;
   import net.bigpoint.cityrama.view.productionBook.ui.skins.OutputListSkin;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ResidentialHeaderComponent;
   import net.bigpoint.cityrama.view.storageBook.ui.components.UIInfolayerDispatcherEvent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.UserInterfaceInfoLayerAlignLineVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class ProductionPopup extends PaperPopupWindow implements IBindingClient
   {
      
      public static const START_PRODUCTION:String = "startProduction";
      
      public static const STOP_PRODUCTION:String = "stopProduction";
      
      public static const INSTANT_PRODUCTION:String = "instantProduction";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc1_)
      {
         START_PRODUCTION = "startProduction";
         if(_loc1_)
         {
            STOP_PRODUCTION = "stopProduction";
            if(_loc1_ || _loc2_)
            {
               INSTANT_PRODUCTION = "instantProduction";
               §§goto(addr004d);
            }
            §§goto(addr0066);
         }
      }
      addr004d:
      if(!_loc2_)
      {
         addr0066:
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
      
      private var _1384168581blockedIcon:BriskImageDynaLib;
      
      private var _1322365109boostButton:MultistateButton;
      
      private var _988528383centerCardboard:BriskImageDynaLib;
      
      private var _1651530246centerImage:BriskImageDynaLib;
      
      private var _94849606costs:PriceComponent;
      
      private var _1897254003costsHeader:PostitHeaderComponent;
      
      private var _724131529currencyFeatureButton:DynamicImageButton;
      
      private var _1768900535effectFeatureButton:DynamicImageButton;
      
      private var _713468034effectHeader:ResidentialHeaderComponent;
      
      private var _911984155effectsComponent:StickyNoteComponent;
      
      private var _1678527680effectsList:List;
      
      private var _1840699177energyGroup:HGroup;
      
      private var _1464688417energyIcon:BriskImageDynaLib;
      
      private var _1836601012energyLabel:LocaLabel;
      
      private var _1415215337evaluationHeader:ResidentialHeaderComponent;
      
      private var _1684755691flavorText:LocaLabel;
      
      private var _1708165014harvestOutcomeHeader:LocaLabel;
      
      private var _1213523686infoLabel:LocaLabel;
      
      private var _2135689121itemLabel:LocaLabel;
      
      private var _899936824moodGroup:HGroup;
      
      private var _306079728moodIcon:BriskImageDynaLib;
      
      private var _895838659moodLabel:LocaLabel;
      
      private var _1632688734neededGoodsGroup:Group;
      
      private var _1093736667needsList:List;
      
      private var _1531914933productionButton:MultistateButton;
      
      private var _1352315404productionTimer:TimerBarComponent;
      
      private var _758791194quadrillePaperGroup:Group;
      
      private var _677746547requiredResourcesHeader:ResidentialHeaderComponent;
      
      private var _75450170scrollLeftButton:DynamicImageButton;
      
      private var _1993162593scrollRightButton:DynamicImageButton;
      
      private var _1218573432uiInfolayerAlignmentLine:UiInfolayerAlignmentLine;
      
      private var _1087758604upgradeFeatureButton:DynamicImageButton;
      
      private var _2007548268upgradeProgressComponent:UpgradeProgressComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ProductionDetailViewVo;
      
      private var _isDirtyData:Boolean = false;
      
      private var _instantFinishData:Object;
      
      private var _instantFinishDataDirty:Boolean = false;
      
      private var _currentGoodIndex:int = 0;
      
      private var _productionRunning:Boolean;
      
      private var _unhover:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ProductionPopup()
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
            if(!_loc4_)
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc3_)
               {
                  §§push(§§newactivation());
                  if(!_loc4_)
                  {
                     addr003e:
                     §§pop().§§slot[5] = null;
                     if(!(_loc4_ && _loc2_))
                     {
                        this.mx_internal::_bindings = [];
                        if(!(_loc4_ && _loc2_))
                        {
                           this.mx_internal::_watchers = [];
                           if(!(_loc4_ && _loc3_))
                           {
                              this.mx_internal::_bindingsByDestination = {};
                              if(_loc3_)
                              {
                                 this.mx_internal::_bindingsBeginWithWord = {};
                                 if(!_loc4_)
                                 {
                                    super();
                                    if(!_loc4_)
                                    {
                                       addr0098:
                                       mx_internal::_document = this;
                                       if(_loc3_ || Boolean(this))
                                       {
                                          addr00b2:
                                          §§push(§§newactivation());
                                          if(!(_loc4_ && Boolean(this)))
                                          {
                                             §§pop().§§slot[1] = this._ProductionPopup_bindingsSetup();
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                §§push(§§newactivation());
                                                if(_loc3_)
                                                {
                                                   addr00e1:
                                                   §§pop().§§slot[2] = [];
                                                   if(!_loc4_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         §§pop().§§slot[3] = this;
                                                         if(_loc3_)
                                                         {
                                                            addr0106:
                                                            if(_watcherSetupUtil == null)
                                                            {
                                                               if(!(_loc4_ && _loc1_))
                                                               {
                                                                  §§push(§§newactivation());
                                                                  if(_loc3_ || Boolean(this))
                                                                  {
                                                                     addr012b:
                                                                     §§pop().§§slot[5] = getDefinitionByName("_net_bigpoint_cityrama_view_productionBook_ui_components_ProductionPopupWatcherSetupUtil");
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr014b:
                                                                        §§push(§§newactivation());
                                                                        if(_loc3_ || Boolean(this))
                                                                        {
                                                                           addr015a:
                                                                           §§pop().§§slot[5]["init"](null);
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr0171:
                                                                              _watcherSetupUtil.setup(this,function(param1:String):*
                                                                              {
                                                                                 return target[param1];
                                                                              },function(param1:String):*
                                                                              {
                                                                                 return ProductionPopup[param1];
                                                                              },bindings,watchers);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr01b6:
                                                                                    mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
                                                                                    if(_loc3_ || Boolean(this))
                                                                                    {
                                                                                       addr01e4:
                                                                                       this.styleName = "production";
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          this.showBackButton = false;
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             this.width = 785;
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr0206:
                                                                                                this.height = 430;
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   addr0212:
                                                                                                   this.mxmlContentFactory = new DeferredInstanceFromFunction(this._ProductionPopup_Array1_c);
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      addr0227:
                                                                                                      this.addEventListener("addedToStage",this.___ProductionPopup_PaperPopupWindow1_addedToStage);
                                                                                                      if(!(_loc4_ && _loc1_))
                                                                                                      {
                                                                                                         addr0243:
                                                                                                         i = 0;
                                                                                                         addr0241:
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                var _temp_15:*;
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
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(§§newactivation());
                                                                                                            if(_loc3_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(§§pop().§§slot[4]);
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  §§push(uint(§§pop() + 1));
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§push(§§newactivation());
                                                                                                               if(_loc3_ || _loc2_)
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
                                                                                                while(var _temp_15:* = §§pop(), §§pop().§§slot[4] = _temp_15, !(_loc4_ && _loc2_));
                                                                                                
                                                                                                return;
                                                                                                addr02b0:
                                                                                             }
                                                                                             §§goto(addr0241);
                                                                                          }
                                                                                          §§goto(addr0212);
                                                                                       }
                                                                                       §§goto(addr02b0);
                                                                                    }
                                                                                    §§goto(addr0227);
                                                                                 }
                                                                                 §§goto(addr0206);
                                                                              }
                                                                           }
                                                                           §§goto(addr0227);
                                                                        }
                                                                        §§goto(addr0243);
                                                                     }
                                                                     §§goto(addr0171);
                                                                  }
                                                                  §§goto(addr015a);
                                                               }
                                                               §§goto(addr0206);
                                                            }
                                                            §§goto(addr0171);
                                                         }
                                                         §§goto(addr0227);
                                                      }
                                                      §§goto(addr012b);
                                                   }
                                                   §§goto(addr02b0);
                                                }
                                                §§goto(addr012b);
                                             }
                                             §§goto(addr0106);
                                          }
                                          §§goto(addr0243);
                                       }
                                       §§goto(addr01e4);
                                    }
                                    §§goto(addr0206);
                                 }
                                 §§goto(addr01b6);
                              }
                              §§goto(addr00b2);
                           }
                           §§goto(addr0106);
                        }
                        §§goto(addr01e4);
                     }
                     §§goto(addr0098);
                  }
                  §§goto(addr00e1);
               }
               §§goto(addr014b);
            }
            §§goto(addr003e);
         }
         §§goto(addr00e1);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            ProductionPopup._watcherSetupUtil = param1;
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
            if(_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr0043);
                  }
               }
               this.__moduleFactoryInitialized = true;
            }
            return;
         }
         addr0043:
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
      
      private function handleAdded() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this.addEventListener(FlexEvent.CREATION_COMPLETE,this.handleCreationComplete);
         }
      }
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            this.removeEventListener(FlexEvent.CREATION_COMPLETE,this.handleCreationComplete);
            if(!(_loc3_ && Boolean(param1)))
            {
               §§push(this.requiredResourcesHeader);
               if(!_loc3_)
               {
                  §§pop().textLabel.setStyle("fontSize",11);
                  if(_loc4_ || Boolean(param1))
                  {
                     §§push(this);
                     §§push(LocaUtils);
                     §§push("rcl.playfielditems.name");
                     §§push("rcl.playfielditems.name.");
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(§§pop() + this._data.localeId);
                     }
                     §§pop().title = §§pop().getString(§§pop(),§§pop());
                     if(_loc4_)
                     {
                        addr0081:
                        this.flavorText.text = LocaUtils.getString("rcl.productionlayer","rcl.productionlayer.flavorText");
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           this.requiredResourcesHeader.text = LocaUtils.getString("rcl.productionlayer","rcl.productionlayer.needs");
                           addr00a4:
                           if(_loc4_)
                           {
                              this.costsHeader.text = LocaUtils.getString("rcl.productionlayer","rcl.productionlayer.costs");
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr00e3:
                                 this.harvestOutcomeHeader.text = LocaUtils.getString("rcl.productionlayer","rcl.productionlayer.productionOutcome");
                                 if(!_loc3_)
                                 {
                                    this.effectHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.effects");
                                    if(!_loc3_)
                                    {
                                       this.productionTimer.addEventListener(Event.CLOSE,this.handleClose);
                                       if(_loc4_ || _loc2_)
                                       {
                                          addr012f:
                                          this.scrollLeftButton.addEventListener(MouseEvent.CLICK,this.handleScrollLeft);
                                          if(!_loc3_)
                                          {
                                             this.scrollRightButton.addEventListener(MouseEvent.CLICK,this.handleScrollRight);
                                             addr0145:
                                             if(!_loc3_)
                                             {
                                                addr0166:
                                                this.productionButton.addEventListener(MouseEvent.CLICK,this.productionClick);
                                                if(_loc4_)
                                                {
                                                   addr017d:
                                                   this.upgradeFeatureButton.visible = this.upgradeFeatureButton.enabled = false;
                                                }
                                             }
                                             §§goto(addr0190);
                                          }
                                          §§goto(addr017d);
                                       }
                                       §§goto(addr0190);
                                    }
                                    §§goto(addr0145);
                                 }
                                 §§goto(addr0166);
                              }
                              §§goto(addr012f);
                           }
                           §§goto(addr00e3);
                        }
                        §§goto(addr0145);
                     }
                     §§goto(addr0166);
                  }
                  §§goto(addr00e3);
               }
               §§goto(addr00a4);
            }
            addr0190:
            return;
         }
         §§goto(addr0081);
      }
      
      private function onBalanceFeatureClick() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            dispatchEvent(new Event("openBalanceFeature",true,true));
         }
      }
      
      private function onCurrencyFeatureClick() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            dispatchEvent(new Event("openCurrencyFeature",true,true));
         }
      }
      
      private function onUpgradeFeatureClick() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            dispatchEvent(new Event("openUpgradeFeature",true,true));
         }
      }
      
      private function productionClick(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            if(this._productionRunning)
            {
               if(!(_loc2_ && _loc2_))
               {
                  dispatchEvent(new Event(STOP_PRODUCTION));
                  if(_loc3_ || _loc3_)
                  {
                  }
               }
            }
            else
            {
               dispatchEvent(new Event(START_PRODUCTION));
            }
         }
      }
      
      private function handleScrollLeft(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            var _loc2_:* = this;
            §§push(_loc2_._currentGoodIndex);
            if(!_loc5_)
            {
               §§push(§§pop() - 1);
            }
            var _loc3_:* = §§pop();
            if(_loc4_)
            {
               _loc2_._currentGoodIndex = _loc3_;
            }
            if(_loc4_)
            {
               this.displayGood();
               if(!_loc5_)
               {
                  addr0055:
                  this.checkNavigationButtons();
               }
               §§goto(addr005a);
            }
            §§goto(addr0055);
         }
         addr005a:
      }
      
      private function handleScrollRight(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_ || Boolean(this))
         {
            var _loc2_:* = this;
            §§push(_loc2_._currentGoodIndex);
            if(!(_loc5_ && Boolean(this)))
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(_loc4_)
            {
               _loc2_._currentGoodIndex = _loc3_;
            }
            if(_loc4_ || _loc3_)
            {
               this.displayGood();
               if(_loc4_ || _loc3_)
               {
                  addr0080:
                  this.checkNavigationButtons();
               }
            }
            return;
         }
         §§goto(addr0080);
      }
      
      private function handleClose(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            dispatchEvent(param1);
         }
      }
      
      private function handleUpgradeMouseOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._isDirtyData = true;
            if(!(_loc3_ && Boolean(param1)))
            {
               §§goto(addr003d);
            }
            §§goto(addr004f);
         }
         addr003d:
         this._unhover = true;
         if(!(_loc3_ && Boolean(param1)))
         {
            addr004f:
            this.displayGood();
         }
      }
      
      private function handleUpgradeMouseOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:ProductionGoodObjectVo = this._data.nextProductionDetail.productionOptions[this._currentGoodIndex] as ProductionGoodObjectVo;
         if(!(_loc4_ && Boolean(this)))
         {
            this.setOutputValues(_loc2_);
            if(!(_loc4_ && _loc3_))
            {
               this.setCosts(_loc2_);
               if(!_loc4_)
               {
                  this.setEffects(this._data.nextProductionDetail.energyEffect,this._data.nextProductionDetail.moodEffect);
               }
            }
         }
      }
      
      public function set data(param1:ProductionDetailViewVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(!RandomUtilities.isEqual(this._data,param1))
            {
               if(_loc3_)
               {
                  this._data = param1;
                  if(_loc3_)
                  {
                     this._isDirtyData = true;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0055:
                        invalidateProperties();
                     }
                     §§goto(addr005a);
                  }
                  §§goto(addr0055);
               }
            }
            addr005a:
            return;
         }
         §§goto(addr0055);
      }
      
      public function set instantFinishData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            if(!RandomUtilities.isEqual(this._instantFinishData,param1))
            {
               if(!_loc2_)
               {
                  this._instantFinishData = param1;
                  if(!_loc2_)
                  {
                     this._instantFinishDataDirty = true;
                     if(!_loc2_)
                     {
                        invalidateProperties();
                     }
                  }
               }
            }
         }
      }
      
      public function get data() : ProductionDetailViewVo
      {
         return this._data;
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:UpgradeProgressVo = null;
         if(!(_loc2_ && _loc3_))
         {
            super.commitProperties();
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               §§push(this._isDirtyData);
               if(!(_loc2_ && _loc3_))
               {
                  if(§§pop())
                  {
                     if(_loc3_ || _loc2_)
                     {
                        §§push(this.upgradeProgressComponent);
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           §§pop().removeEventListener(MouseEvent.MOUSE_OVER,this.handleUpgradeMouseOver);
                           if(_loc3_ || _loc3_)
                           {
                              addr0082:
                              §§push(this.upgradeProgressComponent);
                              if(_loc3_)
                              {
                                 §§pop().removeEventListener(MouseEvent.MOUSE_OUT,this.handleUpgradeMouseOut);
                                 if(!_loc2_)
                                 {
                                    §§push(this.upgradeProgressComponent);
                                    if(_loc3_ || Boolean(this))
                                    {
                                       addr00ad:
                                       §§push(§§pop().buyButton);
                                       if(_loc3_)
                                       {
                                          §§pop().removeEventListener(MouseEvent.MOUSE_OVER,this.handleUpgradeMouseOver);
                                          if(_loc3_)
                                          {
                                             addr00cd:
                                             this.upgradeProgressComponent.buyButton.removeEventListener(MouseEvent.MOUSE_OUT,this.handleUpgradeMouseOut);
                                             addr00ca:
                                             if(_loc3_ || _loc3_)
                                             {
                                                if(this._data)
                                                {
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      addr00fb:
                                                      this.evaluationHeader.text = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.currentUpgrade",[this._data.upgradeCurrentLevel]);
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         addr0122:
                                                         _loc1_ = new UpgradeProgressVo();
                                                         if(!(_loc2_ && _loc3_))
                                                         {
                                                            _loc1_.currentProgress = this._data.harvestCount;
                                                            if(_loc3_)
                                                            {
                                                               _loc1_.hasEnoughMoney = this._data.hasEnoughDD;
                                                               if(!(_loc2_ && Boolean(this)))
                                                               {
                                                                  addr0162:
                                                                  _loc1_.neededProgress = this._data.upgradeCountTotal;
                                                                  if(_loc3_)
                                                                  {
                                                                     _loc1_.price = this._data.upgradePrice;
                                                                     if(_loc3_ || _loc2_)
                                                                     {
                                                                        _loc1_.upgradeCurrentLevel = this._data.upgradeCurrentLevel;
                                                                        if(_loc3_ || Boolean(this))
                                                                        {
                                                                           _loc1_.upgradeMaxLevel = this._data.upgradeMaxLevel;
                                                                           if(!_loc2_)
                                                                           {
                                                                              _loc1_.upgradeNextLevel = this._data.upgradeNextLevel;
                                                                              if(!(_loc2_ && _loc2_))
                                                                              {
                                                                                 §§push(this.upgradeProgressComponent);
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    §§pop().data = _loc1_;
                                                                                    if(_loc3_ || Boolean(_loc1_))
                                                                                    {
                                                                                       §§push(this.upgradeProgressComponent);
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          §§push(§§pop().buyButton);
                                                                                          if(_loc3_ || Boolean(_loc1_))
                                                                                          {
                                                                                             §§pop().showSparkle = true;
                                                                                             if(_loc3_ || _loc3_)
                                                                                             {
                                                                                                addr020d:
                                                                                                this._currentGoodIndex = this._data.currentProductionIndex;
                                                                                                if(_loc3_ || _loc2_)
                                                                                                {
                                                                                                   §§push(this._currentGoodIndex);
                                                                                                   if(_loc3_ || Boolean(_loc1_))
                                                                                                   {
                                                                                                      §§push(§§pop() == -1);
                                                                                                      if(_loc3_ || _loc2_)
                                                                                                      {
                                                                                                         var _temp_23:* = §§pop();
                                                                                                         §§push(_temp_23);
                                                                                                         if(!_temp_23)
                                                                                                         {
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               if(!(_loc2_ && _loc2_))
                                                                                                               {
                                                                                                                  addr0262:
                                                                                                                  addr025e:
                                                                                                                  §§push(this._currentGoodIndex >= this._data.productionOptions.length);
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     addr0271:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           this._currentGoodIndex = 0;
                                                                                                                           if(!_loc2_)
                                                                                                                           {
                                                                                                                              addr0285:
                                                                                                                              §§push(this._data);
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 if(§§pop().harvestEndTime == 0)
                                                                                                                                 {
                                                                                                                                    if(_loc3_)
                                                                                                                                    {
                                                                                                                                       this._productionRunning = false;
                                                                                                                                       if(!_loc2_)
                                                                                                                                       {
                                                                                                                                          addr02a6:
                                                                                                                                          §§push(this.productionButton);
                                                                                                                                          if(_loc3_)
                                                                                                                                          {
                                                                                                                                             §§push("gui_popups_productionPopup");
                                                                                                                                             if(_loc3_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                §§pop().libNameLeft = §§pop();
                                                                                                                                                if(_loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(this.productionButton);
                                                                                                                                                   if(!_loc2_)
                                                                                                                                                   {
                                                                                                                                                      §§push("button_icon_startproduction");
                                                                                                                                                      if(!(_loc2_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         addr02eb:
                                                                                                                                                         §§pop().imageNameLeft = §§pop();
                                                                                                                                                         if(!(_loc2_ && Boolean(_loc1_)))
                                                                                                                                                         {
                                                                                                                                                            §§push(this.productionButton);
                                                                                                                                                            if(!_loc2_)
                                                                                                                                                            {
                                                                                                                                                               addr0304:
                                                                                                                                                               §§push(LocaUtils.getString("rcl.productionlayer","rcl.productionlayer.startProduction"));
                                                                                                                                                               if(!_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().label = §§pop();
                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.productionButton);
                                                                                                                                                                     if(_loc3_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push("");
                                                                                                                                                                        if(!_loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           addr0335:
                                                                                                                                                                           §§pop().styleName = §§pop();
                                                                                                                                                                           if(!_loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              addr033c:
                                                                                                                                                                              §§push(this.productionButton);
                                                                                                                                                                              if(!(_loc2_ && Boolean(this)))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(LocaUtils.getString("rcl.tooltips.productionBook","rcl.tooltips.productionBook.button.start"));
                                                                                                                                                                                 if(!(_loc2_ && Boolean(this)))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().toolTip = §§pop();
                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr039c:
                                                                                                                                                                                       §§push(this.productionButton);
                                                                                                                                                                                       if(!_loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr03a5:
                                                                                                                                                                                          §§push("button_icon_cancel");
                                                                                                                                                                                          if(!(_loc2_ && Boolean(this)))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop().imageNameLeft = §§pop();
                                                                                                                                                                                             if(!(_loc2_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.productionButton);
                                                                                                                                                                                                if(_loc3_ || Boolean(_loc1_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr03d7:
                                                                                                                                                                                                   §§push(LocaUtils.getString("rcl.productionlayer","rcl.productionlayer.stopProduction"));
                                                                                                                                                                                                   if(_loc3_ || Boolean(_loc1_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr03f0:
                                                                                                                                                                                                      §§pop().label = §§pop();
                                                                                                                                                                                                      if(!_loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr03f8:
                                                                                                                                                                                                         §§push(this.productionButton);
                                                                                                                                                                                                         if(_loc3_ || Boolean(_loc1_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr040c:
                                                                                                                                                                                                            §§pop().styleName = "abort";
                                                                                                                                                                                                            addr0409:
                                                                                                                                                                                                            if(!(_loc2_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr042b:
                                                                                                                                                                                                               this.productionButton.toolTip = LocaUtils.getString("rcl.tooltips.productionBook","rcl.tooltips.productionBook.button.cancel");
                                                                                                                                                                                                               addr041f:
                                                                                                                                                                                                               addr041b:
                                                                                                                                                                                                               if(!(_loc2_ && Boolean(this)))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr043a:
                                                                                                                                                                                                                  this.displayGood();
                                                                                                                                                                                                                  if(!_loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr0444:
                                                                                                                                                                                                                     this.checkNavigationButtons();
                                                                                                                                                                                                                     if(_loc3_ || _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr0456:
                                                                                                                                                                                                                        §§push(this._data);
                                                                                                                                                                                                                        if(!(_loc2_ && Boolean(this)))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§§pop().nextProductionDetail)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc2_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr0477:
                                                                                                                                                                                                                                 addr0473:
                                                                                                                                                                                                                                 addr047d:
                                                                                                                                                                                                                                 if(this._data.productionFieldObjectVo.upgradeReady)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc3_ || _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr048e:
                                                                                                                                                                                                                                       §§push(this.upgradeProgressComponent);
                                                                                                                                                                                                                                       if(_loc3_ || Boolean(_loc1_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr049f:
                                                                                                                                                                                                                                          §§pop().addEventListener(MouseEvent.MOUSE_OVER,this.handleUpgradeMouseOver);
                                                                                                                                                                                                                                          if(_loc3_ || Boolean(_loc1_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr04b8:
                                                                                                                                                                                                                                             §§push(this.upgradeProgressComponent);
                                                                                                                                                                                                                                             if(!_loc2_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr04c1:
                                                                                                                                                                                                                                                §§pop().addEventListener(MouseEvent.MOUSE_OUT,this.handleUpgradeMouseOut);
                                                                                                                                                                                                                                                if(_loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr04d2:
                                                                                                                                                                                                                                                   §§push(this.upgradeProgressComponent);
                                                                                                                                                                                                                                                   if(!_loc2_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop().buyButton);
                                                                                                                                                                                                                                                      if(!(_loc2_ && Boolean(this)))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop().addEventListener(MouseEvent.MOUSE_OVER,this.handleUpgradeMouseOver);
                                                                                                                                                                                                                                                         if(!_loc2_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr0503:
                                                                                                                                                                                                                                                            this.upgradeProgressComponent.buyButton.addEventListener(MouseEvent.MOUSE_OUT,this.handleUpgradeMouseOut);
                                                                                                                                                                                                                                                            addr0500:
                                                                                                                                                                                                                                                            addr04fc:
                                                                                                                                                                                                                                                            if(!(_loc2_ && _loc2_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr051c:
                                                                                                                                                                                                                                                               this.setTooltips();
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr0522:
                                                                                                                                                                                                                                                         this._isDirtyData = false;
                                                                                                                                                                                                                                                         if(!(_loc2_ && Boolean(this)))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr0534);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr05bc);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr0503);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr0500);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr051c);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr0500);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr04fc);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr0500);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr04fc);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr04d2);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr051c);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr0477);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr0522);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr0473);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr051c);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr04fc);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr041f);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr0444);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr042b);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr0409);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr04fc);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr040c);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr03d7);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr043a);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr042b);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr03a5);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr04d2);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr0394:
                                                                                                                                                                           §§pop().libNameLeft = §§pop();
                                                                                                                                                                           if(_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr039c);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr041b);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr041f);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0473);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr03f0);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr041f);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0444);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0335);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0304);
                                                                                                                                                }
                                                                                                                                                §§goto(addr048e);
                                                                                                                                             }
                                                                                                                                             §§goto(addr02eb);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr0384:
                                                                                                                                             §§push("gui_popups_paperPopup");
                                                                                                                                             if(_loc3_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr0394);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr040c);
                                                                                                                                       }
                                                                                                                                       §§goto(addr03f8);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0473);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    this._productionRunning = true;
                                                                                                                                    if(!_loc2_)
                                                                                                                                    {
                                                                                                                                       §§push(this.productionButton);
                                                                                                                                       if(_loc3_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr0384);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0409);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr0456);
                                                                                                                              }
                                                                                                                              §§goto(addr0477);
                                                                                                                           }
                                                                                                                           §§goto(addr051c);
                                                                                                                        }
                                                                                                                        §§goto(addr03f8);
                                                                                                                     }
                                                                                                                     §§goto(addr0285);
                                                                                                                  }
                                                                                                                  §§goto(addr047d);
                                                                                                               }
                                                                                                               §§goto(addr041b);
                                                                                                            }
                                                                                                            §§goto(addr047d);
                                                                                                         }
                                                                                                         §§goto(addr0271);
                                                                                                      }
                                                                                                      §§goto(addr047d);
                                                                                                   }
                                                                                                   §§goto(addr0262);
                                                                                                }
                                                                                                §§goto(addr04b8);
                                                                                             }
                                                                                             §§goto(addr025e);
                                                                                          }
                                                                                          §§goto(addr0503);
                                                                                       }
                                                                                       §§goto(addr04c1);
                                                                                    }
                                                                                    §§goto(addr020d);
                                                                                 }
                                                                                 §§goto(addr049f);
                                                                              }
                                                                              §§goto(addr0444);
                                                                           }
                                                                           §§goto(addr043a);
                                                                        }
                                                                        §§goto(addr02a6);
                                                                     }
                                                                     §§goto(addr0522);
                                                                  }
                                                                  §§goto(addr041b);
                                                               }
                                                               §§goto(addr043a);
                                                            }
                                                            §§goto(addr0162);
                                                         }
                                                         §§goto(addr033c);
                                                      }
                                                      §§goto(addr05bc);
                                                   }
                                                   §§goto(addr0582);
                                                }
                                                §§goto(addr0522);
                                             }
                                             §§goto(addr00fb);
                                          }
                                          §§goto(addr0122);
                                       }
                                       §§goto(addr00cd);
                                    }
                                    §§goto(addr00ca);
                                 }
                                 §§goto(addr0534);
                              }
                              §§goto(addr00ca);
                           }
                           §§goto(addr05bc);
                        }
                        §§goto(addr00ad);
                     }
                     §§goto(addr0082);
                  }
                  addr0534:
                  §§goto(addr0538);
               }
               addr0538:
               if(this._instantFinishDataDirty)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     addr0549:
                     this._instantFinishDataDirty = false;
                     if(!_loc2_)
                     {
                        addr0553:
                        this.infoLabel.text = LocaUtils.getString("rcl.productionlayer","rcl.productionlayer.boostLabel",[this._instantFinishData.cost[this._currentGoodIndex]]);
                        if(!(_loc2_ && _loc2_))
                        {
                           addr0582:
                           §§push(this.boostButton);
                           if(!_loc2_)
                           {
                              §§pop().showPlus = this._instantFinishData.cost[this._currentGoodIndex] > this._instantFinishData.rcStock;
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 addr05c0:
                                 this.boostButton.priceToConfirm = this._instantFinishData.cost[this._currentGoodIndex];
                                 addr05bc:
                              }
                              §§goto(addr05d1);
                           }
                           §§goto(addr05c0);
                        }
                     }
                     §§goto(addr05d1);
                  }
                  §§goto(addr0553);
               }
               addr05d1:
               return;
            }
            §§goto(addr05bc);
         }
         §§goto(addr0549);
      }
      
      private function displayGood() : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc3_:GoodRequireVo = null;
         var _loc5_:ProductionNeedVo = null;
         var _loc6_:* = null;
         var _loc1_:ProductionGoodObjectVo = this._data.productionOptions[this._currentGoodIndex] as ProductionGoodObjectVo;
         if(_loc9_)
         {
            §§push(_loc1_.config);
            if(_loc9_)
            {
               §§push(§§pop().isEventGood);
               if(!(_loc10_ && Boolean(this)))
               {
                  if(§§pop())
                  {
                     if(!(_loc10_ && Boolean(this)))
                     {
                        §§push(this.centerCardboard);
                        if(!_loc10_)
                        {
                           §§push("eventgood_cardboard_big");
                           if(!(_loc10_ && Boolean(_loc1_)))
                           {
                              §§pop().dynaBmpSourceName = §§pop();
                              if(!_loc10_)
                              {
                                 §§push(this.centerImage);
                                 if(_loc9_ || Boolean(_loc1_))
                                 {
                                    §§push(this._data);
                                    if(!(_loc10_ && Boolean(this)))
                                    {
                                       §§push(§§pop().currentRunningEventGfxId);
                                       if(_loc9_)
                                       {
                                          §§pop().dynaSWFFileName = §§pop().toString();
                                          if(!_loc10_)
                                          {
                                             §§push(this.centerImage);
                                             if(_loc9_)
                                             {
                                                addr00da:
                                                addr00d7:
                                                §§push(this._data.currentRunningEventGfxId + "_gui_popups_largeGoodIcons");
                                                if(!(_loc10_ && _loc2_))
                                                {
                                                   §§pop().dynaLibName = §§pop();
                                                   if(!(_loc10_ && Boolean(_loc3_)))
                                                   {
                                                      §§push(this.centerImage);
                                                      if(_loc9_ || Boolean(_loc1_))
                                                      {
                                                         addr010f:
                                                         §§push("large_");
                                                         if(!_loc10_)
                                                         {
                                                            §§push(_loc1_.gfxId);
                                                            if(!(_loc10_ && Boolean(_loc3_)))
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc10_ && Boolean(_loc3_)))
                                                               {
                                                                  §§pop().dynaBmpSourceName = §§pop();
                                                                  if(_loc10_)
                                                                  {
                                                                     addr0190:
                                                                     §§push(this.centerImage);
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push("gui_popups_largeGoodIcons");
                                                                        if(_loc9_)
                                                                        {
                                                                           §§pop().dynaLibName = §§pop();
                                                                           if(_loc9_ || Boolean(this))
                                                                           {
                                                                              addr01b7:
                                                                              addr01cd:
                                                                              addr01b3:
                                                                              §§push(this.centerImage);
                                                                              §§push("large_");
                                                                              if(!(_loc10_ && Boolean(this)))
                                                                              {
                                                                                 addr01c8:
                                                                                 addr01cc:
                                                                                 §§push(§§pop() + _loc1_.gfxId);
                                                                              }
                                                                              §§pop().dynaBmpSourceName = §§pop();
                                                                              if(_loc9_)
                                                                              {
                                                                                 addr01d5:
                                                                                 this.setCosts(_loc1_);
                                                                              }
                                                                              addr01dc:
                                                                              var _loc2_:Array = new Array();
                                                                              for each(_loc3_ in _loc1_.requiredGoods)
                                                                              {
                                                                                 if(_loc9_ || Boolean(_loc3_))
                                                                                 {
                                                                                    _loc6_ = "";
                                                                                    if(_loc10_ && Boolean(_loc1_))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(!_loc3_.goodObjectVo.isEventGood)
                                                                                    {
                                                                                       if(_loc9_ || Boolean(this))
                                                                                       {
                                                                                          §§push(LocaUtils.getString(String("rcl.goods.goodname"),String("rcl.goods.goodname." + _loc3_.goodObjectVo.localeId)));
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(_loc10_ && Boolean(_loc1_))
                                                                                             {
                                                                                                addr02e5:
                                                                                                _loc6_ = §§pop();
                                                                                                addr02e4:
                                                                                                if(_loc9_ || Boolean(_loc3_))
                                                                                                {
                                                                                                   _loc2_.push(new ProductionNeedVo(this._data.currentRunningEventGfxId.toString(),this._data.currentRunningEventGfxId.toString() + "_gui_popups_smallGoodIcons","small_" + _loc3_.goodObjectVo.gfxId,_loc3_.goodObjectVo.playerStock,_loc3_.requiredAmount,_loc6_));
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                          }
                                                                                          _loc6_ = §§pop();
                                                                                          if(_loc9_ || Boolean(this))
                                                                                          {
                                                                                             addr0278:
                                                                                             _loc2_.push(new ProductionNeedVo("gui_popups_smallGoodIcons","gui_popups_smallGoodIcons","small_" + _loc3_.goodObjectVo.gfxId,_loc3_.goodObjectVo.playerStock,_loc3_.requiredAmount,_loc6_));
                                                                                             if(_loc9_)
                                                                                             {
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    §§push(LocaUtils.getString(String("rcl.citysquarequests." + this._data.currentRunningEventLocaleId),String("rcl.citysquarequests." + this._data.currentRunningEventLocaleId + ".goods.goodname." + _loc3_.goodObjectVo.localeId)));
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       §§goto(addr02e4);
                                                                                    }
                                                                                    §§goto(addr02e5);
                                                                                 }
                                                                                 §§goto(addr0278);
                                                                              }
                                                                              if(!(_loc10_ && Boolean(this)))
                                                                              {
                                                                                 if(_loc2_.length == 0)
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       addr035a:
                                                                                       this.neededGoodsGroup.visible = false;
                                                                                       if(_loc10_ && Boolean(_loc2_))
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr0380:
                                                                                       this.needsList.dataProvider = new ArrayCollection(_loc2_);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    this.neededGoodsGroup.visible = true;
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       §§goto(addr0380);
                                                                                    }
                                                                                 }
                                                                                 var _loc4_:TimerBarComponentVo = new TimerBarComponentVo();
                                                                                 _loc4_.cycleLength = _loc1_.productionTime;
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    §§push(this._data.harvestEndTime);
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       §§push(§§pop() - _loc4_.cycleLength);
                                                                                    }
                                                                                    §§pop().startTime = §§pop();
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       _loc4_.currentTime = this._data.harvestCurrentTime;
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          _loc4_.targetTime = this._data.harvestEndTime;
                                                                                          if(!(_loc10_ && Boolean(_loc1_)))
                                                                                          {
                                                                                             _loc4_.waitingForStart = this._data.harvestEndTime == 0;
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                §§push(this._data.globalUserLevel);
                                                                                                if(_loc9_ || Boolean(this))
                                                                                                {
                                                                                                   if(§§pop() < _loc1_.config.userLevelRequired)
                                                                                                   {
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         _loc4_.userMayStart = false;
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            §§push(this.blockedIcon);
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                               §§push(true);
                                                                                                               if(_loc9_ || Boolean(_loc1_))
                                                                                                               {
                                                                                                                  §§pop().visible = §§pop();
                                                                                                                  if(_loc9_ || Boolean(_loc3_))
                                                                                                                  {
                                                                                                                     TweenMax.to(this.centerImage,0,{
                                                                                                                        "colorMatrixFilter":{"saturation":0},
                                                                                                                        "colorTransform":{
                                                                                                                           "tint":14473659,
                                                                                                                           "tintAmount":0.74
                                                                                                                        }
                                                                                                                     });
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        §§push(this.itemLabel);
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           §§push(true);
                                                                                                                           if(!(_loc10_ && Boolean(_loc2_)))
                                                                                                                           {
                                                                                                                              §§pop().includeInLayout = §§pop();
                                                                                                                              if(!(_loc10_ && Boolean(_loc2_)))
                                                                                                                              {
                                                                                                                                 addr04c4:
                                                                                                                                 §§push(this.itemLabel);
                                                                                                                                 if(_loc9_ || Boolean(_loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(true);
                                                                                                                                    if(_loc9_ || Boolean(_loc2_))
                                                                                                                                    {
                                                                                                                                       §§pop().visible = §§pop();
                                                                                                                                       if(!(_loc10_ && Boolean(_loc1_)))
                                                                                                                                       {
                                                                                                                                          §§push(this.itemLabel);
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             addr04ff:
                                                                                                                                             §§push(StringUtil);
                                                                                                                                             §§push(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.requiredLevel"));
                                                                                                                                             §§push("<font size=\'18\'>");
                                                                                                                                             if(!(_loc10_ && Boolean(_loc3_)))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + _loc1_.config.userLevelRequired);
                                                                                                                                                if(_loc9_ || Boolean(this))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + "</font>");
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§pop().text = §§pop().substitute(§§pop(),§§pop());
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                §§push(this.productionTimer);
                                                                                                                                                if(!_loc10_)
                                                                                                                                                {
                                                                                                                                                   §§push(false);
                                                                                                                                                   if(!(_loc10_ && Boolean(_loc2_)))
                                                                                                                                                   {
                                                                                                                                                      §§pop().includeInLayout = §§pop();
                                                                                                                                                      if(!(_loc10_ && Boolean(_loc3_)))
                                                                                                                                                      {
                                                                                                                                                         §§push(this.productionTimer);
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            §§push(false);
                                                                                                                                                            if(_loc9_)
                                                                                                                                                            {
                                                                                                                                                               §§pop().visible = §§pop();
                                                                                                                                                               if(!_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  addr0588:
                                                                                                                                                                  §§push(this.boostButton);
                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(false);
                                                                                                                                                                     if(_loc9_ || Boolean(_loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().visible = §§pop();
                                                                                                                                                                        if(!_loc10_)
                                                                                                                                                                        {
                                                                                                                                                                           addr05a9:
                                                                                                                                                                           §§push(this.boostButton);
                                                                                                                                                                           if(!(_loc10_ && Boolean(_loc3_)))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(false);
                                                                                                                                                                              if(_loc9_ || Boolean(_loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().includeInLayout = §§pop();
                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr063f:
                                                                                                                                                                                    this.productionTimer.visible = true;
                                                                                                                                                                                    addr063a:
                                                                                                                                                                                    addr063e:
                                                                                                                                                                                    if(!(_loc10_ && Boolean(_loc1_)))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr064f:
                                                                                                                                                                                       §§push(this.boostButton);
                                                                                                                                                                                       if(_loc9_ || Boolean(_loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(true);
                                                                                                                                                                                          if(_loc9_ || Boolean(_loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr0670:
                                                                                                                                                                                             §§pop().visible = §§pop();
                                                                                                                                                                                             if(_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr067d:
                                                                                                                                                                                                this.boostButton.includeInLayout = true;
                                                                                                                                                                                                addr067c:
                                                                                                                                                                                                addr0678:
                                                                                                                                                                                                if(_loc9_ || Boolean(this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr068d:
                                                                                                                                                                                                   TweenMax.to(this.centerImage,0,{
                                                                                                                                                                                                      "colorMatrixFilter":{"saturation":1},
                                                                                                                                                                                                      "colorTransform":{
                                                                                                                                                                                                         "tint":14473659,
                                                                                                                                                                                                         "tintAmount":0
                                                                                                                                                                                                      }
                                                                                                                                                                                                   });
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr06b4:
                                                                                                                                                                                             addr06b6:
                                                                                                                                                                                             for each(_loc5_ in _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc5_.available)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc9_ || Boolean(_loc2_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc4_.userMayStart = false;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!(_loc10_ && Boolean(_loc2_)))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc4_.userMayStart);
                                                                                                                                                                                                if(_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc9_ || Boolean(_loc1_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this._productionRunning);
                                                                                                                                                                                                         if(!_loc10_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr072b:
                                                                                                                                                                                                            if(!§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc9_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc4_.userMayStart = this.costs.affordable;
                                                                                                                                                                                                                  if(!(_loc10_ && Boolean(_loc2_)))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr074f:
                                                                                                                                                                                                                     addr0753:
                                                                                                                                                                                                                     if(!this._unhover)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc10_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           this.productionTimer.data = _loc4_;
                                                                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.boostButton);
                                                                                                                                                                                                                              if(!_loc10_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.productionButton);
                                                                                                                                                                                                                                 if(!_loc10_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc4_.userMayStart);
                                                                                                                                                                                                                                    if(_loc9_ || Boolean(_loc1_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(!§§pop());
                                                                                                                                                                                                                                       if(!(_loc10_ && Boolean(_loc3_)))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          var _temp_49:* = §§pop();
                                                                                                                                                                                                                                          §§push(_temp_49);
                                                                                                                                                                                                                                          §§push(_temp_49);
                                                                                                                                                                                                                                          if(_loc9_ || Boolean(_loc2_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc10_ && Boolean(_loc1_)))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr07c2:
                                                                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                                                                   addr07c3:
                                                                                                                                                                                                                                                   §§push(_loc4_.waitingForStart);
                                                                                                                                                                                                                                                   if(_loc9_ || Boolean(this))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr07d6:
                                                                                                                                                                                                                                                      addr07df:
                                                                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                                                                      if(_loc9_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr07dd:
                                                                                                                                                                                                                                                         §§push(!§§pop());
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      var _temp_53:* = §§pop();
                                                                                                                                                                                                                                                      §§push(§§pop().enabled = §§pop());
                                                                                                                                                                                                                                                      if(_loc9_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop().enabled = §§pop();
                                                                                                                                                                                                                                                         if(_loc9_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr07f7);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr0896);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr0853);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr07dd);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr07d6);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr07dd);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr07df);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr07c2);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr07dd);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr07c3);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr083c);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr0896);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr07f7:
                                                                                                                                                                                                                     this._unhover = false;
                                                                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr0802:
                                                                                                                                                                                                                        this.infoLabel.text = LocaUtils.getString("rcl.productionlayer","rcl.productionlayer.boostLabel",[this._instantFinishData.cost[this._currentGoodIndex]]);
                                                                                                                                                                                                                        if(!(_loc10_ && Boolean(_loc2_)))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.boostButton);
                                                                                                                                                                                                                           if(!_loc10_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr0853:
                                                                                                                                                                                                                              §§pop().showPlus = this._instantFinishData.cost[this._currentGoodIndex] > this._instantFinishData.rcStock;
                                                                                                                                                                                                                              addr083c:
                                                                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 this.boostButton.priceToConfirm = this._instantFinishData.cost[this._currentGoodIndex];
                                                                                                                                                                                                                                 §§goto(addr0860);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr088a);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr0860:
                                                                                                                                                                                                                           §§goto(addr085c);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr0896);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr085c);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr085c:
                                                                                                                                                                                                                  if(!(_loc10_ && Boolean(_loc1_)))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr088a:
                                                                                                                                                                                                                     this.setOutputValues(_loc1_);
                                                                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr0896:
                                                                                                                                                                                                                        this.setEffects(this._data.energyEffect,this._data.moodEffect);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr08aa);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr08aa:
                                                                                                                                                                                                               return;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr074f);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr0753);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr088a);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr074f);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr072b);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr0802);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr067d);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr067c);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr0678);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr06b4);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr067d);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr067c);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr0619:
                                                                                                                                                                           §§push(this.productionTimer);
                                                                                                                                                                           if(!_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              addr0623:
                                                                                                                                                                              §§push(true);
                                                                                                                                                                              if(_loc9_ || Boolean(_loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 addr0632:
                                                                                                                                                                                 §§pop().includeInLayout = §§pop();
                                                                                                                                                                                 if(_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr063a);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr064f);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr063f);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr063e);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0670);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr067c);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr068d);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0632);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0623);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr064f);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0632);
                                                                                                                                                }
                                                                                                                                                §§goto(addr063e);
                                                                                                                                             }
                                                                                                                                             §§goto(addr063a);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr05ed:
                                                                                                                                             §§push(false);
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                addr05f4:
                                                                                                                                                §§pop().includeInLayout = §§pop();
                                                                                                                                                if(!(_loc10_ && Boolean(_loc3_)))
                                                                                                                                                {
                                                                                                                                                   addr0609:
                                                                                                                                                   this.itemLabel.visible = false;
                                                                                                                                                   addr0604:
                                                                                                                                                   addr0608:
                                                                                                                                                   if(_loc9_ || Boolean(_loc1_))
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr0619);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr064f);
                                                                                                                                                }
                                                                                                                                                §§goto(addr068d);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0609);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr068d);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0609);
                                                                                                                                 }
                                                                                                                                 §§goto(addr04ff);
                                                                                                                              }
                                                                                                                              §§goto(addr0604);
                                                                                                                           }
                                                                                                                           §§goto(addr05f4);
                                                                                                                        }
                                                                                                                        §§goto(addr0608);
                                                                                                                     }
                                                                                                                     §§goto(addr06b4);
                                                                                                                  }
                                                                                                                  §§goto(addr0619);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr05db:
                                                                                                                  §§pop().visible = §§pop();
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     §§push(this.itemLabel);
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        §§goto(addr05ed);
                                                                                                                     }
                                                                                                                     §§goto(addr0608);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr0604);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr05da:
                                                                                                               §§push(false);
                                                                                                            }
                                                                                                            §§goto(addr05db);
                                                                                                         }
                                                                                                         §§goto(addr05a9);
                                                                                                      }
                                                                                                      §§goto(addr04c4);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(this.blockedIcon);
                                                                                                   }
                                                                                                   §§goto(addr05da);
                                                                                                }
                                                                                                §§goto(addr06b6);
                                                                                             }
                                                                                             §§goto(addr06b4);
                                                                                          }
                                                                                          §§goto(addr0588);
                                                                                       }
                                                                                       §§goto(addr04c4);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr063a);
                                                                              }
                                                                              §§goto(addr035a);
                                                                           }
                                                                           §§goto(addr01d5);
                                                                        }
                                                                        §§goto(addr01c8);
                                                                     }
                                                                     §§goto(addr01b7);
                                                                  }
                                                                  §§goto(addr01d5);
                                                               }
                                                               §§goto(addr01cd);
                                                            }
                                                            §§goto(addr01cc);
                                                         }
                                                         §§goto(addr01cd);
                                                      }
                                                      else
                                                      {
                                                         addr0186:
                                                         §§pop().dynaSWFFileName = null;
                                                         if(!_loc10_)
                                                         {
                                                            §§goto(addr0190);
                                                         }
                                                      }
                                                      §§goto(addr01d5);
                                                   }
                                                   §§goto(addr01b3);
                                                }
                                                §§goto(addr01cd);
                                             }
                                             §§goto(addr010f);
                                          }
                                          else
                                          {
                                             addr0164:
                                             this.centerCardboard.dynaBmpSourceName = "ressource_cardboard_big";
                                             addr015d:
                                             addr0161:
                                             if(!(_loc10_ && Boolean(this)))
                                             {
                                                addr0174:
                                                §§push(this.centerImage);
                                                if(!(_loc10_ && Boolean(this)))
                                                {
                                                   §§goto(addr0186);
                                                }
                                                §§goto(addr01b7);
                                             }
                                          }
                                          §§goto(addr01dc);
                                       }
                                       §§goto(addr00da);
                                    }
                                    §§goto(addr00d7);
                                 }
                                 §§goto(addr01b7);
                              }
                              §§goto(addr015d);
                           }
                           §§goto(addr0164);
                        }
                        §§goto(addr0161);
                     }
                     §§goto(addr01d5);
                  }
                  else
                  {
                     addr014b:
                     addr0148:
                     if(_loc1_.config.isConstructionGood)
                     {
                        if(_loc9_ || Boolean(_loc2_))
                        {
                           §§goto(addr015d);
                        }
                        §§goto(addr0190);
                     }
                  }
                  §§goto(addr015d);
               }
               §§goto(addr014b);
            }
            §§goto(addr0148);
         }
         §§goto(addr0174);
      }
      
      private function checkNavigationButtons() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            if(this._productionRunning)
            {
               if(!(_loc2_ && _loc2_))
               {
                  §§push(this.scrollLeftButton);
                  if(!_loc2_)
                  {
                     §§push(false);
                     if(!_loc2_)
                     {
                        §§pop().enabled = §§pop();
                        if(!_loc2_)
                        {
                           §§push(this.scrollLeftButton);
                           if(_loc3_ || _loc2_)
                           {
                              §§push(false);
                              if(_loc3_)
                              {
                                 §§pop().visible = §§pop();
                                 if(!_loc2_)
                                 {
                                    §§push(this.scrollRightButton);
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§push(false);
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§pop().enabled = §§pop();
                                          if(_loc3_)
                                          {
                                             addr008b:
                                             §§push(this.scrollRightButton);
                                             if(_loc3_)
                                             {
                                                addr0094:
                                                §§push(false);
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   §§goto(addr00a2);
                                                }
                                                §§goto(addr014b);
                                             }
                                             §§goto(addr0137);
                                          }
                                          §§goto(addr00b1);
                                       }
                                       addr00a2:
                                       §§pop().visible = §§pop();
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr00b1:
                                          this.boostButton.enabled = this.productionButton.enabled = true;
                                          if(_loc3_ || _loc3_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr0137:
                                          addr0133:
                                          addr014c:
                                          addr0145:
                                          addr013f:
                                          addr013b:
                                          §§push(this.scrollRightButton);
                                          §§push(this._currentGoodIndex >= this._data.productionOptions.length - 1);
                                          if(_loc3_)
                                          {
                                             addr014b:
                                             §§push(!§§pop());
                                          }
                                          §§pop().visible = §§pop();
                                          if(!_loc2_)
                                          {
                                             addr0153:
                                             §§push(this.scrollLeftButton);
                                             if(!_loc2_)
                                             {
                                                §§push(this._currentGoodIndex);
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   §§push(0);
                                                   if(_loc3_)
                                                   {
                                                      §§push(§§pop() <= §§pop());
                                                      if(!(_loc2_ && _loc3_))
                                                      {
                                                         §§push(!§§pop());
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            addr019c:
                                                            §§pop().enabled = §§pop();
                                                            if(_loc3_)
                                                            {
                                                               addr01bd:
                                                               addr01ae:
                                                               addr01ac:
                                                               addr01a8:
                                                               addr01a4:
                                                               §§push(this.scrollLeftButton);
                                                               §§push(this._currentGoodIndex <= 0);
                                                               if(!(_loc2_ && _loc1_))
                                                               {
                                                                  addr01bc:
                                                                  §§push(!§§pop());
                                                               }
                                                               §§pop().visible = §§pop();
                                                            }
                                                            §§goto(addr01bf);
                                                         }
                                                         §§goto(addr01bc);
                                                      }
                                                      §§goto(addr01bd);
                                                   }
                                                   §§goto(addr01ae);
                                                }
                                                §§goto(addr01ac);
                                             }
                                             §§goto(addr01a8);
                                          }
                                          §§goto(addr01a4);
                                       }
                                       §§goto(addr01bf);
                                    }
                                    §§goto(addr0094);
                                 }
                                 addr01bf:
                                 return;
                              }
                              §§goto(addr019c);
                           }
                           §§goto(addr01a8);
                        }
                        §§goto(addr01a4);
                     }
                     §§goto(addr01bc);
                  }
                  §§goto(addr01a8);
               }
               §§goto(addr008b);
            }
            else
            {
               §§push(this.scrollRightButton);
               if(_loc3_ || _loc2_)
               {
                  §§push(this._currentGoodIndex);
                  if(_loc3_)
                  {
                     §§push(this._data);
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§push(§§pop().productionOptions.length - 1);
                        if(_loc3_)
                        {
                           §§push(§§pop() >= §§pop());
                           if(_loc3_ || _loc3_)
                           {
                              §§push(!§§pop());
                              if(!_loc2_)
                              {
                                 §§pop().enabled = §§pop();
                                 if(!_loc2_)
                                 {
                                    §§goto(addr0133);
                                 }
                                 §§goto(addr0153);
                              }
                              §§goto(addr014c);
                           }
                           §§goto(addr014b);
                        }
                        §§goto(addr0145);
                     }
                     §§goto(addr013f);
                  }
                  §§goto(addr013b);
               }
            }
            §§goto(addr0137);
         }
         §§goto(addr01a4);
      }
      
      public function get currentGoodIndex() : int
      {
         return this._currentGoodIndex;
      }
      
      private function setEffects(param1:SimpleItemVo, param2:SimpleItemVo) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_ || Boolean(param1))
         {
            §§push(this.energyIcon);
            if(!_loc5_)
            {
               §§push(param1.imageId);
               if(!_loc5_)
               {
                  §§pop().dynaBmpSourceName = §§pop();
                  if(!(_loc5_ && _loc3_))
                  {
                     addr004e:
                     this.energyIcon.dynaLibName = param1.dynaLibName;
                     addr004b:
                     addr0047:
                  }
                  var _loc3_:* = "";
                  if(!_loc5_)
                  {
                     §§push(param1.colorModifier);
                     if(_loc4_)
                     {
                        §§push(0);
                        if(!(_loc5_ && Boolean(param2)))
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc4_ || Boolean(param2))
                              {
                                 §§push(this.energyLabel);
                                 if(_loc4_)
                                 {
                                    §§push("styleName");
                                    if(_loc4_)
                                    {
                                       §§push("outcomeNeutral");
                                       if(_loc4_ || Boolean(_loc3_))
                                       {
                                          §§pop().setStyle(§§pop(),§§pop());
                                          if(!_loc5_)
                                          {
                                             this.energyLabel.text = _loc3_ + LocaUtils.getThousendSeperatedNumber(Math.abs(param1.amount));
                                             addr0151:
                                             addr0155:
                                             if(_loc4_)
                                             {
                                                §§push(this.moodIcon);
                                                if(!(_loc5_ && Boolean(this)))
                                                {
                                                   §§push(param2.imageId);
                                                   if(_loc4_)
                                                   {
                                                      §§pop().dynaBmpSourceName = §§pop();
                                                      if(_loc4_ || Boolean(param2))
                                                      {
                                                         addr01ae:
                                                         this.moodIcon.dynaLibName = param2.dynaLibName;
                                                         addr01ab:
                                                         if(_loc4_)
                                                         {
                                                            addr01b6:
                                                            §§push("");
                                                            if(_loc4_ || Boolean(_loc3_))
                                                            {
                                                               addr01c6:
                                                               _loc3_ = §§pop();
                                                               if(_loc4_)
                                                               {
                                                                  §§push(param2.colorModifier);
                                                                  if(!(_loc5_ && Boolean(param1)))
                                                                  {
                                                                     addr01df:
                                                                     §§push(0);
                                                                     if(_loc4_)
                                                                     {
                                                                        addr01e7:
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           if(!(_loc5_ && Boolean(param1)))
                                                                           {
                                                                              addr01f9:
                                                                              §§push(this.moodLabel);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§push("styleName");
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§push("outcomeNeutral");
                                                                                    if(!(_loc5_ && Boolean(_loc3_)))
                                                                                    {
                                                                                       §§pop().setStyle(§§pop(),§§pop());
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          addr0239:
                                                                                          §§push("+");
                                                                                          if(_loc4_ || Boolean(param2))
                                                                                          {
                                                                                             §§goto(addr024a);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr0284:
                                                                                             _loc3_ = §§pop();
                                                                                             if(_loc4_ || Boolean(param2))
                                                                                             {
                                                                                                addr0293:
                                                                                                §§push(this.moodLabel);
                                                                                                if(_loc4_ || Boolean(this))
                                                                                                {
                                                                                                   §§goto(addr02b2);
                                                                                                   §§push("styleName");
                                                                                                }
                                                                                                §§goto(addr02ca);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr02c6);
                                                                                    }
                                                                                    §§goto(addr0274);
                                                                                 }
                                                                                 §§goto(addr02b2);
                                                                              }
                                                                              §§goto(addr0263);
                                                                           }
                                                                           §§goto(addr0293);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr022f:
                                                                           addr022d:
                                                                           if(param2.colorModifier > 0)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§goto(addr0239);
                                                                              }
                                                                              §§goto(addr02c6);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push("-");
                                                                           }
                                                                        }
                                                                        §§goto(addr0284);
                                                                     }
                                                                     §§goto(addr022f);
                                                                  }
                                                                  §§goto(addr022d);
                                                               }
                                                               §§goto(addr01f9);
                                                            }
                                                            addr024a:
                                                            _loc3_ = §§pop();
                                                            if(_loc4_ || Boolean(param2))
                                                            {
                                                               addr0259:
                                                               §§push(this.moodLabel);
                                                               if(_loc4_)
                                                               {
                                                                  addr0263:
                                                                  §§push("styleName");
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push("outcomePositive");
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr0274:
                                                                        §§pop().setStyle(§§pop(),§§pop());
                                                                        if(!_loc5_)
                                                                        {
                                                                           addr02ca:
                                                                           this.moodLabel.text = _loc3_ + LocaUtils.getThousendSeperatedNumber(Math.abs(param2.amount));
                                                                           addr02c6:
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr02b5:
                                                                        §§pop().setStyle(§§pop(),§§pop());
                                                                        if(!(_loc5_ && Boolean(_loc3_)))
                                                                        {
                                                                           §§goto(addr02c6);
                                                                        }
                                                                     }
                                                                     §§goto(addr02de);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr02b2:
                                                                     §§push("outcomeNegative");
                                                                  }
                                                                  §§goto(addr02b5);
                                                               }
                                                               §§goto(addr02ca);
                                                            }
                                                            §§goto(addr02de);
                                                         }
                                                      }
                                                      §§goto(addr02de);
                                                   }
                                                   §§goto(addr01ae);
                                                }
                                                §§goto(addr01ab);
                                             }
                                             §§goto(addr0239);
                                          }
                                          §§goto(addr0259);
                                       }
                                       else
                                       {
                                          addr0114:
                                          §§pop().setStyle(§§pop(),§§pop());
                                          if(!_loc5_)
                                          {
                                             §§goto(addr0151);
                                          }
                                       }
                                       addr02de:
                                       return;
                                    }
                                    addr0148:
                                    §§pop().setStyle(§§pop(),"outcomeNegative");
                                    addr0145:
                                    if(!_loc5_)
                                    {
                                       §§goto(addr0151);
                                    }
                                    §§goto(addr02c6);
                                 }
                                 §§goto(addr0155);
                              }
                              else
                              {
                                 addr00f1:
                                 §§push(this.energyLabel);
                                 if(_loc4_ || Boolean(this))
                                 {
                                    §§push("styleName");
                                    if(_loc4_)
                                    {
                                       §§push("outcomePositive");
                                       if(!_loc5_)
                                       {
                                          §§goto(addr0114);
                                       }
                                       else
                                       {
                                          §§goto(addr0148);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr0145);
                                    }
                                    §§goto(addr0148);
                                 }
                                 else
                                 {
                                    addr0143:
                                    §§push("styleName");
                                 }
                              }
                              §§goto(addr0145);
                           }
                           else
                           {
                              §§push(param1.colorModifier);
                              if(_loc4_)
                              {
                                 addr00bf:
                                 §§push(0);
                                 if(!(_loc5_ && Boolean(this)))
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       if(_loc4_ || Boolean(this))
                                       {
                                          §§push("+");
                                          if(_loc4_)
                                          {
                                             _loc3_ = §§pop();
                                             if(!_loc5_)
                                             {
                                                §§goto(addr00f1);
                                             }
                                             §§goto(addr0259);
                                          }
                                          §§goto(addr01c6);
                                       }
                                       §§goto(addr0259);
                                    }
                                    else
                                    {
                                       §§push("-");
                                       if(!_loc5_)
                                       {
                                          _loc3_ = §§pop();
                                          if(_loc4_ || Boolean(param2))
                                          {
                                             §§push(this.energyLabel);
                                             if(_loc4_)
                                             {
                                                §§goto(addr0143);
                                             }
                                             §§goto(addr0155);
                                          }
                                          §§goto(addr01f9);
                                       }
                                    }
                                    §§goto(addr024a);
                                 }
                                 §§goto(addr022f);
                              }
                           }
                           §§goto(addr01df);
                        }
                        §§goto(addr01e7);
                     }
                     §§goto(addr00bf);
                  }
                  §§goto(addr01b6);
               }
               §§goto(addr004e);
            }
            §§goto(addr004b);
         }
         §§goto(addr0047);
      }
      
      private function setTooltips() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(this._data.upgradeCountTotal);
         if(!(_loc2_ && _loc2_))
         {
            §§push(§§pop() - this._data.harvestCount);
            if(_loc3_)
            {
               addr0033:
               §§push(§§pop());
            }
            var _loc1_:* = §§pop();
            if(_loc3_ || Boolean(this))
            {
               §§push(this.upgradeProgressComponent);
               if(!_loc2_)
               {
                  §§pop().progressBar.toolTip = LocaUtils.getString("rcl.tooltips.productionBook","rcl.tooltips.productionBook.upgradeBar",[_loc1_]);
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0070:
                     this.upgradeProgressComponent.upgradeButton.toolTip = LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.upgradeButton");
                     if(_loc3_)
                     {
                        addr0085:
                        this.scrollLeftButton.toolTip = LocaUtils.getString("rcl.tooltips.productionBook","rcl.tooltips.productionBook.arrowLeft");
                        if(!_loc2_)
                        {
                           this.scrollRightButton.toolTip = LocaUtils.getString("rcl.tooltips.productionBook","rcl.tooltips.productionBook.arrowRight");
                           if(!_loc2_)
                           {
                              this.productionTimer.progressBar.toolTip = LocaUtils.getString("rcl.tooltips.productionBook","rcl.tooltips.productionBook.timer");
                              if(_loc3_ || _loc1_)
                              {
                                 addr00e0:
                                 this.effectFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.productionBook","rcl.tooltips.productionBook.aboutCityBalance");
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    this.currencyFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.productionBook","rcl.tooltips.productionBook.aboutCurrencies");
                                    if(_loc3_)
                                    {
                                       addr0116:
                                       this.upgradeFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.productionBook","rcl.tooltips.productionBook.aboutUpgrade");
                                       if(!_loc2_)
                                       {
                                          this.energyGroup.toolTip = LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.effects.energy");
                                          §§goto(addr012d);
                                       }
                                       §§goto(addr0164);
                                    }
                                    addr012d:
                                    if(!_loc2_)
                                    {
                                       addr014e:
                                       this.moodGroup.toolTip = LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.effects.mood");
                                       if(!_loc2_)
                                       {
                                          addr0164:
                                          this.costs.icon.toolTip = LocaUtils.getString("rcl.tooltips.productionBook","rcl.tooltips.productionBook.pPoints");
                                       }
                                    }
                                 }
                                 §§goto(addr0179);
                              }
                              §§goto(addr014e);
                           }
                           addr0179:
                           return;
                        }
                        §§goto(addr0116);
                     }
                     §§goto(addr00e0);
                  }
                  §§goto(addr012d);
               }
               §§goto(addr0070);
            }
            §§goto(addr0085);
         }
         §§goto(addr0033);
      }
      
      private function setOutputValues(param1:ProductionGoodObjectVo) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Array = [];
         if(!_loc4_)
         {
            _loc2_.push(param1.productionIncome);
            if(!_loc4_)
            {
               addr002c:
               this.effectsList.dataProvider = new ArrayCollection(_loc2_);
            }
            return;
         }
         §§goto(addr002c);
      }
      
      private function setCosts(param1:ProductionGoodObjectVo) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(this.costs);
            if(!(_loc3_ && _loc3_))
            {
               §§pop().priceLabel = Math.abs(param1.productionCostProductionPoints).toString();
               if(_loc2_ || _loc3_)
               {
                  addr005f:
                  this.costs.affordable = this._data.currentProductionPoints >= Math.abs(param1.productionCostProductionPoints);
               }
               §§goto(addr0075);
            }
            §§goto(addr005f);
         }
         addr0075:
      }
      
      private function centerCardboard_rollOverHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,ServerTagConstants.GOOD_NORMAL + "Production",(this._data.productionOptions[this._currentGoodIndex] as ProductionGoodObjectVo).config.id));
         }
      }
      
      private function centerCardboard_rollOutHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER));
         }
      }
      
      private function boostButton_rollOverHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            this.productionTimer.visible = this.productionTimer.includeInLayout = false;
            if(_loc3_)
            {
               this.infoLabel.visible = this.infoLabel.includeInLayout = true;
            }
         }
      }
      
      private function boostButton_rollOutHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || _loc2_)
         {
            var _temp_3:* = this.productionTimer;
            var _loc2_:Boolean;
            this.productionTimer.includeInLayout = _loc2_ = true;
            _temp_3.visible = _loc2_;
            if(!(_loc3_ && _loc2_))
            {
               addr005c:
               this.infoLabel.visible = this.infoLabel.includeInLayout = false;
            }
            return;
         }
         §§goto(addr005c);
      }
      
      private function boostButton_clickHandler(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            dispatchEvent(new Event(INSTANT_PRODUCTION));
         }
      }
      
      private function _ProductionPopup_Array1_c() : Array
      {
         return [this._ProductionPopup_VGroup1_c()];
      }
      
      private function _ProductionPopup_VGroup1_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || _loc3_)
         {
            _loc1_.width = 740;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.height = 340;
               if(!_loc2_)
               {
                  _loc1_.bottom = 10;
                  if(!_loc2_)
                  {
                     _loc1_.gap = 5;
                     if(_loc3_ || Boolean(this))
                     {
                        addr006e:
                        _loc1_.verticalAlign = "middle";
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           _loc1_.horizontalAlign = "center";
                           addr0081:
                           if(_loc3_)
                           {
                              _loc1_.mxmlContent = [this._ProductionPopup_Group1_c(),this._ProductionPopup_LocaLabel1_i(),this._ProductionPopup_Group2_c()];
                              if(!_loc2_)
                              {
                                 addr00b1:
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc2_)
                                    {
                                       addr00bd:
                                       _loc1_.document = this;
                                    }
                                 }
                              }
                              return _loc1_;
                           }
                        }
                        §§goto(addr00b1);
                     }
                     §§goto(addr00bd);
                  }
                  §§goto(addr006e);
               }
               §§goto(addr0081);
            }
            §§goto(addr00bd);
         }
         §§goto(addr00b1);
      }
      
      private function _ProductionPopup_Group1_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.width = 700;
            if(_loc3_)
            {
               _loc1_.height = 8;
               if(!(_loc2_ && Boolean(this)))
               {
                  §§goto(addr0049);
               }
               §§goto(addr0055);
            }
            addr0049:
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  addr0055:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0055);
      }
      
      private function _ProductionPopup_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.top = 18;
            if(_loc3_ || _loc2_)
            {
               _loc1_.percentWidth = 90;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.height = 32;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.styleName = "flavorText";
                     if(!(_loc2_ && _loc3_))
                     {
                        addr007d:
                        _loc1_.id = "flavorText";
                        if(_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr009e:
                                 _loc1_.document = this;
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr00af:
                                    this.flavorText = _loc1_;
                                    if(!_loc2_)
                                    {
                                       BindingManager.executeBindings(this,"flavorText",this.flavorText);
                                    }
                                 }
                              }
                              §§goto(addr00c6);
                           }
                           §§goto(addr00af);
                        }
                     }
                     §§goto(addr00c6);
                  }
                  §§goto(addr007d);
               }
               §§goto(addr009e);
            }
            §§goto(addr00af);
         }
         addr00c6:
         return _loc1_;
      }
      
      private function _ProductionPopup_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.percentWidth = 100;
            if(_loc3_)
            {
               addr003e:
               _loc1_.percentHeight = 100;
               if(_loc3_)
               {
                  _loc1_.mxmlContent = [this._ProductionPopup_Group3_c(),this._ProductionPopup_Group5_c(),this._ProductionPopup_VGroup6_c()];
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(this)))
                        {
                           addr0085:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
               }
            }
            §§goto(addr0085);
         }
         §§goto(addr003e);
      }
      
      private function _ProductionPopup_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.left = 0;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.top = 0;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.mxmlContent = [this._ProductionPopup_StickyNoteComponent1_c(),this._ProductionPopup_StickyNoteComponent2_c(),this._ProductionPopup_BriskMCDynaLib1_c(),this._ProductionPopup_Group4_i()];
                  §§goto(addr004f);
               }
            }
            §§goto(addr0086);
         }
         addr004f:
         if(_loc3_ || Boolean(this))
         {
            addr0086:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _ProductionPopup_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc3_ || _loc2_)
         {
            _loc1_.width = 226;
            if(_loc3_)
            {
               _loc1_.top = 60;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.height = 170;
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0064:
                     _loc1_.tapeLeft = true;
                     if(!_loc2_)
                     {
                        §§goto(addr006e);
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr008e);
               }
               §§goto(addr0064);
            }
            §§goto(addr0084);
         }
         addr006e:
         _loc1_.tapeRight = true;
         if(!_loc2_)
         {
            addr0084:
            _loc1_.horizontalCenter = 0;
            if(!_loc2_)
            {
               addr008e:
               _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ProductionPopup_Array5_c);
               if(_loc3_)
               {
                  §§goto(addr00a3);
               }
               §§goto(addr00af);
            }
            addr00a3:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr00af:
                  _loc1_.document = this;
               }
            }
            §§goto(addr00b3);
         }
         addr00b3:
         return _loc1_;
      }
      
      private function _ProductionPopup_Array5_c() : Array
      {
         return [this._ProductionPopup_DynamicImageButton1_i(),this._ProductionPopup_VGroup2_c()];
      }
      
      private function _ProductionPopup_DynamicImageButton1_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc2_)
         {
            _loc1_.styleName = "featureInfoButton";
            if(_loc2_ || _loc2_)
            {
               _loc1_.right = 8;
               if(_loc2_ || _loc3_)
               {
                  _loc1_.top = 23;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.addEventListener("click",this.__currencyFeatureButton_click);
                     if(_loc2_)
                     {
                        _loc1_.id = "currencyFeatureButton";
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 addr0099:
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    addr00a2:
                                    this.currencyFeatureButton = _loc1_;
                                    if(_loc2_ || _loc3_)
                                    {
                                       addr00b4:
                                       BindingManager.executeBindings(this,"currencyFeatureButton",this.currencyFeatureButton);
                                    }
                                 }
                                 §§goto(addr00c1);
                              }
                              §§goto(addr00b4);
                           }
                           §§goto(addr00a2);
                        }
                        §§goto(addr00b4);
                     }
                     §§goto(addr00a2);
                  }
                  §§goto(addr00c1);
               }
               §§goto(addr0099);
            }
            §§goto(addr00a2);
         }
         addr00c1:
         return _loc1_;
      }
      
      public function __currencyFeatureButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.onCurrencyFeatureClick();
         }
      }
      
      private function _ProductionPopup_VGroup2_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(_loc2_ || _loc2_)
            {
               _loc1_.top = 45;
               if(!(_loc3_ && Boolean(this)))
               {
                  _loc1_.mxmlContent = [this._ProductionPopup_PostitHeaderComponent1_i(),this._ProductionPopup_PriceComponent1_i()];
                  if(!_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           addr007f:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr007f);
      }
      
      private function _ProductionPopup_PostitHeaderComponent1_i() : PostitHeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         if(_loc2_ || _loc2_)
         {
            _loc1_.id = "costsHeader";
            if(_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0054:
                     _loc1_.document = this;
                     if(!(_loc3_ && _loc3_))
                     {
                        addr0072:
                        this.costsHeader = _loc1_;
                        if(!(_loc3_ && _loc2_))
                        {
                           BindingManager.executeBindings(this,"costsHeader",this.costsHeader);
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr0072);
            }
            §§goto(addr0054);
         }
         §§goto(addr0072);
      }
      
      private function _ProductionPopup_PriceComponent1_i() : PriceComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:PriceComponent = new PriceComponent();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(this))
            {
               _loc1_.id = "costs";
               if(!(_loc3_ && Boolean(this)))
               {
                  §§goto(addr005d);
               }
            }
            §§goto(addr009e);
         }
         addr005d:
         if(!_loc1_.document)
         {
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.document = this;
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr008c);
               }
               §§goto(addr009e);
            }
         }
         addr008c:
         this.costs = _loc1_;
         if(_loc2_ || Boolean(_loc1_))
         {
            addr009e:
            BindingManager.executeBindings(this,"costs",this.costs);
         }
         return _loc1_;
      }
      
      private function _ProductionPopup_StickyNoteComponent2_c() : StickyNoteComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc2_ || _loc3_)
         {
            _loc1_.height = 128;
            if(_loc2_)
            {
               _loc1_.top = -5;
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc2_)
                  {
                     _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ProductionPopup_Array7_c);
                     if(_loc2_)
                     {
                        addr007d:
                        if(!_loc1_.document)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              _loc1_.document = this;
                           }
                        }
                     }
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr007d);
      }
      
      private function _ProductionPopup_Array7_c() : Array
      {
         return [this._ProductionPopup_DynamicImageButton2_i(),this._ProductionPopup_VGroup3_c()];
      }
      
      private function _ProductionPopup_DynamicImageButton2_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.styleName = "featureInfoButton";
            if(_loc2_)
            {
               _loc1_.right = 0;
               if(!_loc3_)
               {
                  _loc1_.top = -12;
                  if(!_loc3_)
                  {
                     _loc1_.addEventListener("click",this.__upgradeFeatureButton_click);
                     if(_loc2_ || Boolean(this))
                     {
                        _loc1_.id = "upgradeFeatureButton";
                        if(_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    addr0096:
                                    this.upgradeFeatureButton = _loc1_;
                                    if(!_loc3_)
                                    {
                                       addr00a0:
                                       BindingManager.executeBindings(this,"upgradeFeatureButton",this.upgradeFeatureButton);
                                    }
                                 }
                                 §§goto(addr00ad);
                              }
                           }
                           §§goto(addr0096);
                        }
                     }
                  }
                  §§goto(addr00a0);
               }
               addr00ad:
               return _loc1_;
            }
         }
         §§goto(addr0096);
      }
      
      public function __upgradeFeatureButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this.onUpgradeFeatureClick();
         }
      }
      
      private function _ProductionPopup_VGroup3_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.horizontalCenter = 0;
            if(_loc3_ || _loc2_)
            {
               _loc1_.mxmlContent = [this._ProductionPopup_ResidentialHeaderComponent1_i(),this._ProductionPopup_UpgradeProgressComponent1_i()];
               if(!_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr007a:
                        _loc1_.document = this;
                     }
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr007a);
      }
      
      private function _ProductionPopup_ResidentialHeaderComponent1_i() : ResidentialHeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ResidentialHeaderComponent = new ResidentialHeaderComponent();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.id = "evaluationHeader";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr0049:
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.document = this;
                     if(_loc2_)
                     {
                        addr0071:
                        this.evaluationHeader = _loc1_;
                        if(!_loc3_)
                        {
                           BindingManager.executeBindings(this,"evaluationHeader",this.evaluationHeader);
                        }
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0071);
         }
         §§goto(addr0049);
      }
      
      private function _ProductionPopup_UpgradeProgressComponent1_i() : UpgradeProgressComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:UpgradeProgressComponent = new UpgradeProgressComponent();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.id = "upgradeProgressComponent";
            if(_loc3_ || Boolean(_loc1_))
            {
               if(!_loc1_.document)
               {
                  if(_loc3_)
                  {
                     _loc1_.document = this;
                     if(_loc3_ || _loc3_)
                     {
                        §§goto(addr0075);
                     }
                  }
                  §§goto(addr007f);
               }
               addr0075:
               this.upgradeProgressComponent = _loc1_;
               if(_loc3_)
               {
                  addr007f:
                  BindingManager.executeBindings(this,"upgradeProgressComponent",this.upgradeProgressComponent);
               }
               §§goto(addr008c);
            }
            §§goto(addr007f);
         }
         addr008c:
         return _loc1_;
      }
      
      private function _ProductionPopup_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.dynaMCSourceName = "stickytape_top";
               if(!_loc2_)
               {
                  _loc1_.top = -6;
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.horizontalCenter = 0;
                     addr005c:
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || Boolean(this))
                           {
                              addr008f:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0093);
                     }
                  }
                  §§goto(addr008f);
               }
            }
            addr0093:
            return _loc1_;
         }
         §§goto(addr005c);
      }
      
      private function _ProductionPopup_Group4_i() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_)
         {
            _loc1_.mxmlContent = [this._ProductionPopup_BriskImageDynaLib1_c(),this._ProductionPopup_ResidentialHeaderComponent2_i(),this._ProductionPopup_HGroup1_c()];
            if(_loc2_ || _loc3_)
            {
               _loc1_.id = "neededGoodsGroup";
               if(_loc2_ || Boolean(this))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           §§goto(addr0085);
                        }
                        §§goto(addr0097);
                     }
                  }
                  §§goto(addr0085);
               }
               §§goto(addr0097);
            }
            addr0085:
            this.neededGoodsGroup = _loc1_;
            if(_loc2_ || Boolean(this))
            {
               addr0097:
               BindingManager.executeBindings(this,"neededGoodsGroup",this.neededGoodsGroup);
            }
            return _loc1_;
         }
         §§goto(addr0097);
      }
      
      private function _ProductionPopup_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_productionPopup";
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.dynaBmpSourceName = "quadrillepaper_small";
               addr0046:
               if(_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc2_)
                  {
                     _loc1_.top = 193;
                     if(_loc3_)
                     {
                        addr0072:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr007e:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0082);
                     }
                     §§goto(addr007e);
                  }
                  §§goto(addr0082);
               }
               §§goto(addr0072);
            }
            addr0082:
            return _loc1_;
         }
         §§goto(addr0046);
      }
      
      private function _ProductionPopup_ResidentialHeaderComponent2_i() : ResidentialHeaderComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:ResidentialHeaderComponent = new ResidentialHeaderComponent();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.horizontalCenter = 0;
            if(!_loc2_)
            {
               _loc1_.top = 210;
               if(_loc3_)
               {
                  §§goto(addr004b);
               }
               §§goto(addr0070);
            }
            §§goto(addr0081);
         }
         addr004b:
         _loc1_.id = "requiredResourcesHeader";
         if(_loc3_)
         {
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr0070:
                  _loc1_.document = this;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     §§goto(addr0081);
                  }
                  §§goto(addr008b);
               }
            }
            addr0081:
            this.requiredResourcesHeader = _loc1_;
            if(!_loc2_)
            {
               addr008b:
               BindingManager.executeBindings(this,"requiredResourcesHeader",this.requiredResourcesHeader);
            }
            §§goto(addr0098);
         }
         addr0098:
         return _loc1_;
      }
      
      private function _ProductionPopup_HGroup1_c() : HGroup
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
               if(!_loc2_)
               {
                  _loc1_.percentWidth = 100;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     addr005a:
                     _loc1_.bottom = -20;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.height = 60;
                        if(!_loc2_)
                        {
                           _loc1_.mxmlContent = [this._ProductionPopup_List1_i()];
                           if(_loc3_)
                           {
                              addr0096:
                              if(!_loc1_.document)
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr00aa:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           §§goto(addr00ae);
                        }
                     }
                     §§goto(addr00aa);
                  }
                  §§goto(addr0096);
               }
               §§goto(addr005a);
            }
            §§goto(addr00aa);
         }
         addr00ae:
         return _loc1_;
      }
      
      private function _ProductionPopup_List1_i() : List
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:List = new List();
         if(!_loc3_)
         {
            _loc1_.itemRenderer = this._ProductionPopup_ClassFactory1_c();
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.setStyle("skinClass",NeedsListSkin);
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.id = "needsList";
                  if(_loc2_ || Boolean(this))
                  {
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           §§goto(addr0089);
                        }
                        §§goto(addr00a4);
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr00a4);
               }
               §§goto(addr0092);
            }
            addr0089:
            _loc1_.document = this;
            if(!_loc3_)
            {
               addr0092:
               this.needsList = _loc1_;
               if(!(_loc3_ && _loc2_))
               {
                  addr00a4:
                  BindingManager.executeBindings(this,"needsList",this.needsList);
               }
            }
            return _loc1_;
         }
         §§goto(addr0092);
      }
      
      private function _ProductionPopup_ClassFactory1_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.generator = ProductionNeedItemRendered;
         }
         return _loc1_;
      }
      
      private function _ProductionPopup_Group5_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.width = 245;
            if(_loc3_ || _loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!_loc2_)
               {
                  _loc1_.top = 0;
                  if(_loc3_ || _loc2_)
                  {
                     addr0063:
                     _loc1_.horizontalCenter = 10;
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.mxmlContent = [this._ProductionPopup_Group6_c(),this._ProductionPopup_VGroup4_c(),this._ProductionPopup_VGroup5_c(),this._ProductionPopup_MultistateButton2_i()];
                        if(!(_loc2_ && _loc3_))
                        {
                           §§goto(addr00ac);
                        }
                        §§goto(addr00b8);
                     }
                     §§goto(addr00ac);
                  }
               }
               §§goto(addr00b8);
            }
            addr00ac:
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  addr00b8:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0063);
      }
      
      private function _ProductionPopup_Group6_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc3_)
         {
            _loc1_.left = 12;
            if(_loc3_)
            {
               _loc1_.mxmlContent = [this._ProductionPopup_StickyNoteComponent3_c(),this._ProductionPopup_HGroup2_c(),this._ProductionPopup_LocaLabel3_i(),this._ProductionPopup_BriskImageDynaLib2_i(),this._ProductionPopup_BriskImageDynaLib3_i(),this._ProductionPopup_UiInfolayerAlignmentLine1_i(),this._ProductionPopup_BriskImageDynaLib4_i(),this._ProductionPopup_BriskMCDynaLib2_c()];
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr008b);
               }
               §§goto(addr0097);
            }
            addr008b:
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr0097:
                  _loc1_.document = this;
               }
            }
            §§goto(addr009b);
         }
         addr009b:
         return _loc1_;
      }
      
      private function _ProductionPopup_StickyNoteComponent3_c() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(_loc3_)
         {
            _loc1_.width = 210;
            if(_loc3_)
            {
               _loc1_.height = 75;
               if(_loc3_)
               {
                  _loc1_.top = 194;
                  if(_loc3_)
                  {
                     _loc1_.horizontalCenter = 0;
                     §§goto(addr004e);
                  }
                  §§goto(addr0081);
               }
            }
            addr004e:
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               addr006d:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr0081:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr006d);
      }
      
      private function _ProductionPopup_HGroup2_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.gap = 4;
            if(!_loc2_)
            {
               _loc1_.top = 212;
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.left = 15;
                  addr0043:
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.right = 15;
                     if(!_loc2_)
                     {
                        addr006a:
                        _loc1_.percentWidth = 100;
                        if(_loc3_)
                        {
                           addr0074:
                           _loc1_.verticalAlign = "middle";
                           if(_loc3_)
                           {
                              _loc1_.mxmlContent = [this._ProductionPopup_TimerBarComponent1_i(),this._ProductionPopup_LocaLabel2_i(),this._ProductionPopup_MultistateButton1_i()];
                              addr007f:
                              if(_loc3_)
                              {
                                 §§goto(addr00a8);
                              }
                              §§goto(addr00bc);
                           }
                           §§goto(addr00a8);
                        }
                        §§goto(addr00bc);
                     }
                     addr00a8:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           addr00bc:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0074);
            }
            §§goto(addr0043);
         }
         §§goto(addr006a);
      }
      
      private function _ProductionPopup_TimerBarComponent1_i() : TimerBarComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         if(!(_loc2_ && Boolean(this)))
         {
            _loc1_.showBoostButton = false;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.id = "productionTimer";
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr005f:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr006b:
                        _loc1_.document = this;
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr0088);
                        }
                     }
                     §§goto(addr009a);
                  }
                  addr0088:
                  this.productionTimer = _loc1_;
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     addr009a:
                     BindingManager.executeBindings(this,"productionTimer",this.productionTimer);
                  }
                  §§goto(addr00a7);
               }
               addr00a7:
               return _loc1_;
            }
            §§goto(addr006b);
         }
         §§goto(addr005f);
      }
      
      private function _ProductionPopup_LocaLabel2_i() : LocaLabel
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
               _loc1_.maxWidth = 137;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.maxDisplayedLines = 2;
                  if(_loc3_)
                  {
                     _loc1_.styleName = "residentialProgressComment";
                     if(_loc3_)
                     {
                        addr0068:
                        _loc1_.visible = false;
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           _loc1_.includeInLayout = false;
                           if(_loc3_)
                           {
                              addr0082:
                              _loc1_.id = "infoLabel";
                              if(!_loc2_)
                              {
                                 if(!_loc1_.document)
                                 {
                                    if(!_loc2_)
                                    {
                                       §§goto(addr00a5);
                                    }
                                    §§goto(addr00b8);
                                 }
                                 §§goto(addr00ae);
                              }
                              addr00a5:
                              _loc1_.document = this;
                              if(_loc3_)
                              {
                                 addr00ae:
                                 this.infoLabel = _loc1_;
                                 if(!_loc2_)
                                 {
                                    addr00b8:
                                    BindingManager.executeBindings(this,"infoLabel",this.infoLabel);
                                 }
                              }
                           }
                           §§goto(addr00c5);
                        }
                        §§goto(addr0082);
                     }
                     §§goto(addr00b8);
                  }
                  §§goto(addr00c5);
               }
               §§goto(addr00b8);
            }
            §§goto(addr0068);
         }
         addr00c5:
         return _loc1_;
      }
      
      private function _ProductionPopup_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc2_)
         {
            _loc1_.width = 40;
            if(_loc2_)
            {
               _loc1_.imageNameLeft = "dd_button_icon";
               if(!_loc3_)
               {
                  _loc1_.libNameLeft = "gui_resources_icons";
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     _loc1_.useConfirmation = true;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.addEventListener("rollOver",this.__boostButton_rollOver);
                        if(!_loc3_)
                        {
                           _loc1_.addEventListener("rollOut",this.__boostButton_rollOut);
                           if(_loc2_ || _loc3_)
                           {
                              addr008f:
                              _loc1_.addEventListener("click",this.__boostButton_click);
                              if(_loc2_ || Boolean(_loc1_))
                              {
                                 addr00a7:
                                 _loc1_.id = "boostButton";
                                 if(_loc2_ || Boolean(this))
                                 {
                                    addr00ba:
                                    if(!_loc1_.document)
                                    {
                                       if(_loc2_)
                                       {
                                          _loc1_.document = this;
                                          if(_loc2_ || Boolean(_loc1_))
                                          {
                                             addr00e5:
                                             this.boostButton = _loc1_;
                                             if(!_loc3_)
                                             {
                                                addr00ef:
                                                BindingManager.executeBindings(this,"boostButton",this.boostButton);
                                             }
                                          }
                                          return _loc1_;
                                       }
                                       §§goto(addr00ef);
                                    }
                                    §§goto(addr00e5);
                                 }
                                 §§goto(addr00ef);
                              }
                              §§goto(addr00ba);
                           }
                        }
                        §§goto(addr00e5);
                     }
                     §§goto(addr00a7);
                  }
               }
               §§goto(addr008f);
            }
            §§goto(addr00ba);
         }
         §§goto(addr00ef);
      }
      
      public function __boostButton_rollOver(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this.boostButton_rollOverHandler(param1);
         }
      }
      
      public function __boostButton_rollOut(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.boostButton_rollOutHandler(param1);
         }
      }
      
      public function __boostButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.boostButton_clickHandler(param1);
         }
      }
      
      private function _ProductionPopup_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.top = 225;
            if(_loc3_ || _loc3_)
            {
               _loc1_.percentHeight = 100;
               if(!(_loc2_ && Boolean(this)))
               {
                  _loc1_.percentWidth = 100;
                  if(!_loc2_)
                  {
                     _loc1_.styleName = "largeDetailComponentSubtext";
                     if(!_loc2_)
                     {
                        _loc1_.id = "itemLabel";
                        if(_loc3_ || Boolean(this))
                        {
                           addr0089:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 §§goto(addr0095);
                              }
                           }
                           §§goto(addr009e);
                        }
                        §§goto(addr00a8);
                     }
                     §§goto(addr0089);
                  }
                  addr0095:
                  _loc1_.document = this;
                  if(_loc3_)
                  {
                     addr009e:
                     this.itemLabel = _loc1_;
                     if(_loc3_)
                     {
                        addr00a8:
                        BindingManager.executeBindings(this,"itemLabel",this.itemLabel);
                     }
                  }
                  §§goto(addr00b5);
               }
            }
            addr00b5:
            return _loc1_;
         }
         §§goto(addr009e);
      }
      
      private function _ProductionPopup_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_productionPopup";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "ressource_cardboard_big";
               if(_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc2_)
                  {
                     _loc1_.top = 17;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.addEventListener("rollOut",this.__centerCardboard_rollOut);
                        if(_loc3_)
                        {
                           addr0076:
                           _loc1_.addEventListener("rollOver",this.__centerCardboard_rollOver);
                           if(_loc3_)
                           {
                              addr0087:
                              _loc1_.id = "centerCardboard";
                              if(_loc3_)
                              {
                                 addr0092:
                                 if(!_loc1_.document)
                                 {
                                    if(!(_loc2_ && Boolean(_loc1_)))
                                    {
                                       _loc1_.document = this;
                                       if(!(_loc2_ && Boolean(_loc1_)))
                                       {
                                          addr00c4:
                                          this.centerCardboard = _loc1_;
                                          if(!_loc2_)
                                          {
                                             addr00ce:
                                             BindingManager.executeBindings(this,"centerCardboard",this.centerCardboard);
                                          }
                                       }
                                       §§goto(addr00db);
                                    }
                                    §§goto(addr00ce);
                                 }
                                 §§goto(addr00c4);
                              }
                              §§goto(addr00ce);
                           }
                           §§goto(addr0092);
                        }
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr00ce);
               }
               addr00db:
               return _loc1_;
            }
            §§goto(addr0076);
         }
         §§goto(addr0087);
      }
      
      public function __centerCardboard_rollOut(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.centerCardboard_rollOutHandler(param1);
         }
      }
      
      public function __centerCardboard_rollOver(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.centerCardboard_rollOverHandler(param1);
         }
      }
      
      private function _ProductionPopup_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_largeGoodIcons";
            if(_loc2_)
            {
               addr0033:
               _loc1_.mouseEnabled = false;
               if(_loc2_)
               {
                  _loc1_.mouseChildren = false;
                  if(_loc2_ || Boolean(_loc1_))
                  {
                     addr004f:
                     _loc1_.horizontalCenter = 0;
                     if(!_loc3_)
                     {
                        _loc1_.verticalCenter = -20;
                        if(_loc2_ || Boolean(this))
                        {
                           addr0075:
                           _loc1_.id = "centerImage";
                           if(_loc2_ || _loc3_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    _loc1_.document = this;
                                    if(_loc2_)
                                    {
                                       addr00b0:
                                       this.centerImage = _loc1_;
                                       if(_loc2_ || _loc2_)
                                       {
                                          addr00c2:
                                          BindingManager.executeBindings(this,"centerImage",this.centerImage);
                                       }
                                    }
                                 }
                                 return _loc1_;
                              }
                              §§goto(addr00b0);
                           }
                        }
                        §§goto(addr00c2);
                     }
                     §§goto(addr0075);
                  }
                  §§goto(addr00c2);
               }
               §§goto(addr004f);
            }
            §§goto(addr00b0);
         }
         §§goto(addr0033);
      }
      
      private function _ProductionPopup_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.left = 0;
            if(_loc3_ || Boolean(this))
            {
               _loc1_.top = 70;
               if(_loc3_)
               {
                  _loc1_.right = 0;
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.lineId = 0;
                     if(_loc3_ || _loc3_)
                     {
                        _loc1_.id = "uiInfolayerAlignmentLine";
                        if(!(_loc2_ && _loc2_))
                        {
                           addr008d:
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 addr00a1:
                                 _loc1_.document = this;
                                 if(_loc3_ || _loc2_)
                                 {
                                    §§goto(addr00be);
                                 }
                              }
                              §§goto(addr00d0);
                           }
                           §§goto(addr00be);
                        }
                        §§goto(addr00a1);
                     }
                     §§goto(addr00d0);
                  }
                  addr00be:
                  this.uiInfolayerAlignmentLine = _loc1_;
                  if(!(_loc2_ && _loc3_))
                  {
                     addr00d0:
                     BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
                  }
                  §§goto(addr00dd);
               }
               addr00dd:
               return _loc1_;
            }
            §§goto(addr00a1);
         }
         §§goto(addr008d);
      }
      
      private function _ProductionPopup_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_ || _loc3_)
            {
               addr003a:
               _loc1_.dynaBmpSourceName = "architect_icon_blocked";
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_.visible = false;
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc1_.mouseEnabled = false;
                     if(_loc2_ || Boolean(this))
                     {
                        §§goto(addr007b);
                     }
                     §§goto(addr00b4);
                  }
                  addr007b:
                  _loc1_.mouseChildren = false;
                  if(!_loc3_)
                  {
                     _loc1_.verticalCenter = -12;
                     if(!(_loc3_ && Boolean(this)))
                     {
                        _loc1_.horizontalCenter = -2;
                        if(_loc2_)
                        {
                           §§goto(addr00a1);
                        }
                     }
                     §§goto(addr00cd);
                  }
                  §§goto(addr00a1);
               }
               §§goto(addr00cd);
            }
            addr00a1:
            _loc1_.id = "blockedIcon";
            if(!(_loc3_ && Boolean(_loc1_)))
            {
               addr00b4:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr00cd:
                     _loc1_.document = this;
                     if(!(_loc3_ && _loc2_))
                     {
                        addr00de:
                        this.blockedIcon = _loc1_;
                        if(_loc2_)
                        {
                           BindingManager.executeBindings(this,"blockedIcon",this.blockedIcon);
                        }
                     }
                     §§goto(addr00f5);
                  }
               }
               §§goto(addr00de);
            }
            addr00f5:
            return _loc1_;
         }
         §§goto(addr003a);
      }
      
      private function _ProductionPopup_BriskMCDynaLib2_c() : BriskMCDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.dynaMCSourceName = "stickytape_top";
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.top = 11;
                  if(_loc2_)
                  {
                     _loc1_.horizontalCenter = 0;
                     addr0065:
                     if(_loc2_)
                     {
                        §§goto(addr007b);
                     }
                     §§goto(addr0086);
                  }
                  addr007b:
                  _loc1_.width = 140;
                  if(!_loc3_)
                  {
                     addr0086:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(this)))
                        {
                           addr009a:
                           _loc1_.document = this;
                        }
                     }
                  }
                  return _loc1_;
               }
               §§goto(addr009a);
            }
         }
         §§goto(addr0065);
      }
      
      private function _ProductionPopup_VGroup4_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.horizontalAlign = "right";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.height = 240;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.verticalAlign = "middle";
                  addr0047:
                  if(_loc3_ || Boolean(this))
                  {
                     _loc1_.width = 41;
                     if(!(_loc2_ && _loc2_))
                     {
                        _loc1_.left = -20;
                        if(_loc3_ || Boolean(this))
                        {
                           addr0096:
                           _loc1_.mxmlContent = [this._ProductionPopup_DynamicImageButton3_i()];
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    addr00ba:
                                    _loc1_.document = this;
                                 }
                              }
                              §§goto(addr00be);
                           }
                        }
                        §§goto(addr00ba);
                     }
                     §§goto(addr00be);
                  }
               }
               §§goto(addr0096);
            }
            addr00be:
            return _loc1_;
         }
         §§goto(addr0047);
      }
      
      private function _ProductionPopup_DynamicImageButton3_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.styleName = "listLeft";
            if(!_loc3_)
            {
               _loc1_.id = "scrollLeftButton";
               addr0030:
               if(!_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        addr0065:
                        _loc1_.document = this;
                        if(_loc2_)
                        {
                           §§goto(addr006e);
                        }
                     }
                     §§goto(addr0080);
                  }
                  addr006e:
                  this.scrollLeftButton = _loc1_;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0080:
                     BindingManager.executeBindings(this,"scrollLeftButton",this.scrollLeftButton);
                  }
                  return _loc1_;
               }
               §§goto(addr0065);
            }
            §§goto(addr0080);
         }
         §§goto(addr0030);
      }
      
      private function _ProductionPopup_VGroup5_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.horizontalAlign = "left";
            if(_loc2_ || _loc3_)
            {
               _loc1_.width = 41;
               if(_loc2_)
               {
                  §§goto(addr0051);
               }
               §§goto(addr00b1);
            }
            §§goto(addr009d);
         }
         addr0051:
         _loc1_.height = 240;
         if(_loc2_)
         {
            _loc1_.verticalAlign = "middle";
            if(_loc2_)
            {
               _loc1_.right = -8;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.mxmlContent = [this._ProductionPopup_DynamicImageButton4_i()];
                  if(_loc2_ || Boolean(this))
                  {
                     addr009d:
                     if(!_loc1_.document)
                     {
                        if(!(_loc3_ && Boolean(_loc1_)))
                        {
                           addr00b1:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr00b5);
                  }
                  §§goto(addr00b1);
               }
            }
         }
         addr00b5:
         return _loc1_;
      }
      
      private function _ProductionPopup_DynamicImageButton4_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.styleName = "listRight";
            if(!_loc3_)
            {
               _loc1_.id = "scrollRightButton";
               if(!_loc3_)
               {
                  addr0053:
                  if(!_loc1_.document)
                  {
                     if(!_loc3_)
                     {
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           addr0068:
                           this.scrollRightButton = _loc1_;
                           if(_loc2_)
                           {
                              addr0072:
                              BindingManager.executeBindings(this,"scrollRightButton",this.scrollRightButton);
                           }
                        }
                        return _loc1_;
                     }
                  }
                  §§goto(addr0068);
               }
            }
            §§goto(addr0072);
         }
         §§goto(addr0053);
      }
      
      private function _ProductionPopup_MultistateButton2_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc2_)
         {
            _loc1_.bottom = 10;
            if(_loc2_)
            {
               _loc1_.width = 205;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.left = 13;
                  if(!_loc3_)
                  {
                     §§goto(addr0055);
                  }
                  §§goto(addr00a4);
               }
            }
            §§goto(addr0068);
         }
         addr0055:
         _loc1_.id = "productionButton";
         if(_loc2_ || _loc2_)
         {
            addr0068:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.document = this;
                  if(!_loc3_)
                  {
                     addr0092:
                     this.productionButton = _loc1_;
                     if(_loc2_ || _loc3_)
                     {
                        addr00a4:
                        BindingManager.executeBindings(this,"productionButton",this.productionButton);
                     }
                     §§goto(addr00b1);
                  }
                  §§goto(addr00a4);
               }
               §§goto(addr00b1);
            }
            §§goto(addr0092);
         }
         addr00b1:
         return _loc1_;
      }
      
      private function _ProductionPopup_VGroup6_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(!_loc2_)
         {
            _loc1_.gap = -2;
            if(_loc3_)
            {
               addr002a:
               _loc1_.paddingTop = 0;
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_)
                  {
                     _loc1_.horizontalAlign = "right";
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        _loc1_.top = 0;
                        if(_loc3_ || _loc2_)
                        {
                           §§goto(addr007a);
                        }
                        §§goto(addr00b6);
                     }
                     addr007a:
                     _loc1_.right = 0;
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.mxmlContent = [this._ProductionPopup_Group7_i(),this._ProductionPopup_Group9_c()];
                        if(!(_loc2_ && _loc3_))
                        {
                           addr00b6:
                           if(!_loc1_.document)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr00ca:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00ce);
                        }
                        §§goto(addr00ca);
                     }
                     addr00ce:
                     return _loc1_;
                  }
               }
               §§goto(addr00b6);
            }
            §§goto(addr00ca);
         }
         §§goto(addr002a);
      }
      
      private function _ProductionPopup_Group7_i() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.width = 229;
            if(!_loc2_)
            {
               _loc1_.mxmlContent = [this._ProductionPopup_BriskImageDynaLib5_c(),this._ProductionPopup_LocaLabel4_i(),this._ProductionPopup_BriskImageDynaLib6_c(),this._ProductionPopup_Group8_c(),this._ProductionPopup_BriskMCDynaLib3_c()];
               if(_loc3_ || _loc3_)
               {
                  _loc1_.id = "quadrillePaperGroup";
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                           if(!_loc2_)
                           {
                              addr0092:
                              this.quadrillePaperGroup = _loc1_;
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr00a4:
                                 BindingManager.executeBindings(this,"quadrillePaperGroup",this.quadrillePaperGroup);
                              }
                           }
                           §§goto(addr00b1);
                        }
                        §§goto(addr00a4);
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr00a4);
               }
               addr00b1:
               return _loc1_;
            }
         }
         §§goto(addr00a4);
      }
      
      private function _ProductionPopup_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_productionPopup_new";
            if(!(_loc2_ && _loc3_))
            {
               addr0058:
               _loc1_.dynaBmpSourceName = "quadrillepaper_newproduktion";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr0078:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr0078);
         }
         §§goto(addr0058);
      }
      
      private function _ProductionPopup_LocaLabel4_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(!(_loc3_ && Boolean(this)))
         {
            _loc1_.horizontalCenter = 0;
            if(!_loc3_)
            {
               _loc1_.percentWidth = 100;
               if(!_loc3_)
               {
                  _loc1_.styleName = "residentialOutputHeader";
                  if(_loc2_ || _loc2_)
                  {
                     _loc1_.top = 26;
                     if(!_loc3_)
                     {
                        §§goto(addr0065);
                     }
                     §§goto(addr007a);
                  }
                  §§goto(addr0086);
               }
               §§goto(addr007a);
            }
            addr0065:
            _loc1_.id = "harvestOutcomeHeader";
            if(_loc2_)
            {
               addr007a:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     addr0086:
                     _loc1_.document = this;
                     if(!_loc3_)
                     {
                        §§goto(addr008f);
                     }
                  }
                  §§goto(addr0099);
               }
               addr008f:
               this.harvestOutcomeHeader = _loc1_;
               if(!_loc3_)
               {
                  addr0099:
                  BindingManager.executeBindings(this,"harvestOutcomeHeader",this.harvestOutcomeHeader);
               }
               §§goto(addr00a6);
            }
            addr00a6:
            return _loc1_;
         }
         §§goto(addr0086);
      }
      
      private function _ProductionPopup_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_productionPopup";
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "head_line_medium";
               if(_loc3_)
               {
                  _loc1_.top = 44;
                  if(_loc3_)
                  {
                     addr005f:
                     _loc1_.horizontalCenter = 0;
                     if(!_loc2_)
                     {
                        §§goto(addr0069);
                     }
                     §§goto(addr007d);
                  }
                  addr0069:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr007d:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
            §§goto(addr005f);
         }
         §§goto(addr007d);
      }
      
      private function _ProductionPopup_Group8_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.top = 72;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               _loc1_.mxmlContent = [this._ProductionPopup_List2_i()];
               if(_loc3_)
               {
                  addr005c:
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
         }
         §§goto(addr005c);
      }
      
      private function _ProductionPopup_List2_i() : List
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:List = new List();
         if(_loc2_ || _loc2_)
         {
            _loc1_.itemRenderer = this._ProductionPopup_ClassFactory2_c();
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.percentWidth = 100;
               if(_loc2_)
               {
                  _loc1_.percentHeight = 100;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     §§goto(addr0064);
                  }
                  §§goto(addr00c5);
               }
               addr0064:
               _loc1_.left = 20;
               if(_loc2_)
               {
                  _loc1_.right = 20;
                  if(_loc2_)
                  {
                     addr0078:
                     _loc1_.setStyle("skinClass",OutputListSkin);
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.id = "effectsList";
                        if(_loc2_ || _loc2_)
                        {
                           addr00b0:
                           if(!_loc1_.document)
                           {
                              if(_loc2_)
                              {
                                 _loc1_.document = this;
                                 if(!_loc3_)
                                 {
                                    addr00c5:
                                    this.effectsList = _loc1_;
                                    if(_loc2_)
                                    {
                                       addr00cf:
                                       BindingManager.executeBindings(this,"effectsList",this.effectsList);
                                    }
                                 }
                                 §§goto(addr00dc);
                              }
                              §§goto(addr00cf);
                           }
                           §§goto(addr00c5);
                        }
                        §§goto(addr00dc);
                     }
                     §§goto(addr00c5);
                  }
               }
               addr00dc:
               return _loc1_;
            }
            §§goto(addr00b0);
         }
         §§goto(addr0078);
      }
      
      private function _ProductionPopup_ClassFactory2_c() : ClassFactory
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ClassFactory = new ClassFactory();
         if(_loc2_)
         {
            _loc1_.generator = OutputItemRendered;
         }
         return _loc1_;
      }
      
      private function _ProductionPopup_BriskMCDynaLib3_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc2_)
            {
               addr0034:
               _loc1_.dynaMCSourceName = "stickytape_top";
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.top = -3;
                  if(!_loc2_)
                  {
                     _loc1_.width = 145;
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        addr0080:
                        _loc1_.horizontalCenter = 0;
                        if(!_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(_loc1_))
                              {
                                 addr009e:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr00a2);
                        }
                        §§goto(addr009e);
                     }
                     addr00a2:
                     return _loc1_;
                  }
               }
            }
            §§goto(addr0080);
         }
         §§goto(addr0034);
      }
      
      private function _ProductionPopup_Group9_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.percentWidth = 100;
            if(!_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc3_ || _loc3_)
               {
                  addr005a:
                  _loc1_.mxmlContent = [this._ProductionPopup_HGroup3_c(),this._ProductionPopup_DynamicImageButton5_i()];
                  if(_loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           addr007c:
                           _loc1_.document = this;
                        }
                     }
                     §§goto(addr0080);
                  }
                  §§goto(addr007c);
               }
            }
            addr0080:
            return _loc1_;
         }
         §§goto(addr005a);
      }
      
      private function _ProductionPopup_HGroup3_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.horizontalAlign = "center";
            if(_loc2_ || _loc3_)
            {
               _loc1_.percentWidth = 95;
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr0062);
               }
               §§goto(addr007e);
            }
            §§goto(addr0072);
         }
         addr0062:
         _loc1_.mxmlContent = [this._ProductionPopup_StickyNoteComponent4_i()];
         if(!_loc3_)
         {
            addr0072:
            if(!_loc1_.document)
            {
               if(!_loc3_)
               {
                  addr007e:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _ProductionPopup_StickyNoteComponent4_i() : StickyNoteComponent
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         if(!_loc2_)
         {
            _loc1_.height = 110;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.width = 250;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.tapeLeft = true;
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.tapeRight = true;
                     §§goto(addr0056);
                  }
                  §§goto(addr00d6);
               }
               §§goto(addr009b);
            }
            addr0056:
            if(_loc3_)
            {
               _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ProductionPopup_Array21_c);
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.id = "effectsComponent";
                  if(!(_loc2_ && _loc2_))
                  {
                     addr009b:
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           §§goto(addr00a7);
                        }
                     }
                     §§goto(addr00c4);
                  }
                  §§goto(addr00d6);
               }
               §§goto(addr009b);
            }
            addr00a7:
            _loc1_.document = this;
            if(!(_loc2_ && Boolean(this)))
            {
               addr00c4:
               this.effectsComponent = _loc1_;
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr00d6:
                  BindingManager.executeBindings(this,"effectsComponent",this.effectsComponent);
               }
            }
            return _loc1_;
         }
         §§goto(addr00d6);
      }
      
      private function _ProductionPopup_Array21_c() : Array
      {
         return [this._ProductionPopup_ResidentialHeaderComponent3_i(),this._ProductionPopup_HGroup4_c()];
      }
      
      private function _ProductionPopup_ResidentialHeaderComponent3_i() : ResidentialHeaderComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ResidentialHeaderComponent = new ResidentialHeaderComponent();
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.top = -5;
            if(_loc2_ || _loc2_)
            {
               _loc1_.id = "effectHeader";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  §§goto(addr0059);
               }
               §§goto(addr008c);
            }
            §§goto(addr0071);
         }
         addr0059:
         if(!_loc1_.document)
         {
            if(_loc2_)
            {
               addr0071:
               _loc1_.document = this;
               if(!_loc3_)
               {
                  §§goto(addr007a);
               }
            }
            §§goto(addr008c);
         }
         addr007a:
         this.effectHeader = _loc1_;
         if(!(_loc3_ && _loc2_))
         {
            addr008c:
            BindingManager.executeBindings(this,"effectHeader",this.effectHeader);
         }
         return _loc1_;
      }
      
      private function _ProductionPopup_HGroup4_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(!_loc2_)
         {
            _loc1_.percentWidth = 100;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.top = 25;
               if(_loc3_ || _loc3_)
               {
                  addr0053:
                  _loc1_.percentHeight = 100;
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.horizontalCenter = 0;
                     if(!_loc2_)
                     {
                        addr007c:
                        _loc1_.mxmlContent = [this._ProductionPopup_HGroup5_i(),this._ProductionPopup_HGroup6_i()];
                        if(!_loc2_)
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr009e:
                                 _loc1_.document = this;
                              }
                           }
                        }
                     }
                     §§goto(addr00a2);
                  }
                  §§goto(addr007c);
               }
               §§goto(addr009e);
            }
            §§goto(addr0053);
         }
         addr00a2:
         return _loc1_;
      }
      
      private function _ProductionPopup_HGroup5_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_ || _loc2_)
         {
            _loc1_.percentWidth = 50;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.horizontalAlign = "center";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.verticalAlign = "middle";
                  if(!(_loc2_ && _loc2_))
                  {
                     _loc1_.percentHeight = 100;
                     if(!_loc2_)
                     {
                        addr0073:
                        _loc1_.mxmlContent = [this._ProductionPopup_LocaLabel5_i(),this._ProductionPopup_BriskImageDynaLib7_i()];
                        if(!(_loc2_ && Boolean(this)))
                        {
                           §§goto(addr0091);
                        }
                        §§goto(addr00de);
                     }
                     §§goto(addr00a4);
                  }
                  addr0091:
                  _loc1_.id = "moodGroup";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr00a4:
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              §§goto(addr00d4);
                           }
                        }
                        §§goto(addr00de);
                     }
                  }
                  §§goto(addr00d4);
               }
            }
            §§goto(addr0073);
         }
         addr00d4:
         this.moodGroup = _loc1_;
         if(_loc3_)
         {
            addr00de:
            BindingManager.executeBindings(this,"moodGroup",this.moodGroup);
         }
         return _loc1_;
      }
      
      private function _ProductionPopup_LocaLabel5_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.styleName = "outcomeNeutral";
            if(_loc2_ || _loc2_)
            {
               _loc1_.id = "moodLabel";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr005a:
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        addr006e:
                        _loc1_.document = this;
                        if(!(_loc3_ && _loc3_))
                        {
                           addr008b:
                           this.moodLabel = _loc1_;
                           if(_loc2_ || _loc3_)
                           {
                              addr009d:
                              BindingManager.executeBindings(this,"moodLabel",this.moodLabel);
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr009d);
                     }
                     §§goto(addr00aa);
                  }
                  §§goto(addr008b);
               }
               addr00aa:
               return _loc1_;
            }
            §§goto(addr005a);
         }
         §§goto(addr006e);
      }
      
      private function _ProductionPopup_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(_loc3_)
            {
               _loc1_.dynaBmpSourceName = "layer_sad_icon";
               if(_loc3_ || Boolean(_loc1_))
               {
                  addr004f:
                  _loc1_.id = "moodIcon";
                  if(_loc3_ || _loc3_)
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr008b:
                              this.moodIcon = _loc1_;
                              if(!_loc2_)
                              {
                                 addr0095:
                                 BindingManager.executeBindings(this,"moodIcon",this.moodIcon);
                              }
                              §§goto(addr00a2);
                           }
                           §§goto(addr0095);
                        }
                        §§goto(addr00a2);
                     }
                     §§goto(addr008b);
                  }
                  §§goto(addr0095);
               }
               §§goto(addr00a2);
            }
            §§goto(addr004f);
         }
         addr00a2:
         return _loc1_;
      }
      
      private function _ProductionPopup_HGroup6_i() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.percentWidth = 50;
            if(!_loc2_)
            {
               _loc1_.horizontalAlign = "center";
               if(_loc3_ || _loc3_)
               {
                  addr003e:
                  _loc1_.verticalAlign = "middle";
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.percentHeight = 100;
                     if(_loc3_ || Boolean(this))
                     {
                        _loc1_.mxmlContent = [this._ProductionPopup_LocaLabel6_i(),this._ProductionPopup_BriskImageDynaLib8_i()];
                        if(!(_loc2_ && _loc3_))
                        {
                           _loc1_.id = "energyGroup";
                           if(_loc3_)
                           {
                              if(!_loc1_.document)
                              {
                                 if(!_loc2_)
                                 {
                                    addr00b1:
                                    _loc1_.document = this;
                                    if(!_loc2_)
                                    {
                                       addr00ba:
                                       this.energyGroup = _loc1_;
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          addr00cc:
                                          BindingManager.executeBindings(this,"energyGroup",this.energyGroup);
                                       }
                                       §§goto(addr00d9);
                                    }
                                    §§goto(addr00cc);
                                 }
                                 §§goto(addr00d9);
                              }
                              §§goto(addr00ba);
                           }
                           §§goto(addr00b1);
                        }
                        §§goto(addr00cc);
                     }
                     §§goto(addr00ba);
                  }
               }
               addr00d9:
               return _loc1_;
            }
            §§goto(addr00ba);
         }
         §§goto(addr003e);
      }
      
      private function _ProductionPopup_LocaLabel6_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.styleName = "outcomeNeutral";
            if(!(_loc2_ && _loc3_))
            {
               addr0042:
               _loc1_.id = "energyLabel";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        _loc1_.document = this;
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           §§goto(addr0077);
                        }
                        §§goto(addr0089);
                     }
                  }
               }
            }
            addr0077:
            this.energyLabel = _loc1_;
            if(!(_loc2_ && Boolean(this)))
            {
               addr0089:
               BindingManager.executeBindings(this,"energyLabel",this.energyLabel);
            }
            return _loc1_;
         }
         §§goto(addr0042);
      }
      
      private function _ProductionPopup_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_resources_icons";
            if(_loc3_ || _loc2_)
            {
               _loc1_.dynaBmpSourceName = "energy_icon";
               if(_loc3_)
               {
                  addr0051:
                  _loc1_.id = "energyIcon";
                  if(!(_loc2_ && _loc2_))
                  {
                     if(!_loc1_.document)
                     {
                        if(_loc3_)
                        {
                           _loc1_.document = this;
                           if(_loc3_)
                           {
                              addr0083:
                              this.energyIcon = _loc1_;
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr0095:
                                 BindingManager.executeBindings(this,"energyIcon",this.energyIcon);
                              }
                           }
                           §§goto(addr00a2);
                        }
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr0095);
               }
               addr00a2:
               return _loc1_;
            }
            §§goto(addr0095);
         }
         §§goto(addr0051);
      }
      
      private function _ProductionPopup_DynamicImageButton5_i() : DynamicImageButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         if(_loc2_ || _loc2_)
         {
            _loc1_.styleName = "featureInfoButton";
            if(!_loc3_)
            {
               _loc1_.right = 37;
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  _loc1_.top = 15;
                  if(!(_loc3_ && Boolean(_loc1_)))
                  {
                     addr0060:
                     _loc1_.addEventListener("click",this.__effectFeatureButton_click);
                     if(!(_loc3_ && _loc3_))
                     {
                        _loc1_.id = "effectFeatureButton";
                        if(!(_loc3_ && _loc2_))
                        {
                           addr008b:
                           if(!_loc1_.document)
                           {
                              if(_loc2_ || _loc3_)
                              {
                                 §§goto(addr00ac);
                              }
                              §§goto(addr00c7);
                           }
                           §§goto(addr00bd);
                        }
                        addr00ac:
                        _loc1_.document = this;
                        if(_loc2_ || _loc3_)
                        {
                           addr00bd:
                           this.effectFeatureButton = _loc1_;
                           if(_loc2_)
                           {
                              addr00c7:
                              BindingManager.executeBindings(this,"effectFeatureButton",this.effectFeatureButton);
                           }
                        }
                        §§goto(addr00d4);
                     }
                     §§goto(addr00c7);
                  }
                  §§goto(addr008b);
               }
               §§goto(addr00c7);
            }
            addr00d4:
            return _loc1_;
         }
         §§goto(addr0060);
      }
      
      public function __effectFeatureButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.onBalanceFeatureClick();
         }
      }
      
      public function ___ProductionPopup_PaperPopupWindow1_addedToStage(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this.handleAdded();
         }
      }
      
      private function _ProductionPopup_bindingsSetup() : Array
      {
         var result:Array;
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!_loc2_)
         {
            §§pop().§§slot[1] = [];
            if(_loc3_)
            {
               §§push(§§newactivation());
               if(_loc3_ || Boolean(this))
               {
                  §§push(§§pop().§§slot[1]);
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(0);
                     if(!_loc2_)
                     {
                        §§pop()[§§pop()] = new Binding(this,function():String
                        {
                           var _loc1_:* = ServerResConst.RESOURCE_PRODUCTIONPOINTS;
                           return _loc1_ == undefined ? null : String(_loc1_);
                        },null,"costs.currencyType");
                        if(_loc3_)
                        {
                           §§push(§§newactivation());
                           if(_loc3_ || Boolean(this))
                           {
                              §§push(§§pop().§§slot[1]);
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr009b:
                                 §§pop()[1] = new Binding(this,function():uint
                                 {
                                    return UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM;
                                 },null,"uiInfolayerAlignmentLine.alignment");
                                 addr00ae:
                                 addr00ac:
                                 §§push(result);
                                 addr0099:
                              }
                              return §§pop();
                           }
                           §§goto(addr00ae);
                        }
                        §§goto(addr00ac);
                     }
                     §§goto(addr009b);
                  }
                  §§goto(addr0099);
               }
               §§goto(addr00ae);
            }
            §§goto(addr00ac);
         }
         §§goto(addr00ae);
      }
      
      [Bindable(event="propertyChange")]
      public function get blockedIcon() : BriskImageDynaLib
      {
         return this._1384168581blockedIcon;
      }
      
      public function set blockedIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1384168581blockedIcon;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  addr0040:
                  this._1384168581blockedIcon = param1;
                  if(!(_loc4_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blockedIcon",_loc2_,param1));
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
      public function get boostButton() : MultistateButton
      {
         return this._1322365109boostButton;
      }
      
      public function set boostButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1322365109boostButton;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  addr004e:
                  this._1322365109boostButton = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boostButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0069);
            }
            addr0078:
            return;
         }
         §§goto(addr004e);
      }
      
      [Bindable(event="propertyChange")]
      public function get centerCardboard() : BriskImageDynaLib
      {
         return this._988528383centerCardboard;
      }
      
      public function set centerCardboard(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._988528383centerCardboard;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._988528383centerCardboard = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr0066:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"centerCardboard",_loc2_,param1));
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
      public function get centerImage() : BriskImageDynaLib
      {
         return this._1651530246centerImage;
      }
      
      public function set centerImage(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1651530246centerImage;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr0056:
                  this._1651530246centerImage = param1;
                  if(_loc4_)
                  {
                     addr0061:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"centerImage",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0080);
               }
               §§goto(addr0061);
            }
            addr0080:
            return;
         }
         §§goto(addr0056);
      }
      
      [Bindable(event="propertyChange")]
      public function get costs() : PriceComponent
      {
         return this._94849606costs;
      }
      
      public function set costs(param1:PriceComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._94849606costs;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._94849606costs = param1;
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr0068:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr007f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costs",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr008e);
               }
               §§goto(addr007f);
            }
            addr008e:
            return;
         }
         §§goto(addr0068);
      }
      
      [Bindable(event="propertyChange")]
      public function get costsHeader() : PostitHeaderComponent
      {
         return this._1897254003costsHeader;
      }
      
      public function set costsHeader(param1:PostitHeaderComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1897254003costsHeader;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  addr0043:
                  this._1897254003costsHeader = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr0079:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costsHeader",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0088);
               }
               §§goto(addr0079);
            }
            addr0088:
            return;
         }
         §§goto(addr0043);
      }
      
      [Bindable(event="propertyChange")]
      public function get currencyFeatureButton() : DynamicImageButton
      {
         return this._724131529currencyFeatureButton;
      }
      
      public function set currencyFeatureButton(param1:DynamicImageButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._724131529currencyFeatureButton;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._724131529currencyFeatureButton = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currencyFeatureButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr0075);
            }
         }
         addr0084:
      }
      
      [Bindable(event="propertyChange")]
      public function get effectFeatureButton() : DynamicImageButton
      {
         return this._1768900535effectFeatureButton;
      }
      
      public function set effectFeatureButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1768900535effectFeatureButton;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1768900535effectFeatureButton = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectFeatureButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr005d);
            }
            addr0083:
            return;
         }
         §§goto(addr0074);
      }
      
      [Bindable(event="propertyChange")]
      public function get effectHeader() : ResidentialHeaderComponent
      {
         return this._713468034effectHeader;
      }
      
      public function set effectHeader(param1:ResidentialHeaderComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._713468034effectHeader;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._713468034effectHeader = param1;
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr0060:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectHeader",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0070);
            }
            addr007f:
            return;
         }
         §§goto(addr0060);
      }
      
      [Bindable(event="propertyChange")]
      public function get effectsComponent() : StickyNoteComponent
      {
         return this._911984155effectsComponent;
      }
      
      public function set effectsComponent(param1:StickyNoteComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._911984155effectsComponent;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._911984155effectsComponent = param1;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr0069:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0079:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectsComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0088);
                  }
               }
               §§goto(addr0079);
            }
            addr0088:
            return;
         }
         §§goto(addr0069);
      }
      
      [Bindable(event="propertyChange")]
      public function get effectsList() : List
      {
         return this._1678527680effectsList;
      }
      
      public function set effectsList(param1:List) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1678527680effectsList;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(_loc2_))
               {
                  this._1678527680effectsList = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     addr0061:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectsList",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0061);
            }
         }
         addr007f:
      }
      
      [Bindable(event="propertyChange")]
      public function get energyGroup() : HGroup
      {
         return this._1840699177energyGroup;
      }
      
      public function set energyGroup(param1:HGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1840699177energyGroup;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1840699177energyGroup = param1;
                  if(!_loc3_)
                  {
                     addr0057:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"energyGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0076);
               }
               §§goto(addr0067);
            }
            addr0076:
            return;
         }
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get energyIcon() : BriskImageDynaLib
      {
         return this._1464688417energyIcon;
      }
      
      public function set energyIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1464688417energyIcon;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._1464688417energyIcon = param1;
                  if(_loc3_)
                  {
                     addr005e:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"energyIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr005e);
            }
         }
         addr007d:
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
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._1836601012energyLabel = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"energyLabel",_loc2_,param1));
                        }
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr0072);
               }
            }
            addr0081:
            return;
         }
         §§goto(addr0072);
      }
      
      [Bindable(event="propertyChange")]
      public function get evaluationHeader() : ResidentialHeaderComponent
      {
         return this._1415215337evaluationHeader;
      }
      
      public function set evaluationHeader(param1:ResidentialHeaderComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1415215337evaluationHeader;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(_loc2_))
               {
                  this._1415215337evaluationHeader = param1;
                  if(_loc3_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"evaluationHeader",_loc2_,param1));
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
         §§goto(addr0055);
      }
      
      [Bindable(event="propertyChange")]
      public function get flavorText() : LocaLabel
      {
         return this._1684755691flavorText;
      }
      
      public function set flavorText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1684755691flavorText;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1684755691flavorText = param1;
                  if(!_loc3_)
                  {
                     addr004f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           addr0067:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavorText",_loc2_,param1));
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
         §§goto(addr004f);
      }
      
      [Bindable(event="propertyChange")]
      public function get harvestOutcomeHeader() : LocaLabel
      {
         return this._1708165014harvestOutcomeHeader;
      }
      
      public function set harvestOutcomeHeader(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1708165014harvestOutcomeHeader;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1708165014harvestOutcomeHeader = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(this))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"harvestOutcomeHeader",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get infoLabel() : LocaLabel
      {
         return this._1213523686infoLabel;
      }
      
      public function set infoLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1213523686infoLabel;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || Boolean(this))
               {
                  this._1213523686infoLabel = param1;
                  if(!_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoLabel",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemLabel() : LocaLabel
      {
         return this._2135689121itemLabel;
      }
      
      public function set itemLabel(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._2135689121itemLabel;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_ || _loc3_)
               {
                  this._2135689121itemLabel = param1;
                  if(!_loc4_)
                  {
                     addr005f:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemLabel",_loc2_,param1));
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
         §§goto(addr005f);
      }
      
      [Bindable(event="propertyChange")]
      public function get moodGroup() : HGroup
      {
         return this._899936824moodGroup;
      }
      
      public function set moodGroup(param1:HGroup) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._899936824moodGroup;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!_loc4_)
               {
                  this._899936824moodGroup = param1;
                  if(_loc3_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr0075:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodGroup",_loc2_,param1));
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
         §§goto(addr0075);
      }
      
      [Bindable(event="propertyChange")]
      public function get moodIcon() : BriskImageDynaLib
      {
         return this._306079728moodIcon;
      }
      
      public function set moodIcon(param1:BriskImageDynaLib) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._306079728moodIcon;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  this._306079728moodIcon = param1;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr005c:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr005c);
            }
            addr0083:
            return;
         }
         §§goto(addr0074);
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
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._895838659moodLabel = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr0064:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0064);
            }
         }
         addr0073:
      }
      
      [Bindable(event="propertyChange")]
      public function get neededGoodsGroup() : Group
      {
         return this._1632688734neededGoodsGroup;
      }
      
      public function set neededGoodsGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1632688734neededGoodsGroup;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._1632688734neededGoodsGroup = param1;
                  if(_loc4_)
                  {
                     §§goto(addr0057);
                  }
                  §§goto(addr006e);
               }
               addr0057:
               if(this.hasEventListener("propertyChange"))
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr006e:
                     this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"neededGoodsGroup",_loc2_,param1));
                  }
               }
               §§goto(addr007d);
            }
            addr007d:
            return;
         }
         §§goto(addr0057);
      }
      
      [Bindable(event="propertyChange")]
      public function get needsList() : List
      {
         return this._1093736667needsList;
      }
      
      public function set needsList(param1:List) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1093736667needsList;
         if(!(_loc4_ && Boolean(_loc2_)))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._1093736667needsList = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr0067:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr0077:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needsList",_loc2_,param1));
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
      public function get productionButton() : MultistateButton
      {
         return this._1531914933productionButton;
      }
      
      public function set productionButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1531914933productionButton;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!_loc3_)
               {
                  this._1531914933productionButton = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"productionButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get productionTimer() : TimerBarComponent
      {
         return this._1352315404productionTimer;
      }
      
      public function set productionTimer(param1:TimerBarComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1352315404productionTimer;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._1352315404productionTimer = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     addr0056:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"productionTimer",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0056);
            }
         }
         addr007d:
      }
      
      [Bindable(event="propertyChange")]
      public function get quadrillePaperGroup() : Group
      {
         return this._758791194quadrillePaperGroup;
      }
      
      public function set quadrillePaperGroup(param1:Group) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._758791194quadrillePaperGroup;
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  addr0048:
                  this._758791194quadrillePaperGroup = param1;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"quadrillePaperGroup",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr0048);
      }
      
      [Bindable(event="propertyChange")]
      public function get requiredResourcesHeader() : ResidentialHeaderComponent
      {
         return this._677746547requiredResourcesHeader;
      }
      
      public function set requiredResourcesHeader(param1:ResidentialHeaderComponent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._677746547requiredResourcesHeader;
         if(_loc3_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this._677746547requiredResourcesHeader = param1;
                  if(_loc3_ || Boolean(_loc2_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr007e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"requiredResourcesHeader",_loc2_,param1));
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
         §§goto(addr007e);
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollLeftButton() : DynamicImageButton
      {
         return this._75450170scrollLeftButton;
      }
      
      public function set scrollLeftButton(param1:DynamicImageButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._75450170scrollLeftButton;
         if(_loc4_ || Boolean(_loc2_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._75450170scrollLeftButton = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollLeftButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollRightButton() : DynamicImageButton
      {
         return this._1993162593scrollRightButton;
      }
      
      public function set scrollRightButton(param1:DynamicImageButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1993162593scrollRightButton;
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1993162593scrollRightButton = param1;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr006f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollRightButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr007e);
                  }
               }
               §§goto(addr006f);
            }
         }
         addr007e:
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
         if(_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr0039:
                  this._1218573432uiInfolayerAlignmentLine = param1;
                  if(_loc3_)
                  {
                     addr0043:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine",_loc2_,param1));
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
      
      [Bindable(event="propertyChange")]
      public function get upgradeFeatureButton() : DynamicImageButton
      {
         return this._1087758604upgradeFeatureButton;
      }
      
      public function set upgradeFeatureButton(param1:DynamicImageButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1087758604upgradeFeatureButton;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._1087758604upgradeFeatureButton = param1;
                  addr0049:
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || _loc3_)
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upgradeFeatureButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr0087);
                  }
               }
               §§goto(addr0078);
            }
            addr0087:
            return;
         }
         §§goto(addr0049);
      }
      
      [Bindable(event="propertyChange")]
      public function get upgradeProgressComponent() : UpgradeProgressComponent
      {
         return this._2007548268upgradeProgressComponent;
      }
      
      public function set upgradeProgressComponent(param1:UpgradeProgressComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2007548268upgradeProgressComponent;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._2007548268upgradeProgressComponent = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upgradeProgressComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
               }
               §§goto(addr006d);
            }
         }
         addr007c:
      }
   }
}

