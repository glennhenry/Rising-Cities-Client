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
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public static const START_PRODUCTION:String = "startProduction";
      
      public static const STOP_PRODUCTION:String = "stopProduction";
      
      public static const INSTANT_PRODUCTION:String = "instantProduction";
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "closeButton":false,
         "controlBarGroup":false,
         "contentGroup":false,
         "backButton":false,
         "tabBar":false,
         "sideMenu":false,
         "titleDisplay":false
      };
      
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
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._ProductionPopup_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_productionBook_ui_components_ProductionPopupWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return ProductionPopup[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.styleName = "production";
         this.showBackButton = false;
         this.width = 785;
         this.height = 430;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._ProductionPopup_Array1_c);
         this.addEventListener("addedToStage",this.___ProductionPopup_PaperPopupWindow1_addedToStage);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         ProductionPopup._watcherSetupUtil = param1;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private function handleAdded() : void
      {
         this.addEventListener(FlexEvent.CREATION_COMPLETE,this.handleCreationComplete);
      }
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
         this.removeEventListener(FlexEvent.CREATION_COMPLETE,this.handleCreationComplete);
         this.requiredResourcesHeader.textLabel.setStyle("fontSize",11);
         this.title = LocaUtils.getString("rcl.playfielditems.name","rcl.playfielditems.name." + this._data.localeId);
         this.flavorText.text = LocaUtils.getString("rcl.productionlayer","rcl.productionlayer.flavorText");
         this.requiredResourcesHeader.text = LocaUtils.getString("rcl.productionlayer","rcl.productionlayer.needs");
         this.costsHeader.text = LocaUtils.getString("rcl.productionlayer","rcl.productionlayer.costs");
         this.harvestOutcomeHeader.text = LocaUtils.getString("rcl.productionlayer","rcl.productionlayer.productionOutcome");
         this.effectHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.effects");
         this.productionTimer.addEventListener(Event.CLOSE,this.handleClose);
         this.scrollLeftButton.addEventListener(MouseEvent.CLICK,this.handleScrollLeft);
         this.scrollRightButton.addEventListener(MouseEvent.CLICK,this.handleScrollRight);
         this.productionButton.addEventListener(MouseEvent.CLICK,this.productionClick);
         var _temp_1:* = this.upgradeFeatureButton;
         this.upgradeFeatureButton.enabled = false;
         _temp_1.visible = false;
      }
      
      private function onBalanceFeatureClick() : void
      {
         dispatchEvent(new Event("openBalanceFeature",true,true));
      }
      
      private function onCurrencyFeatureClick() : void
      {
         dispatchEvent(new Event("openCurrencyFeature",true,true));
      }
      
      private function onUpgradeFeatureClick() : void
      {
         dispatchEvent(new Event("openUpgradeFeature",true,true));
      }
      
      private function productionClick(param1:MouseEvent) : void
      {
         if(this._productionRunning)
         {
            dispatchEvent(new Event(STOP_PRODUCTION));
         }
         else
         {
            dispatchEvent(new Event(START_PRODUCTION));
         }
      }
      
      private function handleScrollLeft(param1:MouseEvent) : void
      {
         --this._currentGoodIndex;
         this.displayGood();
         this.checkNavigationButtons();
      }
      
      private function handleScrollRight(param1:MouseEvent) : void
      {
         ++this._currentGoodIndex;
         this.displayGood();
         this.checkNavigationButtons();
      }
      
      private function handleClose(param1:Event) : void
      {
         dispatchEvent(param1);
      }
      
      private function handleUpgradeMouseOut(param1:MouseEvent) : void
      {
         this._isDirtyData = true;
         this._unhover = true;
         this.displayGood();
      }
      
      private function handleUpgradeMouseOver(param1:MouseEvent) : void
      {
         var _loc2_:ProductionGoodObjectVo = this._data.nextProductionDetail.productionOptions[this._currentGoodIndex] as ProductionGoodObjectVo;
         this.setOutputValues(_loc2_);
         this.setCosts(_loc2_);
         this.setEffects(this._data.nextProductionDetail.energyEffect,this._data.nextProductionDetail.moodEffect);
      }
      
      public function set data(param1:ProductionDetailViewVo) : void
      {
         if(!RandomUtilities.isEqual(this._data,param1))
         {
            this._data = param1;
            this._isDirtyData = true;
            invalidateProperties();
         }
      }
      
      public function set instantFinishData(param1:Object) : void
      {
         if(!RandomUtilities.isEqual(this._instantFinishData,param1))
         {
            this._instantFinishData = param1;
            this._instantFinishDataDirty = true;
            invalidateProperties();
         }
      }
      
      public function get data() : ProductionDetailViewVo
      {
         return this._data;
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:UpgradeProgressVo = null;
         super.commitProperties();
         if(this._isDirtyData)
         {
            this.upgradeProgressComponent.removeEventListener(MouseEvent.MOUSE_OVER,this.handleUpgradeMouseOver);
            this.upgradeProgressComponent.removeEventListener(MouseEvent.MOUSE_OUT,this.handleUpgradeMouseOut);
            this.upgradeProgressComponent.buyButton.removeEventListener(MouseEvent.MOUSE_OVER,this.handleUpgradeMouseOver);
            this.upgradeProgressComponent.buyButton.removeEventListener(MouseEvent.MOUSE_OUT,this.handleUpgradeMouseOut);
            if(this._data)
            {
               this.evaluationHeader.text = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.currentUpgrade",[this._data.upgradeCurrentLevel]);
               _loc1_ = new UpgradeProgressVo();
               _loc1_.currentProgress = this._data.harvestCount;
               _loc1_.hasEnoughMoney = this._data.hasEnoughDD;
               _loc1_.neededProgress = this._data.upgradeCountTotal;
               _loc1_.price = this._data.upgradePrice;
               _loc1_.upgradeCurrentLevel = this._data.upgradeCurrentLevel;
               _loc1_.upgradeMaxLevel = this._data.upgradeMaxLevel;
               _loc1_.upgradeNextLevel = this._data.upgradeNextLevel;
               this.upgradeProgressComponent.data = _loc1_;
               this.upgradeProgressComponent.buyButton.showSparkle = true;
               this._currentGoodIndex = this._data.currentProductionIndex;
               if(this._currentGoodIndex == -1 || this._currentGoodIndex >= this._data.productionOptions.length)
               {
                  this._currentGoodIndex = 0;
               }
               if(this._data.harvestEndTime == 0)
               {
                  this._productionRunning = false;
                  this.productionButton.libNameLeft = "gui_popups_productionPopup";
                  this.productionButton.imageNameLeft = "button_icon_startproduction";
                  this.productionButton.label = LocaUtils.getString("rcl.productionlayer","rcl.productionlayer.startProduction");
                  this.productionButton.styleName = "";
                  this.productionButton.toolTip = LocaUtils.getString("rcl.tooltips.productionBook","rcl.tooltips.productionBook.button.start");
               }
               else
               {
                  this._productionRunning = true;
                  this.productionButton.libNameLeft = "gui_popups_paperPopup";
                  this.productionButton.imageNameLeft = "button_icon_cancel";
                  this.productionButton.label = LocaUtils.getString("rcl.productionlayer","rcl.productionlayer.stopProduction");
                  this.productionButton.styleName = "abort";
                  this.productionButton.toolTip = LocaUtils.getString("rcl.tooltips.productionBook","rcl.tooltips.productionBook.button.cancel");
               }
               this.displayGood();
               this.checkNavigationButtons();
               if(this._data.nextProductionDetail)
               {
                  if(this._data.productionFieldObjectVo.upgradeReady)
                  {
                     this.upgradeProgressComponent.addEventListener(MouseEvent.MOUSE_OVER,this.handleUpgradeMouseOver);
                     this.upgradeProgressComponent.addEventListener(MouseEvent.MOUSE_OUT,this.handleUpgradeMouseOut);
                  }
                  this.upgradeProgressComponent.buyButton.addEventListener(MouseEvent.MOUSE_OVER,this.handleUpgradeMouseOver);
                  this.upgradeProgressComponent.buyButton.addEventListener(MouseEvent.MOUSE_OUT,this.handleUpgradeMouseOut);
               }
               this.setTooltips();
            }
            this._isDirtyData = false;
         }
         if(this._instantFinishDataDirty)
         {
            this._instantFinishDataDirty = false;
            this.infoLabel.text = LocaUtils.getString("rcl.productionlayer","rcl.productionlayer.boostLabel",[this._instantFinishData.cost[this._currentGoodIndex]]);
            this.boostButton.showPlus = this._instantFinishData.cost[this._currentGoodIndex] > this._instantFinishData.rcStock;
            this.boostButton.priceToConfirm = this._instantFinishData.cost[this._currentGoodIndex];
         }
      }
      
      private function displayGood() : void
      {
         var _loc3_:GoodRequireVo = null;
         var _loc5_:ProductionNeedVo = null;
         var _loc6_:String = null;
         var _loc1_:ProductionGoodObjectVo = this._data.productionOptions[this._currentGoodIndex] as ProductionGoodObjectVo;
         if(_loc1_.config.isEventGood)
         {
            this.centerCardboard.dynaBmpSourceName = "eventgood_cardboard_big";
            this.centerImage.dynaSWFFileName = this._data.currentRunningEventGfxId.toString();
            this.centerImage.dynaLibName = this._data.currentRunningEventGfxId + "_gui_popups_largeGoodIcons";
            this.centerImage.dynaBmpSourceName = "large_" + _loc1_.gfxId;
         }
         else
         {
            if(_loc1_.config.isConstructionGood)
            {
            }
            this.centerCardboard.dynaBmpSourceName = "ressource_cardboard_big";
            this.centerImage.dynaSWFFileName = null;
            this.centerImage.dynaLibName = "gui_popups_largeGoodIcons";
            this.centerImage.dynaBmpSourceName = "large_" + _loc1_.gfxId;
         }
         this.setCosts(_loc1_);
         var _loc2_:Array = new Array();
         for each(_loc3_ in _loc1_.requiredGoods)
         {
            _loc6_ = "";
            if(!_loc3_.goodObjectVo.isEventGood)
            {
               _loc6_ = LocaUtils.getString(String("rcl.goods.goodname"),String("rcl.goods.goodname." + _loc3_.goodObjectVo.localeId));
               _loc2_.push(new ProductionNeedVo("gui_popups_smallGoodIcons","gui_popups_smallGoodIcons","small_" + _loc3_.goodObjectVo.gfxId,_loc3_.goodObjectVo.playerStock,_loc3_.requiredAmount,_loc6_));
            }
            else
            {
               _loc6_ = LocaUtils.getString(String("rcl.citysquarequests." + this._data.currentRunningEventLocaleId),String("rcl.citysquarequests." + this._data.currentRunningEventLocaleId + ".goods.goodname." + _loc3_.goodObjectVo.localeId));
               _loc2_.push(new ProductionNeedVo(this._data.currentRunningEventGfxId.toString(),this._data.currentRunningEventGfxId.toString() + "_gui_popups_smallGoodIcons","small_" + _loc3_.goodObjectVo.gfxId,_loc3_.goodObjectVo.playerStock,_loc3_.requiredAmount,_loc6_));
            }
         }
         if(_loc2_.length == 0)
         {
            this.neededGoodsGroup.visible = false;
         }
         else
         {
            this.neededGoodsGroup.visible = true;
            this.needsList.dataProvider = new ArrayCollection(_loc2_);
         }
         var _loc4_:TimerBarComponentVo = new TimerBarComponentVo();
         _loc4_.cycleLength = _loc1_.productionTime;
         _loc4_.startTime = this._data.harvestEndTime - _loc4_.cycleLength;
         _loc4_.currentTime = this._data.harvestCurrentTime;
         _loc4_.targetTime = this._data.harvestEndTime;
         _loc4_.waitingForStart = this._data.harvestEndTime == 0;
         if(this._data.globalUserLevel < _loc1_.config.userLevelRequired)
         {
            _loc4_.userMayStart = false;
            this.blockedIcon.visible = true;
            TweenMax.to(this.centerImage,0,{
               "colorMatrixFilter":{"saturation":0},
               "colorTransform":{
                  "tint":14473659,
                  "tintAmount":0.74
               }
            });
            this.itemLabel.includeInLayout = true;
            this.itemLabel.visible = true;
            this.itemLabel.text = StringUtil.substitute(LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.requiredLevel"),"<font size=\'18\'>" + _loc1_.config.userLevelRequired + "</font>");
            this.productionTimer.includeInLayout = false;
            this.productionTimer.visible = false;
            this.boostButton.visible = false;
            this.boostButton.includeInLayout = false;
         }
         else
         {
            this.blockedIcon.visible = false;
            this.itemLabel.includeInLayout = false;
            this.itemLabel.visible = false;
            this.productionTimer.includeInLayout = true;
            this.productionTimer.visible = true;
            this.boostButton.visible = true;
            this.boostButton.includeInLayout = true;
            TweenMax.to(this.centerImage,0,{
               "colorMatrixFilter":{"saturation":1},
               "colorTransform":{
                  "tint":14473659,
                  "tintAmount":0
               }
            });
         }
         for each(_loc5_ in _loc2_)
         {
            if(!_loc5_.available)
            {
               _loc4_.userMayStart = false;
               break;
            }
         }
         if(_loc4_.userMayStart)
         {
            if(!this._productionRunning)
            {
               _loc4_.userMayStart = this.costs.affordable;
            }
         }
         if(!this._unhover)
         {
            this.productionTimer.data = _loc4_;
            this.boostButton.enabled = this.productionButton.enabled = !(!_loc4_.userMayStart && _loc4_.waitingForStart);
         }
         this._unhover = false;
         this.infoLabel.text = LocaUtils.getString("rcl.productionlayer","rcl.productionlayer.boostLabel",[this._instantFinishData.cost[this._currentGoodIndex]]);
         this.boostButton.showPlus = this._instantFinishData.cost[this._currentGoodIndex] > this._instantFinishData.rcStock;
         this.boostButton.priceToConfirm = this._instantFinishData.cost[this._currentGoodIndex];
         this.setOutputValues(_loc1_);
         this.setEffects(this._data.energyEffect,this._data.moodEffect);
      }
      
      private function checkNavigationButtons() : void
      {
         if(this._productionRunning)
         {
            this.scrollLeftButton.enabled = false;
            this.scrollLeftButton.visible = false;
            this.scrollRightButton.enabled = false;
            this.scrollRightButton.visible = false;
            var _temp_1:* = this.boostButton;
            this.productionButton.enabled = true;
            _temp_1.enabled = true;
         }
         else
         {
            this.scrollRightButton.enabled = this._currentGoodIndex < this._data.productionOptions.length - 1;
            this.scrollRightButton.visible = this._currentGoodIndex < this._data.productionOptions.length - 1;
            this.scrollLeftButton.enabled = this._currentGoodIndex > 0;
            this.scrollLeftButton.visible = this._currentGoodIndex > 0;
         }
      }
      
      public function get currentGoodIndex() : int
      {
         return this._currentGoodIndex;
      }
      
      private function setEffects(param1:SimpleItemVo, param2:SimpleItemVo) : void
      {
         this.energyIcon.dynaBmpSourceName = param1.imageId;
         this.energyIcon.dynaLibName = param1.dynaLibName;
         var _loc3_:String = "";
         if(param1.colorModifier == 0)
         {
            this.energyLabel.setStyle("styleName","outcomeNeutral");
         }
         else if(param1.colorModifier > 0)
         {
            _loc3_ = "+";
            this.energyLabel.setStyle("styleName","outcomePositive");
         }
         else
         {
            _loc3_ = "-";
            this.energyLabel.setStyle("styleName","outcomeNegative");
         }
         this.energyLabel.text = _loc3_ + LocaUtils.getThousendSeperatedNumber(Math.abs(param1.amount));
         this.moodIcon.dynaBmpSourceName = param2.imageId;
         this.moodIcon.dynaLibName = param2.dynaLibName;
         _loc3_ = "";
         if(param2.colorModifier == 0)
         {
            this.moodLabel.setStyle("styleName","outcomeNeutral");
         }
         else if(param2.colorModifier > 0)
         {
            _loc3_ = "+";
            this.moodLabel.setStyle("styleName","outcomePositive");
         }
         else
         {
            _loc3_ = "-";
            this.moodLabel.setStyle("styleName","outcomeNegative");
         }
         this.moodLabel.text = _loc3_ + LocaUtils.getThousendSeperatedNumber(Math.abs(param2.amount));
      }
      
      private function setTooltips() : void
      {
         var _loc1_:Number = this._data.upgradeCountTotal - this._data.harvestCount;
         this.upgradeProgressComponent.progressBar.toolTip = LocaUtils.getString("rcl.tooltips.productionBook","rcl.tooltips.productionBook.upgradeBar",[_loc1_]);
         this.upgradeProgressComponent.upgradeButton.toolTip = LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.upgradeButton");
         this.scrollLeftButton.toolTip = LocaUtils.getString("rcl.tooltips.productionBook","rcl.tooltips.productionBook.arrowLeft");
         this.scrollRightButton.toolTip = LocaUtils.getString("rcl.tooltips.productionBook","rcl.tooltips.productionBook.arrowRight");
         this.productionTimer.progressBar.toolTip = LocaUtils.getString("rcl.tooltips.productionBook","rcl.tooltips.productionBook.timer");
         this.effectFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.productionBook","rcl.tooltips.productionBook.aboutCityBalance");
         this.currencyFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.productionBook","rcl.tooltips.productionBook.aboutCurrencies");
         this.upgradeFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.productionBook","rcl.tooltips.productionBook.aboutUpgrade");
         this.energyGroup.toolTip = LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.effects.energy");
         this.moodGroup.toolTip = LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.effects.mood");
         this.costs.icon.toolTip = LocaUtils.getString("rcl.tooltips.productionBook","rcl.tooltips.productionBook.pPoints");
      }
      
      private function setOutputValues(param1:ProductionGoodObjectVo) : void
      {
         var _loc2_:Array = [];
         _loc2_.push(param1.productionIncome);
         this.effectsList.dataProvider = new ArrayCollection(_loc2_);
      }
      
      private function setCosts(param1:ProductionGoodObjectVo) : void
      {
         this.costs.priceLabel = Math.abs(param1.productionCostProductionPoints).toString();
         this.costs.affordable = this._data.currentProductionPoints >= Math.abs(param1.productionCostProductionPoints);
      }
      
      private function centerCardboard_rollOverHandler(param1:MouseEvent) : void
      {
         dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,ServerTagConstants.GOOD_NORMAL + "Production",(this._data.productionOptions[this._currentGoodIndex] as ProductionGoodObjectVo).config.id));
      }
      
      private function centerCardboard_rollOutHandler(param1:MouseEvent) : void
      {
         dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER));
      }
      
      private function boostButton_rollOverHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = this.productionTimer;
         this.productionTimer.includeInLayout = false;
         _temp_1.visible = false;
         var _temp_2:* = this.infoLabel;
         var _loc2_:Boolean;
         this.infoLabel.includeInLayout = _loc2_ = true;
         _temp_2.visible = false;
      }
      
      private function boostButton_rollOutHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = this.productionTimer;
         this.productionTimer.includeInLayout = true;
         _temp_1.visible = true;
         var _temp_2:* = this.infoLabel;
         var _loc2_:Boolean;
         this.infoLabel.includeInLayout = _loc2_ = false;
         _temp_2.visible = true;
      }
      
      private function boostButton_clickHandler(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(INSTANT_PRODUCTION));
      }
      
      private function _ProductionPopup_Array1_c() : Array
      {
         return [this._ProductionPopup_VGroup1_c()];
      }
      
      private function _ProductionPopup_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 740;
         _loc1_.height = 340;
         _loc1_.bottom = 10;
         _loc1_.gap = 5;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._ProductionPopup_Group1_c(),this._ProductionPopup_LocaLabel1_i(),this._ProductionPopup_Group2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProductionPopup_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 700;
         _loc1_.height = 8;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProductionPopup_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.top = 18;
         _loc1_.percentWidth = 90;
         _loc1_.height = 32;
         _loc1_.styleName = "flavorText";
         _loc1_.id = "flavorText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavorText = _loc1_;
         BindingManager.executeBindings(this,"flavorText",this.flavorText);
         return _loc1_;
      }
      
      private function _ProductionPopup_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ProductionPopup_Group3_c(),this._ProductionPopup_Group5_c(),this._ProductionPopup_VGroup6_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProductionPopup_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 0;
         _loc1_.top = 0;
         _loc1_.mxmlContent = [this._ProductionPopup_StickyNoteComponent1_c(),this._ProductionPopup_StickyNoteComponent2_c(),this._ProductionPopup_BriskMCDynaLib1_c(),this._ProductionPopup_Group4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProductionPopup_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.width = 226;
         _loc1_.top = 60;
         _loc1_.height = 170;
         _loc1_.tapeLeft = true;
         _loc1_.tapeRight = true;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ProductionPopup_Array5_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProductionPopup_Array5_c() : Array
      {
         return [this._ProductionPopup_DynamicImageButton1_i(),this._ProductionPopup_VGroup2_c()];
      }
      
      private function _ProductionPopup_DynamicImageButton1_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "featureInfoButton";
         _loc1_.right = 8;
         _loc1_.top = 23;
         _loc1_.addEventListener("click",this.__currencyFeatureButton_click);
         _loc1_.id = "currencyFeatureButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.currencyFeatureButton = _loc1_;
         BindingManager.executeBindings(this,"currencyFeatureButton",this.currencyFeatureButton);
         return _loc1_;
      }
      
      public function __currencyFeatureButton_click(param1:MouseEvent) : void
      {
         this.onCurrencyFeatureClick();
      }
      
      private function _ProductionPopup_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 45;
         _loc1_.mxmlContent = [this._ProductionPopup_PostitHeaderComponent1_i(),this._ProductionPopup_PriceComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProductionPopup_PostitHeaderComponent1_i() : PostitHeaderComponent
      {
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         _loc1_.id = "costsHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.costsHeader = _loc1_;
         BindingManager.executeBindings(this,"costsHeader",this.costsHeader);
         return _loc1_;
      }
      
      private function _ProductionPopup_PriceComponent1_i() : PriceComponent
      {
         var _loc1_:PriceComponent = new PriceComponent();
         _loc1_.percentWidth = 100;
         _loc1_.id = "costs";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.costs = _loc1_;
         BindingManager.executeBindings(this,"costs",this.costs);
         return _loc1_;
      }
      
      private function _ProductionPopup_StickyNoteComponent2_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.height = 128;
         _loc1_.top = -5;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ProductionPopup_Array7_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProductionPopup_Array7_c() : Array
      {
         return [this._ProductionPopup_DynamicImageButton2_i(),this._ProductionPopup_VGroup3_c()];
      }
      
      private function _ProductionPopup_DynamicImageButton2_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "featureInfoButton";
         _loc1_.right = 0;
         _loc1_.top = -12;
         _loc1_.addEventListener("click",this.__upgradeFeatureButton_click);
         _loc1_.id = "upgradeFeatureButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.upgradeFeatureButton = _loc1_;
         BindingManager.executeBindings(this,"upgradeFeatureButton",this.upgradeFeatureButton);
         return _loc1_;
      }
      
      public function __upgradeFeatureButton_click(param1:MouseEvent) : void
      {
         this.onUpgradeFeatureClick();
      }
      
      private function _ProductionPopup_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._ProductionPopup_ResidentialHeaderComponent1_i(),this._ProductionPopup_UpgradeProgressComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProductionPopup_ResidentialHeaderComponent1_i() : ResidentialHeaderComponent
      {
         var _loc1_:ResidentialHeaderComponent = new ResidentialHeaderComponent();
         _loc1_.id = "evaluationHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.evaluationHeader = _loc1_;
         BindingManager.executeBindings(this,"evaluationHeader",this.evaluationHeader);
         return _loc1_;
      }
      
      private function _ProductionPopup_UpgradeProgressComponent1_i() : UpgradeProgressComponent
      {
         var _loc1_:UpgradeProgressComponent = new UpgradeProgressComponent();
         _loc1_.id = "upgradeProgressComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.upgradeProgressComponent = _loc1_;
         BindingManager.executeBindings(this,"upgradeProgressComponent",this.upgradeProgressComponent);
         return _loc1_;
      }
      
      private function _ProductionPopup_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_top";
         _loc1_.top = -6;
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProductionPopup_Group4_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._ProductionPopup_BriskImageDynaLib1_c(),this._ProductionPopup_ResidentialHeaderComponent2_i(),this._ProductionPopup_HGroup1_c()];
         _loc1_.id = "neededGoodsGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.neededGoodsGroup = _loc1_;
         BindingManager.executeBindings(this,"neededGoodsGroup",this.neededGoodsGroup);
         return _loc1_;
      }
      
      private function _ProductionPopup_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_productionPopup";
         _loc1_.dynaBmpSourceName = "quadrillepaper_small";
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 193;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProductionPopup_ResidentialHeaderComponent2_i() : ResidentialHeaderComponent
      {
         var _loc1_:ResidentialHeaderComponent = new ResidentialHeaderComponent();
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 210;
         _loc1_.id = "requiredResourcesHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.requiredResourcesHeader = _loc1_;
         BindingManager.executeBindings(this,"requiredResourcesHeader",this.requiredResourcesHeader);
         return _loc1_;
      }
      
      private function _ProductionPopup_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.bottom = -20;
         _loc1_.height = 60;
         _loc1_.mxmlContent = [this._ProductionPopup_List1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProductionPopup_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._ProductionPopup_ClassFactory1_c();
         _loc1_.setStyle("skinClass",NeedsListSkin);
         _loc1_.id = "needsList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.needsList = _loc1_;
         BindingManager.executeBindings(this,"needsList",this.needsList);
         return _loc1_;
      }
      
      private function _ProductionPopup_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ProductionNeedItemRendered;
         return _loc1_;
      }
      
      private function _ProductionPopup_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 245;
         _loc1_.percentHeight = 100;
         _loc1_.top = 0;
         _loc1_.horizontalCenter = 10;
         _loc1_.mxmlContent = [this._ProductionPopup_Group6_c(),this._ProductionPopup_VGroup4_c(),this._ProductionPopup_VGroup5_c(),this._ProductionPopup_MultistateButton2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProductionPopup_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 12;
         _loc1_.mxmlContent = [this._ProductionPopup_StickyNoteComponent3_c(),this._ProductionPopup_HGroup2_c(),this._ProductionPopup_LocaLabel3_i(),this._ProductionPopup_BriskImageDynaLib2_i(),this._ProductionPopup_BriskImageDynaLib3_i(),this._ProductionPopup_UiInfolayerAlignmentLine1_i(),this._ProductionPopup_BriskImageDynaLib4_i(),this._ProductionPopup_BriskMCDynaLib2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProductionPopup_StickyNoteComponent3_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.width = 210;
         _loc1_.height = 75;
         _loc1_.top = 194;
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProductionPopup_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 4;
         _loc1_.top = 212;
         _loc1_.left = 15;
         _loc1_.right = 15;
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._ProductionPopup_TimerBarComponent1_i(),this._ProductionPopup_LocaLabel2_i(),this._ProductionPopup_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProductionPopup_TimerBarComponent1_i() : TimerBarComponent
      {
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         _loc1_.showBoostButton = false;
         _loc1_.id = "productionTimer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.productionTimer = _loc1_;
         BindingManager.executeBindings(this,"productionTimer",this.productionTimer);
         return _loc1_;
      }
      
      private function _ProductionPopup_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.maxWidth = 137;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.styleName = "residentialProgressComment";
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.id = "infoLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.infoLabel = _loc1_;
         BindingManager.executeBindings(this,"infoLabel",this.infoLabel);
         return _loc1_;
      }
      
      private function _ProductionPopup_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 40;
         _loc1_.imageNameLeft = "dd_button_icon";
         _loc1_.libNameLeft = "gui_resources_icons";
         _loc1_.useConfirmation = true;
         _loc1_.addEventListener("rollOver",this.__boostButton_rollOver);
         _loc1_.addEventListener("rollOut",this.__boostButton_rollOut);
         _loc1_.addEventListener("click",this.__boostButton_click);
         _loc1_.id = "boostButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.boostButton = _loc1_;
         BindingManager.executeBindings(this,"boostButton",this.boostButton);
         return _loc1_;
      }
      
      public function __boostButton_rollOver(param1:MouseEvent) : void
      {
         this.boostButton_rollOverHandler(param1);
      }
      
      public function __boostButton_rollOut(param1:MouseEvent) : void
      {
         this.boostButton_rollOutHandler(param1);
      }
      
      public function __boostButton_click(param1:MouseEvent) : void
      {
         this.boostButton_clickHandler(param1);
      }
      
      private function _ProductionPopup_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.top = 225;
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "largeDetailComponentSubtext";
         _loc1_.id = "itemLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemLabel = _loc1_;
         BindingManager.executeBindings(this,"itemLabel",this.itemLabel);
         return _loc1_;
      }
      
      private function _ProductionPopup_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_productionPopup";
         _loc1_.dynaBmpSourceName = "ressource_cardboard_big";
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 17;
         _loc1_.addEventListener("rollOut",this.__centerCardboard_rollOut);
         _loc1_.addEventListener("rollOver",this.__centerCardboard_rollOver);
         _loc1_.id = "centerCardboard";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.centerCardboard = _loc1_;
         BindingManager.executeBindings(this,"centerCardboard",this.centerCardboard);
         return _loc1_;
      }
      
      public function __centerCardboard_rollOut(param1:MouseEvent) : void
      {
         this.centerCardboard_rollOutHandler(param1);
      }
      
      public function __centerCardboard_rollOver(param1:MouseEvent) : void
      {
         this.centerCardboard_rollOverHandler(param1);
      }
      
      private function _ProductionPopup_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_largeGoodIcons";
         _loc1_.mouseEnabled = false;
         _loc1_.mouseChildren = false;
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = -20;
         _loc1_.id = "centerImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.centerImage = _loc1_;
         BindingManager.executeBindings(this,"centerImage",this.centerImage);
         return _loc1_;
      }
      
      private function _ProductionPopup_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         _loc1_.left = 0;
         _loc1_.top = 70;
         _loc1_.right = 0;
         _loc1_.lineId = 0;
         _loc1_.id = "uiInfolayerAlignmentLine";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.uiInfolayerAlignmentLine = _loc1_;
         BindingManager.executeBindings(this,"uiInfolayerAlignmentLine",this.uiInfolayerAlignmentLine);
         return _loc1_;
      }
      
      private function _ProductionPopup_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "architect_icon_blocked";
         _loc1_.visible = false;
         _loc1_.mouseEnabled = false;
         _loc1_.mouseChildren = false;
         _loc1_.verticalCenter = -12;
         _loc1_.horizontalCenter = -2;
         _loc1_.id = "blockedIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.blockedIcon = _loc1_;
         BindingManager.executeBindings(this,"blockedIcon",this.blockedIcon);
         return _loc1_;
      }
      
      private function _ProductionPopup_BriskMCDynaLib2_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_top";
         _loc1_.top = 11;
         _loc1_.horizontalCenter = 0;
         _loc1_.width = 140;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProductionPopup_VGroup4_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalAlign = "right";
         _loc1_.height = 240;
         _loc1_.verticalAlign = "middle";
         _loc1_.width = 41;
         _loc1_.left = -20;
         _loc1_.mxmlContent = [this._ProductionPopup_DynamicImageButton3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProductionPopup_DynamicImageButton3_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "listLeft";
         _loc1_.id = "scrollLeftButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.scrollLeftButton = _loc1_;
         BindingManager.executeBindings(this,"scrollLeftButton",this.scrollLeftButton);
         return _loc1_;
      }
      
      private function _ProductionPopup_VGroup5_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalAlign = "left";
         _loc1_.width = 41;
         _loc1_.height = 240;
         _loc1_.verticalAlign = "middle";
         _loc1_.right = -8;
         _loc1_.mxmlContent = [this._ProductionPopup_DynamicImageButton4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProductionPopup_DynamicImageButton4_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "listRight";
         _loc1_.id = "scrollRightButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.scrollRightButton = _loc1_;
         BindingManager.executeBindings(this,"scrollRightButton",this.scrollRightButton);
         return _loc1_;
      }
      
      private function _ProductionPopup_MultistateButton2_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.bottom = 10;
         _loc1_.width = 205;
         _loc1_.left = 13;
         _loc1_.id = "productionButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.productionButton = _loc1_;
         BindingManager.executeBindings(this,"productionButton",this.productionButton);
         return _loc1_;
      }
      
      private function _ProductionPopup_VGroup6_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = -2;
         _loc1_.paddingTop = 0;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "right";
         _loc1_.top = 0;
         _loc1_.right = 0;
         _loc1_.mxmlContent = [this._ProductionPopup_Group7_i(),this._ProductionPopup_Group9_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProductionPopup_Group7_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 229;
         _loc1_.mxmlContent = [this._ProductionPopup_BriskImageDynaLib5_c(),this._ProductionPopup_LocaLabel4_i(),this._ProductionPopup_BriskImageDynaLib6_c(),this._ProductionPopup_Group8_c(),this._ProductionPopup_BriskMCDynaLib3_c()];
         _loc1_.id = "quadrillePaperGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.quadrillePaperGroup = _loc1_;
         BindingManager.executeBindings(this,"quadrillePaperGroup",this.quadrillePaperGroup);
         return _loc1_;
      }
      
      private function _ProductionPopup_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_productionPopup_new";
         _loc1_.dynaBmpSourceName = "quadrillepaper_newproduktion";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProductionPopup_LocaLabel4_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.horizontalCenter = 0;
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "residentialOutputHeader";
         _loc1_.top = 26;
         _loc1_.id = "harvestOutcomeHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.harvestOutcomeHeader = _loc1_;
         BindingManager.executeBindings(this,"harvestOutcomeHeader",this.harvestOutcomeHeader);
         return _loc1_;
      }
      
      private function _ProductionPopup_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_productionPopup";
         _loc1_.dynaBmpSourceName = "head_line_medium";
         _loc1_.top = 44;
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProductionPopup_Group8_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 72;
         _loc1_.mxmlContent = [this._ProductionPopup_List2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProductionPopup_List2_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._ProductionPopup_ClassFactory2_c();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.left = 20;
         _loc1_.right = 20;
         _loc1_.setStyle("skinClass",OutputListSkin);
         _loc1_.id = "effectsList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.effectsList = _loc1_;
         BindingManager.executeBindings(this,"effectsList",this.effectsList);
         return _loc1_;
      }
      
      private function _ProductionPopup_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = OutputItemRendered;
         return _loc1_;
      }
      
      private function _ProductionPopup_BriskMCDynaLib3_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_top";
         _loc1_.top = -3;
         _loc1_.width = 145;
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProductionPopup_Group9_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._ProductionPopup_HGroup3_c(),this._ProductionPopup_DynamicImageButton5_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProductionPopup_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 95;
         _loc1_.mxmlContent = [this._ProductionPopup_StickyNoteComponent4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProductionPopup_StickyNoteComponent4_i() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.height = 110;
         _loc1_.width = 250;
         _loc1_.tapeLeft = true;
         _loc1_.tapeRight = true;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ProductionPopup_Array21_c);
         _loc1_.id = "effectsComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.effectsComponent = _loc1_;
         BindingManager.executeBindings(this,"effectsComponent",this.effectsComponent);
         return _loc1_;
      }
      
      private function _ProductionPopup_Array21_c() : Array
      {
         return [this._ProductionPopup_ResidentialHeaderComponent3_i(),this._ProductionPopup_HGroup4_c()];
      }
      
      private function _ProductionPopup_ResidentialHeaderComponent3_i() : ResidentialHeaderComponent
      {
         var _loc1_:ResidentialHeaderComponent = new ResidentialHeaderComponent();
         _loc1_.top = -5;
         _loc1_.id = "effectHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.effectHeader = _loc1_;
         BindingManager.executeBindings(this,"effectHeader",this.effectHeader);
         return _loc1_;
      }
      
      private function _ProductionPopup_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.top = 25;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._ProductionPopup_HGroup5_i(),this._ProductionPopup_HGroup6_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProductionPopup_HGroup5_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 50;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ProductionPopup_LocaLabel5_i(),this._ProductionPopup_BriskImageDynaLib7_i()];
         _loc1_.id = "moodGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.moodGroup = _loc1_;
         BindingManager.executeBindings(this,"moodGroup",this.moodGroup);
         return _loc1_;
      }
      
      private function _ProductionPopup_LocaLabel5_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "outcomeNeutral";
         _loc1_.id = "moodLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.moodLabel = _loc1_;
         BindingManager.executeBindings(this,"moodLabel",this.moodLabel);
         return _loc1_;
      }
      
      private function _ProductionPopup_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_resources_icons";
         _loc1_.dynaBmpSourceName = "layer_sad_icon";
         _loc1_.id = "moodIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.moodIcon = _loc1_;
         BindingManager.executeBindings(this,"moodIcon",this.moodIcon);
         return _loc1_;
      }
      
      private function _ProductionPopup_HGroup6_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 50;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ProductionPopup_LocaLabel6_i(),this._ProductionPopup_BriskImageDynaLib8_i()];
         _loc1_.id = "energyGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.energyGroup = _loc1_;
         BindingManager.executeBindings(this,"energyGroup",this.energyGroup);
         return _loc1_;
      }
      
      private function _ProductionPopup_LocaLabel6_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "outcomeNeutral";
         _loc1_.id = "energyLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.energyLabel = _loc1_;
         BindingManager.executeBindings(this,"energyLabel",this.energyLabel);
         return _loc1_;
      }
      
      private function _ProductionPopup_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_resources_icons";
         _loc1_.dynaBmpSourceName = "energy_icon";
         _loc1_.id = "energyIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.energyIcon = _loc1_;
         BindingManager.executeBindings(this,"energyIcon",this.energyIcon);
         return _loc1_;
      }
      
      private function _ProductionPopup_DynamicImageButton5_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "featureInfoButton";
         _loc1_.right = 37;
         _loc1_.top = 15;
         _loc1_.addEventListener("click",this.__effectFeatureButton_click);
         _loc1_.id = "effectFeatureButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.effectFeatureButton = _loc1_;
         BindingManager.executeBindings(this,"effectFeatureButton",this.effectFeatureButton);
         return _loc1_;
      }
      
      public function __effectFeatureButton_click(param1:MouseEvent) : void
      {
         this.onBalanceFeatureClick();
      }
      
      public function ___ProductionPopup_PaperPopupWindow1_addedToStage(param1:Event) : void
      {
         this.handleAdded();
      }
      
      private function _ProductionPopup_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = ServerResConst.RESOURCE_PRODUCTIONPOINTS;
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"costs.currencyType");
         result[1] = new Binding(this,function():uint
         {
            return UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM;
         },null,"uiInfolayerAlignmentLine.alignment");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get blockedIcon() : BriskImageDynaLib
      {
         return this._1384168581blockedIcon;
      }
      
      public function set blockedIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1384168581blockedIcon;
         if(_loc2_ !== param1)
         {
            this._1384168581blockedIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blockedIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get boostButton() : MultistateButton
      {
         return this._1322365109boostButton;
      }
      
      public function set boostButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1322365109boostButton;
         if(_loc2_ !== param1)
         {
            this._1322365109boostButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boostButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get centerCardboard() : BriskImageDynaLib
      {
         return this._988528383centerCardboard;
      }
      
      public function set centerCardboard(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._988528383centerCardboard;
         if(_loc2_ !== param1)
         {
            this._988528383centerCardboard = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"centerCardboard",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get centerImage() : BriskImageDynaLib
      {
         return this._1651530246centerImage;
      }
      
      public function set centerImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1651530246centerImage;
         if(_loc2_ !== param1)
         {
            this._1651530246centerImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"centerImage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get costs() : PriceComponent
      {
         return this._94849606costs;
      }
      
      public function set costs(param1:PriceComponent) : void
      {
         var _loc2_:Object = this._94849606costs;
         if(_loc2_ !== param1)
         {
            this._94849606costs = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costs",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get costsHeader() : PostitHeaderComponent
      {
         return this._1897254003costsHeader;
      }
      
      public function set costsHeader(param1:PostitHeaderComponent) : void
      {
         var _loc2_:Object = this._1897254003costsHeader;
         if(_loc2_ !== param1)
         {
            this._1897254003costsHeader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costsHeader",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get currencyFeatureButton() : DynamicImageButton
      {
         return this._724131529currencyFeatureButton;
      }
      
      public function set currencyFeatureButton(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._724131529currencyFeatureButton;
         if(_loc2_ !== param1)
         {
            this._724131529currencyFeatureButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currencyFeatureButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get effectFeatureButton() : DynamicImageButton
      {
         return this._1768900535effectFeatureButton;
      }
      
      public function set effectFeatureButton(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._1768900535effectFeatureButton;
         if(_loc2_ !== param1)
         {
            this._1768900535effectFeatureButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectFeatureButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get effectHeader() : ResidentialHeaderComponent
      {
         return this._713468034effectHeader;
      }
      
      public function set effectHeader(param1:ResidentialHeaderComponent) : void
      {
         var _loc2_:Object = this._713468034effectHeader;
         if(_loc2_ !== param1)
         {
            this._713468034effectHeader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectHeader",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get effectsComponent() : StickyNoteComponent
      {
         return this._911984155effectsComponent;
      }
      
      public function set effectsComponent(param1:StickyNoteComponent) : void
      {
         var _loc2_:Object = this._911984155effectsComponent;
         if(_loc2_ !== param1)
         {
            this._911984155effectsComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectsComponent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get effectsList() : List
      {
         return this._1678527680effectsList;
      }
      
      public function set effectsList(param1:List) : void
      {
         var _loc2_:Object = this._1678527680effectsList;
         if(_loc2_ !== param1)
         {
            this._1678527680effectsList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectsList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get energyGroup() : HGroup
      {
         return this._1840699177energyGroup;
      }
      
      public function set energyGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._1840699177energyGroup;
         if(_loc2_ !== param1)
         {
            this._1840699177energyGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"energyGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get energyIcon() : BriskImageDynaLib
      {
         return this._1464688417energyIcon;
      }
      
      public function set energyIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1464688417energyIcon;
         if(_loc2_ !== param1)
         {
            this._1464688417energyIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"energyIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get energyLabel() : LocaLabel
      {
         return this._1836601012energyLabel;
      }
      
      public function set energyLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1836601012energyLabel;
         if(_loc2_ !== param1)
         {
            this._1836601012energyLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"energyLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get evaluationHeader() : ResidentialHeaderComponent
      {
         return this._1415215337evaluationHeader;
      }
      
      public function set evaluationHeader(param1:ResidentialHeaderComponent) : void
      {
         var _loc2_:Object = this._1415215337evaluationHeader;
         if(_loc2_ !== param1)
         {
            this._1415215337evaluationHeader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"evaluationHeader",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get flavorText() : LocaLabel
      {
         return this._1684755691flavorText;
      }
      
      public function set flavorText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1684755691flavorText;
         if(_loc2_ !== param1)
         {
            this._1684755691flavorText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavorText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get harvestOutcomeHeader() : LocaLabel
      {
         return this._1708165014harvestOutcomeHeader;
      }
      
      public function set harvestOutcomeHeader(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1708165014harvestOutcomeHeader;
         if(_loc2_ !== param1)
         {
            this._1708165014harvestOutcomeHeader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"harvestOutcomeHeader",_loc2_,param1));
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
         var _loc2_:Object = this._1213523686infoLabel;
         if(_loc2_ !== param1)
         {
            this._1213523686infoLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoLabel",_loc2_,param1));
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
         var _loc2_:Object = this._2135689121itemLabel;
         if(_loc2_ !== param1)
         {
            this._2135689121itemLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get moodGroup() : HGroup
      {
         return this._899936824moodGroup;
      }
      
      public function set moodGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._899936824moodGroup;
         if(_loc2_ !== param1)
         {
            this._899936824moodGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get moodIcon() : BriskImageDynaLib
      {
         return this._306079728moodIcon;
      }
      
      public function set moodIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._306079728moodIcon;
         if(_loc2_ !== param1)
         {
            this._306079728moodIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get moodLabel() : LocaLabel
      {
         return this._895838659moodLabel;
      }
      
      public function set moodLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._895838659moodLabel;
         if(_loc2_ !== param1)
         {
            this._895838659moodLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get neededGoodsGroup() : Group
      {
         return this._1632688734neededGoodsGroup;
      }
      
      public function set neededGoodsGroup(param1:Group) : void
      {
         var _loc2_:Object = this._1632688734neededGoodsGroup;
         if(_loc2_ !== param1)
         {
            this._1632688734neededGoodsGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"neededGoodsGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get needsList() : List
      {
         return this._1093736667needsList;
      }
      
      public function set needsList(param1:List) : void
      {
         var _loc2_:Object = this._1093736667needsList;
         if(_loc2_ !== param1)
         {
            this._1093736667needsList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needsList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get productionButton() : MultistateButton
      {
         return this._1531914933productionButton;
      }
      
      public function set productionButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1531914933productionButton;
         if(_loc2_ !== param1)
         {
            this._1531914933productionButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"productionButton",_loc2_,param1));
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
         var _loc2_:Object = this._1352315404productionTimer;
         if(_loc2_ !== param1)
         {
            this._1352315404productionTimer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"productionTimer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get quadrillePaperGroup() : Group
      {
         return this._758791194quadrillePaperGroup;
      }
      
      public function set quadrillePaperGroup(param1:Group) : void
      {
         var _loc2_:Object = this._758791194quadrillePaperGroup;
         if(_loc2_ !== param1)
         {
            this._758791194quadrillePaperGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"quadrillePaperGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get requiredResourcesHeader() : ResidentialHeaderComponent
      {
         return this._677746547requiredResourcesHeader;
      }
      
      public function set requiredResourcesHeader(param1:ResidentialHeaderComponent) : void
      {
         var _loc2_:Object = this._677746547requiredResourcesHeader;
         if(_loc2_ !== param1)
         {
            this._677746547requiredResourcesHeader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"requiredResourcesHeader",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollLeftButton() : DynamicImageButton
      {
         return this._75450170scrollLeftButton;
      }
      
      public function set scrollLeftButton(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._75450170scrollLeftButton;
         if(_loc2_ !== param1)
         {
            this._75450170scrollLeftButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollLeftButton",_loc2_,param1));
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
         var _loc2_:Object = this._1993162593scrollRightButton;
         if(_loc2_ !== param1)
         {
            this._1993162593scrollRightButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollRightButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get uiInfolayerAlignmentLine() : UiInfolayerAlignmentLine
      {
         return this._1218573432uiInfolayerAlignmentLine;
      }
      
      public function set uiInfolayerAlignmentLine(param1:UiInfolayerAlignmentLine) : void
      {
         var _loc2_:Object = this._1218573432uiInfolayerAlignmentLine;
         if(_loc2_ !== param1)
         {
            this._1218573432uiInfolayerAlignmentLine = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uiInfolayerAlignmentLine",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get upgradeFeatureButton() : DynamicImageButton
      {
         return this._1087758604upgradeFeatureButton;
      }
      
      public function set upgradeFeatureButton(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._1087758604upgradeFeatureButton;
         if(_loc2_ !== param1)
         {
            this._1087758604upgradeFeatureButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upgradeFeatureButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get upgradeProgressComponent() : UpgradeProgressComponent
      {
         return this._2007548268upgradeProgressComponent;
      }
      
      public function set upgradeProgressComponent(param1:UpgradeProgressComponent) : void
      {
         var _loc2_:Object = this._2007548268upgradeProgressComponent;
         if(_loc2_ !== param1)
         {
            this._2007548268upgradeProgressComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upgradeProgressComponent",_loc2_,param1));
            }
         }
      }
   }
}

