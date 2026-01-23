package net.bigpoint.cityrama.view.fieldInfoLayer.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.ModifierValueVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public class ModifierValueComponent extends Group implements IStateClient2
   {
      
      private var _1840699177energyGroup:HGroup;
      
      private var _1464688417energyIcon:BriskImageDynaLib;
      
      private var _1836601012energyLabel:LocaLabel;
      
      private var _899936824moodGroup:HGroup;
      
      private var _306079728moodIcon:BriskImageDynaLib;
      
      private var _895838659moodLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ModifierValueVo;
      
      private var _dataIsDirty:Boolean;
      
      public function ModifierValueComponent()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._ModifierValueComponent_HGroup1_c()];
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
      
      public function set data(param1:ModifierValueVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            invalidateProperties();
            this._dataIsDirty = true;
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            this.moodLabel.setStyle("color",this.getColorFromAmount(this._data.happyValue));
            this.energyLabel.setStyle("color",this.getColorFromAmount(this._data.energyValue));
            if(this._data.happyValue >= 0)
            {
               this.moodIcon.dynaBmpSourceName = "layer_happyness_icon";
            }
            else
            {
               this.moodIcon.dynaBmpSourceName = "layer_sad_icon";
            }
            if(this._data.happyValue > 0)
            {
               this.moodLabel.text = "+" + this._data.happyValue.toString();
            }
            else
            {
               this.moodLabel.text = this._data.happyValue.toString();
            }
            if(this._data.energyValue > 0)
            {
               this.energyLabel.text = "+" + this._data.energyValue.toString();
            }
            else
            {
               this.energyLabel.text = this._data.energyValue.toString();
            }
         }
      }
      
      private function getColorFromAmount(param1:Number) : uint
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
      
      private function _ModifierValueComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._ModifierValueComponent_HGroup2_i(),this._ModifierValueComponent_HGroup3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ModifierValueComponent_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 50;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ModifierValueComponent_LocaLabel1_i(),this._ModifierValueComponent_BriskImageDynaLib1_i()];
         _loc1_.id = "moodGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.moodGroup = _loc1_;
         BindingManager.executeBindings(this,"moodGroup",this.moodGroup);
         return _loc1_;
      }
      
      private function _ModifierValueComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "outcomeNeutral";
         _loc1_.text = "+0";
         _loc1_.id = "moodLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.moodLabel = _loc1_;
         BindingManager.executeBindings(this,"moodLabel",this.moodLabel);
         return _loc1_;
      }
      
      private function _ModifierValueComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_resources_icons";
         _loc1_.dynaBmpSourceName = "layer_happyness_icon";
         _loc1_.id = "moodIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.moodIcon = _loc1_;
         BindingManager.executeBindings(this,"moodIcon",this.moodIcon);
         return _loc1_;
      }
      
      private function _ModifierValueComponent_HGroup3_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 50;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._ModifierValueComponent_LocaLabel2_i(),this._ModifierValueComponent_BriskImageDynaLib2_i()];
         _loc1_.id = "energyGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.energyGroup = _loc1_;
         BindingManager.executeBindings(this,"energyGroup",this.energyGroup);
         return _loc1_;
      }
      
      private function _ModifierValueComponent_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "outcomeNeutral";
         _loc1_.id = "energyLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.energyLabel = _loc1_;
         BindingManager.executeBindings(this,"energyLabel",this.energyLabel);
         return _loc1_;
      }
      
      private function _ModifierValueComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_resources_icons";
         _loc1_.dynaBmpSourceName = "energy_icon";
         _loc1_.id = "energyIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.energyIcon = _loc1_;
         BindingManager.executeBindings(this,"energyIcon",this.energyIcon);
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
      public function get energyIcon() : BriskImageDynaLib
      {
         return this._1464688417energyIcon;
      }
      
      public function set energyIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1464688417energyIcon;
         if(_loc2_ !== param1)
         {
            this._1464688417energyIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"energyIcon",_loc2_,param1));
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
      public function get moodIcon() : BriskImageDynaLib
      {
         return this._306079728moodIcon;
      }
      
      public function set moodIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._306079728moodIcon;
         if(_loc2_ !== param1)
         {
            this._306079728moodIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moodIcon",_loc2_,param1));
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

