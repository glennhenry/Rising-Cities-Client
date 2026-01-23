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
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintVo;
   import net.bigpoint.cityrama.model.architecturalBook.vo.CenterItemDataVo;
   import net.bigpoint.cityrama.model.architecturalBook.vo.VerifiedBlueprintVo;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.ArchitectImageValueSkin;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
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
   
   public class ArchitectTemplate_Decoration extends Group
   {
      
      public static const NAME:String = "ArchitectTemplate_Decoration";
      
      private var _597326554buildNowButton:MultistateButton;
      
      private var _1364013995center:DetailsCenterComponent;
      
      private var _1253508016costComponent:BuildingCostComponent;
      
      private var _1768900535effectFeatureButton:DynamicImageButton;
      
      private var _490397341effectsGroup:VGroup;
      
      private var _1961361873effectsHeader:PostitHeaderComponent;
      
      private var _1678527680effectsList:List;
      
      private var _1684755691flavorText:LocaLabel;
      
      private var _188635812restrictionFeatureButton:DynamicImageButton;
      
      private var _294445069restrictionGfx:BriskImageDynaLib;
      
      private var _505777645restrictionGroup:StickyNoteComponent;
      
      private var _1516951929restrictionHeader:PostitHeaderComponent;
      
      private var _538066039restrictionName:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:BlueprintVo;
      
      private var _veryData:VerifiedBlueprintVo;
      
      public function ArchitectTemplate_Decoration()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mxmlContent = [this._ArchitectTemplate_Decoration_HGroup1_c(),this._ArchitectTemplate_Decoration_Group2_c(),this._ArchitectTemplate_Decoration_VGroup3_c(),this._ArchitectTemplate_Decoration_VGroup4_c()];
         this.addEventListener("creationComplete",this.___ArchitectTemplate_Decoration_Group1_creationComplete);
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
         this.effectsHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.effects");
         this.buildNowButton.label = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.buildNow");
         this.restrictionHeader.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.buildableLand");
         this.buildNowButton.addEventListener(MouseEvent.CLICK,this.handleBuildClick);
         var _temp_1:* = this.restrictionFeatureButton;
         this.restrictionFeatureButton.includeInLayout = false;
         _temp_1.visible = false;
         this.setupCenter();
         this.updateAll();
      }
      
      override public function get name() : String
      {
         return NAME;
      }
      
      private function handleEffectFeatureClick() : void
      {
         dispatchEvent(new Event("effectFeatureClick"));
      }
      
      private function handleBuildClick(param1:MouseEvent) : void
      {
         dispatchEvent(new Event("buildNow"));
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
            this.restrictionGroup.visible = this.restrictionGroup.includeInLayout = true;
         }
         else
         {
            this.restrictionGroup.visible = this.restrictionGroup.includeInLayout = false;
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
         this.effectsList.dataProvider = this._veryData.consequenceVOList;
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
         this.buildNowButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.placeButton");
         if(this._data.permissionBuyable && !this._data.locked)
         {
         }
         this.effectFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.feature.effects");
         this.restrictionFeatureButton.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.feature.restrictions");
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
         _loc1_.blueprintVO = this._data;
         this.center.data = _loc1_;
      }
      
      private function _ArchitectTemplate_Decoration_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.height = 25;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.top = -9;
         _loc1_.mxmlContent = [this._ArchitectTemplate_Decoration_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Decoration_LocaLabel1_i() : LocaLabel
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
      
      private function _ArchitectTemplate_Decoration_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 240;
         _loc1_.height = 300;
         _loc1_.left = 4;
         _loc1_.bottom = 10;
         _loc1_.mxmlContent = [this._ArchitectTemplate_Decoration_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Decoration_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._ArchitectTemplate_Decoration_Group3_c(),this._ArchitectTemplate_Decoration_StickyNoteComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Decoration_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 155;
         _loc1_.mxmlContent = [this._ArchitectTemplate_Decoration_BuildingCostComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Decoration_BuildingCostComponent1_i() : BuildingCostComponent
      {
         var _loc1_:BuildingCostComponent = new BuildingCostComponent();
         _loc1_.percentWidth = 100;
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
      
      private function _ArchitectTemplate_Decoration_StickyNoteComponent1_i() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.percentWidth = 100;
         _loc1_.height = 126;
         _loc1_.tapeLeft = true;
         _loc1_.tapeRight = true;
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ArchitectTemplate_Decoration_Array6_c);
         _loc1_.id = "restrictionGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.restrictionGroup = _loc1_;
         BindingManager.executeBindings(this,"restrictionGroup",this.restrictionGroup);
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Decoration_Array6_c() : Array
      {
         return [this._ArchitectTemplate_Decoration_DynamicImageButton1_i(),this._ArchitectTemplate_Decoration_VGroup2_c()];
      }
      
      private function _ArchitectTemplate_Decoration_DynamicImageButton1_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "featureInfoButton";
         _loc1_.right = 8;
         _loc1_.top = -10;
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
      
      private function _ArchitectTemplate_Decoration_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 9;
         _loc1_.mxmlContent = [this._ArchitectTemplate_Decoration_PostitHeaderComponent1_i(),this._ArchitectTemplate_Decoration_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Decoration_PostitHeaderComponent1_i() : PostitHeaderComponent
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
      
      private function _ArchitectTemplate_Decoration_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.horizontalAlign = "left";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._ArchitectTemplate_Decoration_BriskImageDynaLib1_i(),this._ArchitectTemplate_Decoration_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Decoration_BriskImageDynaLib1_i() : BriskImageDynaLib
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
      
      private function _ArchitectTemplate_Decoration_LocaLabel2_i() : LocaLabel
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
      
      private function _ArchitectTemplate_Decoration_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.left = 240;
         _loc1_.right = 220;
         _loc1_.height = 300;
         _loc1_.bottom = 15;
         _loc1_.verticalAlign = "top";
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 15;
         _loc1_.mxmlContent = [this._ArchitectTemplate_Decoration_DetailsCenterComponent1_i(),this._ArchitectTemplate_Decoration_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Decoration_DetailsCenterComponent1_i() : DetailsCenterComponent
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
      
      private function _ArchitectTemplate_Decoration_MultistateButton1_i() : MultistateButton
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
      
      private function _ArchitectTemplate_Decoration_VGroup4_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 220;
         _loc1_.percentHeight = 100;
         _loc1_.right = -4;
         _loc1_.top = 0;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._ArchitectTemplate_Decoration_StickyNoteComponent2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Decoration_StickyNoteComponent2_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.percentWidth = 100;
         _loc1_.height = 150;
         _loc1_.tapeTop = true;
         _loc1_.right = 15;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ArchitectTemplate_Decoration_Array11_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Decoration_Array11_c() : Array
      {
         return [this._ArchitectTemplate_Decoration_VGroup5_i(),this._ArchitectTemplate_Decoration_DynamicImageButton2_i()];
      }
      
      private function _ArchitectTemplate_Decoration_VGroup5_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalCenter = 0;
         _loc1_.paddingTop = 5;
         _loc1_.mxmlContent = [this._ArchitectTemplate_Decoration_PostitHeaderComponent2_i(),this._ArchitectTemplate_Decoration_HGroup3_c()];
         _loc1_.id = "effectsGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.effectsGroup = _loc1_;
         BindingManager.executeBindings(this,"effectsGroup",this.effectsGroup);
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Decoration_PostitHeaderComponent2_i() : PostitHeaderComponent
      {
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "effectsHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.effectsHeader = _loc1_;
         BindingManager.executeBindings(this,"effectsHeader",this.effectsHeader);
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Decoration_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.horizontalCenter = 0;
         _loc1_.paddingTop = 10;
         _loc1_.mxmlContent = [this._ArchitectTemplate_Decoration_List1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Decoration_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._ArchitectTemplate_Decoration_ClassFactory1_c();
         _loc1_.setStyle("skinClass",ArchitectImageValueSkin);
         _loc1_.id = "effectsList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.effectsList = _loc1_;
         BindingManager.executeBindings(this,"effectsList",this.effectsList);
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Decoration_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ArchitectImageValueItemRenderer;
         return _loc1_;
      }
      
      private function _ArchitectTemplate_Decoration_DynamicImageButton2_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "featureInfoButton";
         _loc1_.right = 0;
         _loc1_.top = -10;
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
      
      public function ___ArchitectTemplate_Decoration_Group1_creationComplete(param1:FlexEvent) : void
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
      public function get effectsGroup() : VGroup
      {
         return this._490397341effectsGroup;
      }
      
      public function set effectsGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._490397341effectsGroup;
         if(_loc2_ !== param1)
         {
            this._490397341effectsGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectsGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get effectsHeader() : PostitHeaderComponent
      {
         return this._1961361873effectsHeader;
      }
      
      public function set effectsHeader(param1:PostitHeaderComponent) : void
      {
         var _loc2_:Object = this._1961361873effectsHeader;
         if(_loc2_ !== param1)
         {
            this._1961361873effectsHeader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectsHeader",_loc2_,param1));
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

