package net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.InfoLayerConfigPlayfieldItemVo;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class InfoLayerEnergyMoodComponent extends Group
   {
      
      private var _1840699177energyGroup:HGroup;
      
      private var _1836601012energyLabel:LocaLabel;
      
      private var _899936824moodGroup:HGroup;
      
      private var _895838659moodLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:InfoLayerConfigPlayfieldItemVo;
      
      private var _dataDirty:Boolean;
      
      public function InfoLayerEnergyMoodComponent()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.mxmlContent = [this._InfoLayerEnergyMoodComponent_VGroup1_c()];
      }
      
      private static function getColorFromAmount(param1:Number) : uint
      {
         if(param1 < 0)
         {
            return 14300688;
         }
         if(param1 > 0)
         {
            return 8237580;
         }
         return 7303023;
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
      
      public function set data(param1:InfoLayerConfigPlayfieldItemVo) : void
      {
         this._data = param1;
         this._dataDirty = true;
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         super.commitProperties();
         if(this._dataDirty)
         {
            this._dataDirty = false;
            _loc1_ = this._data.moodValue;
            _loc2_ = this._data.energyValue;
            this.visible = this.includeInLayout = !isNaN(_loc2_) || !isNaN(_loc1_);
            this.moodGroup.visible = this.moodGroup.includeInLayout = !isNaN(_loc1_);
            this.energyGroup.visible = this.energyGroup.includeInLayout = !isNaN(_loc2_);
            this.moodLabel.text = _loc1_.toString();
            this.energyLabel.text = _loc2_.toString();
            this.moodLabel.setStyle("color",getColorFromAmount(_loc1_));
            this.energyLabel.setStyle("color",getColorFromAmount(_loc2_));
         }
      }
      
      private function _InfoLayerEnergyMoodComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._InfoLayerEnergyMoodComponent_HGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfoLayerEnergyMoodComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._InfoLayerEnergyMoodComponent_HGroup2_i(),this._InfoLayerEnergyMoodComponent_HGroup3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfoLayerEnergyMoodComponent_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._InfoLayerEnergyMoodComponent_LocaLabel1_i(),this._InfoLayerEnergyMoodComponent_BriskImageDynaLib1_c()];
         _loc1_.id = "moodGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.moodGroup = _loc1_;
         BindingManager.executeBindings(this,"moodGroup",this.moodGroup);
         return _loc1_;
      }
      
      private function _InfoLayerEnergyMoodComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "infoLabelRight";
         _loc1_.id = "moodLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.moodLabel = _loc1_;
         BindingManager.executeBindings(this,"moodLabel",this.moodLabel);
         return _loc1_;
      }
      
      private function _InfoLayerEnergyMoodComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_resources_icons";
         _loc1_.dynaBmpSourceName = "layer_happyness_icon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfoLayerEnergyMoodComponent_HGroup3_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._InfoLayerEnergyMoodComponent_LocaLabel2_i(),this._InfoLayerEnergyMoodComponent_BriskImageDynaLib2_c()];
         _loc1_.id = "energyGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.energyGroup = _loc1_;
         BindingManager.executeBindings(this,"energyGroup",this.energyGroup);
         return _loc1_;
      }
      
      private function _InfoLayerEnergyMoodComponent_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "infoLabelRight";
         _loc1_.id = "energyLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.energyLabel = _loc1_;
         BindingManager.executeBindings(this,"energyLabel",this.energyLabel);
         return _loc1_;
      }
      
      private function _InfoLayerEnergyMoodComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_shopBook";
         _loc1_.dynaBmpSourceName = "shopenergy";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get energyGroup() : HGroup
      {
         return this._1840699177energyGroup;
      }
      
      public function set energyGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._1840699177energyGroup;
         if(_loc2_ !== param1)
         {
            this._1840699177energyGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"energyGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get energyLabel() : LocaLabel
      {
         return this._1836601012energyLabel;
      }
      
      public function set energyLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1836601012energyLabel;
         if(_loc2_ !== param1)
         {
            this._1836601012energyLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"energyLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get moodGroup() : HGroup
      {
         return this._899936824moodGroup;
      }
      
      public function set moodGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._899936824moodGroup;
         if(_loc2_ !== param1)
         {
            this._899936824moodGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get moodLabel() : LocaLabel
      {
         return this._895838659moodLabel;
      }
      
      public function set moodLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._895838659moodLabel;
         if(_loc2_ !== param1)
         {
            this._895838659moodLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodLabel",_loc2_,param1));
            }
         }
      }
   }
}

