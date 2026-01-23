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
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.resources.ResourceManager;
   import mx.styles.*;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerRestrictionConstants;
   import net.bigpoint.cityrama.model.detailViews.vo.ResidentialDetailViewVo;
   import net.bigpoint.cityrama.model.detailViews.vo.SimpleItemVo;
   import net.bigpoint.cityrama.model.needsSystem.vo.ResidentialNeedPopupVo;
   import net.bigpoint.cityrama.model.residentialBook.vo.ResidentialNeedVo;
   import net.bigpoint.cityrama.model.residentialBook.vo.UpgradeProgressVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.DynamicPlusButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MasteryComponent;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.common.components.UpgradeProgressComponent;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.cityrama.view.common.skins.DynamicPlusButtonSkin;
   import net.bigpoint.cityrama.view.residentialBook.ui.skins.NeedsListSkin;
   import net.bigpoint.cityrama.view.residentialBook.ui.skins.OutputListSkin;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class ResidentialOverviewContentComponent extends Group
   {
      
      public static const CHANGE_RESIDENTS_EVENT:String = "CHANGE_RESIDENTS_EVENT";
      
      public static const BUY_PERMITS:String = "BUY_PERMITS";
      
      public static const OPEN_NEED_FEATURE:String = "OPEN_NEED_FEATURE";
      
      public static const OPEN_UPGRADE_FEATURE:String = "OPEN_UPGRADE_FEATURE";
      
      public static const OPEN_BALANCE_FEATURE:String = "OPEN_BALANCE_FEATURE";
      
      public static const CLOSE_AND_HARVEST:String = "CLOSE_AND_HARVEST";
      
      private var _1651530246centerImage:BriskImageDynaLib;
      
      private var _577985790changeButton:DynamicPlusButton;
      
      private var _1163225682cycleLabel:LocaLabel;
      
      private var _2034685672cycleLengthLabel:LocaLabel;
      
      private var _1768900535effectFeatureButton:DynamicImageButton;
      
      private var _713468034effectHeader:ResidentialHeaderComponent;
      
      private var _911984155effectsComponent:StickyNoteComponent;
      
      private var _1840699177energyGroup:HGroup;
      
      private var _1464688417energyIcon:BriskImageDynaLib;
      
      private var _1836601012energyLabel:LocaLabel;
      
      private var _1415215337evaluationHeader:ResidentialHeaderComponent;
      
      private var _1684755691flavorText:LocaLabel;
      
      private var _1341975547harvestButton:MultistateButton;
      
      private var _13393732harvestButtonGroup:VGroup;
      
      private var _1708165014harvestOutcomeHeader:LocaLabel;
      
      private var _1920126745harvestProgressComponent:TimerBarComponent;
      
      private var _804679831harvestProgressGroup:VGroup;
      
      private var _1830499226masteryComponent:MasteryComponent;
      
      private var _899936824moodGroup:HGroup;
      
      private var _306079728moodIcon:BriskImageDynaLib;
      
      private var _895838659moodLabel:LocaLabel;
      
      private var _239061202needFeatureButton:DynamicImageButton;
      
      private var _1304809590needsHeader:ResidentialHeaderComponent;
      
      private var _1093736667needsList:List;
      
      private var _1062744848outcomeList:List;
      
      private var _539958732polaroid:BriskImageDynaLib;
      
      private var _758791194quadrillePaperGroup:Group;
      
      private var _311765527residentIcon:BriskImageDynaLib;
      
      private var _311755234residentInfo:HGroup;
      
      private var _311618565residentName:LocaLabel;
      
      private var _1431748902residentNumbers:LocaLabel;
      
      private var _1036945555residentsData:VGroup;
      
      private var _1087758604upgradeFeatureButton:DynamicImageButton;
      
      private var _2007548268upgradeProgressComponent:UpgradeProgressComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ResidentialDetailViewVo;
      
      private var _isDirty:Boolean;
      
      private var _unhover:Boolean;
      
      private var _dynamicIsDirty:Boolean;
      
      public function ResidentialOverviewContentComponent()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.maxWidth = 755;
         this.horizontalCenter = 0;
         this.mxmlContent = [this._ResidentialOverviewContentComponent_VGroup1_c()];
         this.addEventListener("creationComplete",this.___ResidentialOverviewContentComponent_Group1_creationComplete);
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
         var _temp_1:* = this.upgradeFeatureButton;
         this.upgradeFeatureButton.enabled = false;
         _temp_1.visible = false;
      }
      
      private function handleUpgradeMouseOut(param1:MouseEvent) : void
      {
         this._isDirty = true;
         this._unhover = true;
         invalidateProperties();
      }
      
      private function handleUpgradeMouseOver(param1:MouseEvent) : void
      {
         var _loc3_:ResidentialNeedPopupVo = null;
         var _loc5_:String = null;
         this.centerImage.dynaBmpSourceName = "FieldItem_" + this._data.nextResidentialDetail.gfxId + "_level" + (this._data.upgradeCurrentLevel + 1) + "_big";
         var _loc2_:Array = [];
         _loc2_.push(this._data.nextResidentialDetail.rentalIncomeVo);
         _loc2_.push(this._data.nextResidentialDetail.needIncomeVo);
         this.outcomeList.dataProvider = new ArrayCollection(_loc2_);
         _loc2_ = [];
         for each(_loc3_ in this._data.nextResidentialDetail.needs)
         {
            _loc5_ = ResourceManager.getInstance().getString(String("rcl.playfielditems.name"),String("rcl.playfielditems.name." + _loc3_.parentLocaleId));
            switch(this._data.residentialFieldObjectVo.currentResidentType)
            {
               case ServerResConst.RESOURCE_RICHMEN:
                  var _loc4_:String = _loc5_ + " + " + _loc3_.vcBonus + " " + ResourceManager.getInstance().getString(String("rcl.misc.resources"),String("rcl.misc.resources.virtualcurrency"));
                  break;
               case ServerResConst.RESOURCE_WORKERS:
                  _loc4_ = _loc5_ + " + " + _loc3_.ppBonus + " " + ResourceManager.getInstance().getString(String("rcl.misc.resources"),String("rcl.misc.resources.productionpoints"));
                  break;
               case ServerResConst.RESOURCE_ACADEMICS:
                  _loc4_ = _loc5_ + " + " + _loc3_.epBonus + " " + ResourceManager.getInstance().getString(String("rcl.misc.resources"),String("rcl.misc.resources.educationpoints"));
            }
            _loc2_.push(new ResidentialNeedVo(_loc3_.dynaLibName,_loc3_.imageId,_loc3_.fulfilled,_loc3_.locked,_loc3_.buildingLevelRequired,null));
         }
         _loc2_ = this.ensureUpgradeNeedListIsInOrder(_loc2_);
         this.needsList.dataProvider = new ArrayCollection(_loc2_);
         this.setResidents(this._data.nextResidentialDetail.residentInfo);
         this.setEffects(this._data.nextResidentialDetail.energyEffect,this._data.nextResidentialDetail.moodEffect);
         this.setTooltips();
      }
      
      private function ensureUpgradeNeedListIsInOrder(param1:Array) : Array
      {
         var _loc4_:ResidentialNeedVo = null;
         var _loc5_:ResidentialNeedVo = null;
         var _loc2_:Array = this.needsList.dataProvider.toArray();
         var _loc3_:Array = new Array();
         for each(_loc4_ in _loc2_)
         {
            for each(_loc5_ in param1)
            {
               if(_loc4_.assetImageName == _loc5_.assetImageName)
               {
                  _loc3_[_loc2_.indexOf(_loc4_)] = _loc5_;
                  break;
               }
            }
         }
         return _loc3_;
      }
      
      private function onNeedFeatureClick() : void
      {
         dispatchEvent(new Event(OPEN_NEED_FEATURE,true,true));
      }
      
      private function onUpgradeFeatureClick() : void
      {
         dispatchEvent(new Event(OPEN_UPGRADE_FEATURE,true,true));
      }
      
      private function onBalanceFeatureClick() : void
      {
         dispatchEvent(new Event(OPEN_BALANCE_FEATURE,true,true));
      }
      
      public function set data(param1:ResidentialDetailViewVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._isDirty = true;
            this._dynamicIsDirty = true;
            this._data = param1;
            invalidateProperties();
         }
      }
      
      public function set updateDynamicData(param1:ResidentialDetailViewVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._dynamicIsDirty = true;
            this._data = param1;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:Array = null;
         var _loc2_:ResidentialNeedPopupVo = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:* = false;
         super.commitProperties();
         if(Boolean(this._data) && this._isDirty)
         {
            this._isDirty = false;
            this.upgradeProgressComponent.removeEventListener(MouseEvent.MOUSE_OVER,this.handleUpgradeMouseOver);
            this.upgradeProgressComponent.removeEventListener(MouseEvent.MOUSE_OUT,this.handleUpgradeMouseOut);
            this.upgradeProgressComponent.buyButton.removeEventListener(MouseEvent.MOUSE_OVER,this.handleUpgradeMouseOver);
            this.upgradeProgressComponent.buyButton.removeEventListener(MouseEvent.MOUSE_OUT,this.handleUpgradeMouseOut);
            this.flavorText.text = ResourceManager.getInstance().getString(String("rcl.booklayer.residential"),String("rcl.booklayer.residential.flavour"));
            this.harvestButton.label = ResourceManager.getInstance().getString(String("rcl.booklayer.residential"),String("rcl.booklayer.residential.harvest.button.capital"));
            this.needsHeader.text = ResourceManager.getInstance().getString(String("rcl.booklayer.residential"),String("rcl.booklayer.residential.needs"));
            this.effectHeader.text = ResourceManager.getInstance().getString(String("rcl.booklayer.residential"),String("rcl.booklayer.residential.effects"));
            this.harvestOutcomeHeader.text = ResourceManager.getInstance().getString(String("rcl.booklayer.residential"),String("rcl.booklayer.residential.outcome"));
            this.cycleLabel.text = ResourceManager.getInstance().getString(String("rcl.booklayer.residential"),String("rcl.booklayer.residential.every"));
            this.cycleLengthLabel.text = LocaUtils.getDuration(this._data.harvestCycleLength / 1000);
            this.centerImage.dynaBmpSourceName = "FieldItem_" + this._data.gfxId + "_level" + this._data.upgradeCurrentLevel + "_big";
            this.centerImage.dynaLibName = this._data.libName;
            switch(this._data.restrictionForPolaroid)
            {
               case ServerRestrictionConstants.SEA_WHITELIST:
                  this.polaroid.dynaBmpSourceName = "building_water_bg_polaroid_big";
                  break;
               case ServerRestrictionConstants.COAST_WHITELIST:
                  this.polaroid.dynaBmpSourceName = "building_coastal_bg_polaroid_big";
                  break;
               case ServerRestrictionConstants.SNOW_WHITELIST:
                  this.polaroid.dynaBmpSourceName = "building_snow_bg_polaroid_big";
                  break;
               case ServerRestrictionConstants.MOUNTAIN_WHITELIST:
                  this.polaroid.dynaBmpSourceName = "building_mountain_bg_polaroid_big";
                  break;
               default:
                  this.polaroid.dynaBmpSourceName = "building_bg_polaroid_big";
            }
            _loc1_ = [];
            _loc1_.push(this._data.rentalIncomeVo);
            _loc1_.push(this._data.needIncomeVo);
            this.outcomeList.dataProvider = new ArrayCollection(_loc1_);
            _loc1_ = [];
            for each(_loc2_ in this._data.needs)
            {
               _loc4_ = ResourceManager.getInstance().getString(String("rcl.playfielditems.name"),String("rcl.playfielditems.name." + _loc2_.parentLocaleId));
               switch(this._data.residentialFieldObjectVo.currentResidentType)
               {
                  case ServerResConst.RESOURCE_RICHMEN:
                     _loc3_ = _loc4_ + " + " + _loc2_.vcBonus + " " + ResourceManager.getInstance().getString(String("rcl.misc.resources"),String("rcl.misc.resources.virtualcurrency"));
                     break;
                  case ServerResConst.RESOURCE_WORKERS:
                     _loc3_ = _loc4_ + " + " + _loc2_.ppBonus + " " + ResourceManager.getInstance().getString(String("rcl.misc.resources"),String("rcl.misc.resources.productionpoints"));
                     break;
                  case ServerResConst.RESOURCE_ACADEMICS:
                     _loc3_ = _loc4_ + " + " + _loc2_.epBonus + " " + ResourceManager.getInstance().getString(String("rcl.misc.resources"),String("rcl.misc.resources.educationpoints"));
               }
               _loc1_.push(new ResidentialNeedVo(_loc2_.dynaLibName,_loc2_.imageId,_loc2_.fulfilled,_loc2_.locked,_loc2_.buildingLevelRequired,_loc3_));
            }
            _loc1_.sortOn("levelToUnlock",Array.NUMERIC);
            this.needsList.dataProvider = new ArrayCollection(_loc1_);
            if(this._data.nextResidentialDetail)
            {
               if(this._data.upgradeReady && Boolean(this._data.nextResidentialDetail))
               {
                  this.upgradeProgressComponent.addEventListener(MouseEvent.MOUSE_OVER,this.handleUpgradeMouseOver);
                  this.upgradeProgressComponent.addEventListener(MouseEvent.MOUSE_OUT,this.handleUpgradeMouseOut);
               }
               this.upgradeProgressComponent.buyButton.addEventListener(MouseEvent.MOUSE_OVER,this.handleUpgradeMouseOver);
               this.upgradeProgressComponent.buyButton.addEventListener(MouseEvent.MOUSE_OUT,this.handleUpgradeMouseOut);
            }
            this.harvestProgressComponent.addEventListener(TimerBarComponent.EVENT_TIMER_UP,this.handleHarvestReady);
            this.setEffects(this._data.energyEffect,this._data.moodEffect);
            this.setResidents(this._data.residentInfo);
            this.setTapes();
            this.setTooltips();
         }
         if(Boolean(this._data) && this._dynamicIsDirty)
         {
            if(this._data.currentMasteryChallenge)
            {
               this.masteryComponent.data = this._data.currentMasteryChallenge;
               this.evaluationHeader.text = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.mastery.header");
            }
            else
            {
               this.evaluationHeader.text = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.currentUpgrade",[this._data.upgradeCurrentLevel]);
            }
            _loc5_ = this._data.currentMasteryChallenge != null;
            if(this._data.residentialFieldObjectVo.buildingDTO.currentMasteryBonus)
            {
               _loc5_ &&= this._data.residentialFieldObjectVo.buildingDTO.currentMasteryBonus.highestUnlockedBonusGroup < 5;
            }
            this.masteryComponent.visible = this.masteryComponent.includeInLayout = _loc5_;
            this.upgradeProgressComponent.visible = this.upgradeProgressComponent.includeInLayout = !_loc5_;
            this.changeButton.inactive = !this._data.residentChangePossible;
            this.changeButton.showPlus = !this._data.hasEnoughPermits;
            this.changeButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.residentialBook"),String("rcl.tooltips.residentialBook.residents.changeButton"));
            if(!this._data.residentChangePossible)
            {
               this.changeButton.toolTip = LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.residents.changeButton.locked",[this._data.residentChangeLevel]);
               this.changeButton.showPlus = false;
            }
            var _loc6_:UpgradeProgressVo = new UpgradeProgressVo();
            _loc6_.currentProgress = this._data.harvestCount;
            null.hasEnoughMoney = this._data.hasEnoughDD;
            null.neededProgress = this._data.upgradeCountTotal;
            null.price = this._data.upgradePrice;
            null.upgradeCurrentLevel = this._data.upgradeCurrentLevel;
            null.upgradeMaxLevel = this._data.upgradeMaxLevel;
            null.upgradeNextLevel = this._data.upgradeNextLevel;
            this.upgradeProgressComponent.data = null;
            this.upgradeProgressComponent.buyButton.showSparkle = true;
            if(!this._unhover)
            {
               var _loc7_:TimerBarComponentVo = new TimerBarComponentVo();
               _loc7_.startTime = this._data.harvestEndTime - this._data.harvestCycleLength;
               null.currentTime = this._data.harvestCurrentTime;
               null.targetTime = this._data.harvestEndTime;
               this.harvestProgressComponent.data = null;
            }
            this._unhover = false;
         }
      }
      
      private function setTooltips() : void
      {
         var _loc1_:int = this._data.upgradeCountTotal - this._data.harvestCount;
         this.upgradeProgressComponent.progressBar.toolTip = StringUtil.substitute(ResourceManager.getInstance().getString(String("rcl.tooltips.residentialBook"),String("rcl.tooltips.residentialBook.upgradeBar")),_loc1_);
         this.upgradeProgressComponent.upgradeButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.residentialBook"),String("rcl.tooltips.residentialBook.upgradeButton"));
         this.harvestProgressComponent.progressBar.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.residentialBook"),String("rcl.tooltips.residentialBook.timer"));
         this.polaroid.toolTip = ResourceManager.getInstance().getString(String("rcl.playfielditems.name"),String("rcl.playfielditems.name." + this._data.localeId));
         this.centerImage.toolTip = this.polaroid.toolTip;
         this.needFeatureButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.residentialBook"),String("rcl.tooltips.residentialBook.feature.needs"));
         this.effectFeatureButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.residentialBook"),String("rcl.tooltips.residentialBook.feature.balance"));
         this.upgradeFeatureButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.residentialBook"),String("rcl.tooltips.residentialBook.feature.upgrade"));
         this.energyGroup.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.residentialBook"),String("rcl.tooltips.residentialBook.effects.energy"));
         this.moodGroup.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.residentialBook"),String("rcl.tooltips.residentialBook.effects.mood"));
         this.harvestButton.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.residentialBook"),String("rcl.tooltips.residentialBook.harvestButton"));
      }
      
      private function setTapes() : void
      {
         this.effectsComponent.rightTape.setStyle("top",20);
         this.effectsComponent.rightTape.setStyle("bottom",20);
         this.effectsComponent.leftTape.setStyle("top",20);
         this.effectsComponent.leftTape.setStyle("bottom",20);
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
      
      private function setResidents(param1:SimpleItemVo) : void
      {
         this.residentIcon.dynaLibName = param1.dynaLibName;
         this.residentIcon.dynaBmpSourceName = param1.imageId;
         this.residentIcon.toolTip = param1.imageTooltip;
         this.residentName.text = param1.text;
         this.residentNumbers.text = param1.amount + "/" + param1.maxAmount;
         this.residentsData.toolTip = param1.textTooltip;
      }
      
      private function handleChangeResidentClick() : void
      {
         if(!this.changeButton.inactive)
         {
            if(!this.changeButton.showPlus)
            {
               dispatchEvent(new Event(CHANGE_RESIDENTS_EVENT,false));
            }
            else
            {
               dispatchEvent(new Event(BUY_PERMITS,false));
            }
         }
      }
      
      private function handleHarvestReady(param1:Event) : void
      {
         var _temp_1:* = this.harvestProgressGroup;
         this.harvestProgressGroup.includeInLayout = false;
         _temp_1.visible = false;
         var _temp_2:* = this.harvestButtonGroup;
         var _loc2_:Boolean;
         this.harvestButtonGroup.includeInLayout = _loc2_ = true;
         _temp_2.visible = false;
      }
      
      private function handleHarvest(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(CLOSE_AND_HARVEST,true));
         this.harvestButton.enabled = false;
      }
      
      private function _ResidentialOverviewContentComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.height = 345;
         _loc1_.gap = 0;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_LocaLabel1_i(),this._ResidentialOverviewContentComponent_HGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 90;
         _loc1_.height = 38;
         _loc1_.styleName = "flavorText";
         _loc1_.verticalCenter = 0;
         _loc1_.id = "flavorText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavorText = _loc1_;
         BindingManager.executeBindings(this,"flavorText",this.flavorText);
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_Group2_c(),this._ResidentialOverviewContentComponent_Group3_c(),this._ResidentialOverviewContentComponent_VGroup6_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_BriskImageDynaLib1_c(),this._ResidentialOverviewContentComponent_StickyNoteComponent1_c(),this._ResidentialOverviewContentComponent_ResidentialHeaderComponent2_i(),this._ResidentialOverviewContentComponent_DynamicImageButton1_i(),this._ResidentialOverviewContentComponent_BriskMCDynaLib1_c(),this._ResidentialOverviewContentComponent_DynamicImageButton2_i(),this._ResidentialOverviewContentComponent_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_residentialPopup";
         _loc1_.dynaBmpSourceName = "quadrillepaper_bg";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.height = 140;
         _loc1_.top = -5;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ResidentialOverviewContentComponent_Array5_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_Array5_c() : Array
      {
         return [this._ResidentialOverviewContentComponent_VGroup2_c()];
      }
      
      private function _ResidentialOverviewContentComponent_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_ResidentialHeaderComponent1_i(),this._ResidentialOverviewContentComponent_UpgradeProgressComponent1_i(),this._ResidentialOverviewContentComponent_MasteryComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_ResidentialHeaderComponent1_i() : ResidentialHeaderComponent
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
      
      private function _ResidentialOverviewContentComponent_UpgradeProgressComponent1_i() : UpgradeProgressComponent
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
      
      private function _ResidentialOverviewContentComponent_MasteryComponent1_i() : MasteryComponent
      {
         var _loc1_:MasteryComponent = new MasteryComponent();
         _loc1_.id = "masteryComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.masteryComponent = _loc1_;
         BindingManager.executeBindings(this,"masteryComponent",this.masteryComponent);
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_ResidentialHeaderComponent2_i() : ResidentialHeaderComponent
      {
         var _loc1_:ResidentialHeaderComponent = new ResidentialHeaderComponent();
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 130;
         _loc1_.id = "needsHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.needsHeader = _loc1_;
         BindingManager.executeBindings(this,"needsHeader",this.needsHeader);
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_DynamicImageButton1_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "featureInfoButton";
         _loc1_.right = 20;
         _loc1_.top = 126;
         _loc1_.addEventListener("click",this.__needFeatureButton_click);
         _loc1_.id = "needFeatureButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.needFeatureButton = _loc1_;
         BindingManager.executeBindings(this,"needFeatureButton",this.needFeatureButton);
         return _loc1_;
      }
      
      public function __needFeatureButton_click(param1:MouseEvent) : void
      {
         this.onNeedFeatureClick();
      }
      
      private function _ResidentialOverviewContentComponent_BriskMCDynaLib1_c() : BriskMCDynaLib
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
      
      private function _ResidentialOverviewContentComponent_DynamicImageButton2_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "featureInfoButton";
         _loc1_.right = 20;
         _loc1_.top = 7;
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
      
      private function _ResidentialOverviewContentComponent_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.bottom = -4;
         _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_List1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._ResidentialOverviewContentComponent_ClassFactory1_c();
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
      
      private function _ResidentialOverviewContentComponent_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = NeedItemRendered;
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 210;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_StickyNoteComponent2_c(),this._ResidentialOverviewContentComponent_StickyNoteComponent3_c(),this._ResidentialOverviewContentComponent_BriskImageDynaLib3_i(),this._ResidentialOverviewContentComponent_Group4_c(),this._ResidentialOverviewContentComponent_BriskMCDynaLib2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_StickyNoteComponent2_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.percentWidth = 100;
         _loc1_.height = 90;
         _loc1_.top = -8;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ResidentialOverviewContentComponent_Array9_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_Array9_c() : Array
      {
         return [this._ResidentialOverviewContentComponent_HGroup3_i()];
      }
      
      private function _ResidentialOverviewContentComponent_HGroup3_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.maxHeight = 80;
         _loc1_.paddingTop = -5;
         _loc1_.percentWidth = 100;
         _loc1_.gap = 2;
         _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_HGroup4_c(),this._ResidentialOverviewContentComponent_VGroup3_i(),this._ResidentialOverviewContentComponent_HGroup5_c()];
         _loc1_.id = "residentInfo";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.residentInfo = _loc1_;
         BindingManager.executeBindings(this,"residentInfo",this.residentInfo);
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.width = 42;
         _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_BriskImageDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_residentialPopupNEW";
         _loc1_.dynaBmpSourceName = "postit_icon_worker";
         _loc1_.id = "residentIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.residentIcon = _loc1_;
         BindingManager.executeBindings(this,"residentIcon",this.residentIcon);
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_VGroup3_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 95;
         _loc1_.horizontalAlign = "left";
         _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_LocaLabel2_i(),this._ResidentialOverviewContentComponent_LocaLabel3_i()];
         _loc1_.id = "residentsData";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.residentsData = _loc1_;
         BindingManager.executeBindings(this,"residentsData",this.residentsData);
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "residentialOutputItem";
         _loc1_.maxWidth = 95;
         _loc1_.maxDisplayedLines = 1;
         _loc1_.id = "residentName";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.residentName = _loc1_;
         BindingManager.executeBindings(this,"residentName",this.residentName);
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "residentNumbers";
         _loc1_.maxWidth = 92;
         _loc1_.maxDisplayedLines = 1;
         _loc1_.id = "residentNumbers";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.residentNumbers = _loc1_;
         BindingManager.executeBindings(this,"residentNumbers",this.residentNumbers);
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.paddingTop = -6;
         _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_DynamicPlusButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_DynamicPlusButton1_i() : DynamicPlusButton
      {
         var _loc1_:DynamicPlusButton = new DynamicPlusButton();
         _loc1_.iconLibName = "gui_popups_residentialPopupNEW";
         _loc1_.iconImageName = "button_icon_key";
         _loc1_.width = 40;
         _loc1_.setStyle("skinClass",DynamicPlusButtonSkin);
         _loc1_.addEventListener("click",this.__changeButton_click);
         _loc1_.id = "changeButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.changeButton = _loc1_;
         BindingManager.executeBindings(this,"changeButton",this.changeButton);
         return _loc1_;
      }
      
      public function __changeButton_click(param1:MouseEvent) : void
      {
         this.handleChangeResidentClick();
      }
      
      private function _ResidentialOverviewContentComponent_StickyNoteComponent3_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.percentWidth = 100;
         _loc1_.height = 75;
         _loc1_.top = 233;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ResidentialOverviewContentComponent_Array14_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_Array14_c() : Array
      {
         return [this._ResidentialOverviewContentComponent_VGroup4_i(),this._ResidentialOverviewContentComponent_VGroup5_i()];
      }
      
      private function _ResidentialOverviewContentComponent_VGroup4_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalCenter = 0;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.top = -10;
         _loc1_.right = 5;
         _loc1_.includeInLayout = true;
         _loc1_.visible = true;
         _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_TimerBarComponent1_i()];
         _loc1_.id = "harvestProgressGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.harvestProgressGroup = _loc1_;
         BindingManager.executeBindings(this,"harvestProgressGroup",this.harvestProgressGroup);
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_TimerBarComponent1_i() : TimerBarComponent
      {
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         _loc1_.showBoostButton = false;
         _loc1_.activeTimer = true;
         _loc1_.percentWidth = 100;
         _loc1_.id = "harvestProgressComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.harvestProgressComponent = _loc1_;
         BindingManager.executeBindings(this,"harvestProgressComponent",this.harvestProgressComponent);
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_VGroup5_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.top = -10;
         _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_MultistateButton1_i()];
         _loc1_.id = "harvestButtonGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.harvestButtonGroup = _loc1_;
         BindingManager.executeBindings(this,"harvestButtonGroup",this.harvestButtonGroup);
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.percentWidth = 100;
         _loc1_.addEventListener("click",this.__harvestButton_click);
         _loc1_.id = "harvestButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.harvestButton = _loc1_;
         BindingManager.executeBindings(this,"harvestButton",this.harvestButton);
         return _loc1_;
      }
      
      public function __harvestButton_click(param1:MouseEvent) : void
      {
         this.handleHarvest(param1);
      }
      
      private function _ResidentialOverviewContentComponent_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_residentialPopup";
         _loc1_.dynaBmpSourceName = "building_bg_polaroid_big";
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 55;
         _loc1_.id = "polaroid";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.polaroid = _loc1_;
         BindingManager.executeBindings(this,"polaroid",this.polaroid);
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 160;
         _loc1_.width = 176;
         _loc1_.top = 65;
         _loc1_.left = 17;
         _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_BriskImageDynaLib4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.id = "centerImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.centerImage = _loc1_;
         BindingManager.executeBindings(this,"centerImage",this.centerImage);
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_BriskMCDynaLib2_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_top";
         _loc1_.top = 51;
         _loc1_.height = 25;
         _loc1_.horizontalCenter = 0;
         _loc1_.width = 140;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_VGroup6_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = -7;
         _loc1_.paddingTop = 0;
         _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_Group5_i(),this._ResidentialOverviewContentComponent_Group7_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_Group5_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_BriskImageDynaLib5_c(),this._ResidentialOverviewContentComponent_LocaLabel4_i(),this._ResidentialOverviewContentComponent_HGroup6_c(),this._ResidentialOverviewContentComponent_BriskImageDynaLib7_c(),this._ResidentialOverviewContentComponent_Group6_c(),this._ResidentialOverviewContentComponent_BriskMCDynaLib3_c()];
         _loc1_.id = "quadrillePaperGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.quadrillePaperGroup = _loc1_;
         BindingManager.executeBindings(this,"quadrillePaperGroup",this.quadrillePaperGroup);
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_residentialPopupNEW";
         _loc1_.dynaBmpSourceName = "quadrille_paper_small";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_LocaLabel4_i() : LocaLabel
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
      
      private function _ResidentialOverviewContentComponent_HGroup6_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.top = 39;
         _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_LocaLabel5_i(),this._ResidentialOverviewContentComponent_BriskImageDynaLib6_c(),this._ResidentialOverviewContentComponent_LocaLabel6_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_LocaLabel5_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "residentialCycleText";
         _loc1_.id = "cycleLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.cycleLabel = _loc1_;
         BindingManager.executeBindings(this,"cycleLabel",this.cycleLabel);
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_residentialPopup";
         _loc1_.dynaBmpSourceName = "layer_clock_mini_icon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_LocaLabel6_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "residentialCycleText";
         _loc1_.id = "cycleLengthLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.cycleLengthLabel = _loc1_;
         BindingManager.executeBindings(this,"cycleLengthLabel",this.cycleLengthLabel);
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_residentialPopup";
         _loc1_.dynaBmpSourceName = "head_line_long";
         _loc1_.top = 54;
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 72;
         _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_List2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_List2_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._ResidentialOverviewContentComponent_ClassFactory2_c();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.left = 20;
         _loc1_.right = 20;
         _loc1_.setStyle("skinClass",OutputListSkin);
         _loc1_.id = "outcomeList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.outcomeList = _loc1_;
         BindingManager.executeBindings(this,"outcomeList",this.outcomeList);
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = OutputItemRendered;
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_BriskMCDynaLib3_c() : BriskMCDynaLib
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
      
      private function _ResidentialOverviewContentComponent_Group7_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_HGroup7_c(),this._ResidentialOverviewContentComponent_DynamicImageButton3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_HGroup7_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 95;
         _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_StickyNoteComponent4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_StickyNoteComponent4_i() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.height = 110;
         _loc1_.percentWidth = 100;
         _loc1_.tapeLeft = true;
         _loc1_.tapeRight = true;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ResidentialOverviewContentComponent_Array24_c);
         _loc1_.id = "effectsComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.effectsComponent = _loc1_;
         BindingManager.executeBindings(this,"effectsComponent",this.effectsComponent);
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_Array24_c() : Array
      {
         return [this._ResidentialOverviewContentComponent_ResidentialHeaderComponent3_i(),this._ResidentialOverviewContentComponent_HGroup8_c()];
      }
      
      private function _ResidentialOverviewContentComponent_ResidentialHeaderComponent3_i() : ResidentialHeaderComponent
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
      
      private function _ResidentialOverviewContentComponent_HGroup8_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.top = 25;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_HGroup9_i(),this._ResidentialOverviewContentComponent_HGroup10_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_HGroup9_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 50;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_LocaLabel7_i(),this._ResidentialOverviewContentComponent_BriskImageDynaLib8_i()];
         _loc1_.id = "moodGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.moodGroup = _loc1_;
         BindingManager.executeBindings(this,"moodGroup",this.moodGroup);
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_LocaLabel7_i() : LocaLabel
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
      
      private function _ResidentialOverviewContentComponent_BriskImageDynaLib8_i() : BriskImageDynaLib
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
      
      private function _ResidentialOverviewContentComponent_HGroup10_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 50;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ResidentialOverviewContentComponent_LocaLabel8_i(),this._ResidentialOverviewContentComponent_BriskImageDynaLib9_i()];
         _loc1_.id = "energyGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.energyGroup = _loc1_;
         BindingManager.executeBindings(this,"energyGroup",this.energyGroup);
         return _loc1_;
      }
      
      private function _ResidentialOverviewContentComponent_LocaLabel8_i() : LocaLabel
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
      
      private function _ResidentialOverviewContentComponent_BriskImageDynaLib9_i() : BriskImageDynaLib
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
      
      private function _ResidentialOverviewContentComponent_DynamicImageButton3_i() : DynamicImageButton
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
      
      public function ___ResidentialOverviewContentComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete();
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
      public function get changeButton() : DynamicPlusButton
      {
         return this._577985790changeButton;
      }
      
      public function set changeButton(param1:DynamicPlusButton) : void
      {
         var _loc2_:Object = this._577985790changeButton;
         if(_loc2_ !== param1)
         {
            this._577985790changeButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cycleLabel() : LocaLabel
      {
         return this._1163225682cycleLabel;
      }
      
      public function set cycleLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1163225682cycleLabel;
         if(_loc2_ !== param1)
         {
            this._1163225682cycleLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cycleLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cycleLengthLabel() : LocaLabel
      {
         return this._2034685672cycleLengthLabel;
      }
      
      public function set cycleLengthLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._2034685672cycleLengthLabel;
         if(_loc2_ !== param1)
         {
            this._2034685672cycleLengthLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cycleLengthLabel",_loc2_,param1));
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
      public function get harvestButton() : MultistateButton
      {
         return this._1341975547harvestButton;
      }
      
      public function set harvestButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1341975547harvestButton;
         if(_loc2_ !== param1)
         {
            this._1341975547harvestButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"harvestButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get harvestButtonGroup() : VGroup
      {
         return this._13393732harvestButtonGroup;
      }
      
      public function set harvestButtonGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._13393732harvestButtonGroup;
         if(_loc2_ !== param1)
         {
            this._13393732harvestButtonGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"harvestButtonGroup",_loc2_,param1));
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
      public function get harvestProgressComponent() : TimerBarComponent
      {
         return this._1920126745harvestProgressComponent;
      }
      
      public function set harvestProgressComponent(param1:TimerBarComponent) : void
      {
         var _loc2_:Object = this._1920126745harvestProgressComponent;
         if(_loc2_ !== param1)
         {
            this._1920126745harvestProgressComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"harvestProgressComponent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get harvestProgressGroup() : VGroup
      {
         return this._804679831harvestProgressGroup;
      }
      
      public function set harvestProgressGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._804679831harvestProgressGroup;
         if(_loc2_ !== param1)
         {
            this._804679831harvestProgressGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"harvestProgressGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryComponent() : MasteryComponent
      {
         return this._1830499226masteryComponent;
      }
      
      public function set masteryComponent(param1:MasteryComponent) : void
      {
         var _loc2_:Object = this._1830499226masteryComponent;
         if(_loc2_ !== param1)
         {
            this._1830499226masteryComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryComponent",_loc2_,param1));
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
      public function get needFeatureButton() : DynamicImageButton
      {
         return this._239061202needFeatureButton;
      }
      
      public function set needFeatureButton(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._239061202needFeatureButton;
         if(_loc2_ !== param1)
         {
            this._239061202needFeatureButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needFeatureButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get needsHeader() : ResidentialHeaderComponent
      {
         return this._1304809590needsHeader;
      }
      
      public function set needsHeader(param1:ResidentialHeaderComponent) : void
      {
         var _loc2_:Object = this._1304809590needsHeader;
         if(_loc2_ !== param1)
         {
            this._1304809590needsHeader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needsHeader",_loc2_,param1));
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
      public function get outcomeList() : List
      {
         return this._1062744848outcomeList;
      }
      
      public function set outcomeList(param1:List) : void
      {
         var _loc2_:Object = this._1062744848outcomeList;
         if(_loc2_ !== param1)
         {
            this._1062744848outcomeList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"outcomeList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get polaroid() : BriskImageDynaLib
      {
         return this._539958732polaroid;
      }
      
      public function set polaroid(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._539958732polaroid;
         if(_loc2_ !== param1)
         {
            this._539958732polaroid = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"polaroid",_loc2_,param1));
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
      public function get residentIcon() : BriskImageDynaLib
      {
         return this._311765527residentIcon;
      }
      
      public function set residentIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._311765527residentIcon;
         if(_loc2_ !== param1)
         {
            this._311765527residentIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get residentInfo() : HGroup
      {
         return this._311755234residentInfo;
      }
      
      public function set residentInfo(param1:HGroup) : void
      {
         var _loc2_:Object = this._311755234residentInfo;
         if(_loc2_ !== param1)
         {
            this._311755234residentInfo = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentInfo",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get residentName() : LocaLabel
      {
         return this._311618565residentName;
      }
      
      public function set residentName(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._311618565residentName;
         if(_loc2_ !== param1)
         {
            this._311618565residentName = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentName",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get residentNumbers() : LocaLabel
      {
         return this._1431748902residentNumbers;
      }
      
      public function set residentNumbers(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1431748902residentNumbers;
         if(_loc2_ !== param1)
         {
            this._1431748902residentNumbers = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentNumbers",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get residentsData() : VGroup
      {
         return this._1036945555residentsData;
      }
      
      public function set residentsData(param1:VGroup) : void
      {
         var _loc2_:Object = this._1036945555residentsData;
         if(_loc2_ !== param1)
         {
            this._1036945555residentsData = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentsData",_loc2_,param1));
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

