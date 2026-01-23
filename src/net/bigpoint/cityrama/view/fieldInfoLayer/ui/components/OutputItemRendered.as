package net.bigpoint.cityrama.view.fieldInfoLayer.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.detailViews.vo.SimpleItemVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.HGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class OutputItemRendered extends ItemRenderer
   {
      
      private var _906050231effectAmount:LocaLabel;
      
      private var _1715632060effectName:LocaLabel;
      
      private var _3226745icon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:SimpleItemVo;
      
      private var _isDirty:Boolean;
      
      public function OutputItemRendered()
      {
         super();
         mx_internal::_document = this;
         this.autoDrawBackground = false;
         this.percentWidth = 100;
         this.maxWidth = 254;
         this.mxmlContent = [this._OutputItemRendered_HGroup1_c()];
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
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._isDirty && Boolean(this._data))
         {
            this._isDirty = false;
            this.icon.dynaBmpSourceName = this._data.imageId;
            this.icon.dynaLibName = this._data.dynaLibName;
            this.effectName.text = this._data.text;
            this.effectAmount.text = LocaUtils.getThousendSeperatedNumber(Math.abs(this._data.amount));
            if(this._data.colorModifier == 0)
            {
               this.effectAmount.setStyle("color",5726299);
            }
            else if(this._data.colorModifier > 0)
            {
               this.effectAmount.setStyle("color",8237580);
            }
            else
            {
               this.effectAmount.setStyle("color",14300688);
            }
         }
      }
      
      override public function set data(param1:Object) : void
      {
         if(param1 is SimpleItemVo)
         {
            if(RandomUtilities.isUnEqual(param1,this._data))
            {
               this._data = param1 as SimpleItemVo;
               this._isDirty = true;
               invalidateProperties();
            }
         }
      }
      
      private function _OutputItemRendered_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.horizontalAlign = "right";
         _loc1_.verticalAlign = "middle";
         _loc1_.percentWidth = 100;
         _loc1_.gap = 3;
         _loc1_.height = 28;
         _loc1_.maxHeight = 28;
         _loc1_.mxmlContent = [this._OutputItemRendered_LocaLabel1_i(),this._OutputItemRendered_LocaLabel2_i(),this._OutputItemRendered_BriskImageDynaLib1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _OutputItemRendered_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.styleName = "residentialOutputItem";
         _loc1_.id = "effectName";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.effectName = _loc1_;
         BindingManager.executeBindings(this,"effectName",this.effectName);
         return _loc1_;
      }
      
      private function _OutputItemRendered_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = null;
         _loc1_ = new LocaLabel();
         _loc1_.styleName = "postitHeader";
         _loc1_.id = "effectAmount";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.effectAmount = _loc1_;
         BindingManager.executeBindings(this,"effectAmount",this.effectAmount);
         return _loc1_;
      }
      
      private function _OutputItemRendered_BriskImageDynaLib1_i() : BriskImageDynaLib
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
      public function get effectAmount() : LocaLabel
      {
         return this._906050231effectAmount;
      }
      
      public function set effectAmount(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._906050231effectAmount;
         if(_loc2_ !== param1)
         {
            this._906050231effectAmount = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectAmount",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get effectName() : LocaLabel
      {
         return this._1715632060effectName;
      }
      
      public function set effectName(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1715632060effectName;
         if(_loc2_ !== param1)
         {
            this._1715632060effectName = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectName",_loc2_,param1));
            }
         }
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
   }
}

