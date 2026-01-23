package net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation
{
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.mastery.MasteryBonusVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ProgressBarComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.AbstractUIInfolayerComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components.InfolayerMasteryRewardItemRenderer;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components.skins.ImprovementEfficiencyListSkin;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.AbstractUIInfolayerContentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.MasteryChallengeUiInfolayerComponentVo;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class MasteryCallengeUiInfolayerComponent extends AbstractUIInfolayerComponent
   {
      
      private static var _skinParts:Object = {
         "backgroundGroup":true,
         "topInformation":true,
         "header":true,
         "headerIcon":true,
         "contentGroup":false
      };
      
      private var _630498871challengeCompletedGroup:VGroup;
      
      private var _634597036challengeCompletedLabel:LocaLabel;
      
      private var _1251091353challengeDescription:LocaLabel;
      
      private var _1426521085challengeRunningGroup:VGroup;
      
      private var _1131509414progressBar:ProgressBarComponent;
      
      private var _1690977389rewardList:List;
      
      private var _1516824rewardsHeadline:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _implementationData:MasteryChallengeUiInfolayerComponentVo;
      
      public function MasteryCallengeUiInfolayerComponent()
      {
         super();
         mx_internal::_document = this;
         this.maxWidth = 300;
         this.minWidth = 160;
         this.maxHeight = 800;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._MasteryCallengeUiInfolayerComponent_Array1_c);
         this.addEventListener("creationComplete",this.___MasteryCallengeUiInfolayerComponent_AbstractUIInfolayerComponent1_creationComplete);
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
      
      override public function set data(param1:AbstractUIInfolayerContentVo) : void
      {
         if(param1 is MasteryChallengeUiInfolayerComponentVo)
         {
            this._implementationData = param1 as MasteryChallengeUiInfolayerComponentVo;
            super.data = param1;
            return;
         }
         throw new ArgumentError("Wrong VBo for this component use MasteryChallengeUiInfolayerComponentVo " + this);
      }
      
      override protected function commitProperties() : void
      {
         if(_dirty)
         {
            this.challengeDescription.text = this._implementationData.challengeDescription;
            this.progressBar.progress = this._implementationData.currentValue / this._implementationData.targetValue;
            if(this._implementationData.showProgressBarOverride)
            {
               this.challengeRunningGroup.visible = this.challengeRunningGroup.includeInLayout = true;
               this.challengeCompletedGroup.visible = this.challengeCompletedGroup.includeInLayout = false;
               this.progressBar.label = this._implementationData.targetValue + "/" + this._implementationData.targetValue;
            }
            else if(this._implementationData.currentValue != this._implementationData.targetValue)
            {
               this.challengeRunningGroup.visible = this.challengeRunningGroup.includeInLayout = true;
               this.challengeCompletedGroup.visible = this.challengeCompletedGroup.includeInLayout = false;
               this.progressBar.label = (this._implementationData.currentValue > this._implementationData.targetValue ? this._implementationData.targetValue : this._implementationData.currentValue) + "/" + this._implementationData.targetValue;
            }
            else
            {
               this.challengeRunningGroup.visible = this.challengeRunningGroup.includeInLayout = false;
               this.challengeCompletedGroup.visible = this.challengeCompletedGroup.includeInLayout = true;
               this.challengeCompletedLabel.text = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.guiinfolayer.mastery.reward.falvor.done");
            }
            var _loc1_:ArrayCollection = new ArrayCollection();
            for each(var _loc2_ in this._implementationData.rewards)
            {
               null.addItem(null);
            }
            this.rewardList.dataProvider = null;
         }
         super.commitProperties();
      }
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         this.rewardsHeadline.text = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.guiinfolayer.mastery.reward.header.capital");
      }
      
      private function _MasteryCallengeUiInfolayerComponent_Array1_c() : Array
      {
         return [this._MasteryCallengeUiInfolayerComponent_VGroup1_c()];
      }
      
      private function _MasteryCallengeUiInfolayerComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.paddingLeft = 6;
         _loc1_.paddingRight = 6;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._MasteryCallengeUiInfolayerComponent_VGroup2_i(),this._MasteryCallengeUiInfolayerComponent_VGroup3_i(),this._MasteryCallengeUiInfolayerComponent_HGroup2_c(),this._MasteryCallengeUiInfolayerComponent_HGroup3_c(),this._MasteryCallengeUiInfolayerComponent_List1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryCallengeUiInfolayerComponent_VGroup2_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._MasteryCallengeUiInfolayerComponent_LocaLabel1_i(),this._MasteryCallengeUiInfolayerComponent_HGroup1_c()];
         _loc1_.id = "challengeRunningGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.challengeRunningGroup = _loc1_;
         BindingManager.executeBindings(this,"challengeRunningGroup",this.challengeRunningGroup);
         return _loc1_;
      }
      
      private function _MasteryCallengeUiInfolayerComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "infoLayerStatus";
         _loc1_.percentWidth = 100;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.id = "challengeDescription";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.challengeDescription = _loc1_;
         BindingManager.executeBindings(this,"challengeDescription",this.challengeDescription);
         return _loc1_;
      }
      
      private function _MasteryCallengeUiInfolayerComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._MasteryCallengeUiInfolayerComponent_BriskImageDynaLib1_c(),this._MasteryCallengeUiInfolayerComponent_Group1_c(),this._MasteryCallengeUiInfolayerComponent_Group2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryCallengeUiInfolayerComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "mastery_star";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryCallengeUiInfolayerComponent_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._MasteryCallengeUiInfolayerComponent_ProgressBarComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryCallengeUiInfolayerComponent_ProgressBarComponent1_i() : ProgressBarComponent
      {
         var _loc1_:ProgressBarComponent = new ProgressBarComponent();
         _loc1_.percentWidth = 100;
         _loc1_.progress = 0.5;
         _loc1_.id = "progressBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.progressBar = _loc1_;
         BindingManager.executeBindings(this,"progressBar",this.progressBar);
         return _loc1_;
      }
      
      private function _MasteryCallengeUiInfolayerComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 23;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryCallengeUiInfolayerComponent_VGroup3_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.height = 60;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.mxmlContent = [this._MasteryCallengeUiInfolayerComponent_LocaLabel2_i()];
         _loc1_.id = "challengeCompletedGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.challengeCompletedGroup = _loc1_;
         BindingManager.executeBindings(this,"challengeCompletedGroup",this.challengeCompletedGroup);
         return _loc1_;
      }
      
      private function _MasteryCallengeUiInfolayerComponent_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.maxWidth = 210;
         _loc1_.maxDisplayedLines = 3;
         _loc1_.styleName = "infoLabel";
         _loc1_.id = "challengeCompletedLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.challengeCompletedLabel = _loc1_;
         BindingManager.executeBindings(this,"challengeCompletedLabel",this.challengeCompletedLabel);
         return _loc1_;
      }
      
      private function _MasteryCallengeUiInfolayerComponent_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._MasteryCallengeUiInfolayerComponent_BriskImageDynaLib2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryCallengeUiInfolayerComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "infolayer_divider_new";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryCallengeUiInfolayerComponent_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "left";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._MasteryCallengeUiInfolayerComponent_BriskImageDynaLib3_c(),this._MasteryCallengeUiInfolayerComponent_LocaLabel3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryCallengeUiInfolayerComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "mastery_reward";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MasteryCallengeUiInfolayerComponent_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "expansionBlue";
         _loc1_.maxDisplayedLines = 2;
         _loc1_.maxWidth = 170;
         _loc1_.id = "rewardsHeadline";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rewardsHeadline = _loc1_;
         BindingManager.executeBindings(this,"rewardsHeadline",this.rewardsHeadline);
         return _loc1_;
      }
      
      private function _MasteryCallengeUiInfolayerComponent_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.percentWidth = 100;
         _loc1_.itemRenderer = this._MasteryCallengeUiInfolayerComponent_ClassFactory1_c();
         _loc1_.setStyle("skinClass",ImprovementEfficiencyListSkin);
         _loc1_.id = "rewardList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rewardList = _loc1_;
         BindingManager.executeBindings(this,"rewardList",this.rewardList);
         return _loc1_;
      }
      
      private function _MasteryCallengeUiInfolayerComponent_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = InfolayerMasteryRewardItemRenderer;
         return _loc1_;
      }
      
      public function ___MasteryCallengeUiInfolayerComponent_AbstractUIInfolayerComponent1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get challengeCompletedGroup() : VGroup
      {
         return this._630498871challengeCompletedGroup;
      }
      
      public function set challengeCompletedGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._630498871challengeCompletedGroup;
         if(_loc2_ !== param1)
         {
            this._630498871challengeCompletedGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"challengeCompletedGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get challengeCompletedLabel() : LocaLabel
      {
         return this._634597036challengeCompletedLabel;
      }
      
      public function set challengeCompletedLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._634597036challengeCompletedLabel;
         if(_loc2_ !== param1)
         {
            this._634597036challengeCompletedLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"challengeCompletedLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get challengeDescription() : LocaLabel
      {
         return this._1251091353challengeDescription;
      }
      
      public function set challengeDescription(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1251091353challengeDescription;
         if(_loc2_ !== param1)
         {
            this._1251091353challengeDescription = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"challengeDescription",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get challengeRunningGroup() : VGroup
      {
         return this._1426521085challengeRunningGroup;
      }
      
      public function set challengeRunningGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._1426521085challengeRunningGroup;
         if(_loc2_ !== param1)
         {
            this._1426521085challengeRunningGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"challengeRunningGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBar() : ProgressBarComponent
      {
         return this._1131509414progressBar;
      }
      
      public function set progressBar(param1:ProgressBarComponent) : void
      {
         var _loc2_:Object = this._1131509414progressBar;
         if(_loc2_ !== param1)
         {
            this._1131509414progressBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardList() : List
      {
         return this._1690977389rewardList;
      }
      
      public function set rewardList(param1:List) : void
      {
         var _loc2_:Object = this._1690977389rewardList;
         if(_loc2_ !== param1)
         {
            this._1690977389rewardList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardsHeadline() : LocaLabel
      {
         return this._1516824rewardsHeadline;
      }
      
      public function set rewardsHeadline(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1516824rewardsHeadline;
         if(_loc2_ !== param1)
         {
            this._1516824rewardsHeadline = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardsHeadline",_loc2_,param1));
            }
         }
      }
   }
}

