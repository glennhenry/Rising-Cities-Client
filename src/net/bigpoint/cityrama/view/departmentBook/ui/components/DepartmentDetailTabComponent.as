package net.bigpoint.cityrama.view.departmentBook.ui.components
{
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.departmentBook.vo.DepartmentProfessionalListVo;
   import net.bigpoint.cityrama.model.departmentBook.vo.DepartmentSecurityBarVo;
   import net.bigpoint.cityrama.model.detailViews.vo.DepartmentDetailViewVo;
   import net.bigpoint.cityrama.model.residentialBook.vo.UpgradeProgressVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.departmentBook.ui.skins.DepartmentSecurityBarSkin;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ResidentialHeaderComponent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class DepartmentDetailTabComponent extends Group
   {
      
      private var _1415215337evaluationHeader:ResidentialHeaderComponent;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _2112922897polaroidImage:BriskImageDynaLib;
      
      private var _1795991707professionalList:DepartmentSlotComponent;
      
      private var _1296646151rangeBarComponent:DepartmentSecurityBarComponent;
      
      private var _2007548268upgradeProgressComponent:InfraUpgradeProgressComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:DepartmentDetailViewVo;
      
      private var _isDirty:Boolean;
      
      private var _departmentName:String = "";
      
      public function DepartmentDetailTabComponent()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mxmlContent = [this._DepartmentDetailTabComponent_HGroup1_c(),this._DepartmentDetailTabComponent_Group2_c()];
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
      
      public function set data(param1:DepartmentDetailViewVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._isDirty = true;
            this._data = param1;
            invalidateProperties();
         }
      }
      
      private function get departmentName() : String
      {
         if(this._departmentName == "" && Boolean(this._data))
         {
            this._departmentName = LocaUtils.getString("rcl.playfielditems.name","rcl.playfielditems.name." + this._data.localeId);
         }
         return this._departmentName;
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(Boolean(this._data) && this._isDirty)
         {
            this._isDirty = false;
            this.fillContent();
         }
      }
      
      private function fillContent() : void
      {
         this.flavourText.text = LocaUtils.getString("rcl.booklayer.departmentBook" + "","rcl.booklayer.departmentBook.flavortext_" + this._data.localeId);
         this.evaluationHeader.text = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.currentUpgrade",[this._data.upgradeCurrentLevel]);
         this.polaroidImage.dynaBmpSourceName = "department_" + this._data.gfxId + "_level" + this._data.upgradeCurrentLevel + "_big";
         this.polaroidImage.toolTip = LocaUtils.getString("rcl.playfielditems.name","rcl.playfielditems.name." + this._data.localeId);
         this.initUpgradeProgress();
         this.initSecurityProgress(this._data);
         this.initProfessionalList(this._data);
      }
      
      private function initProfessionalList(param1:DepartmentDetailViewVo) : void
      {
         var _loc2_:DepartmentProfessionalListVo = new DepartmentProfessionalListVo();
         _loc2_.flavourText = LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.slots",[param1.currentSlots,param1.maxSlots]);
         _loc2_.professionalSlots = param1.professionalList;
         _loc2_.headerIconImg = this._data.headerIcon;
         _loc2_.headerIconLib = "gui_popups_emergencyBook";
         _loc2_.headerText = LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.header_170011");
         this.professionalList.data = _loc2_;
      }
      
      private function initSecurityProgress(param1:DepartmentDetailViewVo) : void
      {
         this.rangeBarComponent.data = new DepartmentSecurityBarVo(param1.attributePoints,param1.maxAttributePoints,param1.type,param1.departmentGfxId,param1.configSecurityGrades,param1.thresholds,param1.buildingSizeX,param1.buildingSizeY);
         this.rangeBarComponent.label = LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.securityArea");
         this.rangeBarComponent.toolTip = LocaUtils.getString("rcl.tooltips.departmentBook","rcl.tooltips.departmentBook.radiusBar",[this.departmentName]);
      }
      
      private function initUpgradeProgress() : void
      {
         var _loc1_:UpgradeProgressVo = new UpgradeProgressVo();
         _loc1_.currentProgress = this._data.emergencyCount;
         _loc1_.hasEnoughMoney = this._data.hasEnoughDD;
         _loc1_.neededProgress = this._data.upgradeCountTotal;
         _loc1_.price = this._data.upgradePrice;
         _loc1_.upgradeCurrentLevel = this._data.upgradeCurrentLevel;
         _loc1_.upgradeMaxLevel = this._data.upgradeMaxLevel;
         _loc1_.upgradeNextLevel = this._data.upgradeNextLevel;
         _loc1_.instaFinishRCCost = this._data.upgradeInstaFinishRCCost;
         _loc1_.userRCStock = this._data.userRcStock;
         this.upgradeProgressComponent.data = _loc1_;
         if(this._data.nextDepartmentDetail)
         {
            if(this._data.upgradeReady && Boolean(this._data.nextDepartmentDetail))
            {
               this.upgradeProgressComponent.instaBuyButton.addEventListener(MouseEvent.MOUSE_OVER,this.handleUpgradeMouseOver);
               this.upgradeProgressComponent.upgradeButton.addEventListener(MouseEvent.MOUSE_OVER,this.handleUpgradeMouseOver);
               this.upgradeProgressComponent.instaBuyButton.addEventListener(MouseEvent.MOUSE_OUT,this.handleUpgradeMouseOut);
               this.upgradeProgressComponent.upgradeButton.addEventListener(MouseEvent.MOUSE_OUT,this.handleUpgradeMouseOut);
            }
         }
         else
         {
            this.upgradeProgressComponent.instaBuyButton.removeEventListener(MouseEvent.MOUSE_OVER,this.handleUpgradeMouseOver);
            this.upgradeProgressComponent.instaBuyButton.removeEventListener(MouseEvent.MOUSE_OUT,this.handleUpgradeMouseOut);
            this.upgradeProgressComponent.upgradeButton.removeEventListener(MouseEvent.MOUSE_OVER,this.handleUpgradeMouseOver);
            this.upgradeProgressComponent.upgradeButton.removeEventListener(MouseEvent.MOUSE_OUT,this.handleUpgradeMouseOut);
         }
         var _loc2_:int = this._data.upgradeCountTotal - this._data.emergencyCount;
         this.upgradeProgressComponent.upgradeButton.toolTip = LocaUtils.getString("rcl.tooltips.residentialBook","rcl.tooltips.residentialBook.upgradeButton");
      }
      
      private function handleUpgradeMouseOut(param1:MouseEvent) : void
      {
         this._isDirty = true;
         invalidateProperties();
      }
      
      private function handleUpgradeMouseOver(param1:MouseEvent) : void
      {
         this.polaroidImage.dynaBmpSourceName = "department_" + this._data.gfxId + "_level" + this._data.upgradeNextLevel + "_big";
         this.initProfessionalList(this._data.nextDepartmentDetail);
         this.initSecurityProgress(this._data.nextDepartmentDetail);
      }
      
      private function _DepartmentDetailTabComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 90;
         _loc1_.height = 40;
         _loc1_.horizontalCenter = 0;
         _loc1_.top = -20;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._DepartmentDetailTabComponent_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentDetailTabComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "flavorText";
         _loc1_.maxDisplayedLines = 2;
         _loc1_.percentWidth = 100;
         _loc1_.id = "flavourText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavourText = _loc1_;
         BindingManager.executeBindings(this,"flavourText",this.flavourText);
         return _loc1_;
      }
      
      private function _DepartmentDetailTabComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 98;
         _loc1_.height = 315;
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 20;
         _loc1_.mxmlContent = [this._DepartmentDetailTabComponent_Group3_c(),this._DepartmentDetailTabComponent_Group5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentDetailTabComponent_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 500;
         _loc1_.percentHeight = 100;
         _loc1_.right = 0;
         _loc1_.mxmlContent = [this._DepartmentDetailTabComponent_BriskImageDynaLib1_c(),this._DepartmentDetailTabComponent_BriskMCDynaLib1_c(),this._DepartmentDetailTabComponent_DepartmentSlotComponent1_i(),this._DepartmentDetailTabComponent_Group4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentDetailTabComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "quadrillepaper_quer";
         _loc1_.right = 0;
         _loc1_.top = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentDetailTabComponent_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.top = -5;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaMCSourceName = "stickytape_top";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentDetailTabComponent_DepartmentSlotComponent1_i() : DepartmentSlotComponent
      {
         var _loc1_:DepartmentSlotComponent = new DepartmentSlotComponent();
         _loc1_.top = 16;
         _loc1_.height = 234;
         _loc1_.width = 493;
         _loc1_.id = "professionalList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.professionalList = _loc1_;
         BindingManager.executeBindings(this,"professionalList",this.professionalList);
         return _loc1_;
      }
      
      private function _DepartmentDetailTabComponent_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.bottom = -4;
         _loc1_.right = -10;
         _loc1_.mxmlContent = [this._DepartmentDetailTabComponent_DepartmentSecurityBarComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentDetailTabComponent_DepartmentSecurityBarComponent1_i() : DepartmentSecurityBarComponent
      {
         var _loc1_:DepartmentSecurityBarComponent = new DepartmentSecurityBarComponent();
         _loc1_.percentWidth = 100;
         _loc1_.setStyle("skinClass",DepartmentSecurityBarSkin);
         _loc1_.id = "rangeBarComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rangeBarComponent = _loc1_;
         BindingManager.executeBindings(this,"rangeBarComponent",this.rangeBarComponent);
         return _loc1_;
      }
      
      private function _DepartmentDetailTabComponent_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 210;
         _loc1_.percentHeight = 100;
         _loc1_.left = 0;
         _loc1_.mxmlContent = [this._DepartmentDetailTabComponent_Group6_c(),this._DepartmentDetailTabComponent_StickyNoteComponent1_c(),this._DepartmentDetailTabComponent_BriskMCDynaLib3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentDetailTabComponent_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.bottom = -8;
         _loc1_.mxmlContent = [this._DepartmentDetailTabComponent_BriskImageDynaLib2_i(),this._DepartmentDetailTabComponent_BriskMCDynaLib2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentDetailTabComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.verticalCenter = 0;
         _loc1_.id = "polaroidImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.polaroidImage = _loc1_;
         BindingManager.executeBindings(this,"polaroidImage",this.polaroidImage);
         return _loc1_;
      }
      
      private function _DepartmentDetailTabComponent_BriskMCDynaLib2_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_top";
         _loc1_.height = 25;
         _loc1_.top = -12;
         _loc1_.horizontalCenter = 0;
         _loc1_.width = 140;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentDetailTabComponent_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.height = 128;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._DepartmentDetailTabComponent_Array8_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentDetailTabComponent_Array8_c() : Array
      {
         return [this._DepartmentDetailTabComponent_VGroup1_c()];
      }
      
      private function _DepartmentDetailTabComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._DepartmentDetailTabComponent_ResidentialHeaderComponent1_i(),this._DepartmentDetailTabComponent_InfraUpgradeProgressComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentDetailTabComponent_ResidentialHeaderComponent1_i() : ResidentialHeaderComponent
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
      
      private function _DepartmentDetailTabComponent_InfraUpgradeProgressComponent1_i() : InfraUpgradeProgressComponent
      {
         var _loc1_:InfraUpgradeProgressComponent = new InfraUpgradeProgressComponent();
         _loc1_.id = "upgradeProgressComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.upgradeProgressComponent = _loc1_;
         BindingManager.executeBindings(this,"upgradeProgressComponent",this.upgradeProgressComponent);
         return _loc1_;
      }
      
      private function _DepartmentDetailTabComponent_BriskMCDynaLib3_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.top = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaMCSourceName = "stickytape_top";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
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
      public function get flavourText() : LocaLabel
      {
         return this._800887486flavourText;
      }
      
      public function set flavourText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._800887486flavourText;
         if(_loc2_ !== param1)
         {
            this._800887486flavourText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get polaroidImage() : BriskImageDynaLib
      {
         return this._2112922897polaroidImage;
      }
      
      public function set polaroidImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._2112922897polaroidImage;
         if(_loc2_ !== param1)
         {
            this._2112922897polaroidImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"polaroidImage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get professionalList() : DepartmentSlotComponent
      {
         return this._1795991707professionalList;
      }
      
      public function set professionalList(param1:DepartmentSlotComponent) : void
      {
         var _loc2_:Object = this._1795991707professionalList;
         if(_loc2_ !== param1)
         {
            this._1795991707professionalList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"professionalList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rangeBarComponent() : DepartmentSecurityBarComponent
      {
         return this._1296646151rangeBarComponent;
      }
      
      public function set rangeBarComponent(param1:DepartmentSecurityBarComponent) : void
      {
         var _loc2_:Object = this._1296646151rangeBarComponent;
         if(_loc2_ !== param1)
         {
            this._1296646151rangeBarComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rangeBarComponent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get upgradeProgressComponent() : InfraUpgradeProgressComponent
      {
         return this._2007548268upgradeProgressComponent;
      }
      
      public function set upgradeProgressComponent(param1:InfraUpgradeProgressComponent) : void
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

