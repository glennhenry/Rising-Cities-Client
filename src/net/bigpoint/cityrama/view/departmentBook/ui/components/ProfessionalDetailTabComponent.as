package net.bigpoint.cityrama.view.departmentBook.ui.components
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
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.DepartmentProfessionalDetailInfoVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalAttributeVO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalAttributeThresholdDTO;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.HeaderComponentSmall;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.StatsProgressbar;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ProgressBarComponent;
   import net.bigpoint.cityrama.view.schoolBook.ui.components.SpecialistSlotComponent;
   import net.bigpoint.cityrama.view.schoolBook.ui.events.SchoolBookEvent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class ProfessionalDetailTabComponent extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _1016580566attributeOne:StatsProgressbar;
      
      private var _1971893150attributeThree:StatsProgressbar;
      
      private var _1016575472attributeTwo:StatsProgressbar;
      
      private var _719353435characteristicsComponent:ProfessionalCharacteristicsComponent;
      
      private var _1112078072fireButton:MultistateButton;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _1184053038labelDisplay:LocaLabel;
      
      private var _1146996379levelProgressBarComponent:ProgressBarComponent;
      
      private var _843713104levelbarGroup:Group;
      
      private var _1314010559maxlevelGroup:Group;
      
      private var _1318108724maxlevelLabel:LocaLabel;
      
      private var _1795780411professionalSlot:SpecialistSlotComponent;
      
      private var _227692281skillPointsLeftLabel:LocaLabel;
      
      private var _951519628statPointsBadge:BriskImageDynaLib;
      
      private var _155112853statsLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:DepartmentProfessionalDetailInfoVo;
      
      private var _isDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ProfessionalDetailTabComponent()
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
         bindings = this._ProfessionalDetailTabComponent_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_departmentBook_ui_components_ProfessionalDetailTabComponentWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return ProfessionalDetailTabComponent[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.percentHeight = 100;
         this.percentWidth = 100;
         this.mxmlContent = [this._ProfessionalDetailTabComponent_HGroup1_c(),this._ProfessionalDetailTabComponent_Group2_c(),this._ProfessionalDetailTabComponent_Group8_i(),this._ProfessionalDetailTabComponent_Group9_i(),this._ProfessionalDetailTabComponent_Group13_c()];
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      private static function traitWillBeUnlocked(param1:ProfessionalAttributeVO) : Boolean
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
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         ProfessionalDetailTabComponent._watcherSetupUtil = param1;
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
      
      public function set data(param1:DepartmentProfessionalDetailInfoVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._isDirty = true;
            this._data = param1;
            invalidateProperties();
         }
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
         this.flavourText.text = LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.professionalDetail.flavour");
         this.fireButton.label = LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.professional.fire");
         this.statsLabel.text = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.stats");
         this.labelDisplay.text = LocaUtils.getString("rcl.booklayer.departmentBook" + "","rcl.booklayer.departmentBook.professional.step",[this._data.currentLevel]);
         this.fireButton.toolTip = LocaUtils.getString("rcl.tooltips.schoolBook","rcl.tooltips.schoolBook.fireSpecialist");
         this.levelProgressBarComponent.progress = this._data.levelProgressScalar;
         if(this._data.currentLevel >= this._data.maxLevel)
         {
            this.levelbarGroup.visible = this.levelbarGroup.includeInLayout = false;
            this.maxlevelGroup.visible = this.maxlevelGroup.includeInLayout = true;
            this.maxlevelGroup.toolTip = LocaUtils.getString("rcl.tooltips.departmentBook","rcl.tooltips.departmentBook.maxlevel");
         }
         else
         {
            this.levelbarGroup.visible = this.levelbarGroup.includeInLayout = true;
            this.maxlevelGroup.visible = this.maxlevelGroup.includeInLayout = false;
         }
         this.maxlevelLabel.text = LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.maxlevelreached",[this._data.name]);
         this.levelProgressBarComponent.toolTip = LocaUtils.getString("rcl.tooltips.departmentBook","rcl.tooltips.departmentBook.levelprogress",[this._data.nextLevelXpThreshold - this._data.currentXp,this._data.currentXp - this._data.lastLevelXpThreshold,this._data.nextLevelXpThreshold - this._data.lastLevelXpThreshold]);
         this.characteristicsComponent.data = this._data;
         this.fireButton.enabled = this._data.dismissIsUnlocked;
         this.professionalSlot.data = this._data;
         if(this._data.unspentSkillPoints > 0)
         {
            this.skillPointsLeftLabel.text = this._data.unspentSkillPoints.toString();
            this.skillPointsLeftLabel.visible = true;
            this.statPointsBadge.visible = true;
         }
         else
         {
            this.skillPointsLeftLabel.visible = false;
            this.statPointsBadge.visible = false;
         }
         this.updateBars();
      }
      
      private function updateBars() : void
      {
         var _loc3_:StatsProgressbar = null;
         var _loc1_:Vector.<StatsProgressbar> = new <StatsProgressbar>[this.attributeOne,this.attributeTwo,this.attributeThree];
         if(this._data.attributes.length > _loc1_.length)
         {
            throw new RamaCityError(this + "max displayed attributes currently 3");
         }
         for each(_loc3_ in _loc1_)
         {
            if(this._data.attributes.length > 0)
            {
               _loc3_.progress = this._data.attributes[0].progressScalar;
               _loc3_.type = this._data.attributes[0].attributeType;
               _loc3_.styleName = this._data.attributes[0].attributeType;
               _loc3_.visible = _loc3_.includeInLayout = true;
               _loc3_.enablePlusClick = (this._data.unspentSkillPoints && this._data.attributes[0].progressScalar < 1) > 0;
               _loc3_.addEventListener(SchoolBookEvent.SCHOOL_USE_STAT_POINT,this.onStatClick);
            }
            else
            {
               _loc3_.visible = _loc3_.includeInLayout = false;
            }
            _loc2_++;
         }
      }
      
      private function onStatClick(param1:SchoolBookEvent) : void
      {
         var _loc2_:AddSkillpointEvent = null;
         var _loc3_:ProfessionalAttributeVO = null;
         if(param1.currentTarget is StatsProgressbar)
         {
            _loc2_ = new AddSkillpointEvent(AddSkillpointEvent.ADD);
            _loc2_.attributeType = StatsProgressbar(param1.currentTarget).type;
            for each(_loc3_ in this._data.attributes)
            {
               if(_loc3_.attributeType == StatsProgressbar(param1.currentTarget).type)
               {
                  ++_loc3_.tempMod;
                  _loc2_.sendToServerNow = traitWillBeUnlocked(_loc3_);
               }
            }
            _loc2_.professionalId = this._data.profId;
            dispatchEvent(_loc2_);
            this.updateBars();
         }
      }
      
      private function handleFire() : void
      {
         dispatchEvent(new Event("fireProfessional"));
      }
      
      private function _ProfessionalDetailTabComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 90;
         _loc1_.height = 40;
         _loc1_.horizontalCenter = 0;
         _loc1_.top = -20;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._ProfessionalDetailTabComponent_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_LocaLabel1_i() : LocaLabel
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
      
      private function _ProfessionalDetailTabComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.bottom = 45;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._ProfessionalDetailTabComponent_ProfessionalCharacteristicsComponent1_i(),this._ProfessionalDetailTabComponent_Group3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_ProfessionalCharacteristicsComponent1_i() : ProfessionalCharacteristicsComponent
      {
         var _loc1_:ProfessionalCharacteristicsComponent = new ProfessionalCharacteristicsComponent();
         _loc1_.percentWidth = 100;
         _loc1_.id = "characteristicsComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.characteristicsComponent = _loc1_;
         BindingManager.executeBindings(this,"characteristicsComponent",this.characteristicsComponent);
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.right = 0;
         _loc1_.mxmlContent = [this._ProfessionalDetailTabComponent_BriskImageDynaLib1_c(),this._ProfessionalDetailTabComponent_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "quadrillepapier_professional";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.paddingRight = 20;
         _loc1_.paddingLeft = 16;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._ProfessionalDetailTabComponent_SpecialistSlotComponent1_i(),this._ProfessionalDetailTabComponent_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_SpecialistSlotComponent1_i() : SpecialistSlotComponent
      {
         var _loc1_:SpecialistSlotComponent = new SpecialistSlotComponent();
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "professionalSlot";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.professionalSlot = _loc1_;
         BindingManager.executeBindings(this,"professionalSlot",this.professionalSlot);
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.gap = 0;
         _loc1_.height = 130;
         _loc1_.mxmlContent = [this._ProfessionalDetailTabComponent_Group4_c(),this._ProfessionalDetailTabComponent_Group5_c(),this._ProfessionalDetailTabComponent_StatsProgressbar1_i(),this._ProfessionalDetailTabComponent_Group6_c(),this._ProfessionalDetailTabComponent_StatsProgressbar2_i(),this._ProfessionalDetailTabComponent_Group7_c(),this._ProfessionalDetailTabComponent_StatsProgressbar3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.verticalCenter = 0;
         _loc1_.mxmlContent = [this._ProfessionalDetailTabComponent_HeaderComponentSmall1_c(),this._ProfessionalDetailTabComponent_HGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_HeaderComponentSmall1_c() : HeaderComponentSmall
      {
         var _loc1_:HeaderComponentSmall = new HeaderComponentSmall();
         _loc1_.label = "";
         _loc1_.percentWidth = 100;
         _loc1_.verticalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.paddingLeft = 10;
         _loc1_.mxmlContent = [this._ProfessionalDetailTabComponent_LocaLabel2_i(),this._ProfessionalDetailTabComponent_LocaLabel3_i(),this._ProfessionalDetailTabComponent_BriskImageDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "emergencySuccessBarLabel";
         _loc1_.maxDisplayedLines = 1;
         _loc1_.id = "statsLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.statsLabel = _loc1_;
         BindingManager.executeBindings(this,"statsLabel",this.statsLabel);
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.right = 30;
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "schoolBookText";
         _loc1_.id = "skillPointsLeftLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.skillPointsLeftLabel = _loc1_;
         BindingManager.executeBindings(this,"skillPointsLeftLabel",this.skillPointsLeftLabel);
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "icon_skillpoint";
         _loc1_.dynaLibName = "gui_resources_icons";
         _loc1_.right = 4;
         _loc1_.id = "statPointsBadge";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.statPointsBadge = _loc1_;
         BindingManager.executeBindings(this,"statPointsBadge",this.statPointsBadge);
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_StatsProgressbar1_i() : StatsProgressbar
      {
         var _loc1_:StatsProgressbar = new StatsProgressbar();
         _loc1_.percentWidth = 100;
         _loc1_.enableDividerGroup = true;
         _loc1_.enablePlusClick = false;
         _loc1_.id = "attributeOne";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.attributeOne = _loc1_;
         BindingManager.executeBindings(this,"attributeOne",this.attributeOne);
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_StatsProgressbar2_i() : StatsProgressbar
      {
         var _loc1_:StatsProgressbar = new StatsProgressbar();
         _loc1_.percentWidth = 100;
         _loc1_.enableDividerGroup = true;
         _loc1_.enablePlusClick = false;
         _loc1_.id = "attributeTwo";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.attributeTwo = _loc1_;
         BindingManager.executeBindings(this,"attributeTwo",this.attributeTwo);
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_Group7_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_StatsProgressbar3_i() : StatsProgressbar
      {
         var _loc1_:StatsProgressbar = new StatsProgressbar();
         _loc1_.percentWidth = 100;
         _loc1_.enableDividerGroup = true;
         _loc1_.enablePlusClick = false;
         _loc1_.id = "attributeThree";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.attributeThree = _loc1_;
         BindingManager.executeBindings(this,"attributeThree",this.attributeThree);
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_Group8_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.mxmlContent = [this._ProfessionalDetailTabComponent_BriskImageDynaLib3_c(),this._ProfessionalDetailTabComponent_LocaLabel4_i()];
         _loc1_.id = "maxlevelGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.maxlevelGroup = _loc1_;
         BindingManager.executeBindings(this,"maxlevelGroup",this.maxlevelGroup);
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "maxlevel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_LocaLabel4_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalCenter = 0;
         _loc1_.left = 0;
         _loc1_.styleName = "progressBarLabel";
         _loc1_.maxDisplayedLines = 1;
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.id = "maxlevelLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.maxlevelLabel = _loc1_;
         BindingManager.executeBindings(this,"maxlevelLabel",this.maxlevelLabel);
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_Group9_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 70;
         _loc1_.percentWidth = 100;
         _loc1_.top = 24;
         _loc1_.mxmlContent = [this._ProfessionalDetailTabComponent_StickyNoteComponent1_c(),this._ProfessionalDetailTabComponent_VGroup2_c()];
         _loc1_.id = "levelbarGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.levelbarGroup = _loc1_;
         BindingManager.executeBindings(this,"levelbarGroup",this.levelbarGroup);
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.tapeRight = true;
         _loc1_.tapeLeft = true;
         _loc1_.styleName = "blue";
         _loc1_.percentWidth = 100;
         _loc1_.height = 80;
         _loc1_.bottom = -6;
         _loc1_.right = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.paddingLeft = 25;
         _loc1_.paddingRight = 25;
         _loc1_.paddingTop = 10;
         _loc1_.paddingBottom = 10;
         _loc1_.gap = 2;
         _loc1_.mxmlContent = [this._ProfessionalDetailTabComponent_Group10_c(),this._ProfessionalDetailTabComponent_Group11_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_Group10_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.right = 34;
         _loc1_.left = 10;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ProfessionalDetailTabComponent_HGroup4_c(),this._ProfessionalDetailTabComponent_LocaLabel5_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._ProfessionalDetailTabComponent_BriskImageDynaLib4_c(),this._ProfessionalDetailTabComponent_BriskImageDynaLib5_c(),this._ProfessionalDetailTabComponent_BriskImageDynaLib6_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "bluemarker_small_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "bluemarker_small_middle";
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "bluemarker_small_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_LocaLabel5_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.verticalCenter = 0;
         _loc1_.left = 6;
         _loc1_.styleName = "departmentSecurityLabel";
         _loc1_.maxDisplayedLines = 1;
         _loc1_.id = "labelDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.labelDisplay = _loc1_;
         BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_Group11_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ProfessionalDetailTabComponent_VGroup3_c(),this._ProfessionalDetailTabComponent_BriskImageDynaLib7_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._ProfessionalDetailTabComponent_Group12_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_Group12_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._ProfessionalDetailTabComponent_ProgressBarComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_ProgressBarComponent1_i() : ProgressBarComponent
      {
         var _loc1_:ProgressBarComponent = new ProgressBarComponent();
         _loc1_.label = "";
         _loc1_.dividerCount = 5;
         _loc1_.width = 670;
         _loc1_.percentHeight = 100;
         _loc1_.progress = 0;
         _loc1_.id = "levelProgressBarComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.levelProgressBarComponent = _loc1_;
         BindingManager.executeBindings(this,"levelProgressBarComponent",this.levelProgressBarComponent);
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_residentialPopup";
         _loc1_.dynaBmpSourceName = "upgrade_icon";
         _loc1_.left = -5;
         _loc1_.top = -5;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_Group13_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.bottom = 6;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._ProfessionalDetailTabComponent_HGroup5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._ProfessionalDetailTabComponent_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalDetailTabComponent_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.styleName = "abort";
         _loc1_.width = 205;
         _loc1_.verticalCenter = 0;
         _loc1_.imageNameLeft = "button_icon_no";
         _loc1_.libNameLeft = "gui_popups_FriendBook";
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
         this.handleFire();
      }
      
      private function _ProfessionalDetailTabComponent_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():BriskDynaVo
         {
            return new BriskDynaVo("gui_popups_emergencyBook","infrabar_divider");
         },null,"levelProgressBarComponent.dividerAsset");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get attributeOne() : StatsProgressbar
      {
         return this._1016580566attributeOne;
      }
      
      public function set attributeOne(param1:StatsProgressbar) : void
      {
         var _loc2_:Object = this._1016580566attributeOne;
         if(_loc2_ !== param1)
         {
            this._1016580566attributeOne = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attributeOne",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get attributeThree() : StatsProgressbar
      {
         return this._1971893150attributeThree;
      }
      
      public function set attributeThree(param1:StatsProgressbar) : void
      {
         var _loc2_:Object = this._1971893150attributeThree;
         if(_loc2_ !== param1)
         {
            this._1971893150attributeThree = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attributeThree",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get attributeTwo() : StatsProgressbar
      {
         return this._1016575472attributeTwo;
      }
      
      public function set attributeTwo(param1:StatsProgressbar) : void
      {
         var _loc2_:Object = this._1016575472attributeTwo;
         if(_loc2_ !== param1)
         {
            this._1016575472attributeTwo = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attributeTwo",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get characteristicsComponent() : ProfessionalCharacteristicsComponent
      {
         return this._719353435characteristicsComponent;
      }
      
      public function set characteristicsComponent(param1:ProfessionalCharacteristicsComponent) : void
      {
         var _loc2_:Object = this._719353435characteristicsComponent;
         if(_loc2_ !== param1)
         {
            this._719353435characteristicsComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"characteristicsComponent",_loc2_,param1));
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
      public function get labelDisplay() : LocaLabel
      {
         return this._1184053038labelDisplay;
      }
      
      public function set labelDisplay(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1184053038labelDisplay;
         if(_loc2_ !== param1)
         {
            this._1184053038labelDisplay = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelDisplay",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get levelProgressBarComponent() : ProgressBarComponent
      {
         return this._1146996379levelProgressBarComponent;
      }
      
      public function set levelProgressBarComponent(param1:ProgressBarComponent) : void
      {
         var _loc2_:Object = this._1146996379levelProgressBarComponent;
         if(_loc2_ !== param1)
         {
            this._1146996379levelProgressBarComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelProgressBarComponent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get levelbarGroup() : Group
      {
         return this._843713104levelbarGroup;
      }
      
      public function set levelbarGroup(param1:Group) : void
      {
         var _loc2_:Object = this._843713104levelbarGroup;
         if(_loc2_ !== param1)
         {
            this._843713104levelbarGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelbarGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get maxlevelGroup() : Group
      {
         return this._1314010559maxlevelGroup;
      }
      
      public function set maxlevelGroup(param1:Group) : void
      {
         var _loc2_:Object = this._1314010559maxlevelGroup;
         if(_loc2_ !== param1)
         {
            this._1314010559maxlevelGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxlevelGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get maxlevelLabel() : LocaLabel
      {
         return this._1318108724maxlevelLabel;
      }
      
      public function set maxlevelLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1318108724maxlevelLabel;
         if(_loc2_ !== param1)
         {
            this._1318108724maxlevelLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxlevelLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get professionalSlot() : SpecialistSlotComponent
      {
         return this._1795780411professionalSlot;
      }
      
      public function set professionalSlot(param1:SpecialistSlotComponent) : void
      {
         var _loc2_:Object = this._1795780411professionalSlot;
         if(_loc2_ !== param1)
         {
            this._1795780411professionalSlot = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"professionalSlot",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skillPointsLeftLabel() : LocaLabel
      {
         return this._227692281skillPointsLeftLabel;
      }
      
      public function set skillPointsLeftLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._227692281skillPointsLeftLabel;
         if(_loc2_ !== param1)
         {
            this._227692281skillPointsLeftLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillPointsLeftLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get statPointsBadge() : BriskImageDynaLib
      {
         return this._951519628statPointsBadge;
      }
      
      public function set statPointsBadge(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._951519628statPointsBadge;
         if(_loc2_ !== param1)
         {
            this._951519628statPointsBadge = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"statPointsBadge",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get statsLabel() : LocaLabel
      {
         return this._155112853statsLabel;
      }
      
      public function set statsLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._155112853statsLabel;
         if(_loc2_ !== param1)
         {
            this._155112853statsLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"statsLabel",_loc2_,param1));
            }
         }
      }
   }
}

