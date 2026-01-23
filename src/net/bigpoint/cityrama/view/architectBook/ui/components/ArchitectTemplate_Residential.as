package net.bigpoint.cityrama.view.architectBook.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintImageValueVO;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintVo;
   import net.bigpoint.cityrama.model.architecturalBook.vo.CenterItemDataVo;
   import net.bigpoint.cityrama.model.architecturalBook.vo.VerifiedBlueprintVo;
   import net.bigpoint.cityrama.model.detailViews.MainLayerProxy;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.ArchitectResidentListSkin;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BuildingConstructionStepsComponent;
   import net.bigpoint.cityrama.view.common.components.BuildingCostComponent;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PostitHeaderComponent;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class ArchitectTemplate_Residential extends Group
   {
      
      public static const NAME:String = "ArchitectTemplate_Residential";
      
      private var _597326554buildNowButton:MultistateButton;
      
      private var _1364013995center:DetailsCenterComponent;
      
      private var _1976000313constructionStepsComponent:BuildingConstructionStepsComponent;
      
      private var _1253508016costComponent:BuildingCostComponent;
      
      private var _1163225682cycleLabel:LocaLabel;
      
      private var _2034685672cycleLengthLabel:LocaLabel;
      
      private var _1768900535effectFeatureButton:DynamicImageButton;
      
      private var _713468034effectHeader:PostitHeaderComponent;
      
      private var _911984155effectsComponent:StickyNoteComponent;
      
      private var _1840699177energyGroup:HGroup;
      
      private var _1464688417energyIcon:BriskImageDynaLib;
      
      private var _1836601012energyLabel:LocaLabel;
      
      private var _1684755691flavorText:LocaLabel;
      
      private var _899936824moodGroup:HGroup;
      
      private var _306079728moodIcon:BriskImageDynaLib;
      
      private var _895838659moodLabel:LocaLabel;
      
      private var _1419001267outcomeGroup:StickyNoteComponent;
      
      private var _1023176577outcomeHeader:PostitHeaderComponent;
      
      private var _844949286outputImage:BriskImageDynaLib;
      
      private var _842535309outputLabel:LocaLabel;
      
      private var _414639265possibleOutcome:HGroup;
      
      private var _276043379residentComponent:StickyNoteComponent;
      
      private var _814154328residentFeatureButton:DynamicImageButton;
      
      private var _1013833725residentHeader:PostitHeaderComponent;
      
      private var _1961678079residentInfoGroup:HGroup;
      
      private var _311670258residentList:List;
      
      private var _517409340residentTotaLabel:LocaLabel;
      
      private var _2124045603residents:HGroup;
      
      private var _188635812restrictionFeatureButton:DynamicImageButton;
      
      private var _294445069restrictionGfx:BriskImageDynaLib;
      
      private var _505777645restrictionGroup:StickyNoteComponent;
      
      private var _1516951929restrictionHeader:PostitHeaderComponent;
      
      private var _538066039restrictionName:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:BlueprintVo;
      
      private var _veryData:VerifiedBlueprintVo;
      
      public function ArchitectTemplate_Residential()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mxmlContent = [this._ArchitectTemplate_Residential_HGroup1_c(),this._ArchitectTemplate_Residential_Group2_c(),this._ArchitectTemplate_Residential_VGroup2_c(),this._ArchitectTemplate_Residential_Group3_c()];
         this.addEventListener("creationComplete",this.___ArchitectTemplate_Residential_Group1_creationComplete);
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
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
         this.effectHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.effects");
         this.outcomeHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.rentoutcome");
         var _loc2_:String = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.residents");
         this.residentHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.residents");
         this.restrictionHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.buildableLand");
         this.buildNowButton.addEventListener(MouseEvent.CLICK,this.handleBuildClick);
         var _temp_1:* = this.residentFeatureButton;
         this.residentFeatureButton.enabled = false;
         _temp_1.visible = false;
         var _temp_2:* = this.restrictionFeatureButton;
         var _loc3_:Boolean;
         this.restrictionFeatureButton.visible = _loc3_ = false;
         _temp_2.enabled = false;
         this.setTapes();
         this.setupCenter();
         this.updateAll();
      }
      
      private function handleBuildClick(param1:MouseEvent) : void
      {
         dispatchEvent(new Event("buildNow"));
      }
      
      private function handleEffectFeatureClick() : void
      {
         dispatchEvent(new Event("effectFeatureClick"));
      }
      
      private function handleResidentFeatureClick() : void
      {
         dispatchEvent(new Event("residentFeatureClick"));
      }
      
      private function handleRestrictionFeatureClick() : void
      {
         dispatchEvent(new Event("restrictionFeatureClick"));
      }
      
      public function setData(param1:VerifiedBlueprintVo) : void
      {
         this._data = param1.bluePrintVO;
         this._veryData = param1;
         invalidateProperties();
      }
      
      private function updateAll() : void
      {
         this.flavorText.text = LocaUtils.getString("rcl.playfielditems.shortdescription","rcl.playfielditems.shortdescription." + this._data.configObj.localeId);
         if(this._veryData.buildableLandVO.visualName != "")
         {
            this.restrictionGfx.dynaLibName = this._veryData.buildableLandVO.visualLibName;
            this.restrictionGfx.dynaBmpSourceName = this._veryData.buildableLandVO.visualName;
            this.restrictionGfx.toolTip = this._veryData.buildableLandVO.toolTip;
            this.restrictionName.text = this._veryData.buildableLandVO.descriptionText;
            this.restrictionGroup.visible = true;
         }
         else
         {
            this.restrictionGroup.visible = false;
         }
         if(this._data.state == BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE || this._data.state == BlueprintVo.STATE_BUY_MORE_WITH_RC)
         {
            this.costComponent.currentState = "noCosts";
            this.costComponent.invalidateProperties();
         }
         else
         {
            this.costComponent.currentState = "hasCosts";
            this.costComponent.setData(this._veryData.costVOList);
         }
         if(!this._data.hasConstructionSteps)
         {
            this.constructionStepsComponent.currentState = "noSteps";
         }
         else
         {
            this.constructionStepsComponent.currentState = "hasSteps";
            this.constructionStepsComponent.setData(this._veryData.materialVOList);
         }
         this.setEffects();
         this.outputLabel.text = this._data.minOutput + "  -  " + this._data.maxOutput;
         switch(this._data.baseOutPutType)
         {
            case ServerResConst.RESOURCE_PRODUCTIONPOINTS:
               this.outputImage.dynaBmpSourceName = "pp_icon";
               break;
            case ServerResConst.RESOURCE_EDUCATIONPOINTS:
               this.outputImage.dynaBmpSourceName = "ep_icon";
               break;
            case ServerResConst.RESOURCE_VIRTUALCURRENCY:
               this.outputImage.dynaBmpSourceName = "layer_cc_icon";
         }
         this.residentTotaLabel.text = String(this._data.configObj.maxResidents);
         this.residentList.dataProvider = this._veryData.residentVoList;
         this.cycleLabel.text = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.every");
         this.cycleLengthLabel.text = LocaUtils.getDuration(this._data.runtime);
         this.setTooltips();
      }
      
      public function setSubData(param1:VerifiedBlueprintVo) : void
      {
         this._veryData = param1;
         invalidateProperties();
      }
      
      public function get data() : BlueprintVo
      {
         return this._data;
      }
      
      private function setTooltips() : void
      {
         var _loc1_:String = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.arrowLeft");
         var _loc2_:String = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.arrowRight");
         this.center.setStyle("tooltipLeftScroll",_loc1_);
         this.center.setStyle("tooltipRightScroll",_loc2_);
         this.possibleOutcome.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.outcome");
         this.residents.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.residents.total");
         if(this._data.permissionBuyable && !this._data.locked)
         {
         }
         this.effectFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.feature.effects");
         this.residentFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.feature.residents");
         this.energyGroup.toolTip = LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.effects.energy");
         this.moodGroup.toolTip = LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.effects.mood");
         this.restrictionFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.feature.restrictions");
      }
      
      override public function get name() : String
      {
         return NAME;
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         this.setupCenter();
         this.setTooltips();
         this.updateAll();
      }
      
      private function setupCenter() : void
      {
         if(this._data.state == BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE)
         {
            this.buildNowButton.enabled = true;
            this.buildNowButton.label = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.place.capital");
            this.buildNowButton.toolTip = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.place.tooltip");
            this.buildNowButton.imageNameLeft = "button_icon_build";
            this.buildNowButton.libNameLeft = "gui_popups_paperPopup";
            this.buildNowButton.imageNameRight = this.buildNowButton.libNameRight = "";
         }
         else
         {
            this.buildNowButton.enabled = true;
            this.buildNowButton.label = LocaUtils.getThousendSeperatedNumber(this._data.price);
            this.buildNowButton.libNameRight = "gui_resources_icons";
            this.buildNowButton.imageNameLeft = this.buildNowButton.libNameLeft = "";
            if(this._data.state == BlueprintVo.STATE_BUY_MORE_WITH_RC)
            {
               this.buildNowButton.imageNameRight = "dd_button_icon";
               this.buildNowButton.showSparkle = true;
               this.buildNowButton.toolTip = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.buyPermission.tooltip");
            }
            else if(this._data.state == BlueprintVo.STATE_PERMISSION_AVAILABLE)
            {
               this.buildNowButton.imageNameRight = "layer_cc_icon";
               this.buildNowButton.showSparkle = false;
               this.buildNowButton.toolTip = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.button.buy.tooltip");
            }
         }
         this.buildNowButton.enabled = Boolean(this.buildNowButton.enabled) && !this._data.locked;
         this.buildNowButton.showPlus = !this._data.userCanAfford && Boolean(this.buildNowButton.enabled) && this._data.state != BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE;
         var _loc1_:CenterItemDataVo = new CenterItemDataVo();
         var _loc2_:Boolean = false;
         if(this._data.permissionBuyable)
         {
            if(this._data.permission.permissionsBought < this._data.permission.config.buyCap)
            {
               _loc2_ = true;
            }
         }
         _loc1_.blueprintVO = this._data;
         this.center.data = _loc1_;
      }
      
      private function setEffects() : void
      {
         var _loc1_:BlueprintImageValueVO = null;
         for each(_loc1_ in this._veryData.consequenceVOList.source)
         {
            if(_loc1_.effectType != "")
            {
               if(_loc1_.effectType == MainLayerProxy.ENERGY)
               {
                  this.energyIcon.dynaBmpSourceName = _loc1_.visualName;
                  this.energyIcon.dynaLibName = _loc1_.visualLibName;
                  this.energyLabel.setStyle("color",_loc1_.valueColor);
                  this.energyLabel.text = _loc1_.textLabel;
               }
               else if(_loc1_.effectType == MainLayerProxy.MOOD)
               {
                  this.moodIcon.dynaBmpSourceName = _loc1_.visualName;
                  this.moodIcon.dynaLibName = _loc1_.visualLibName;
                  this.moodLabel.setStyle("color",_loc1_.valueColor);
                  this.moodLabel.text = _loc1_.textLabel;
               }
            }
         }
      }
      
      private function setTapes() : void
      {
         this.effectsComponent.rightTape.setStyle("top",20);
         this.effectsComponent.rightTape.setStyle("bottom",20);
         this.effectsComponent.leftTape.setStyle("top",20);
         this.effectsComponent.leftTape.setStyle("bottom",20);
         this.outcomeGroup.topTape.setStyle("left",40);
         this.outcomeGroup.topTape.setStyle("right",50);
         this.outcomeGroup.bottomTape.setStyle("left",60);
         this.outcomeGroup.bottomTape.setStyle("right",60);
      }
      
      private function _ArchitectTemplate_Residential_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.height = 25;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.top = -9;
         _loc1_.mxmlContent = [this._ArchitectTemplate_Residential_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxWidth = 690;
         _loc1_.maxDisplayedLines = 2;
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
      
      private function _ArchitectTemplate_Residential_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 240;
         _loc1_.height = 300;
         _loc1_.left = 4;
         _loc1_.bottom = 10;
         _loc1_.mxmlContent = [this._ArchitectTemplate_Residential_StickyNoteComponent1_i(),this._ArchitectTemplate_Residential_BuildingCostComponent1_i(),this._ArchitectTemplate_Residential_BuildingConstructionStepsComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_StickyNoteComponent1_i() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.width = 226;
         _loc1_.top = 88;
         _loc1_.height = 120;
         _loc1_.left = 8;
         _loc1_.visible = false;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ArchitectTemplate_Residential_Array4_c);
         _loc1_.id = "restrictionGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.restrictionGroup = _loc1_;
         BindingManager.executeBindings(this,"restrictionGroup",this.restrictionGroup);
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_Array4_c() : Array
      {
         return [this._ArchitectTemplate_Residential_DynamicImageButton1_i(),this._ArchitectTemplate_Residential_VGroup1_c()];
      }
      
      private function _ArchitectTemplate_Residential_DynamicImageButton1_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "featureInfoButton";
         _loc1_.right = 0;
         _loc1_.top = 0;
         _loc1_.addEventListener("click",this.__restrictionFeatureButton_click);
         _loc1_.id = "restrictionFeatureButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.restrictionFeatureButton = _loc1_;
         BindingManager.executeBindings(this,"restrictionFeatureButton",this.restrictionFeatureButton);
         return _loc1_;
      }
      
      public function __restrictionFeatureButton_click(param1:MouseEvent) : void
      {
         this.handleRestrictionFeatureClick();
      }
      
      private function _ArchitectTemplate_Residential_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 9;
         _loc1_.mxmlContent = [this._ArchitectTemplate_Residential_PostitHeaderComponent1_i(),this._ArchitectTemplate_Residential_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_PostitHeaderComponent1_i() : PostitHeaderComponent
      {
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         _loc1_.id = "restrictionHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.restrictionHeader = _loc1_;
         BindingManager.executeBindings(this,"restrictionHeader",this.restrictionHeader);
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.horizontalAlign = "left";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._ArchitectTemplate_Residential_BriskImageDynaLib1_i(),this._ArchitectTemplate_Residential_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "restriction_icon_farmland";
         _loc1_.id = "restrictionGfx";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.restrictionGfx = _loc1_;
         BindingManager.executeBindings(this,"restrictionGfx",this.restrictionGfx);
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "miniLayerFlavourText";
         _loc1_.id = "restrictionName";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.restrictionName = _loc1_;
         BindingManager.executeBindings(this,"restrictionName",this.restrictionName);
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_BuildingCostComponent1_i() : BuildingCostComponent
      {
         var _loc1_:BuildingCostComponent = new BuildingCostComponent();
         _loc1_.percentWidth = 100;
         _loc1_.top = 0;
         _loc1_.height = 115;
         _loc1_.id = "costComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.costComponent = _loc1_;
         BindingManager.executeBindings(this,"costComponent",this.costComponent);
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_BuildingConstructionStepsComponent1_i() : BuildingConstructionStepsComponent
      {
         var _loc1_:BuildingConstructionStepsComponent = new BuildingConstructionStepsComponent();
         _loc1_.percentWidth = 100;
         _loc1_.height = 130;
         _loc1_.bottom = -10;
         _loc1_.id = "constructionStepsComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.constructionStepsComponent = _loc1_;
         BindingManager.executeBindings(this,"constructionStepsComponent",this.constructionStepsComponent);
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.left = 240;
         _loc1_.right = 220;
         _loc1_.height = 300;
         _loc1_.bottom = 15;
         _loc1_.verticalAlign = "top";
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 15;
         _loc1_.mxmlContent = [this._ArchitectTemplate_Residential_DetailsCenterComponent1_i(),this._ArchitectTemplate_Residential_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_DetailsCenterComponent1_i() : DetailsCenterComponent
      {
         var _loc1_:DetailsCenterComponent = new DetailsCenterComponent();
         _loc1_.id = "center";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.center = _loc1_;
         BindingManager.executeBindings(this,"center",this.center);
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 204;
         _loc1_.imageNameLeft = "button_icon_build";
         _loc1_.libNameLeft = "gui_popups_paperPopup";
         _loc1_.id = "buildNowButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.buildNowButton = _loc1_;
         BindingManager.executeBindings(this,"buildNowButton",this.buildNowButton);
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 230;
         _loc1_.height = 290;
         _loc1_.right = -5;
         _loc1_.bottom = 30;
         _loc1_.mxmlContent = [this._ArchitectTemplate_Residential_StickyNoteComponent2_i(),this._ArchitectTemplate_Residential_StickyNoteComponent3_i(),this._ArchitectTemplate_Residential_Group4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_StickyNoteComponent2_i() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.percentWidth = 100;
         _loc1_.height = 130;
         _loc1_.top = 110;
         _loc1_.left = 10;
         _loc1_.right = 10;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ArchitectTemplate_Residential_Array9_c);
         _loc1_.id = "residentComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.residentComponent = _loc1_;
         BindingManager.executeBindings(this,"residentComponent",this.residentComponent);
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_Array9_c() : Array
      {
         return [this._ArchitectTemplate_Residential_DynamicImageButton2_i(),this._ArchitectTemplate_Residential_PostitHeaderComponent2_i(),this._ArchitectTemplate_Residential_HGroup3_i()];
      }
      
      private function _ArchitectTemplate_Residential_DynamicImageButton2_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "featureInfoButton";
         _loc1_.right = 0;
         _loc1_.top = -13;
         _loc1_.addEventListener("click",this.__residentFeatureButton_click);
         _loc1_.id = "residentFeatureButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.residentFeatureButton = _loc1_;
         BindingManager.executeBindings(this,"residentFeatureButton",this.residentFeatureButton);
         return _loc1_;
      }
      
      public function __residentFeatureButton_click(param1:MouseEvent) : void
      {
         this.handleResidentFeatureClick();
      }
      
      private function _ArchitectTemplate_Residential_PostitHeaderComponent2_i() : PostitHeaderComponent
      {
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         _loc1_.top = 3;
         _loc1_.id = "residentHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.residentHeader = _loc1_;
         BindingManager.executeBindings(this,"residentHeader",this.residentHeader);
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_HGroup3_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 95;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.top = 26;
         _loc1_.mxmlContent = [this._ArchitectTemplate_Residential_HGroup4_i(),this._ArchitectTemplate_Residential_List1_i()];
         _loc1_.id = "residentInfoGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.residentInfoGroup = _loc1_;
         BindingManager.executeBindings(this,"residentInfoGroup",this.residentInfoGroup);
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_HGroup4_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._ArchitectTemplate_Residential_LocaLabel3_i(),this._ArchitectTemplate_Residential_BriskImageDynaLib2_c()];
         _loc1_.id = "residents";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.residents = _loc1_;
         BindingManager.executeBindings(this,"residents",this.residents);
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "outcomeNeutral";
         _loc1_.text = "230";
         _loc1_.id = "residentTotaLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.residentTotaLabel = _loc1_;
         BindingManager.executeBindings(this,"residentTotaLabel",this.residentTotaLabel);
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "postit_icon_population";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._ArchitectTemplate_Residential_ClassFactory1_c();
         _loc1_.setStyle("skinClass",ArchitectResidentListSkin);
         _loc1_.id = "residentList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.residentList = _loc1_;
         BindingManager.executeBindings(this,"residentList",this.residentList);
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ResidentItemRenderer;
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_StickyNoteComponent3_i() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.percentWidth = 100;
         _loc1_.height = 135;
         _loc1_.top = 0;
         _loc1_.tapeTop = true;
         _loc1_.tapeBottom = true;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ArchitectTemplate_Residential_Array12_c);
         _loc1_.id = "outcomeGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.outcomeGroup = _loc1_;
         BindingManager.executeBindings(this,"outcomeGroup",this.outcomeGroup);
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_Array12_c() : Array
      {
         return [this._ArchitectTemplate_Residential_PostitHeaderComponent3_i(),this._ArchitectTemplate_Residential_HGroup5_c(),this._ArchitectTemplate_Residential_HGroup6_i()];
      }
      
      private function _ArchitectTemplate_Residential_PostitHeaderComponent3_i() : PostitHeaderComponent
      {
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         _loc1_.id = "outcomeHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.outcomeHeader = _loc1_;
         BindingManager.executeBindings(this,"outcomeHeader",this.outcomeHeader);
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.top = 20;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._ArchitectTemplate_Residential_LocaLabel4_i(),this._ArchitectTemplate_Residential_BriskImageDynaLib3_c(),this._ArchitectTemplate_Residential_LocaLabel5_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_LocaLabel4_i() : LocaLabel
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
      
      private function _ArchitectTemplate_Residential_BriskImageDynaLib3_c() : BriskImageDynaLib
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
      
      private function _ArchitectTemplate_Residential_LocaLabel5_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.text = "00:00:00";
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
      
      private function _ArchitectTemplate_Residential_HGroup6_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.top = 48;
         _loc1_.mxmlContent = [this._ArchitectTemplate_Residential_LocaLabel6_i(),this._ArchitectTemplate_Residential_BriskImageDynaLib4_i()];
         _loc1_.id = "possibleOutcome";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.possibleOutcome = _loc1_;
         BindingManager.executeBindings(this,"possibleOutcome",this.possibleOutcome);
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_LocaLabel6_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "outcomeNeutral";
         _loc1_.text = "500 - 1000";
         _loc1_.id = "outputLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.outputLabel = _loc1_;
         BindingManager.executeBindings(this,"outputLabel",this.outputLabel);
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_resources_icons";
         _loc1_.dynaBmpSourceName = "layer_cc_icon";
         _loc1_.id = "outputImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.outputImage = _loc1_;
         BindingManager.executeBindings(this,"outputImage",this.outputImage);
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 230;
         _loc1_.top = 206;
         _loc1_.right = 1;
         _loc1_.mxmlContent = [this._ArchitectTemplate_Residential_HGroup7_c(),this._ArchitectTemplate_Residential_DynamicImageButton3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_HGroup7_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._ArchitectTemplate_Residential_StickyNoteComponent4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_StickyNoteComponent4_i() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.height = 120;
         _loc1_.percentWidth = 100;
         _loc1_.tapeLeft = true;
         _loc1_.tapeRight = true;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ArchitectTemplate_Residential_Array17_c);
         _loc1_.id = "effectsComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.effectsComponent = _loc1_;
         BindingManager.executeBindings(this,"effectsComponent",this.effectsComponent);
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_Array17_c() : Array
      {
         return [this._ArchitectTemplate_Residential_PostitHeaderComponent4_i(),this._ArchitectTemplate_Residential_HGroup8_c()];
      }
      
      private function _ArchitectTemplate_Residential_PostitHeaderComponent4_i() : PostitHeaderComponent
      {
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         _loc1_.top = 0;
         _loc1_.id = "effectHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.effectHeader = _loc1_;
         BindingManager.executeBindings(this,"effectHeader",this.effectHeader);
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_HGroup8_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 90;
         _loc1_.top = 22;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._ArchitectTemplate_Residential_HGroup9_i(),this._ArchitectTemplate_Residential_HGroup10_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_HGroup9_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 50;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ArchitectTemplate_Residential_LocaLabel7_i(),this._ArchitectTemplate_Residential_BriskImageDynaLib5_i()];
         _loc1_.id = "moodGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.moodGroup = _loc1_;
         BindingManager.executeBindings(this,"moodGroup",this.moodGroup);
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_LocaLabel7_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "outcomeNeutral";
         _loc1_.text = "0";
         _loc1_.id = "moodLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.moodLabel = _loc1_;
         BindingManager.executeBindings(this,"moodLabel",this.moodLabel);
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_BriskImageDynaLib5_i() : BriskImageDynaLib
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
      
      private function _ArchitectTemplate_Residential_HGroup10_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 50;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ArchitectTemplate_Residential_LocaLabel8_i(),this._ArchitectTemplate_Residential_BriskImageDynaLib6_i()];
         _loc1_.id = "energyGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.energyGroup = _loc1_;
         BindingManager.executeBindings(this,"energyGroup",this.energyGroup);
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_LocaLabel8_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "outcomeNeutral";
         _loc1_.text = "0";
         _loc1_.id = "energyLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.energyLabel = _loc1_;
         BindingManager.executeBindings(this,"energyLabel",this.energyLabel);
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Residential_BriskImageDynaLib6_i() : BriskImageDynaLib
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
      
      private function _ArchitectTemplate_Residential_DynamicImageButton3_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "featureInfoButton";
         _loc1_.right = 24;
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
         this.handleEffectFeatureClick();
      }
      
      public function ___ArchitectTemplate_Residential_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get buildNowButton() : MultistateButton
      {
         return this._597326554buildNowButton;
      }
      
      public function set buildNowButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._597326554buildNowButton;
         if(_loc2_ !== param1)
         {
            this._597326554buildNowButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buildNowButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get center() : DetailsCenterComponent
      {
         return this._1364013995center;
      }
      
      public function set center(param1:DetailsCenterComponent) : void
      {
         var _loc2_:Object = this._1364013995center;
         if(_loc2_ !== param1)
         {
            this._1364013995center = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"center",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get constructionStepsComponent() : BuildingConstructionStepsComponent
      {
         return this._1976000313constructionStepsComponent;
      }
      
      public function set constructionStepsComponent(param1:BuildingConstructionStepsComponent) : void
      {
         var _loc2_:Object = this._1976000313constructionStepsComponent;
         if(_loc2_ !== param1)
         {
            this._1976000313constructionStepsComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"constructionStepsComponent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get costComponent() : BuildingCostComponent
      {
         return this._1253508016costComponent;
      }
      
      public function set costComponent(param1:BuildingCostComponent) : void
      {
         var _loc2_:Object = this._1253508016costComponent;
         if(_loc2_ !== param1)
         {
            this._1253508016costComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costComponent",_loc2_,param1));
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
      public function get effectHeader() : PostitHeaderComponent
      {
         return this._713468034effectHeader;
      }
      
      public function set effectHeader(param1:PostitHeaderComponent) : void
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
      public function get outcomeGroup() : StickyNoteComponent
      {
         return this._1419001267outcomeGroup;
      }
      
      public function set outcomeGroup(param1:StickyNoteComponent) : void
      {
         var _loc2_:Object = this._1419001267outcomeGroup;
         if(_loc2_ !== param1)
         {
            this._1419001267outcomeGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"outcomeGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get outcomeHeader() : PostitHeaderComponent
      {
         return this._1023176577outcomeHeader;
      }
      
      public function set outcomeHeader(param1:PostitHeaderComponent) : void
      {
         var _loc2_:Object = this._1023176577outcomeHeader;
         if(_loc2_ !== param1)
         {
            this._1023176577outcomeHeader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"outcomeHeader",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get outputImage() : BriskImageDynaLib
      {
         return this._844949286outputImage;
      }
      
      public function set outputImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._844949286outputImage;
         if(_loc2_ !== param1)
         {
            this._844949286outputImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"outputImage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get outputLabel() : LocaLabel
      {
         return this._842535309outputLabel;
      }
      
      public function set outputLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._842535309outputLabel;
         if(_loc2_ !== param1)
         {
            this._842535309outputLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"outputLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get possibleOutcome() : HGroup
      {
         return this._414639265possibleOutcome;
      }
      
      public function set possibleOutcome(param1:HGroup) : void
      {
         var _loc2_:Object = this._414639265possibleOutcome;
         if(_loc2_ !== param1)
         {
            this._414639265possibleOutcome = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"possibleOutcome",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get residentComponent() : StickyNoteComponent
      {
         return this._276043379residentComponent;
      }
      
      public function set residentComponent(param1:StickyNoteComponent) : void
      {
         var _loc2_:Object = this._276043379residentComponent;
         if(_loc2_ !== param1)
         {
            this._276043379residentComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentComponent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get residentFeatureButton() : DynamicImageButton
      {
         return this._814154328residentFeatureButton;
      }
      
      public function set residentFeatureButton(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._814154328residentFeatureButton;
         if(_loc2_ !== param1)
         {
            this._814154328residentFeatureButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentFeatureButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get residentHeader() : PostitHeaderComponent
      {
         return this._1013833725residentHeader;
      }
      
      public function set residentHeader(param1:PostitHeaderComponent) : void
      {
         var _loc2_:Object = this._1013833725residentHeader;
         if(_loc2_ !== param1)
         {
            this._1013833725residentHeader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentHeader",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get residentInfoGroup() : HGroup
      {
         return this._1961678079residentInfoGroup;
      }
      
      public function set residentInfoGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._1961678079residentInfoGroup;
         if(_loc2_ !== param1)
         {
            this._1961678079residentInfoGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentInfoGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get residentList() : List
      {
         return this._311670258residentList;
      }
      
      public function set residentList(param1:List) : void
      {
         var _loc2_:Object = this._311670258residentList;
         if(_loc2_ !== param1)
         {
            this._311670258residentList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get residentTotaLabel() : LocaLabel
      {
         return this._517409340residentTotaLabel;
      }
      
      public function set residentTotaLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._517409340residentTotaLabel;
         if(_loc2_ !== param1)
         {
            this._517409340residentTotaLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residentTotaLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get residents() : HGroup
      {
         return this._2124045603residents;
      }
      
      public function set residents(param1:HGroup) : void
      {
         var _loc2_:Object = this._2124045603residents;
         if(_loc2_ !== param1)
         {
            this._2124045603residents = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"residents",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get restrictionFeatureButton() : DynamicImageButton
      {
         return this._188635812restrictionFeatureButton;
      }
      
      public function set restrictionFeatureButton(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._188635812restrictionFeatureButton;
         if(_loc2_ !== param1)
         {
            this._188635812restrictionFeatureButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionFeatureButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get restrictionGfx() : BriskImageDynaLib
      {
         return this._294445069restrictionGfx;
      }
      
      public function set restrictionGfx(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._294445069restrictionGfx;
         if(_loc2_ !== param1)
         {
            this._294445069restrictionGfx = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionGfx",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get restrictionGroup() : StickyNoteComponent
      {
         return this._505777645restrictionGroup;
      }
      
      public function set restrictionGroup(param1:StickyNoteComponent) : void
      {
         var _loc2_:Object = this._505777645restrictionGroup;
         if(_loc2_ !== param1)
         {
            this._505777645restrictionGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get restrictionHeader() : PostitHeaderComponent
      {
         return this._1516951929restrictionHeader;
      }
      
      public function set restrictionHeader(param1:PostitHeaderComponent) : void
      {
         var _loc2_:Object = this._1516951929restrictionHeader;
         if(_loc2_ !== param1)
         {
            this._1516951929restrictionHeader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionHeader",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get restrictionName() : LocaLabel
      {
         return this._538066039restrictionName;
      }
      
      public function set restrictionName(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._538066039restrictionName;
         if(_loc2_ !== param1)
         {
            this._538066039restrictionName = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrictionName",_loc2_,param1));
            }
         }
      }
   }
}

