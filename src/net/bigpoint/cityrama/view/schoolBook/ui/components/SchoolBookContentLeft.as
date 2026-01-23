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
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.constants.ServerProfessionalConstants;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalSlotVo;
   import net.bigpoint.cityrama.model.schoolBook.vo.EducationAttributeVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigProfessionalAttributeThresholdDTO;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.HeaderComponentSmall;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.StatsProgressbar;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.ScrollTextItemRenderer;
   import net.bigpoint.cityrama.view.departmentBook.ui.skins.VScrollItemSkin;
   import net.bigpoint.cityrama.view.schoolBook.CharacteristicsEntryVo;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class SchoolBookContentLeft extends Group
   {
      
      private var _3016318bar1:StatsProgressbar;
      
      private var _3016319bar2:StatsProgressbar;
      
      private var _3016320bar3:StatsProgressbar;
      
      private var _1790172313characterList:List;
      
      private var _1846981337informationHeader:HeaderComponentSmall;
      
      private var _899351961operationsHeader:HeaderComponentSmall;
      
      private var _1769452383operationsLeftLabel:LocaLabel;
      
      private var _1795780411professionalSlot:SpecialistSlotComponent;
      
      private var _227692281skillPointsLeftLabel:LocaLabel;
      
      private var _951519628statPointsBadge:BriskImageDynaLib;
      
      private var _151014688statsGroup:VGroup;
      
      private var _155112853statsLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _unassignedSkillPoints:int;
      
      public function SchoolBookContentLeft()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._SchoolBookContentLeft_BriskImageDynaLib1_c(),this._SchoolBookContentLeft_VGroup1_c()];
         this.addEventListener("creationComplete",this.___SchoolBookContentLeft_Group1_creationComplete);
      }
      
      private static function getTraitThresHolds(param1:EducationAttributeVo) : Vector.<StatsProgressBarTraitThresholdsVo>
      {
         var _loc4_:ConfigProfessionalAttributeThresholdDTO = null;
         var _loc5_:StatsProgressBarTraitThresholdsVo = null;
         var _loc2_:Vector.<StatsProgressBarTraitThresholdsVo> = new Vector.<StatsProgressBarTraitThresholdsVo>(0);
         var _loc3_:uint = param1.maxCap;
         for each(_loc4_ in param1.attributeThresholds)
         {
            _loc5_ = new StatsProgressBarTraitThresholdsVo();
            if(_loc4_.type == ServerProfessionalConstants.TRAIT_UNLOCK)
            {
               if(_loc4_.threshold > param1.attributePoints + param1.tempMod)
               {
                  _loc5_.tier = _loc4_.value;
                  _loc5_.thresholdScalar = _loc4_.threshold / _loc3_;
                  _loc2_.push(_loc5_);
               }
            }
         }
         return _loc2_;
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
         this.informationHeader.label = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.information");
         this.operationsHeader.label = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.operations");
         this.statsLabel.text = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.stats");
      }
      
      public function set studentData(param1:ProfessionalSlotVo) : void
      {
         this.professionalSlot.data = param1;
         this.operationsLeftLabel.text = param1.operationsLeft.toString();
         this.characteristics = param1.traits;
      }
      
      private function set characteristics(param1:Vector.<CharacteristicsEntryVo>) : void
      {
         var _loc3_:int = 0;
         var _loc2_:ArrayCollection = new ArrayCollection();
         if(param1.length)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.length)
            {
               _loc2_.addItem(param1[_loc3_]);
               _loc3_++;
            }
         }
         this.characterList.dataProvider = _loc2_;
      }
      
      public function set skillPointsAvailable(param1:int) : void
      {
         this.skillPointsLeftLabel.text = param1.toString();
         this.bar1.enablePlusClick = param1 > 0;
         this.bar3.enablePlusClick = param1 > 0;
         this.bar2.enablePlusClick = param1 > 0;
         this._unassignedSkillPoints = param1;
      }
      
      public function get skillPointsAvailable() : int
      {
         return this._unassignedSkillPoints;
      }
      
      public function set attributes(param1:Vector.<EducationAttributeVo>) : void
      {
         var _loc4_:EducationAttributeVo = null;
         var _loc2_:Vector.<StatsProgressbar> = new <StatsProgressbar>[this.bar1,this.bar2,this.bar3];
         var _loc3_:int = 0;
         for each(_loc4_ in param1)
         {
            _loc2_[_loc3_].styleName = _loc4_.attributeType;
            _loc2_[_loc3_].type = _loc4_.attributeType;
            _loc2_[_loc3_].progress = (_loc4_.attributePoints + _loc4_.tempMod) / _loc4_.maxCap;
            _loc2_[_loc3_].traitThresholds = getTraitThresHolds(_loc4_);
            _loc2_[_loc3_].enablePlusClick = this.unassignedSkillPoints && (_loc4_.attributePoints + _loc4_.tempMod) / _loc4_.maxCap != 1;
            if(++_loc3_ > _loc2_.length)
            {
               throw new RamaCityError(this + " UI supports max 3 Attributes ATM");
            }
         }
      }
      
      public function set educationFinished(param1:Boolean) : void
      {
         this.bar1.enablePlusClick = !param1;
         this.bar3.enablePlusClick = !param1;
         this.bar2.enablePlusClick = !param1;
         this.skillPointsLeftLabel.visible = !param1;
         this.statPointsBadge.visible = !param1;
         this.checkActiveEmergencyFeature();
      }
      
      private function checkActiveEmergencyFeature() : void
      {
      }
      
      public function get unassignedSkillPoints() : Boolean
      {
         return this._unassignedSkillPoints > 0;
      }
      
      private function _SchoolBookContentLeft_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "quadrillepaper_breit";
         _loc1_.dynaLibName = "gui_popups_schoolBook";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookContentLeft_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.paddingTop = 20;
         _loc1_.paddingRight = 20;
         _loc1_.mxmlContent = [this._SchoolBookContentLeft_HGroup1_c(),this._SchoolBookContentLeft_Group4_c(),this._SchoolBookContentLeft_VGroup3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookContentLeft_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.paddingLeft = 10;
         _loc1_.mxmlContent = [this._SchoolBookContentLeft_SpecialistSlotComponent1_i(),this._SchoolBookContentLeft_VGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookContentLeft_SpecialistSlotComponent1_i() : SpecialistSlotComponent
      {
         var _loc1_:SpecialistSlotComponent = new SpecialistSlotComponent();
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 10;
         _loc1_.id = "professionalSlot";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.professionalSlot = _loc1_;
         BindingManager.executeBindings(this,"professionalSlot",this.professionalSlot);
         return _loc1_;
      }
      
      private function _SchoolBookContentLeft_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._SchoolBookContentLeft_HeaderComponentSmall1_i(),this._SchoolBookContentLeft_Group2_c(),this._SchoolBookContentLeft_Group3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookContentLeft_HeaderComponentSmall1_i() : HeaderComponentSmall
      {
         var _loc1_:HeaderComponentSmall = new HeaderComponentSmall();
         _loc1_.percentWidth = 100;
         _loc1_.id = "informationHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.informationHeader = _loc1_;
         BindingManager.executeBindings(this,"informationHeader",this.informationHeader);
         return _loc1_;
      }
      
      private function _SchoolBookContentLeft_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 100;
         _loc1_.mxmlContent = [this._SchoolBookContentLeft_List1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookContentLeft_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.left = 14;
         _loc1_.top = 4;
         _loc1_.itemRenderer = this._SchoolBookContentLeft_ClassFactory1_c();
         _loc1_.setStyle("horizontalScrollPolicy","off");
         _loc1_.setStyle("skinClass",VScrollItemSkin);
         _loc1_.id = "characterList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.characterList = _loc1_;
         BindingManager.executeBindings(this,"characterList",this.characterList);
         return _loc1_;
      }
      
      private function _SchoolBookContentLeft_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ScrollTextItemRenderer;
         return _loc1_;
      }
      
      private function _SchoolBookContentLeft_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._SchoolBookContentLeft_HeaderComponentSmall2_i(),this._SchoolBookContentLeft_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookContentLeft_HeaderComponentSmall2_i() : HeaderComponentSmall
      {
         var _loc1_:HeaderComponentSmall = new HeaderComponentSmall();
         _loc1_.percentWidth = 100;
         _loc1_.id = "operationsHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.operationsHeader = _loc1_;
         BindingManager.executeBindings(this,"operationsHeader",this.operationsHeader);
         return _loc1_;
      }
      
      private function _SchoolBookContentLeft_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.verticalCenter = 1;
         _loc1_.right = 30;
         _loc1_.styleName = "schoolBookText";
         _loc1_.id = "operationsLeftLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.operationsLeftLabel = _loc1_;
         BindingManager.executeBindings(this,"operationsLeftLabel",this.operationsLeftLabel);
         return _loc1_;
      }
      
      private function _SchoolBookContentLeft_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookContentLeft_VGroup3_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.bottom = 0;
         _loc1_.paddingLeft = 20;
         _loc1_.paddingBottom = 10;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._SchoolBookContentLeft_Group5_c(),this._SchoolBookContentLeft_StatsProgressbar1_i(),this._SchoolBookContentLeft_StatsProgressbar2_i(),this._SchoolBookContentLeft_StatsProgressbar3_i()];
         _loc1_.id = "statsGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.statsGroup = _loc1_;
         BindingManager.executeBindings(this,"statsGroup",this.statsGroup);
         return _loc1_;
      }
      
      private function _SchoolBookContentLeft_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._SchoolBookContentLeft_HeaderComponentSmall3_c(),this._SchoolBookContentLeft_LocaLabel2_i(),this._SchoolBookContentLeft_LocaLabel3_i(),this._SchoolBookContentLeft_BriskImageDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookContentLeft_HeaderComponentSmall3_c() : HeaderComponentSmall
      {
         var _loc1_:HeaderComponentSmall = new HeaderComponentSmall();
         _loc1_.percentWidth = 100;
         _loc1_.verticalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookContentLeft_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.left = 40;
         _loc1_.percentWidth = 100;
         _loc1_.verticalCenter = 0;
         _loc1_.styleName = "emergencySuccessBarLabel";
         _loc1_.id = "statsLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.statsLabel = _loc1_;
         BindingManager.executeBindings(this,"statsLabel",this.statsLabel);
         return _loc1_;
      }
      
      private function _SchoolBookContentLeft_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.right = 30;
         _loc1_.verticalCenter = 1;
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
      
      private function _SchoolBookContentLeft_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "icon_skillpoint";
         _loc1_.dynaLibName = "gui_resources_icons";
         _loc1_.verticalCenter = 0;
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
      
      private function _SchoolBookContentLeft_StatsProgressbar1_i() : StatsProgressbar
      {
         var _loc1_:StatsProgressbar = new StatsProgressbar();
         _loc1_.percentWidth = 100;
         _loc1_.id = "bar1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bar1 = _loc1_;
         BindingManager.executeBindings(this,"bar1",this.bar1);
         return _loc1_;
      }
      
      private function _SchoolBookContentLeft_StatsProgressbar2_i() : StatsProgressbar
      {
         var _loc1_:StatsProgressbar = new StatsProgressbar();
         _loc1_.percentWidth = 100;
         _loc1_.id = "bar2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bar2 = _loc1_;
         BindingManager.executeBindings(this,"bar2",this.bar2);
         return _loc1_;
      }
      
      private function _SchoolBookContentLeft_StatsProgressbar3_i() : StatsProgressbar
      {
         var _loc1_:StatsProgressbar = new StatsProgressbar();
         _loc1_.percentWidth = 100;
         _loc1_.id = "bar3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bar3 = _loc1_;
         BindingManager.executeBindings(this,"bar3",this.bar3);
         return _loc1_;
      }
      
      public function ___SchoolBookContentLeft_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete();
      }
      
      [Bindable(event="propertyChange")]
      public function get bar1() : StatsProgressbar
      {
         return this._3016318bar1;
      }
      
      public function set bar1(param1:StatsProgressbar) : void
      {
         var _loc2_:Object = this._3016318bar1;
         if(_loc2_ !== param1)
         {
            this._3016318bar1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bar1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bar2() : StatsProgressbar
      {
         return this._3016319bar2;
      }
      
      public function set bar2(param1:StatsProgressbar) : void
      {
         var _loc2_:Object = this._3016319bar2;
         if(_loc2_ !== param1)
         {
            this._3016319bar2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bar2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bar3() : StatsProgressbar
      {
         return this._3016320bar3;
      }
      
      public function set bar3(param1:StatsProgressbar) : void
      {
         var _loc2_:Object = this._3016320bar3;
         if(_loc2_ !== param1)
         {
            this._3016320bar3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bar3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get characterList() : List
      {
         return this._1790172313characterList;
      }
      
      public function set characterList(param1:List) : void
      {
         var _loc2_:Object = this._1790172313characterList;
         if(_loc2_ !== param1)
         {
            this._1790172313characterList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"characterList",_loc2_,param1));
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
      public function get operationsHeader() : HeaderComponentSmall
      {
         return this._899351961operationsHeader;
      }
      
      public function set operationsHeader(param1:HeaderComponentSmall) : void
      {
         var _loc2_:Object = this._899351961operationsHeader;
         if(_loc2_ !== param1)
         {
            this._899351961operationsHeader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"operationsHeader",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get operationsLeftLabel() : LocaLabel
      {
         return this._1769452383operationsLeftLabel;
      }
      
      public function set operationsLeftLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1769452383operationsLeftLabel;
         if(_loc2_ !== param1)
         {
            this._1769452383operationsLeftLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"operationsLeftLabel",_loc2_,param1));
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
      public function get statsGroup() : VGroup
      {
         return this._151014688statsGroup;
      }
      
      public function set statsGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._151014688statsGroup;
         if(_loc2_ !== param1)
         {
            this._151014688statsGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"statsGroup",_loc2_,param1));
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

