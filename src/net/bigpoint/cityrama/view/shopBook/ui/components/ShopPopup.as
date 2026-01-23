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
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public static const TO_STORE:String = "toStore";
      
      public static const TO_STORAGE:String = "toStorage";
      
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
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._ShopPopup_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_shopBook_ui_components_ShopPopupWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return ShopPopup[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.styleName = "shop";
         this.showBackButton = false;
         this.width = 785;
         this.height = 430;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._ShopPopup_Array1_c);
         this.addEventListener("creationComplete",this.___ShopPopup_PaperPopupWindow1_creationComplete);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         ShopPopup._watcherSetupUtil = param1;
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
      
      private function handleCreationComplete() : void
      {
         this.storageHeader.text = LocaUtils.getString("rcl.shopbook.layer","rcl.shopbook.layer.yourStorage");
         this.toStorage.label = LocaUtils.getString("rcl.shopbook.layer","rcl.shopbook.layer.toStorage");
         this.toStore.label = LocaUtils.getString("rcl.shopbook.layer","rcl.shopbook.layer.deliver");
         this.flavorText.text = LocaUtils.getString("rcl.shopbook.layer","rcl.shopbook.layer.flavorText");
         this.effectHeader.text = LocaUtils.getString("rcl.shopbook.layer","rcl.shopbook.layer.stats.capital");
         this.evaluationHeader.text = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.currentUpgrade",[this._data.currentLevel]);
         var _loc1_:String = LocaUtils.getString("rcl.tooltips.shopBook","rcl.tooltips.shopBook.fillShop",[LocaUtils.getString("rcl.playfielditems.name","rcl.playfielditems.name." + this._data.localeId.toString())]);
         this.numericStepper.setStyle("tooltipMaxPlus",_loc1_);
         this.numericStepper.setStyle("tooltipMaxMinus",LocaUtils.getString("rcl.tooltips.shopBook","rcl.tooltips.shopBook.fillStorage"));
         this.upgradeProgressComponent.buyButton.addEventListener(MouseEvent.MOUSE_OVER,this.shopUpgradeValues);
         this.upgradeProgressComponent.upgradeButton.addEventListener(MouseEvent.MOUSE_OVER,this.shopUpgradeValues);
         this.numericStepper.addEventListener(Event.CHANGE,this.handleStepperChange);
         this.numericStepper.addEventListener(NumericStepperComponent.KEY_RETURN,this.handleReturn);
         this.toStorage.addEventListener(MouseEvent.CLICK,this.handleToStorageClick);
         this.toStore.addEventListener(MouseEvent.CLICK,this.handleToStoreClick);
      }
      
      private function shopUpgradeValues(param1:MouseEvent) : void
      {
         this.upgradeProgressComponent.buyButton.removeEventListener(MouseEvent.MOUSE_OVER,this.shopUpgradeValues);
         this.upgradeProgressComponent.upgradeButton.removeEventListener(MouseEvent.MOUSE_OVER,this.shopUpgradeValues);
         this.upgradeProgressComponent.buyButton.addEventListener(MouseEvent.MOUSE_OUT,this.showCurrentLevelData);
         this.upgradeProgressComponent.upgradeButton.addEventListener(MouseEvent.MOUSE_OUT,this.showCurrentLevelData);
         this.stockLabel.text = this._data.nextLevelData.maxStock.toString();
         this.radiusLabel.text = this._data.nextLevelData.radiusX + LocaUtils.getString("rcl.shopbook.layer","rcl.shopbook.layer.radiusDivider") + this._data.nextLevelData.radiusY;
         this.moodLabel.text = this._data.nextLevelData.currentMood.toString();
         this.energyLabel.text = this._data.nextLevelData.currentEnergy.toString();
         if(this._data.nextLevelData.currentMood > 0)
         {
            this.moodLabel.styleName = "shopEffectsPositive";
         }
         else if(this._data.nextLevelData.currentMood < 0)
         {
            this.moodLabel.styleName = "shopEffectsNegative";
         }
         else
         {
            this.moodLabel.styleName = "shopEffectsNeutral";
         }
         if(this._data.nextLevelData.currentEnergy > 0)
         {
            this.energyLabel.styleName = "shopEffectsPositive";
         }
         else if(this._data.nextLevelData.currentEnergy < 0)
         {
            this.energyLabel.styleName = "shopEffectsNegative";
         }
         else
         {
            this.energyLabel.styleName = "shopEffectsNeutral";
         }
      }
      
      private function showCurrentLevelData(param1:MouseEvent = null) : void
      {
         if(param1 != null)
         {
            this.upgradeProgressComponent.buyButton.addEventListener(MouseEvent.MOUSE_OVER,this.shopUpgradeValues);
            this.upgradeProgressComponent.upgradeButton.addEventListener(MouseEvent.MOUSE_OVER,this.shopUpgradeValues);
            this.upgradeProgressComponent.buyButton.removeEventListener(MouseEvent.MOUSE_OUT,this.showCurrentLevelData);
            this.upgradeProgressComponent.upgradeButton.removeEventListener(MouseEvent.MOUSE_OUT,this.showCurrentLevelData);
         }
         this.stockLabel.text = this._data.maxStock.toString();
         this.radiusLabel.text = this._data.radiusX + LocaUtils.getString("rcl.shopbook.layer","rcl.shopbook.layer.radiusDivider") + this._data.radiusY;
         this.moodLabel.text = this._data.currentMood.toString();
         this.energyLabel.text = this._data.currentEnergy.toString();
         if(this._data.currentMood > 0)
         {
            this.moodLabel.styleName = "shopEffectsPositive";
         }
         else if(this._data.currentMood < 0)
         {
            this.moodLabel.styleName = "shopEffectsNegative";
         }
         else
         {
            this.moodLabel.styleName = "shopEffectsNeutral";
         }
         if(this._data.currentEnergy > 0)
         {
            this.energyLabel.styleName = "shopEffectsPositive";
         }
         else if(this._data.currentEnergy < 0)
         {
            this.energyLabel.styleName = "shopEffectsNegative";
         }
         else
         {
            this.energyLabel.styleName = "shopEffectsNeutral";
         }
      }
      
      private function handleReturn(param1:Event) : void
      {
         if(this.toStore.enabled)
         {
            if(this._data.storeStock[this._itemIndex].stockCurrent + this.numericStepper.value <= this._data.storeStock[this._itemIndex].stockMax)
            {
               this.toStore.enabled = false;
               this.setMouse(this.toStore,false);
               dispatchEvent(new Event(TO_STORE));
            }
            else
            {
               this.toStore.enabled = false;
            }
         }
      }
      
      private function handleToStoreClick(param1:MouseEvent) : void
      {
         if(this._data.storeStock[this._itemIndex].stockCurrent + this.numericStepper.value <= this._data.storeStock[this._itemIndex].stockMax)
         {
            this.toStore.enabled = false;
            this.setMouse(this.toStore,false);
            dispatchEvent(new Event(TO_STORE));
         }
         else
         {
            this.toStore.enabled = false;
         }
      }
      
      private function handleToStorageClick(param1:MouseEvent) : void
      {
         if(this._data.storeStock[this._itemIndex].stockCurrent >= this.numericStepper.value)
         {
            this.toStorage.enabled = false;
            this.setMouse(this.toStorage,false);
            this.toStorage.mouseEnabled = false;
            this.toStorage.mouseChildren = false;
            dispatchEvent(new Event(TO_STORAGE));
         }
         else
         {
            this.toStorage.enabled = false;
         }
      }
      
      private function handleStepperChange(param1:Event) : void
      {
         this.actionButtonCheck();
      }
      
      private function actionButtonCheck() : void
      {
         var _loc1_:GoodObjectVo = this._data.storageInterests[this._itemIndex];
         var _loc2_:ShopStockGoodVo = this._data.storeStock[this._itemIndex];
         if(this.numericStepper.value > _loc2_.stockCurrent)
         {
            this.toStorage.enabled = false;
            this.setMouse(this.toStorage,false);
         }
         else
         {
            this.toStorage.enabled = true;
            this.setMouse(this.toStorage,true);
         }
         if(this.numericStepper.value > _loc1_.playerStock || this.numericStepper.value > _loc2_.stockMax - _loc2_.stockCurrent)
         {
            this.toStore.enabled = false;
            this.setMouse(this.toStore,false);
         }
         else
         {
            this.toStore.enabled = true;
            this.setMouse(this.toStore,true);
         }
         if(this.numericStepper.value == 0)
         {
            this.toStorage.enabled = false;
            this.setMouse(this.toStorage,false);
            this.toStore.enabled = false;
            this.setMouse(this.toStore,false);
         }
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
         if(this._data.storageInterests.length > 0)
         {
            this.goodImage.dynaBmpSourceName = "large_" + this._data.storageInterests[this._itemIndex].gfxId;
            this.numericStepper.value = 1;
            return;
         }
         throw new ArgumentError("StorageInterests empty!");
      }
      
      private function handleClose(param1:Event) : void
      {
         dispatchEvent(param1);
      }
      
      public function set data(param1:ShopDetailViewVo) : void
      {
         this._data = param1;
         this._dataIsDirty = true;
         invalidateProperties();
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:ArrayCollection = null;
         var _loc2_:GoodObjectVo = null;
         var _loc3_:ArrayCollection = null;
         var _loc4_:ShopStockGoodVo = null;
         var _loc5_:UpgradeProgressVo = null;
         super.commitProperties();
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            title = LocaUtils.getString("rcl.playfielditems.name","rcl.playfielditems.name." + this._data.localeId.toString());
            this.shopHeader.text = LocaUtils.getString("rcl.playfielditems.name","rcl.playfielditems.name." + this._data.localeId.toString()).toUpperCase();
            _loc1_ = new ArrayCollection();
            for each(_loc2_ in this._data.storageInterests)
            {
               _loc1_.addItem(_loc2_);
            }
            this.storageList.dataProvider = _loc1_;
            _loc3_ = new ArrayCollection();
            for each(_loc4_ in this._data.storeStock)
            {
               _loc3_.addItem(_loc4_);
            }
            this.shopList.dataProvider = _loc3_;
            this.setTooltips();
            this.showGood();
            this.updateButtons();
            this.actionButtonCheck();
            _loc5_ = new UpgradeProgressVo();
            _loc5_.currentProgress = 1;
            _loc5_.hasEnoughMoney = this._data.hasEnoughDD;
            _loc5_.neededProgress = 1;
            _loc5_.price = this._data.upgradeMMPrice;
            _loc5_.upgradeCurrentLevel = this._data.currentLevel;
            _loc5_.upgradeMaxLevel = this._data.upgradeMaxLevel;
            _loc5_.upgradeNextLevel = this._data.upgradeNextLevel;
            this.upgradeProgressComponent.data = _loc5_;
            this.upgradeProgressComponent.buyButton.showSparkle = true;
            this.showCurrentLevelData();
         }
      }
      
      private function updateButtons() : void
      {
         this.numericStepper.enableMaxMinusButton(this._data.storeStock[this._itemIndex].stockCurrent > 0);
         this.numericStepper.enableMaxPlusButton(this._data.storageInterests[this._itemIndex].playerStock > 0 && this._data.storeStock[this._itemIndex].stockCurrent < this._data.storeStock[this._itemIndex].stockMax);
      }
      
      private function setTooltips() : void
      {
         this.toStorage.toolTip = LocaUtils.getString("rcl.tooltips.shopBook","rcl.tooltips.shopBook.into.storage");
         var _loc1_:String = LocaUtils.getString("rcl.playfielditems.name","rcl.playfielditems.name." + this._data.localeId);
         this.toStore.toolTip = LocaUtils.getString("rcl.tooltips.shopBook","rcl.tooltips.shopBook.into.shop",[_loc1_]);
         this.upgradeProgressComponent.upgradeButton.toolTip = LocaUtils.getString("rcl.tooltips.shopBook","rcl.tooltips.shopBook.button.upgrade");
         if(this._data)
         {
            if(!this._data.hasEnoughDD)
            {
               this.upgradeProgressComponent.buyButton.toolTip = LocaUtils.getString("rcl.tooltips.shopBook","rcl.tooltips.shopBook.button.getMore");
            }
            else
            {
               this.upgradeProgressComponent.buyButton.toolTip = LocaUtils.getString("rcl.tooltips.shopBook","rcl.tooltips.shopBook.button.instantupgrade");
            }
         }
      }
      
      private function setMouse(param1:MultistateButton, param2:Boolean) : void
      {
         param1.mouseChildren = param2;
         param1.mouseEnabled = param2;
      }
      
      private function cardBoard_rollOverHandler(param1:MouseEvent) : void
      {
         dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.SHOW_UI_INFOLAYER,this._data.storageInterests[0].groupType,this._data.storageInterests[0].config.id));
      }
      
      private function cardBoard_rollOutHandler(param1:MouseEvent) : void
      {
         dispatchEvent(new UIInfolayerDispatcherEvent(UIInfolayerDispatcherEvent.HIDE_UI_INFOLAYER));
      }
      
      private function _ShopPopup_Array1_c() : Array
      {
         return [this._ShopPopup_VGroup1_c()];
      }
      
      private function _ShopPopup_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.height = 340;
         _loc1_.bottom = 10;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 10;
         _loc1_.mxmlContent = [this._ShopPopup_LocaLabel1_i(),this._ShopPopup_HGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ShopPopup_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 90;
         _loc1_.height = 25;
         _loc1_.styleName = "flavorText";
         _loc1_.text = "";
         _loc1_.id = "flavorText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavorText = _loc1_;
         BindingManager.executeBindings(this,"flavorText",this.flavorText);
         return _loc1_;
      }
      
      private function _ShopPopup_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._ShopPopup_Group1_c(),this._ShopPopup_HGroup3_c(),this._ShopPopup_Group6_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ShopPopup_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 240;
         _loc1_.height = 300;
         _loc1_.mxmlContent = [this._ShopPopup_Group2_c(),this._ShopPopup_BriskImageDynaLib1_c(),this._ShopPopup_HGroup2_c(),this._ShopPopup_StickyNoteComponent1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ShopPopup_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 11;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ShopPopup_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_productionPopup";
         _loc1_.left = 3;
         _loc1_.dynaBmpSourceName = "quadrillepaper_medium";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ShopPopup_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.paddingTop = 110;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ShopPopup_Group3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ShopPopup_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ShopPopup_LocaLabel2_i(),this._ShopPopup_BriskImageDynaLib2_c(),this._ShopPopup_List1_i(),this._ShopPopup_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ShopPopup_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.horizontalCenter = 0;
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "residentialOutputHeader";
         _loc1_.top = 22;
         _loc1_.id = "storageHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.storageHeader = _loc1_;
         BindingManager.executeBindings(this,"storageHeader",this.storageHeader);
         return _loc1_;
      }
      
      private function _ShopPopup_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_productionPopup";
         _loc1_.dynaBmpSourceName = "head_line_medium";
         _loc1_.top = 34;
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ShopPopup_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._ShopPopup_ClassFactory1_c();
         _loc1_.left = 20;
         _loc1_.right = 20;
         _loc1_.verticalCenter = 0;
         _loc1_.setStyle("skinClass",SorageInterestsListSkin);
         _loc1_.id = "storageList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.storageList = _loc1_;
         BindingManager.executeBindings(this,"storageList",this.storageList);
         return _loc1_;
      }
      
      private function _ShopPopup_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = StorageInterestItemRendered;
         return _loc1_;
      }
      
      private function _ShopPopup_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.bottom = 8;
         _loc1_.width = 186;
         _loc1_.imageNameLeft = "button_icon_storage";
         _loc1_.libNameLeft = "gui_popups_shopBook";
         _loc1_.horizontalCenter = 0;
         _loc1_.enabled = false;
         _loc1_.id = "toStorage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.toStorage = _loc1_;
         BindingManager.executeBindings(this,"toStorage",this.toStorage);
         return _loc1_;
      }
      
      private function _ShopPopup_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.height = 128;
         _loc1_.right = 2;
         _loc1_.tapeTop = true;
         _loc1_.top = -5;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ShopPopup_Array7_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ShopPopup_Array7_c() : Array
      {
         return [this._ShopPopup_VGroup2_c()];
      }
      
      private function _ShopPopup_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._ShopPopup_ResidentialHeaderComponent1_i(),this._ShopPopup_UpgradeProgressComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ShopPopup_ResidentialHeaderComponent1_i() : ResidentialHeaderComponent
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
      
      private function _ShopPopup_UpgradeProgressComponent1_i() : UpgradeProgressComponent
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
      
      private function _ShopPopup_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = -10;
         _loc1_.width = 270;
         _loc1_.mxmlContent = [this._ShopPopup_Group4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ShopPopup_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._ShopPopup_Group5_c(),this._ShopPopup_BriskImageDynaLib3_i(),this._ShopPopup_BriskImageDynaLib4_i(),this._ShopPopup_BriskMCDynaLib1_c(),this._ShopPopup_UiInfolayerAlignmentLine1_i(),this._ShopPopup_NumericMaxStepperComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ShopPopup_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
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
      
      private function _ShopPopup_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_productionPopup";
         _loc1_.dynaBmpSourceName = "ressource_cardboard_big";
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 6;
         _loc1_.addEventListener("rollOut",this.__cardBoard_rollOut);
         _loc1_.addEventListener("rollOver",this.__cardBoard_rollOver);
         _loc1_.id = "cardBoard";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.cardBoard = _loc1_;
         BindingManager.executeBindings(this,"cardBoard",this.cardBoard);
         return _loc1_;
      }
      
      public function __cardBoard_rollOut(param1:MouseEvent) : void
      {
         this.cardBoard_rollOutHandler(param1);
      }
      
      public function __cardBoard_rollOver(param1:MouseEvent) : void
      {
         this.cardBoard_rollOverHandler(param1);
      }
      
      private function _ShopPopup_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_largeGoodIcons";
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = -40;
         _loc1_.mouseChildren = false;
         _loc1_.mouseEnabled = false;
         _loc1_.id = "goodImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.goodImage = _loc1_;
         BindingManager.executeBindings(this,"goodImage",this.goodImage);
         return _loc1_;
      }
      
      private function _ShopPopup_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_top";
         _loc1_.top = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.width = 140;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ShopPopup_UiInfolayerAlignmentLine1_i() : UiInfolayerAlignmentLine
      {
         var _loc1_:UiInfolayerAlignmentLine = new UiInfolayerAlignmentLine();
         _loc1_.left = 0;
         _loc1_.top = 120;
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
      
      private function _ShopPopup_NumericMaxStepperComponent1_i() : NumericMaxStepperComponent
      {
         var _loc1_:NumericMaxStepperComponent = new NumericMaxStepperComponent();
         _loc1_.bottom = 17;
         _loc1_.width = 230;
         _loc1_.id = "numericStepper";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.numericStepper = _loc1_;
         BindingManager.executeBindings(this,"numericStepper",this.numericStepper);
         return _loc1_;
      }
      
      private function _ShopPopup_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 240;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ShopPopup_Group7_c(),this._ShopPopup_BriskImageDynaLib5_c(),this._ShopPopup_HGroup4_c(),this._ShopPopup_HGroup5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ShopPopup_Group7_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 10;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ShopPopup_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_productionPopup";
         _loc1_.left = 6;
         _loc1_.top = 5;
         _loc1_.dynaBmpSourceName = "quadrillepaper_medium";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ShopPopup_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.paddingTop = 110;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ShopPopup_Group8_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ShopPopup_Group8_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ShopPopup_LocaLabel3_i(),this._ShopPopup_BriskImageDynaLib6_c(),this._ShopPopup_List2_i(),this._ShopPopup_MultistateButton2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ShopPopup_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.horizontalCenter = 0;
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "residentialOutputHeader";
         _loc1_.top = 22;
         _loc1_.id = "shopHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.shopHeader = _loc1_;
         BindingManager.executeBindings(this,"shopHeader",this.shopHeader);
         return _loc1_;
      }
      
      private function _ShopPopup_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_productionPopup";
         _loc1_.dynaBmpSourceName = "head_line_medium";
         _loc1_.top = 34;
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ShopPopup_List2_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._ShopPopup_ClassFactory2_c();
         _loc1_.top = 57;
         _loc1_.left = 20;
         _loc1_.right = 20;
         _loc1_.setStyle("skinClass",SorageInterestsListSkin);
         _loc1_.id = "shopList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.shopList = _loc1_;
         BindingManager.executeBindings(this,"shopList",this.shopList);
         return _loc1_;
      }
      
      private function _ShopPopup_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ShopStockItemRendered;
         return _loc1_;
      }
      
      private function _ShopPopup_MultistateButton2_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.bottom = 18;
         _loc1_.width = 186;
         _loc1_.imageNameLeft = "button_icon_commercial";
         _loc1_.libNameLeft = "gui_popups_shopBook";
         _loc1_.horizontalCenter = 0;
         _loc1_.enabled = false;
         _loc1_.id = "toStore";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.toStore = _loc1_;
         BindingManager.executeBindings(this,"toStore",this.toStore);
         return _loc1_;
      }
      
      private function _ShopPopup_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._ShopPopup_StickyNoteComponent2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ShopPopup_StickyNoteComponent2_i() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.height = 130;
         _loc1_.percentWidth = 100;
         _loc1_.tapeTop = true;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ShopPopup_Array15_c);
         _loc1_.id = "effectsComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.effectsComponent = _loc1_;
         BindingManager.executeBindings(this,"effectsComponent",this.effectsComponent);
         return _loc1_;
      }
      
      private function _ShopPopup_Array15_c() : Array
      {
         return [this._ShopPopup_VGroup3_c()];
      }
      
      private function _ShopPopup_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.paddingLeft = 5;
         _loc1_.paddingRight = 5;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._ShopPopup_ResidentialHeaderComponent2_i(),this._ShopPopup_HGroup6_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ShopPopup_ResidentialHeaderComponent2_i() : ResidentialHeaderComponent
      {
         var _loc1_:ResidentialHeaderComponent = new ResidentialHeaderComponent();
         _loc1_.gap = 0;
         _loc1_.text = "";
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
      
      private function _ShopPopup_HGroup6_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 7;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ShopPopup_VGroup4_c(),this._ShopPopup_VGroup5_c(),this._ShopPopup_Group9_c(),this._ShopPopup_VGroup6_c(),this._ShopPopup_VGroup7_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ShopPopup_VGroup4_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._ShopPopup_BriskImageDynaLib7_i(),this._ShopPopup_BriskImageDynaLib8_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ShopPopup_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_shopBook";
         _loc1_.dynaBmpSourceName = "shopstock";
         _loc1_.id = "stockItem";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.stockItem = _loc1_;
         BindingManager.executeBindings(this,"stockItem",this.stockItem);
         return _loc1_;
      }
      
      private function _ShopPopup_BriskImageDynaLib8_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_shopBook";
         _loc1_.dynaBmpSourceName = "shopradius";
         _loc1_.id = "radiusIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.radiusIcon = _loc1_;
         BindingManager.executeBindings(this,"radiusIcon",this.radiusIcon);
         return _loc1_;
      }
      
      private function _ShopPopup_VGroup5_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.minWidth = 55;
         _loc1_.horizontalAlign = "left";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.gap = 20;
         _loc1_.paddingTop = 7;
         _loc1_.mxmlContent = [this._ShopPopup_LocaLabel4_i(),this._ShopPopup_LocaLabel5_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ShopPopup_LocaLabel4_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "shopEffectsNeutral";
         _loc1_.id = "stockLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.stockLabel = _loc1_;
         BindingManager.executeBindings(this,"stockLabel",this.stockLabel);
         return _loc1_;
      }
      
      private function _ShopPopup_LocaLabel5_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "shopEffectsNeutral";
         _loc1_.id = "radiusLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.radiusLabel = _loc1_;
         BindingManager.executeBindings(this,"radiusLabel",this.radiusLabel);
         return _loc1_;
      }
      
      private function _ShopPopup_Group9_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 10;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ShopPopup_VGroup6_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ShopPopup_BriskImageDynaLib9_i(),this._ShopPopup_BriskImageDynaLib10_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ShopPopup_BriskImageDynaLib9_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_resources_icons";
         _loc1_.dynaBmpSourceName = "layer_happyness_icon";
         _loc1_.id = "_ShopPopup_BriskImageDynaLib9";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ShopPopup_BriskImageDynaLib9 = _loc1_;
         BindingManager.executeBindings(this,"_ShopPopup_BriskImageDynaLib9",this._ShopPopup_BriskImageDynaLib9);
         return _loc1_;
      }
      
      private function _ShopPopup_BriskImageDynaLib10_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_shopBook";
         _loc1_.dynaBmpSourceName = "shopenergy";
         _loc1_.id = "energyIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.energyIcon = _loc1_;
         BindingManager.executeBindings(this,"energyIcon",this.energyIcon);
         return _loc1_;
      }
      
      private function _ShopPopup_VGroup7_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalAlign = "left";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.gap = 20;
         _loc1_.paddingTop = 7;
         _loc1_.mxmlContent = [this._ShopPopup_LocaLabel6_i(),this._ShopPopup_LocaLabel7_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ShopPopup_LocaLabel6_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "shopEffectsNegative";
         _loc1_.id = "moodLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.moodLabel = _loc1_;
         BindingManager.executeBindings(this,"moodLabel",this.moodLabel);
         return _loc1_;
      }
      
      private function _ShopPopup_LocaLabel7_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.text = "";
         _loc1_.styleName = "shopEffectsPositive";
         _loc1_.id = "energyLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.energyLabel = _loc1_;
         BindingManager.executeBindings(this,"energyLabel",this.energyLabel);
         return _loc1_;
      }
      
      public function ___ShopPopup_PaperPopupWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete();
      }
      
      private function _ShopPopup_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():uint
         {
            return UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM;
         },null,"uiInfolayerAlignmentLine.alignment");
         result[1] = new Binding(this,function():String
         {
            var _loc1_:* = LocaUtils.getString("rcl.tooltips.shopBook","rcl.tooltips.shopBook.maxStock");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"stockItem.toolTip");
         result[2] = new Binding(this,function():String
         {
            var _loc1_:* = LocaUtils.getString("rcl.tooltips.shopBook","rcl.tooltips.shopBook.radius");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"radiusIcon.toolTip");
         result[3] = new Binding(this,function():String
         {
            var _loc1_:* = LocaUtils.getString("rcl.tooltips.shopBook","rcl.tooltips.shopBook.maxStock");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"stockLabel.toolTip");
         result[4] = new Binding(this,function():String
         {
            var _loc1_:* = LocaUtils.getString("rcl.tooltips.shopBook","rcl.tooltips.shopBook.radius");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"radiusLabel.toolTip");
         result[5] = new Binding(this,function():String
         {
            var _loc1_:* = LocaUtils.getString("rcl.tooltips.shopBook","rcl.tooltips.shopBook.mood");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_ShopPopup_BriskImageDynaLib9.toolTip");
         result[6] = new Binding(this,function():String
         {
            var _loc1_:* = LocaUtils.getString("rcl.tooltips.shopBook","rcl.tooltips.shopBook.energy");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"energyIcon.toolTip");
         result[7] = new Binding(this,function():String
         {
            var _loc1_:* = LocaUtils.getString("rcl.tooltips.shopBook","rcl.tooltips.shopBook.mood");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"moodLabel.toolTip");
         result[8] = new Binding(this,function():String
         {
            var _loc1_:* = LocaUtils.getString("rcl.tooltips.shopBook","rcl.tooltips.shopBook.energy");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"energyLabel.toolTip");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get cardBoard() : BriskImageDynaLib
      {
         return this._271979082cardBoard;
      }
      
      public function set cardBoard(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._271979082cardBoard;
         if(_loc2_ !== param1)
         {
            this._271979082cardBoard = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cardBoard",_loc2_,param1));
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
      public function get goodImage() : BriskImageDynaLib
      {
         return this._1356539550goodImage;
      }
      
      public function set goodImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1356539550goodImage;
         if(_loc2_ !== param1)
         {
            this._1356539550goodImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goodImage",_loc2_,param1));
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
      public function get numericStepper() : NumericMaxStepperComponent
      {
         return this._884864252numericStepper;
      }
      
      public function set numericStepper(param1:NumericMaxStepperComponent) : void
      {
         var _loc2_:Object = this._884864252numericStepper;
         if(_loc2_ !== param1)
         {
            this._884864252numericStepper = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numericStepper",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get radiusIcon() : BriskImageDynaLib
      {
         return this._186942507radiusIcon;
      }
      
      public function set radiusIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._186942507radiusIcon;
         if(_loc2_ !== param1)
         {
            this._186942507radiusIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"radiusIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get radiusLabel() : LocaLabel
      {
         return this._1502948738radiusLabel;
      }
      
      public function set radiusLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1502948738radiusLabel;
         if(_loc2_ !== param1)
         {
            this._1502948738radiusLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"radiusLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shopHeader() : LocaLabel
      {
         return this._1463740125shopHeader;
      }
      
      public function set shopHeader(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1463740125shopHeader;
         if(_loc2_ !== param1)
         {
            this._1463740125shopHeader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopHeader",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shopList() : List
      {
         return this._345533260shopList;
      }
      
      public function set shopList(param1:List) : void
      {
         var _loc2_:Object = this._345533260shopList;
         if(_loc2_ !== param1)
         {
            this._345533260shopList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopList",_loc2_,param1));
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
         var _loc2_:Object = this._1267755849stockItem;
         if(_loc2_ !== param1)
         {
            this._1267755849stockItem = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stockItem",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stockLabel() : LocaLabel
      {
         return this._647927166stockLabel;
      }
      
      public function set stockLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._647927166stockLabel;
         if(_loc2_ !== param1)
         {
            this._647927166stockLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stockLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get storageHeader() : LocaLabel
      {
         return this._1378814184storageHeader;
      }
      
      public function set storageHeader(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1378814184storageHeader;
         if(_loc2_ !== param1)
         {
            this._1378814184storageHeader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"storageHeader",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get storageList() : List
      {
         return this._525815367storageList;
      }
      
      public function set storageList(param1:List) : void
      {
         var _loc2_:Object = this._525815367storageList;
         if(_loc2_ !== param1)
         {
            this._525815367storageList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"storageList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get toStorage() : MultistateButton
      {
         return this._747477888toStorage;
      }
      
      public function set toStorage(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._747477888toStorage;
         if(_loc2_ !== param1)
         {
            this._747477888toStorage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"toStorage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get toStore() : MultistateButton
      {
         return this._1165701338toStore;
      }
      
      public function set toStore(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1165701338toStore;
         if(_loc2_ !== param1)
         {
            this._1165701338toStore = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"toStore",_loc2_,param1));
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

