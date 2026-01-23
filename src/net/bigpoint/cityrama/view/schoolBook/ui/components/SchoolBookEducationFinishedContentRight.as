package net.bigpoint.cityrama.view.schoolBook.ui.components
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
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.constants.ServerProfessionalConstants;
   import net.bigpoint.cityrama.model.departmentBook.vo.DepartmentThresholdBarVo;
   import net.bigpoint.cityrama.model.schoolBook.vo.SchoolBookDepartmentVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalAttributeThresholdDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalAttributeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.HeaderComponentSmall;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.SecurityBarPartComponent;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.InfrastructureBuildingFieldObject;
   import net.bigpoint.cityrama.view.schoolBook.ui.events.SchoolBookEvent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class SchoolBookEducationFinishedContentRight extends Group
   {
      
      private var _1474880769assignButton:MultistateButton;
      
      private var _2075077202barContainer:Group;
      
      private var _319890477buildingContainer:Group;
      
      private var _400476409buildingImage:BriskImageDynaLib;
      
      private var _1352707381buildingStatusImage:BriskImageDynaLib;
      
      private var _453556521departmentImage:BriskImageDynaLib;
      
      private var _1112078072fireButton:MultistateButton;
      
      private var _1846981337informationHeader:HeaderComponentSmall;
      
      private var _1724029514partComponent:SecurityBarPartComponent;
      
      private var _75450170scrollLeftButton:DynamicImageButton;
      
      private var _1993162593scrollRightButton:DynamicImageButton;
      
      private var _1423635287toMarketButton:MultistateButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:SchoolBookDepartmentVo;
      
      private var _infrastructureBuildings:Vector.<InfrastructureBuildingFieldObject>;
      
      private var _departmentThresholdBarVo:Vector.<DepartmentThresholdBarVo>;
      
      private var _dataIsDirty:Boolean;
      
      private var _index:int = 0;
      
      private var _studentData:ProfessionalDTO;
      
      private var _totalPerceptionPointsInBuilding:int;
      
      private var _rangeCurrent:Number;
      
      private var _rangePossible:Number;
      
      public function SchoolBookEducationFinishedContentRight()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._SchoolBookEducationFinishedContentRight_Group2_c()];
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
      
      private function hireProfessional() : void
      {
         dispatchEvent(new SchoolBookEvent(SchoolBookEvent.HIRE_PROFESSIONAL_TO_DEPARTMENT,true));
      }
      
      public function set data(param1:SchoolBookDepartmentVo) : void
      {
         if(param1 != null && !RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            if(this._data.infrastructureBuildings)
            {
               this._infrastructureBuildings = this._data.infrastructureBuildings;
            }
            if(this._data.departmentThresholdBarVo)
            {
               this._departmentThresholdBarVo = this._data.departmentThresholdBarVo;
            }
            this._dataIsDirty = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            this.buildingImage.dynaLibName = "gui_popups_architect_17001_17005";
            if(this._infrastructureBuildings && this._infrastructureBuildings.length && this._infrastructureBuildings[this._index] && Boolean(this._studentData))
            {
               this.showIndexData();
               this.assignTexts();
               this.assignTooltips();
            }
         }
      }
      
      private function showIndexData() : void
      {
         this.buildingImage.dynaBmpSourceName = "FieldItem_" + this._infrastructureBuildings[this._index].billboardObjectVo.configPlayfieldItemVo.gfxId + "_level1_big";
         this.calculateRanges();
         this.partComponent.data = this.getThresholdData(this._rangePossible);
         this.departmentImage.dynaBmpSourceName = this._data.departmentGfxIds[this._index];
         this.checkNavigation();
         this.assignTexts();
         this.assignTooltips();
         this.checkBuildingStatus();
      }
      
      private function getThresholdData(param1:Number) : DepartmentThresholdBarVo
      {
         var _loc2_:DepartmentThresholdBarVo = this._departmentThresholdBarVo[this._index].copy;
         _loc2_.previewValue = param1;
         return _loc2_;
      }
      
      private function checkBuildingStatus() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:ProfessionalDTO = null;
         if(this._infrastructureBuildings[this._index].billboardObjectVo.buildingDTO.professionals.length >= this._infrastructureBuildings[this._index].billboardObjectVo.buildingDTO.config.maxProfessionalAmount)
         {
            _loc1_ = false;
            this.assignButton.enabled = false;
            this.buildingStatusImage.dynaBmpSourceName = "people_indicator_atttention";
            this.buildingStatusImage.visible = true;
            this.buildingStatusImage.toolTip = LocaUtils.getString("rcl.tooltips.schoolBook","rcl.tooltips.schoolBook.buildingFull");
            for each(_loc2_ in this._infrastructureBuildings[this._index].billboardObjectVo.buildingDTO.professionals)
            {
               if(_loc2_.lifetime == 0)
               {
                  _loc1_ = true;
                  break;
               }
            }
            if(_loc1_)
            {
               this.buildingStatusImage.dynaBmpSourceName = "people_indicator_expire";
               this.buildingStatusImage.toolTip = LocaUtils.getString("rcl.tooltips.schoolBook","rcl.tooltips.schoolBook.buildingContractExpired");
            }
         }
         else
         {
            this.buildingStatusImage.visible = false;
            this.assignButton.enabled = true;
         }
      }
      
      private function assignTexts() : void
      {
         this.informationHeader.label = LocaUtils.getString("rcl.playfielditems.name","rcl.playfielditems.name." + this._infrastructureBuildings[this._index].billboardObjectVo.buildingDTO.config.localeId + ".capital");
         this.assignButton.label = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.assign");
      }
      
      private function assignTooltips() : void
      {
         this.barContainer.toolTip = LocaUtils.getString("rcl.tooltips.schoolBook","rcl.tooltips.schoolBook.specialistImpact");
         this.assignButton.toolTip = LocaUtils.getString("rcl.tooltips.schoolBook" + "","rcl.tooltips.schoolBook.hireSpecialist");
         this.fireButton.toolTip = LocaUtils.getString("rcl.tooltips.schoolBook","rcl.tooltips.schoolBook.fireSpecialist");
         this.toMarketButton.toolTip = LocaUtils.getString("rcl.tooltips.schoolBook","rcl.tooltips.schoolBook.toMarket");
      }
      
      private function checkNavigation() : void
      {
         if(Boolean(this._infrastructureBuildings) && this._infrastructureBuildings.length > 1)
         {
            this.scrollLeftButton.enabled = this._index > 0;
            this.scrollRightButton.enabled = this._index < this._infrastructureBuildings.length - 1;
         }
         else
         {
            this.scrollLeftButton.enabled = false;
            this.scrollRightButton.enabled = false;
         }
      }
      
      private function handleAssignClick() : void
      {
         var _loc1_:SchoolBookEvent = null;
         if(Boolean(this._infrastructureBuildings) && this._infrastructureBuildings[this._index] is InfrastructureBuildingFieldObject)
         {
            _loc1_ = new SchoolBookEvent(SchoolBookEvent.HIRE_PROFESSIONAL_TO_DEPARTMENT,true);
            _loc1_.bid = this._infrastructureBuildings[this._index].billboardObjectVo.buildingDTO.id;
            dispatchEvent(_loc1_);
         }
      }
      
      private function calculateRanges() : void
      {
         var _loc3_:ProfessionalAttributeDTO = null;
         var _loc4_:ProfessionalDTO = null;
         var _loc1_:Vector.<ProfessionalDTO> = this._infrastructureBuildings[this._index].billboardObjectVo.buildingDTO.professionals;
         for each(_loc4_ in _loc1_)
         {
            if(_loc4_)
            {
               for each(_loc3_ in _loc4_.attributes)
               {
                  if(_loc3_.config.attributeType == ServerProfessionalConstants.ATTRIBUTE_PERCEPTION)
                  {
                     var _loc2_:int = 0 + _loc3_.attributePoints;
                  }
               }
            }
         }
         for each(_loc3_ in this._studentData.attributes)
         {
            if(_loc3_.config.attributeType == ServerProfessionalConstants.ATTRIBUTE_PERCEPTION)
            {
               _loc2_ = 0 + _loc3_.attributePoints;
            }
         }
         this._rangePossible = 0;
      }
      
      private function get buildingRanges() : Array
      {
         var _loc2_:ProfessionalAttributeDTO = null;
         var _loc3_:ConfigProfessionalAttributeThresholdDTO = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this._studentData.attributes)
         {
            if(_loc2_.config.attributeType == ServerProfessionalConstants.ATTRIBUTE_PERCEPTION)
            {
               for each(_loc3_ in _loc2_.config.attributeThresholds)
               {
                  if(_loc3_.type == ServerProfessionalConstants.SECURITY_RANGE)
                  {
                     if(!_loc1_[_loc3_.value - 1])
                     {
                        _loc1_[_loc3_.value - 1] = _loc3_.threshold;
                     }
                     else if(_loc1_[_loc3_.value - 1] < _loc3_.threshold)
                     {
                        _loc1_[_loc3_.value - 1] = _loc3_.threshold;
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public function set studentData(param1:ProfessionalDTO) : void
      {
         if(!RandomUtilities.isEqual(param1,this._studentData))
         {
            this._studentData = param1;
            this._dataIsDirty = true;
            invalidateProperties();
         }
      }
      
      private function scrollLeft() : void
      {
         --this._index;
         invalidateProperties();
         this._dataIsDirty = true;
      }
      
      private function scrollRight() : void
      {
         ++this._index;
         invalidateProperties();
         this._dataIsDirty = true;
      }
      
      private function handleFireProfessionalClick() : void
      {
         var _loc1_:SchoolBookEvent = new SchoolBookEvent(SchoolBookEvent.FIRE_PROFESSIONAL,true);
         _loc1_.pDTO = this._studentData;
         dispatchEvent(_loc1_);
      }
      
      private function handleInfoClick() : void
      {
         var _loc1_:SchoolBookEvent = new SchoolBookEvent(SchoolBookEvent.SHOW_BUILDING_INFO,true);
         _loc1_.infrastructureFieldObject = this._data.infrastructureBuildings[this._index];
         dispatchEvent(_loc1_);
      }
      
      private function _SchoolBookEducationFinishedContentRight_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 0;
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._SchoolBookEducationFinishedContentRight_BriskImageDynaLib1_c(),this._SchoolBookEducationFinishedContentRight_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationFinishedContentRight_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "bg_blue_finished";
         _loc1_.dynaLibName = "gui_popups_schoolBook";
         _loc1_.width = 372;
         _loc1_.height = 280;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationFinishedContentRight_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.paddingLeft = 10;
         _loc1_.paddingRight = 10;
         _loc1_.gap = 0;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._SchoolBookEducationFinishedContentRight_Group3_c(),this._SchoolBookEducationFinishedContentRight_HGroup1_c(),this._SchoolBookEducationFinishedContentRight_Group7_i(),this._SchoolBookEducationFinishedContentRight_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationFinishedContentRight_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 40;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._SchoolBookEducationFinishedContentRight_HeaderComponentSmall1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationFinishedContentRight_HeaderComponentSmall1_i() : HeaderComponentSmall
      {
         var _loc1_:HeaderComponentSmall = new HeaderComponentSmall();
         _loc1_.percentWidth = 100;
         _loc1_.textHAlign = "center";
         _loc1_.bottom = 4;
         _loc1_.id = "informationHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.informationHeader = _loc1_;
         BindingManager.executeBindings(this,"informationHeader",this.informationHeader);
         return _loc1_;
      }
      
      private function _SchoolBookEducationFinishedContentRight_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "top";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._SchoolBookEducationFinishedContentRight_Group4_c(),this._SchoolBookEducationFinishedContentRight_Group5_i(),this._SchoolBookEducationFinishedContentRight_Group6_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationFinishedContentRight_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 41;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._SchoolBookEducationFinishedContentRight_DynamicImageButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationFinishedContentRight_DynamicImageButton1_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.styleName = "listLeft";
         _loc1_.addEventListener("click",this.__scrollLeftButton_click);
         _loc1_.id = "scrollLeftButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.scrollLeftButton = _loc1_;
         BindingManager.executeBindings(this,"scrollLeftButton",this.scrollLeftButton);
         return _loc1_;
      }
      
      public function __scrollLeftButton_click(param1:MouseEvent) : void
      {
         this.scrollLeft();
      }
      
      private function _SchoolBookEducationFinishedContentRight_Group5_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._SchoolBookEducationFinishedContentRight_BriskImageDynaLib2_c(),this._SchoolBookEducationFinishedContentRight_BriskImageDynaLib3_i(),this._SchoolBookEducationFinishedContentRight_BriskImageDynaLib4_i(),this._SchoolBookEducationFinishedContentRight_Button1_c(),this._SchoolBookEducationFinishedContentRight_BriskMCDynaLib1_c()];
         _loc1_.id = "buildingContainer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.buildingContainer = _loc1_;
         BindingManager.executeBindings(this,"buildingContainer",this.buildingContainer);
         return _loc1_;
      }
      
      private function _SchoolBookEducationFinishedContentRight_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "architect_blueprint_big";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationFinishedContentRight_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "buildingImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.buildingImage = _loc1_;
         BindingManager.executeBindings(this,"buildingImage",this.buildingImage);
         return _loc1_;
      }
      
      private function _SchoolBookEducationFinishedContentRight_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.top = -10;
         _loc1_.right = -10;
         _loc1_.dynaLibName = "gui_popups_schoolBook";
         _loc1_.visible = false;
         _loc1_.id = "buildingStatusImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.buildingStatusImage = _loc1_;
         BindingManager.executeBindings(this,"buildingStatusImage",this.buildingStatusImage);
         return _loc1_;
      }
      
      private function _SchoolBookEducationFinishedContentRight_Button1_c() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.styleName = "iButton";
         _loc1_.bottom = 16;
         _loc1_.right = 13;
         _loc1_.width = 16;
         _loc1_.height = 16;
         _loc1_.addEventListener("click",this.___SchoolBookEducationFinishedContentRight_Button1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___SchoolBookEducationFinishedContentRight_Button1_click(param1:MouseEvent) : void
      {
         this.handleInfoClick();
      }
      
      private function _SchoolBookEducationFinishedContentRight_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_top";
         _loc1_.top = -2;
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationFinishedContentRight_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 41;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._SchoolBookEducationFinishedContentRight_DynamicImageButton2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationFinishedContentRight_DynamicImageButton2_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.styleName = "listRight";
         _loc1_.addEventListener("click",this.__scrollRightButton_click);
         _loc1_.id = "scrollRightButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.scrollRightButton = _loc1_;
         BindingManager.executeBindings(this,"scrollRightButton",this.scrollRightButton);
         return _loc1_;
      }
      
      public function __scrollRightButton_click(param1:MouseEvent) : void
      {
         this.scrollRight();
      }
      
      private function _SchoolBookEducationFinishedContentRight_Group7_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 42;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._SchoolBookEducationFinishedContentRight_Group8_c(),this._SchoolBookEducationFinishedContentRight_SecurityBarPartComponent1_i()];
         _loc1_.id = "barContainer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.barContainer = _loc1_;
         BindingManager.executeBindings(this,"barContainer",this.barContainer);
         return _loc1_;
      }
      
      private function _SchoolBookEducationFinishedContentRight_Group8_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentHeight = 100;
         _loc1_.verticalCenter = 0;
         _loc1_.left = -4;
         _loc1_.mxmlContent = [this._SchoolBookEducationFinishedContentRight_BriskImageDynaLib5_c(),this._SchoolBookEducationFinishedContentRight_BriskImageDynaLib6_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationFinishedContentRight_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "batchbase_green";
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 12;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationFinishedContentRight_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "small_badges";
         _loc1_.dynaBmpSourceName = "";
         _loc1_.dynaSWFFileName = "gui_ui_emergencyDepartmentsIcons";
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 0;
         _loc1_.id = "departmentImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.departmentImage = _loc1_;
         BindingManager.executeBindings(this,"departmentImage",this.departmentImage);
         return _loc1_;
      }
      
      private function _SchoolBookEducationFinishedContentRight_SecurityBarPartComponent1_i() : SecurityBarPartComponent
      {
         var _loc1_:SecurityBarPartComponent = new SecurityBarPartComponent();
         _loc1_.width = 290;
         _loc1_.right = 14;
         _loc1_.id = "partComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.partComponent = _loc1_;
         BindingManager.executeBindings(this,"partComponent",this.partComponent);
         return _loc1_;
      }
      
      private function _SchoolBookEducationFinishedContentRight_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._SchoolBookEducationFinishedContentRight_MultistateButton1_i(),this._SchoolBookEducationFinishedContentRight_MultistateButton2_i(),this._SchoolBookEducationFinishedContentRight_MultistateButton3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationFinishedContentRight_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.libNameLeft = "gui_popups_schoolBook";
         _loc1_.imageNameLeft = "white_x_icon";
         _loc1_.styleName = "abort";
         _loc1_.width = 42;
         _loc1_.addEventListener("click",this.__fireButton_click);
         _loc1_.id = "fireButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.fireButton = _loc1_;
         BindingManager.executeBindings(this,"fireButton",this.fireButton);
         return _loc1_;
      }
      
      public function __fireButton_click(param1:MouseEvent) : void
      {
         this.handleFireProfessionalClick();
      }
      
      private function _SchoolBookEducationFinishedContentRight_MultistateButton2_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.libNameLeft = "gui_popups_FriendBook";
         _loc1_.imageNameLeft = "button_icon_checkmark";
         _loc1_.width = 200;
         _loc1_.addEventListener("click",this.__assignButton_click);
         _loc1_.id = "assignButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.assignButton = _loc1_;
         BindingManager.executeBindings(this,"assignButton",this.assignButton);
         return _loc1_;
      }
      
      public function __assignButton_click(param1:MouseEvent) : void
      {
         this.handleAssignClick();
      }
      
      private function _SchoolBookEducationFinishedContentRight_MultistateButton3_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.libNameLeft = "gui_popups_schoolBook";
         _loc1_.imageNameLeft = "white_x_icon";
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.width = 42;
         _loc1_.id = "toMarketButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.toMarketButton = _loc1_;
         BindingManager.executeBindings(this,"toMarketButton",this.toMarketButton);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get assignButton() : MultistateButton
      {
         return this._1474880769assignButton;
      }
      
      public function set assignButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1474880769assignButton;
         if(_loc2_ !== param1)
         {
            this._1474880769assignButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"assignButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get barContainer() : Group
      {
         return this._2075077202barContainer;
      }
      
      public function set barContainer(param1:Group) : void
      {
         var _loc2_:Object = this._2075077202barContainer;
         if(_loc2_ !== param1)
         {
            this._2075077202barContainer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"barContainer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buildingContainer() : Group
      {
         return this._319890477buildingContainer;
      }
      
      public function set buildingContainer(param1:Group) : void
      {
         var _loc2_:Object = this._319890477buildingContainer;
         if(_loc2_ !== param1)
         {
            this._319890477buildingContainer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buildingContainer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buildingImage() : BriskImageDynaLib
      {
         return this._400476409buildingImage;
      }
      
      public function set buildingImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._400476409buildingImage;
         if(_loc2_ !== param1)
         {
            this._400476409buildingImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buildingImage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buildingStatusImage() : BriskImageDynaLib
      {
         return this._1352707381buildingStatusImage;
      }
      
      public function set buildingStatusImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1352707381buildingStatusImage;
         if(_loc2_ !== param1)
         {
            this._1352707381buildingStatusImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buildingStatusImage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get departmentImage() : BriskImageDynaLib
      {
         return this._453556521departmentImage;
      }
      
      public function set departmentImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._453556521departmentImage;
         if(_loc2_ !== param1)
         {
            this._453556521departmentImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"departmentImage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fireButton() : MultistateButton
      {
         return this._1112078072fireButton;
      }
      
      public function set fireButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1112078072fireButton;
         if(_loc2_ !== param1)
         {
            this._1112078072fireButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fireButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get informationHeader() : HeaderComponentSmall
      {
         return this._1846981337informationHeader;
      }
      
      public function set informationHeader(param1:HeaderComponentSmall) : void
      {
         var _loc2_:Object = this._1846981337informationHeader;
         if(_loc2_ !== param1)
         {
            this._1846981337informationHeader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"informationHeader",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get partComponent() : SecurityBarPartComponent
      {
         return this._1724029514partComponent;
      }
      
      public function set partComponent(param1:SecurityBarPartComponent) : void
      {
         var _loc2_:Object = this._1724029514partComponent;
         if(_loc2_ !== param1)
         {
            this._1724029514partComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"partComponent",_loc2_,param1));
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
      public function get toMarketButton() : MultistateButton
      {
         return this._1423635287toMarketButton;
      }
      
      public function set toMarketButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1423635287toMarketButton;
         if(_loc2_ !== param1)
         {
            this._1423635287toMarketButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"toMarketButton",_loc2_,param1));
            }
         }
      }
   }
}

