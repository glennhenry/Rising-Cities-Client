package net.bigpoint.cityrama.view.emergencyBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import mx.states.State;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyAssignVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalSlotVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class SideProfessionalComponent extends Group implements IStateClient2
   {
      
      private var _1795780411professionalSlot:SideSpecialistSlotComponent;
      
      private var _1100650210reward1:ProgressThresholdIndicator;
      
      private var _1100650211reward2:ProgressThresholdIndicator;
      
      private var _1100650212reward3:ProgressThresholdIndicator;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _originalData:EmergencyAssignVo;
      
      private var _currentData:EmergencyAssignVo;
      
      private var _dataIsDirty:Boolean = false;
      
      private var _currentDataIsDirty:Boolean = false;
      
      public function SideProfessionalComponent()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._SideProfessionalComponent_Group2_c()];
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
      
      public function set originalData(param1:EmergencyAssignVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._originalData))
         {
            this._originalData = param1;
            this._dataIsDirty = true;
            invalidateProperties();
         }
      }
      
      public function set currentData(param1:EmergencyAssignVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._currentData))
         {
            this._currentData = param1;
            this._currentDataIsDirty = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            this.reward1.data = this._originalData.efficiencyProgressVo;
            this.reward2.data = this._originalData.luckProgressVo;
            this.reward3.data = this._originalData.goofinessProgressVo;
         }
         if(this._currentDataIsDirty)
         {
            this._currentDataIsDirty = false;
            this.reward1.updateXtraProgress(this._currentData.efficiencyProgressVo.progress);
            this.reward2.updateXtraProgress(this._currentData.luckProgressVo.progress);
         }
      }
      
      public function get professionalId() : Number
      {
         return this.professionalSlot.professionalId;
      }
      
      public function set professionalData(param1:ProfessionalSlotVo) : void
      {
         var _loc2_:String = null;
         this.professionalSlot.data = param1;
         if(this._currentData)
         {
            _loc2_ = ResourceManager.getInstance().getString(String("rcl.goods.goodname"),"rcl.goods.goodname." + this._originalData.rewardGfxId);
            this.reward1.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.emergencyLayer"),String("rcl.tooltips.emergencyLayer.rewardOutputMock")).replace("{0}",this._originalData.rewardAmount.toString()).replace("{1}",param1.name);
            this.reward2.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.emergencyLayer"),String("rcl.tooltips.emergencyLayer.rewardTypeMock")).replace("{0}",_loc2_).replace("{1}",param1.name);
         }
      }
      
      private function _SideProfessionalComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.top = 60;
         _loc1_.mxmlContent = [this._SideProfessionalComponent_BriskImageDynaLib1_c(),this._SideProfessionalComponent_SideSpecialistSlotComponent1_i(),this._SideProfessionalComponent_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SideProfessionalComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
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
      
      private function _SideProfessionalComponent_SideSpecialistSlotComponent1_i() : SideSpecialistSlotComponent
      {
         var _loc1_:SideSpecialistSlotComponent = new SideSpecialistSlotComponent();
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
      
      private function _SideProfessionalComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.bottom = 75;
         _loc1_.percentWidth = 100;
         _loc1_.paddingLeft = 20;
         _loc1_.paddingRight = 20;
         _loc1_.gap = 3;
         _loc1_.mxmlContent = [this._SideProfessionalComponent_HGroup1_c(),this._SideProfessionalComponent_HGroup2_c(),this._SideProfessionalComponent_HGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SideProfessionalComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._SideProfessionalComponent_Group3_c(),this._SideProfessionalComponent_ProgressThresholdIndicator1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SideProfessionalComponent_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 28;
         _loc1_.height = 24;
         _loc1_.mxmlContent = [this._SideProfessionalComponent_BriskImageDynaLib2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SideProfessionalComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
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
      
      private function _SideProfessionalComponent_ProgressThresholdIndicator1_i() : ProgressThresholdIndicator
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
      
      private function _SideProfessionalComponent_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._SideProfessionalComponent_Group4_c(),this._SideProfessionalComponent_ProgressThresholdIndicator2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SideProfessionalComponent_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 28;
         _loc1_.height = 24;
         _loc1_.mxmlContent = [this._SideProfessionalComponent_BriskImageDynaLib3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SideProfessionalComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
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
      
      private function _SideProfessionalComponent_ProgressThresholdIndicator2_i() : ProgressThresholdIndicator
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
      
      private function _SideProfessionalComponent_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.visible = false;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._SideProfessionalComponent_Group5_c(),this._SideProfessionalComponent_ProgressThresholdIndicator3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SideProfessionalComponent_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 28;
         _loc1_.height = 24;
         _loc1_.mxmlContent = [this._SideProfessionalComponent_BriskImageDynaLib4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SideProfessionalComponent_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "icon_rewardsize3";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SideProfessionalComponent_ProgressThresholdIndicator3_i() : ProgressThresholdIndicator
      {
         var _loc1_:ProgressThresholdIndicator = new ProgressThresholdIndicator();
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
      public function get professionalSlot() : SideSpecialistSlotComponent
      {
         return this._1795780411professionalSlot;
      }
      
      public function set professionalSlot(param1:SideSpecialistSlotComponent) : void
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
   }
}

