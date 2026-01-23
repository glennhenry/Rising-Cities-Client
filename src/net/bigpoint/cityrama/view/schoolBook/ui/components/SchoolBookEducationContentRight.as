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
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicPlusButton;
   import net.bigpoint.cityrama.view.common.components.HeaderComponentSmall;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.cityrama.view.common.skins.DynamicPlusButtonSkin;
   import net.bigpoint.cityrama.view.schoolBook.ui.events.SchoolBookEvent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class SchoolBookEducationContentRight extends Group
   {
      
      private var _1322365109boostButton:MultistateButton;
      
      private var _1578852477buySkillsPointsButton:MultistateButton;
      
      private var _398367733checkMark:BriskImageDynaLib;
      
      private var _443494924dextroButton:DynamicPlusButton;
      
      private var _1632808699dextroPriceLabel:LocaLabel;
      
      private var _1414006863educationContent:HGroup;
      
      private var _858045819educationDurationContainer:HGroup;
      
      private var _734861048educationDurationLabel:LocaLabel;
      
      private var _1207421672educationPointsHeader:HeaderComponentSmall;
      
      private var _1792817277educationTimer:TimerBarComponent;
      
      private var _1575867244epGroup:HGroup;
      
      private var _1213523686infoLabel:LocaLabel;
      
      private var _1264025245noMoreStepsLabel:LocaLabel;
      
      private var _1481293013priceLabel:LocaLabel;
      
      private var _1939953833pricesContainer:VGroup;
      
      private var _1873300278pricesLabel:LocaLabel;
      
      private var _423293566skillPointContainer:HGroup;
      
      private var _2079322838skillPointRangeLabel:LocaLabel;
      
      private var _1943111220startButton:MultistateButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _skillPointPrice:int;
      
      private var _educationRunning:Boolean;
      
      private var _instantFinishData:Object;
      
      private var _instantFinishDataDirty:Boolean = false;
      
      public function SchoolBookEducationContentRight()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._SchoolBookEducationContentRight_Group2_c(),this._SchoolBookEducationContentRight_HGroup6_c()];
         this.addEventListener("creationComplete",this.___SchoolBookEducationContentRight_Group1_creationComplete);
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
         this.educationPointsHeader.label = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.getEducationPoints");
         this.startButton.label = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.start");
         this.startButton.toolTip = LocaUtils.getString("rcl.tooltips.schoolBook","rcl.tooltips.schoolBook.getSkillPoints");
         this.dextroButton.toolTip = LocaUtils.getString("rcl.tooltips.schoolBook","rcl.tooltips.schoolBook.getSkillPointsDextro");
         this.pricesContainer.toolTip = LocaUtils.getString("rcl.tooltips.schoolBook","rcl.tooltips.schoolBook.getPointsFromTraining");
         this.buySkillsPointsButton.label = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.buy");
         this.pricesLabel.text = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.prices");
      }
      
      private function handleStartClick(param1:MouseEvent) : void
      {
         dispatchEvent(new SchoolBookEvent(SchoolBookEvent.SCHOOL_START_EDUCATION,true,true));
      }
      
      public function set educationRunning(param1:Boolean) : void
      {
         this._educationRunning = param1;
         if(param1)
         {
            this.noMoreStepsAvailable = param1;
            this.noMoreStepsLabel.text = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.educationrunning");
         }
      }
      
      public function set noMoreStepsAvailable(param1:Boolean) : void
      {
         if(param1)
         {
            this.noMoreStepsLabel.visible = true;
            this.educationContent.visible = false;
            this.noMoreStepsLabel.text = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.stepsMax");
         }
         else
         {
            this.noMoreStepsLabel.visible = false;
            this.educationContent.visible = true;
         }
      }
      
      public function setNextSkillPoints(param1:int) : void
      {
         this.skillPointContainer.toolTip = LocaUtils.getString("rcl.tooltips.schoolBook","rcl.tooltips.schoolBook.nextLevelGives",[param1.toString(),param1.toString()]);
         this.skillPointRangeLabel.text = param1.toString();
      }
      
      public function set educationPrice(param1:int) : void
      {
         this.priceLabel.text = LocaUtils.getThousendSeperatedNumber(param1);
         this._skillPointPrice = param1;
         this.buySkillsPointsButton.visible = param1 > 0;
         this.epGroup.visible = this.epGroup.includeInLayout = param1 > 0;
      }
      
      public function set educationPriceDextro(param1:int) : void
      {
         this.dextroPriceLabel.text = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.dextroPrice",[param1.toString()]);
         this.dextroButton.enabled = param1 > 0;
      }
      
      public function set hasEnoughPoints(param1:Boolean) : void
      {
         this.checkMark.dynaBmpSourceName = param1 ? "checkmark_green" : "checkmark_gray";
         this.buySkillsPointsButton.enabled = param1;
      }
      
      public function set hasEnoughDextro(param1:Boolean) : void
      {
         this.dextroButton.showPlus = !param1;
      }
      
      public function set stepDuration(param1:String) : void
      {
         this.educationDurationContainer.toolTip = LocaUtils.getString("rcl.tooltips.schoolBook","rcl.tooltips.schoolBook.nextLevelLastsLonger",[param1.toString()]);
         this.educationDurationLabel.text = "+ " + param1;
      }
      
      private function handlePointBuyClick(param1:Event) : void
      {
         dispatchEvent(new SchoolBookEvent(SchoolBookEvent.SCHOOL_BUY_POINTS,true));
      }
      
      private function handleDextroBuyClick(param1:Event) : void
      {
         if(this.dextroButton.showPlus)
         {
            dispatchEvent(new SchoolBookEvent(SchoolBookEvent.SCHOOL_BUY_DEXTRO,true));
         }
         else
         {
            dispatchEvent(new SchoolBookEvent(SchoolBookEvent.SCHOOL_USE_DEXTRO,true));
         }
      }
      
      public function set harvestValues(param1:TimerBarComponentVo) : void
      {
         param1.userMayStart = true;
         this.educationTimer.data = param1;
         this.educationTimer.progressBar.toolTip = LocaUtils.getString("rcl.tooltips.schoolBook","rcl.tooltips.schoolBook.trainingDuration");
         this.educationTimer.boostButton.toolTip = LocaUtils.getString("rcl.tooltips.schoolBook","rcl.tooltips.schoolBook.useExpresso");
         this.startButton.enabled = param1.waitingForStart;
      }
      
      private function boostButton_rollOverHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = this.educationTimer;
         this.educationTimer.includeInLayout = false;
         _temp_1.visible = false;
         var _temp_2:* = this.infoLabel;
         var _loc2_:Boolean;
         this.infoLabel.includeInLayout = _loc2_ = true;
         _temp_2.visible = false;
      }
      
      private function boostButton_rollOutHandler(param1:MouseEvent) : void
      {
         var _temp_1:* = this.educationTimer;
         this.educationTimer.includeInLayout = true;
         _temp_1.visible = true;
         var _temp_2:* = this.infoLabel;
         var _loc2_:Boolean;
         this.infoLabel.includeInLayout = _loc2_ = false;
         _temp_2.visible = true;
      }
      
      private function boostButton_clickHandler(param1:MouseEvent) : void
      {
         var _loc2_:SchoolBookEvent = new SchoolBookEvent(SchoolBookEvent.SCHOOL_BOOST_EDUCATION,true);
         _loc2_.educationRunning = this._educationRunning;
         dispatchEvent(_loc2_);
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
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._instantFinishDataDirty)
         {
            this._instantFinishDataDirty = false;
            this.infoLabel.text = LocaUtils.getString("rcl.education.schoolBook","rcl.education.schoolBook.boostLabel",[this._instantFinishData.cost]);
            this.boostButton.showPlus = this._instantFinishData.cost > this._instantFinishData.rcStock;
            this.boostButton.priceToConfirm = this._instantFinishData.cost;
         }
      }
      
      private function _SchoolBookEducationContentRight_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.verticalCenter = -15;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_BriskImageDynaLib1_c(),this._SchoolBookEducationContentRight_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_schoolBook";
         _loc1_.dynaBmpSourceName = "bluepostit_largerect";
         _loc1_.verticalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_Group3_c(),this._SchoolBookEducationContentRight_Group4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_HeaderComponentSmall1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_HeaderComponentSmall1_i() : HeaderComponentSmall
      {
         var _loc1_:HeaderComponentSmall = new HeaderComponentSmall();
         _loc1_.left = 20;
         _loc1_.right = 25;
         _loc1_.textHAlign = "center";
         _loc1_.id = "educationPointsHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.educationPointsHeader = _loc1_;
         BindingManager.executeBindings(this,"educationPointsHeader",this.educationPointsHeader);
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_BriskImageDynaLib2_c(),this._SchoolBookEducationContentRight_LocaLabel1_i(),this._SchoolBookEducationContentRight_HGroup1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_schoolBook";
         _loc1_.dynaBmpSourceName = "postit_schoolLayer";
         _loc1_.verticalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.width = 340;
         _loc1_.top = 30;
         _loc1_.left = 35;
         _loc1_.percentHeight = 100;
         _loc1_.styleName = "schoolBookText";
         _loc1_.id = "noMoreStepsLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.noMoreStepsLabel = _loc1_;
         BindingManager.executeBindings(this,"noMoreStepsLabel",this.noMoreStepsLabel);
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.paddingRight = 15;
         _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_Group5_c(),this._SchoolBookEducationContentRight_BriskImageDynaLib5_c(),this._SchoolBookEducationContentRight_Group7_c()];
         _loc1_.id = "educationContent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.educationContent = _loc1_;
         BindingManager.executeBindings(this,"educationContent",this.educationContent);
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_VGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_HGroup2_i(),this._SchoolBookEducationContentRight_HGroup3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_Group6_c(),this._SchoolBookEducationContentRight_LocaLabel2_i()];
         _loc1_.id = "skillPointContainer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.skillPointContainer = _loc1_;
         BindingManager.executeBindings(this,"skillPointContainer",this.skillPointContainer);
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 25;
         _loc1_.height = 25;
         _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_BriskImageDynaLib3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_resources_icons";
         _loc1_.dynaBmpSourceName = "icon_skillpoint";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "schoolBookText";
         _loc1_.id = "skillPointRangeLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.skillPointRangeLabel = _loc1_;
         BindingManager.executeBindings(this,"skillPointRangeLabel",this.skillPointRangeLabel);
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_HGroup3_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_BriskImageDynaLib4_c(),this._SchoolBookEducationContentRight_LocaLabel3_i()];
         _loc1_.id = "educationDurationContainer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.educationDurationContainer = _loc1_;
         BindingManager.executeBindings(this,"educationDurationContainer",this.educationDurationContainer);
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_residentialPopup";
         _loc1_.dynaBmpSourceName = "timer_clock";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "schoolBookText";
         _loc1_.id = "educationDurationLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.educationDurationLabel = _loc1_;
         BindingManager.executeBindings(this,"educationDurationLabel",this.educationDurationLabel);
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.height = 80;
         _loc1_.dynaBmpSourceName = "good_divider";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_Group7_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_VGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_VGroup4_i(),this._SchoolBookEducationContentRight_HGroup5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_VGroup4_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_LocaLabel4_i(),this._SchoolBookEducationContentRight_HGroup4_i()];
         _loc1_.id = "pricesContainer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.pricesContainer = _loc1_;
         BindingManager.executeBindings(this,"pricesContainer",this.pricesContainer);
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_LocaLabel4_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "schoolBookText";
         _loc1_.id = "pricesLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.pricesLabel = _loc1_;
         BindingManager.executeBindings(this,"pricesLabel",this.pricesLabel);
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_HGroup4_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_BriskImageDynaLib6_c(),this._SchoolBookEducationContentRight_LocaLabel5_i(),this._SchoolBookEducationContentRight_BriskImageDynaLib7_i()];
         _loc1_.id = "epGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.epGroup = _loc1_;
         BindingManager.executeBindings(this,"epGroup",this.epGroup);
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_resources_icons";
         _loc1_.dynaBmpSourceName = "ep_icon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_LocaLabel5_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "schoolBookText";
         _loc1_.id = "priceLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.priceLabel = _loc1_;
         BindingManager.executeBindings(this,"priceLabel",this.priceLabel);
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "checkmark_green";
         _loc1_.width = 31;
         _loc1_.height = 26;
         _loc1_.id = "checkMark";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.checkMark = _loc1_;
         BindingManager.executeBindings(this,"checkMark",this.checkMark);
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_Group8_c(),this._SchoolBookEducationContentRight_DynamicPlusButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_Group8_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_LocaLabel6_i(),this._SchoolBookEducationContentRight_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_LocaLabel6_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.verticalCenter = 0;
         _loc1_.styleName = "residentialProgressComment";
         _loc1_.id = "dextroPriceLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.dextroPriceLabel = _loc1_;
         BindingManager.executeBindings(this,"dextroPriceLabel",this.dextroPriceLabel);
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.percentWidth = 100;
         _loc1_.addEventListener("click",this.__buySkillsPointsButton_click);
         _loc1_.id = "buySkillsPointsButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.buySkillsPointsButton = _loc1_;
         BindingManager.executeBindings(this,"buySkillsPointsButton",this.buySkillsPointsButton);
         return _loc1_;
      }
      
      public function __buySkillsPointsButton_click(param1:MouseEvent) : void
      {
         this.handlePointBuyClick(param1);
      }
      
      private function _SchoolBookEducationContentRight_DynamicPlusButton1_i() : DynamicPlusButton
      {
         var _loc1_:DynamicPlusButton = new DynamicPlusButton();
         _loc1_.width = 40;
         _loc1_.iconImageName = "btn_icon_dextro";
         _loc1_.iconLibName = "gui_popups_schoolBook";
         _loc1_.showSparkle = true;
         _loc1_.setStyle("skinClass",DynamicPlusButtonSkin);
         _loc1_.addEventListener("click",this.__dextroButton_click);
         _loc1_.addEventListener("mouseOver",this.__dextroButton_mouseOver);
         _loc1_.addEventListener("mouseOut",this.__dextroButton_mouseOut);
         _loc1_.id = "dextroButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.dextroButton = _loc1_;
         BindingManager.executeBindings(this,"dextroButton",this.dextroButton);
         return _loc1_;
      }
      
      public function __dextroButton_click(param1:MouseEvent) : void
      {
         this.handleDextroBuyClick(param1);
      }
      
      public function __dextroButton_mouseOver(param1:MouseEvent) : void
      {
         this.buySkillsPointsButton.visible = false;
      }
      
      public function __dextroButton_mouseOut(param1:MouseEvent) : void
      {
         this.buySkillsPointsButton.visible = this._skillPointPrice != 0;
      }
      
      private function _SchoolBookEducationContentRight_HGroup6_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.paddingLeft = 10;
         _loc1_.bottom = 5;
         _loc1_.paddingRight = 10;
         _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_HGroup7_c(),this._SchoolBookEducationContentRight_MultistateButton3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_HGroup7_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 4;
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._SchoolBookEducationContentRight_TimerBarComponent1_i(),this._SchoolBookEducationContentRight_LocaLabel7_i(),this._SchoolBookEducationContentRight_MultistateButton2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_TimerBarComponent1_i() : TimerBarComponent
      {
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         _loc1_.showBoostButton = false;
         _loc1_.maxWidth = 137;
         _loc1_.minWidth = 137;
         _loc1_.id = "educationTimer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.educationTimer = _loc1_;
         BindingManager.executeBindings(this,"educationTimer",this.educationTimer);
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_LocaLabel7_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.maxWidth = 137;
         _loc1_.minWidth = 137;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.styleName = "residentialProgressComment";
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.text = "DEV: buy this for 123MM";
         _loc1_.id = "infoLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.infoLabel = _loc1_;
         BindingManager.executeBindings(this,"infoLabel",this.infoLabel);
         return _loc1_;
      }
      
      private function _SchoolBookEducationContentRight_MultistateButton2_i() : MultistateButton
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
      
      private function _SchoolBookEducationContentRight_MultistateButton3_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.percentWidth = 100;
         _loc1_.imageNameLeft = "button_icon_education";
         _loc1_.libNameLeft = "gui_popups_paperPopup";
         _loc1_.addEventListener("click",this.__startButton_click);
         _loc1_.id = "startButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.startButton = _loc1_;
         BindingManager.executeBindings(this,"startButton",this.startButton);
         return _loc1_;
      }
      
      public function __startButton_click(param1:MouseEvent) : void
      {
         this.handleStartClick(param1);
      }
      
      public function ___SchoolBookEducationContentRight_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete();
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
      public function get buySkillsPointsButton() : MultistateButton
      {
         return this._1578852477buySkillsPointsButton;
      }
      
      public function set buySkillsPointsButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1578852477buySkillsPointsButton;
         if(_loc2_ !== param1)
         {
            this._1578852477buySkillsPointsButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buySkillsPointsButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get checkMark() : BriskImageDynaLib
      {
         return this._398367733checkMark;
      }
      
      public function set checkMark(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._398367733checkMark;
         if(_loc2_ !== param1)
         {
            this._398367733checkMark = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"checkMark",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dextroButton() : DynamicPlusButton
      {
         return this._443494924dextroButton;
      }
      
      public function set dextroButton(param1:DynamicPlusButton) : void
      {
         var _loc2_:Object = this._443494924dextroButton;
         if(_loc2_ !== param1)
         {
            this._443494924dextroButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dextroButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dextroPriceLabel() : LocaLabel
      {
         return this._1632808699dextroPriceLabel;
      }
      
      public function set dextroPriceLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1632808699dextroPriceLabel;
         if(_loc2_ !== param1)
         {
            this._1632808699dextroPriceLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dextroPriceLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get educationContent() : HGroup
      {
         return this._1414006863educationContent;
      }
      
      public function set educationContent(param1:HGroup) : void
      {
         var _loc2_:Object = this._1414006863educationContent;
         if(_loc2_ !== param1)
         {
            this._1414006863educationContent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"educationContent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get educationDurationContainer() : HGroup
      {
         return this._858045819educationDurationContainer;
      }
      
      public function set educationDurationContainer(param1:HGroup) : void
      {
         var _loc2_:Object = this._858045819educationDurationContainer;
         if(_loc2_ !== param1)
         {
            this._858045819educationDurationContainer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"educationDurationContainer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get educationDurationLabel() : LocaLabel
      {
         return this._734861048educationDurationLabel;
      }
      
      public function set educationDurationLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._734861048educationDurationLabel;
         if(_loc2_ !== param1)
         {
            this._734861048educationDurationLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"educationDurationLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get educationPointsHeader() : HeaderComponentSmall
      {
         return this._1207421672educationPointsHeader;
      }
      
      public function set educationPointsHeader(param1:HeaderComponentSmall) : void
      {
         var _loc2_:Object = this._1207421672educationPointsHeader;
         if(_loc2_ !== param1)
         {
            this._1207421672educationPointsHeader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"educationPointsHeader",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get educationTimer() : TimerBarComponent
      {
         return this._1792817277educationTimer;
      }
      
      public function set educationTimer(param1:TimerBarComponent) : void
      {
         var _loc2_:Object = this._1792817277educationTimer;
         if(_loc2_ !== param1)
         {
            this._1792817277educationTimer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"educationTimer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get epGroup() : HGroup
      {
         return this._1575867244epGroup;
      }
      
      public function set epGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._1575867244epGroup;
         if(_loc2_ !== param1)
         {
            this._1575867244epGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"epGroup",_loc2_,param1));
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
      public function get noMoreStepsLabel() : LocaLabel
      {
         return this._1264025245noMoreStepsLabel;
      }
      
      public function set noMoreStepsLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1264025245noMoreStepsLabel;
         if(_loc2_ !== param1)
         {
            this._1264025245noMoreStepsLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"noMoreStepsLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get priceLabel() : LocaLabel
      {
         return this._1481293013priceLabel;
      }
      
      public function set priceLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1481293013priceLabel;
         if(_loc2_ !== param1)
         {
            this._1481293013priceLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"priceLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pricesContainer() : VGroup
      {
         return this._1939953833pricesContainer;
      }
      
      public function set pricesContainer(param1:VGroup) : void
      {
         var _loc2_:Object = this._1939953833pricesContainer;
         if(_loc2_ !== param1)
         {
            this._1939953833pricesContainer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pricesContainer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pricesLabel() : LocaLabel
      {
         return this._1873300278pricesLabel;
      }
      
      public function set pricesLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1873300278pricesLabel;
         if(_loc2_ !== param1)
         {
            this._1873300278pricesLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pricesLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skillPointContainer() : HGroup
      {
         return this._423293566skillPointContainer;
      }
      
      public function set skillPointContainer(param1:HGroup) : void
      {
         var _loc2_:Object = this._423293566skillPointContainer;
         if(_loc2_ !== param1)
         {
            this._423293566skillPointContainer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillPointContainer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skillPointRangeLabel() : LocaLabel
      {
         return this._2079322838skillPointRangeLabel;
      }
      
      public function set skillPointRangeLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._2079322838skillPointRangeLabel;
         if(_loc2_ !== param1)
         {
            this._2079322838skillPointRangeLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillPointRangeLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get startButton() : MultistateButton
      {
         return this._1943111220startButton;
      }
      
      public function set startButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1943111220startButton;
         if(_loc2_ !== param1)
         {
            this._1943111220startButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"startButton",_loc2_,param1));
            }
         }
      }
   }
}

