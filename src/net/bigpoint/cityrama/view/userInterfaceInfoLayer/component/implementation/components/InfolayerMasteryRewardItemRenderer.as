package net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.mastery.MasteryBonusVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.HGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class InfolayerMasteryRewardItemRenderer extends ItemRenderer
   {
      
      private var _3226745icon:BriskImageDynaLib;
      
      private var _501248986typeLabel:LocaLabel;
      
      private var _2025208835valueLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:MasteryBonusVo;
      
      private var _dirty:Boolean;
      
      public function InfolayerMasteryRewardItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._InfolayerMasteryRewardItemRenderer_HGroup1_c()];
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
            this._data = param1 as MasteryBonusVo;
         }
         invalidateProperties();
         super.data = param1;
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         if(this._dirty)
         {
            this._dirty = false;
            this.typeLabel.text = LocaUtils.getString("rcl.booklayer.residential","rcl.booklayer.residential.guiinfolayer.mastery.reward.label." + this._data.locaId);
            _loc1_ = Math.ceil(this._data.value * 100);
            if(_loc1_ >= 0)
            {
               _loc2_ = "+ ";
            }
            else
            {
               _loc2_ = "- ";
            }
            _loc1_ = Math.abs(_loc1_);
            if(_loc1_ < 10)
            {
               _loc2_ += " ";
            }
            _loc2_ += _loc1_ + "%";
            this.valueLabel.text = _loc2_;
            this.icon.dynaBmpSourceName = this._data.gfxId;
         }
         super.commitProperties();
      }
      
      private function _InfolayerMasteryRewardItemRenderer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._InfolayerMasteryRewardItemRenderer_LocaLabel1_i(),this._InfolayerMasteryRewardItemRenderer_LocaLabel2_i(),this._InfolayerMasteryRewardItemRenderer_BriskImageDynaLib1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfolayerMasteryRewardItemRenderer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.minWidth = 130;
         _loc1_.maxWidth = 130;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.styleName = "infoLabelLeft";
         _loc1_.id = "typeLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.typeLabel = _loc1_;
         BindingManager.executeBindings(this,"typeLabel",this.typeLabel);
         return _loc1_;
      }
      
      private function _InfolayerMasteryRewardItemRenderer_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = null;
         _loc1_ = new LocaLabel();
         _loc1_.width = 50;
         _loc1_.maxWidth = 50;
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "infoLabelRight";
         _loc1_.id = "valueLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.valueLabel = _loc1_;
         BindingManager.executeBindings(this,"valueLabel",this.valueLabel);
         return _loc1_;
      }
      
      private function _InfolayerMasteryRewardItemRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_resources_icons";
         _loc1_.id = "icon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.icon = _loc1_;
         BindingManager.executeBindings(this,"icon",this.icon);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get icon() : BriskImageDynaLib
      {
         return this._3226745icon;
      }
      
      public function set icon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._3226745icon;
         if(_loc2_ !== param1)
         {
            this._3226745icon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get typeLabel() : LocaLabel
      {
         return this._501248986typeLabel;
      }
      
      public function set typeLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._501248986typeLabel;
         if(_loc2_ !== param1)
         {
            this._501248986typeLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"typeLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get valueLabel() : LocaLabel
      {
         return this._2025208835valueLabel;
      }
      
      public function set valueLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._2025208835valueLabel;
         if(_loc2_ !== param1)
         {
            this._2025208835valueLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"valueLabel",_loc2_,param1));
            }
         }
      }
   }
}

