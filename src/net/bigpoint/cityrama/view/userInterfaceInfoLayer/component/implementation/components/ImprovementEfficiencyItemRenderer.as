package net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementEfficiencyVo;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.HGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class ImprovementEfficiencyItemRenderer extends ItemRenderer
   {
      
      private var _768466421efficiencyLabel:LocaLabel;
      
      private var _759221112efficiencyValue:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ImprovementEfficiencyVo;
      
      private var _dirty:Boolean;
      
      public function ImprovementEfficiencyItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.autoDrawBackground = false;
         this.percentWidth = 100;
         this.mxmlContent = [this._ImprovementEfficiencyItemRenderer_HGroup1_c()];
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
      
      override public function set data(param1:Object) : void
      {
         if(!RandomUtilities.isEqual(this._data,param1))
         {
            this._dirty = true;
            this._data = param1 as ImprovementEfficiencyVo;
         }
         invalidateProperties();
         super.data = param1;
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:String = null;
         if(this._dirty)
         {
            this.efficiencyLabel.text = LocaUtils.getString("rcl.guiinfolayer.improvements","rcl.guiinfolayer.improvements.efficiencies." + this._data.tag);
            if(this._data.moreIsGood)
            {
               this.efficiencyValue.styleName = this._data.value > 0 ? "efficiencyOutputPos" : "efficiencyOutputNeg";
            }
            else
            {
               this.efficiencyValue.styleName = this._data.value > 0 ? "efficiencyOutputNeg" : "efficiencyOutputPos";
            }
            _loc1_ = this._data.value >= 0 ? "+ " : "- ";
            this.efficiencyValue.text = _loc1_ + Math.floor(Math.abs(this._data.value * 100)).toString() + " %";
         }
         super.commitProperties();
      }
      
      private function _ImprovementEfficiencyItemRenderer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.gap = 1;
         _loc1_.mxmlContent = [this._ImprovementEfficiencyItemRenderer_LocaLabel1_i(),this._ImprovementEfficiencyItemRenderer_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementEfficiencyItemRenderer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.percentWidth = 66;
         _loc1_.styleName = "infoLabelLeft";
         _loc1_.percentHeight = 100;
         _loc1_.id = "efficiencyLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.efficiencyLabel = _loc1_;
         BindingManager.executeBindings(this,"efficiencyLabel",this.efficiencyLabel);
         return _loc1_;
      }
      
      private function _ImprovementEfficiencyItemRenderer_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.percentWidth = 37;
         _loc1_.styleName = "infoLabelRight";
         _loc1_.percentHeight = 100;
         _loc1_.id = "efficiencyValue";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.efficiencyValue = _loc1_;
         BindingManager.executeBindings(this,"efficiencyValue",this.efficiencyValue);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get efficiencyLabel() : LocaLabel
      {
         return this._768466421efficiencyLabel;
      }
      
      public function set efficiencyLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._768466421efficiencyLabel;
         if(_loc2_ !== param1)
         {
            this._768466421efficiencyLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"efficiencyLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get efficiencyValue() : LocaLabel
      {
         return this._759221112efficiencyValue;
      }
      
      public function set efficiencyValue(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._759221112efficiencyValue;
         if(_loc2_ !== param1)
         {
            this._759221112efficiencyValue = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"efficiencyValue",_loc2_,param1));
            }
         }
      }
   }
}

