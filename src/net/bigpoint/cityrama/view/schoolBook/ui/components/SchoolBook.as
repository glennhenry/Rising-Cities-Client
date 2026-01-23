package net.bigpoint.cityrama.view.schoolBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.schoolBook.vo.EducationAttributeVo;
   import net.bigpoint.cityrama.model.schoolBook.vo.SchoolBookVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalAttributeThresholdDTO;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.common.components.StatsProgressbar;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.AddSkillpointEvent;
   import net.bigpoint.cityrama.view.schoolBook.ui.events.SchoolBookEvent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class SchoolBook extends PaperPopupWindow
   {
      
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
      
      private var _389389280contentLeft:SchoolBookContentLeft;
      
      private var _819495203contentRight:SchoolBookEducationContentRight;
      
      private var _1396691625contentRightEducationFinished:SchoolBookEducationFinishedContentRight;
      
      private var _217608008contentRightFinishedNoDepartment:SchoolBookNotAssignableContentRight;
      
      private var _1684755691flavorText:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:SchoolBookVo;
      
      private var _dataIsDirty:Boolean;
      
      public function SchoolBook()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "school";
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._SchoolBook_Array1_c);
         this.addEventListener("creationComplete",this.___SchoolBook_PaperPopupWindow1_creationComplete);
      }
      
      private static function traitWillBeUnlocked(param1:EducationAttributeVo) : Boolean
      {
         var _loc2_:ConfigProfessionalAttributeThresholdDTO = null;
         for each(_loc2_ in param1.traitThresholds)
         {
            if(_loc2_.threshold > param1.amount && param1.amount + param1.tempMod >= _loc2_.threshold)
            {
               return true;
            }
         }
         return false;
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
         title = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.title");
         this.contentLeft.addEventListener(SchoolBookEvent.SCHOOL_USE_STAT_POINT,this.onStatClick);
      }
      
      public function set data(param1:SchoolBookVo) : void
      {
         if(!RandomUtilities.isEqual(this._data,param1))
         {
            this._data = param1;
            this._dataIsDirty = true;
            invalidateProperties();
         }
      }
      
      public function set instantFinishData(param1:Object) : void
      {
         this.contentRight.instantFinishData = param1;
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            this.contentLeft.educationFinished = this._data.educationIsFinished;
            this.contentLeft.studentData = this._data.student;
            this.contentLeft.skillPointsAvailable = this._data.skillPointsLeft;
            this.contentLeft.attributes = this._data.attributes;
            this.contentRight.noMoreStepsAvailable = this._data.skillPointsToAdd == 0 || !this._data.progressInfo.waitingForStart;
            this.contentRight.educationRunning = !this._data.progressInfo.waitingForStart;
            this.contentRight.setNextSkillPoints(this._data.skillPointsToAdd);
            this.contentRight.stepDuration = this._data.duration;
            this.contentRight.educationPrice = this._data.pointCost;
            this.contentRight.educationPriceDextro = this._data.dextroCost;
            this.contentRight.hasEnoughPoints = this._data.educationPointsAvailable;
            this.contentRight.hasEnoughDextro = this._data.dextroAvailable;
            this.contentRight.harvestValues = this._data.progressInfo;
            this.contentRightEducationFinished.data = this._data.departmentData;
            this.contentRightEducationFinished.studentData = this._data.assignedProfessional;
            this.contentRightFinishedNoDepartment.data = this._data.assignedProfessional;
            if(this._data.educationIsFinished)
            {
               this.contentRight.visible = this.contentRight.includeInLayout = false;
               this.flavorText.text = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.flavorTextFinished");
               this.contentRightFinishedNoDepartment.visible = this.contentRightFinishedNoDepartment.includeInLayout = this._data.emergencyFeatureDisabled;
               this.contentRightEducationFinished.visible = this.contentRightEducationFinished.includeInLayout = !this._data.emergencyFeatureDisabled;
            }
            else
            {
               this.contentRight.visible = this.contentRight.includeInLayout = true;
               this.contentRightEducationFinished.visible = this.contentRightEducationFinished.includeInLayout = false;
               this.contentRightFinishedNoDepartment.visible = this.contentRightFinishedNoDepartment.includeInLayout = false;
               this.flavorText.text = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.flavorText");
            }
         }
      }
      
      private function onStatClick(param1:SchoolBookEvent) : void
      {
         var _loc2_:AddSkillpointEvent = null;
         var _loc3_:EducationAttributeVo = null;
         if(param1.target is StatsProgressbar)
         {
            _loc2_ = new AddSkillpointEvent(AddSkillpointEvent.ADD);
            _loc2_.attributeType = StatsProgressbar(param1.target).type;
            for each(_loc3_ in this._data.attributes)
            {
               if(_loc3_.attributeType == StatsProgressbar(param1.target).type)
               {
                  ++_loc3_.tempMod;
                  _loc2_.sendToServerNow = traitWillBeUnlocked(_loc3_);
                  if(_loc3_.amount + _loc3_.tempMod >= _loc3_.maxCap)
                  {
                     StatsProgressbar(param1.target).enablePlusClick = false;
                     _loc2_.sendToServerNow = true;
                  }
               }
            }
            _loc2_.professionalId = this._data.student.professionalId;
            dispatchEvent(_loc2_);
            this.updateBars();
         }
      }
      
      private function updateBars() : void
      {
         this.contentLeft.attributes = this._data.attributes;
      }
      
      private function _SchoolBook_Array1_c() : Array
      {
         return [this._SchoolBook_VGroup1_c(),this._SchoolBook_BriskMCDynaLib1_c()];
      }
      
      private function _SchoolBook_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "top";
         _loc1_.paddingTop = 20;
         _loc1_.gap = -10;
         _loc1_.mxmlContent = [this._SchoolBook_HGroup1_c(),this._SchoolBook_Group1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBook_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.height = 50;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._SchoolBook_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBook_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 90;
         _loc1_.styleName = "flavorText";
         _loc1_.maxDisplayedLines = 2;
         _loc1_.id = "flavorText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavorText = _loc1_;
         BindingManager.executeBindings(this,"flavorText",this.flavorText);
         return _loc1_;
      }
      
      private function _SchoolBook_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._SchoolBook_SchoolBookEducationContentRight1_i(),this._SchoolBook_SchoolBookEducationFinishedContentRight1_i(),this._SchoolBook_SchoolBookNotAssignableContentRight1_i(),this._SchoolBook_SchoolBookContentLeft1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBook_SchoolBookEducationContentRight1_i() : SchoolBookEducationContentRight
      {
         var _loc1_:SchoolBookEducationContentRight = new SchoolBookEducationContentRight();
         _loc1_.percentHeight = 100;
         _loc1_.right = -16;
         _loc1_.id = "contentRight";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.contentRight = _loc1_;
         BindingManager.executeBindings(this,"contentRight",this.contentRight);
         return _loc1_;
      }
      
      private function _SchoolBook_SchoolBookEducationFinishedContentRight1_i() : SchoolBookEducationFinishedContentRight
      {
         var _loc1_:SchoolBookEducationFinishedContentRight = new SchoolBookEducationFinishedContentRight();
         _loc1_.percentHeight = 100;
         _loc1_.right = 0;
         _loc1_.top = 5;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "contentRightEducationFinished";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.contentRightEducationFinished = _loc1_;
         BindingManager.executeBindings(this,"contentRightEducationFinished",this.contentRightEducationFinished);
         return _loc1_;
      }
      
      private function _SchoolBook_SchoolBookNotAssignableContentRight1_i() : SchoolBookNotAssignableContentRight
      {
         var _loc1_:SchoolBookNotAssignableContentRight = new SchoolBookNotAssignableContentRight();
         _loc1_.percentHeight = 100;
         _loc1_.width = 380;
         _loc1_.right = -8;
         _loc1_.top = 5;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "contentRightFinishedNoDepartment";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.contentRightFinishedNoDepartment = _loc1_;
         BindingManager.executeBindings(this,"contentRightFinishedNoDepartment",this.contentRightFinishedNoDepartment);
         return _loc1_;
      }
      
      private function _SchoolBook_SchoolBookContentLeft1_i() : SchoolBookContentLeft
      {
         var _loc1_:SchoolBookContentLeft = new SchoolBookContentLeft();
         _loc1_.width = 380;
         _loc1_.height = 330;
         _loc1_.left = -6;
         _loc1_.id = "contentLeft";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.contentLeft = _loc1_;
         BindingManager.executeBindings(this,"contentLeft",this.contentLeft);
         return _loc1_;
      }
      
      private function _SchoolBook_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_left";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___SchoolBook_PaperPopupWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete();
      }
      
      [Bindable(event="propertyChange")]
      public function get contentLeft() : SchoolBookContentLeft
      {
         return this._389389280contentLeft;
      }
      
      public function set contentLeft(param1:SchoolBookContentLeft) : void
      {
         var _loc2_:Object = this._389389280contentLeft;
         if(_loc2_ !== param1)
         {
            this._389389280contentLeft = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentLeft",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get contentRight() : SchoolBookEducationContentRight
      {
         return this._819495203contentRight;
      }
      
      public function set contentRight(param1:SchoolBookEducationContentRight) : void
      {
         var _loc2_:Object = this._819495203contentRight;
         if(_loc2_ !== param1)
         {
            this._819495203contentRight = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentRight",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get contentRightEducationFinished() : SchoolBookEducationFinishedContentRight
      {
         return this._1396691625contentRightEducationFinished;
      }
      
      public function set contentRightEducationFinished(param1:SchoolBookEducationFinishedContentRight) : void
      {
         var _loc2_:Object = this._1396691625contentRightEducationFinished;
         if(_loc2_ !== param1)
         {
            this._1396691625contentRightEducationFinished = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentRightEducationFinished",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get contentRightFinishedNoDepartment() : SchoolBookNotAssignableContentRight
      {
         return this._217608008contentRightFinishedNoDepartment;
      }
      
      public function set contentRightFinishedNoDepartment(param1:SchoolBookNotAssignableContentRight) : void
      {
         var _loc2_:Object = this._217608008contentRightFinishedNoDepartment;
         if(_loc2_ !== param1)
         {
            this._217608008contentRightFinishedNoDepartment = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentRightFinishedNoDepartment",_loc2_,param1));
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
   }
}

