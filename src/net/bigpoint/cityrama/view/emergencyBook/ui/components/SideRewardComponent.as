package net.bigpoint.cityrama.view.emergencyBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import mx.states.State;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyAssignVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class SideRewardComponent extends Group implements IStateClient2
   {
      
      private var _1177331774itemName:LocaLabel;
      
      private var _1100650210reward1:ProgressThresholdIndicator;
      
      private var _1100650211reward2:ProgressThresholdIndicator;
      
      private var _1100650212reward3:ProgressThresholdIndicator;
      
      private var _878022508rewardImage:BriskImageDynaLib;
      
      private var _97174925rewardImageGroup:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:EmergencyAssignVo;
      
      private var _dataIsDirty:Boolean = false;
      
      public function SideRewardComponent()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._SideRewardComponent_Group2_c()];
         this.currentState = "normal";
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[]
         })];
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
      
      public function set data(param1:EmergencyAssignVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._dataIsDirty = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         super.commitProperties();
         if(this._dataIsDirty)
         {
            _loc1_ = this._data.rewardGfxId + "_" + this._data.rewardAmount;
            this.rewardImage.dynaBmpSourceName = _loc1_;
            this._dataIsDirty = false;
            _loc2_ = ResourceManager.getInstance().getString(String("rcl.goods.goodname"),"rcl.goods.goodname." + this._data.rewardGfxId);
            this.itemName.text = _loc2_;
            _loc3_ = ResourceManager.getInstance().getString(String("rcl.tooltips.emergencyLayer"),String("rcl.tooltips.emergencyLayer.onSuccessReward"));
            _loc3_ = StringUtil.substitute(_loc3_,this._data.rewardAmount.toString(),_loc2_);
            this.rewardImageGroup.toolTip = _loc3_;
            this.reward1.toolTip = StringUtil.substitute(ResourceManager.getInstance().getString(String("rcl.tooltips.emergencyLayer"),String("rcl.tooltips.emergencyLayer.rewardOutput")),this._data.rewardAmount.toString());
            this.reward1.data = this._data.efficiencyProgressVo;
            this.reward2.toolTip = StringUtil.substitute(ResourceManager.getInstance().getString(String("rcl.tooltips.emergencyLayer"),String("rcl.tooltips.emergencyLayer.rewardType")),_loc2_);
            this.reward2.data = this._data.luckProgressVo;
         }
      }
      
      private function _SideRewardComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.top = 60;
         _loc1_.mxmlContent = [this._SideRewardComponent_BriskImageDynaLib1_c(),this._SideRewardComponent_Group3_i(),this._SideRewardComponent_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SideRewardComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "bg_blue_reward";
         _loc1_.width = 218;
         _loc1_.height = 236;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SideRewardComponent_Group3_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 15;
         _loc1_.mxmlContent = [this._SideRewardComponent_Group4_c(),this._SideRewardComponent_BriskImageDynaLib5_c()];
         _loc1_.id = "rewardImageGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rewardImageGroup = _loc1_;
         BindingManager.executeBindings(this,"rewardImageGroup",this.rewardImageGroup);
         return _loc1_;
      }
      
      private function _SideRewardComponent_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._SideRewardComponent_Group5_c(),this._SideRewardComponent_BriskImageDynaLib3_c(),this._SideRewardComponent_BriskImageDynaLib4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SideRewardComponent_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.horizontalCenter = 0;
         _loc1_.bottom = -21;
         _loc1_.width = 106;
         _loc1_.mxmlContent = [this._SideRewardComponent_BriskImageDynaLib2_c(),this._SideRewardComponent_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SideRewardComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "architect_postit_price";
         _loc1_.width = 106;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SideRewardComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.width = 106;
         _loc1_.maxDisplayedLines = 1;
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 2;
         _loc1_.styleName = "emergencyRewardName";
         _loc1_.id = "itemName";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemName = _loc1_;
         BindingManager.executeBindings(this,"itemName",this.itemName);
         return _loc1_;
      }
      
      private function _SideRewardComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "ressource_cardboard_small";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SideRewardComponent_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "60022_5";
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.id = "rewardImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rewardImage = _loc1_;
         BindingManager.executeBindings(this,"rewardImage",this.rewardImage);
         return _loc1_;
      }
      
      private function _SideRewardComponent_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "postit_tape_top";
         _loc1_.horizontalCenter = 0;
         _loc1_.top = -7;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SideRewardComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.bottom = 77;
         _loc1_.percentWidth = 100;
         _loc1_.paddingLeft = 20;
         _loc1_.paddingRight = 20;
         _loc1_.gap = 3;
         _loc1_.mxmlContent = [this._SideRewardComponent_HGroup1_c(),this._SideRewardComponent_HGroup2_c(),this._SideRewardComponent_HGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SideRewardComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._SideRewardComponent_Group6_c(),this._SideRewardComponent_ProgressThresholdIndicator1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SideRewardComponent_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 28;
         _loc1_.height = 24;
         _loc1_.mxmlContent = [this._SideRewardComponent_BriskImageDynaLib6_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SideRewardComponent_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "icon_rewardsize";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SideRewardComponent_ProgressThresholdIndicator1_i() : ProgressThresholdIndicator
      {
         var _loc1_:ProgressThresholdIndicator = new ProgressThresholdIndicator();
         _loc1_.percentWidth = 100;
         _loc1_.id = "reward1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.reward1 = _loc1_;
         BindingManager.executeBindings(this,"reward1",this.reward1);
         return _loc1_;
      }
      
      private function _SideRewardComponent_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._SideRewardComponent_Group7_c(),this._SideRewardComponent_ProgressThresholdIndicator2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SideRewardComponent_Group7_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 28;
         _loc1_.height = 24;
         _loc1_.mxmlContent = [this._SideRewardComponent_BriskImageDynaLib7_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SideRewardComponent_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "icon_rewardsize2";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SideRewardComponent_ProgressThresholdIndicator2_i() : ProgressThresholdIndicator
      {
         var _loc1_:ProgressThresholdIndicator = new ProgressThresholdIndicator();
         _loc1_.percentWidth = 100;
         _loc1_.id = "reward2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.reward2 = _loc1_;
         BindingManager.executeBindings(this,"reward2",this.reward2);
         return _loc1_;
      }
      
      private function _SideRewardComponent_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._SideRewardComponent_Group8_c(),this._SideRewardComponent_ProgressThresholdIndicator3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SideRewardComponent_Group8_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 28;
         _loc1_.height = 24;
         _loc1_.mxmlContent = [this._SideRewardComponent_BriskImageDynaLib8_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SideRewardComponent_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "icon_rewardsize3";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.visible = false;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SideRewardComponent_ProgressThresholdIndicator3_i() : ProgressThresholdIndicator
      {
         var _loc1_:ProgressThresholdIndicator = new ProgressThresholdIndicator();
         _loc1_.visible = false;
         _loc1_.percentWidth = 100;
         _loc1_.id = "reward3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.reward3 = _loc1_;
         BindingManager.executeBindings(this,"reward3",this.reward3);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get itemName() : LocaLabel
      {
         return this._1177331774itemName;
      }
      
      public function set itemName(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1177331774itemName;
         if(_loc2_ !== param1)
         {
            this._1177331774itemName = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemName",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get reward1() : ProgressThresholdIndicator
      {
         return this._1100650210reward1;
      }
      
      public function set reward1(param1:ProgressThresholdIndicator) : void
      {
         var _loc2_:Object = this._1100650210reward1;
         if(_loc2_ !== param1)
         {
            this._1100650210reward1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reward1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get reward2() : ProgressThresholdIndicator
      {
         return this._1100650211reward2;
      }
      
      public function set reward2(param1:ProgressThresholdIndicator) : void
      {
         var _loc2_:Object = this._1100650211reward2;
         if(_loc2_ !== param1)
         {
            this._1100650211reward2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reward2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get reward3() : ProgressThresholdIndicator
      {
         return this._1100650212reward3;
      }
      
      public function set reward3(param1:ProgressThresholdIndicator) : void
      {
         var _loc2_:Object = this._1100650212reward3;
         if(_loc2_ !== param1)
         {
            this._1100650212reward3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reward3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardImage() : BriskImageDynaLib
      {
         return this._878022508rewardImage;
      }
      
      public function set rewardImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._878022508rewardImage;
         if(_loc2_ !== param1)
         {
            this._878022508rewardImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardImage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rewardImageGroup() : Group
      {
         return this._97174925rewardImageGroup;
      }
      
      public function set rewardImageGroup(param1:Group) : void
      {
         var _loc2_:Object = this._97174925rewardImageGroup;
         if(_loc2_ !== param1)
         {
            this._97174925rewardImageGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rewardImageGroup",_loc2_,param1));
            }
         }
      }
   }
}

