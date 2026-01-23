package net.bigpoint.cityrama.view.residentialBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.detailViews.vo.SimpleItemVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.LocaUtils;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class OutputItemRendered extends ItemRenderer
   {
      
      private var _906050231effectAmount:LocaLabel;
      
      private var _1715632060effectName:LocaLabel;
      
      private var _3226745icon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function OutputItemRendered()
      {
         super();
         mx_internal::_document = this;
         this.autoDrawBackground = false;
         this.percentWidth = 100;
         this.maxWidth = 254;
         this.mxmlContent = [this._OutputItemRendered_VGroup1_c()];
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
         var _loc2_:SimpleItemVo = null;
         if(param1 is SimpleItemVo)
         {
            _loc2_ = param1 as SimpleItemVo;
            this.icon.dynaBmpSourceName = _loc2_.imageId;
            this.icon.dynaLibName = _loc2_.dynaLibName;
            this.effectName.text = _loc2_.text;
            this.effectAmount.text = LocaUtils.getThousendSeperatedNumber(Math.abs(_loc2_.amount));
            if(_loc2_.imageTooltip != null)
            {
               this.toolTip = _loc2_.imageTooltip;
            }
         }
      }
      
      private function _OutputItemRendered_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 234;
         _loc1_.verticalAlign = "middle";
         _loc1_.gap = 0;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._OutputItemRendered_LocaLabel1_i(),this._OutputItemRendered_BriskImageDynaLib1_c(),this._OutputItemRendered_HGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _OutputItemRendered_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.left = 32;
         _loc1_.percentWidth = 100;
         _loc1_.maxDisplayedLines = 1;
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
      
      private function _OutputItemRendered_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_residentialPopupNEW";
         _loc1_.dynaBmpSourceName = "layer_list_line";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _OutputItemRendered_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.horizontalAlign = "right";
         _loc1_.verticalAlign = "middle";
         _loc1_.percentWidth = 100;
         _loc1_.paddingRight = 10;
         _loc1_.gap = 3;
         _loc1_.height = 28;
         _loc1_.maxHeight = 28;
         _loc1_.mxmlContent = [this._OutputItemRendered_LocaLabel2_i(),this._OutputItemRendered_BriskImageDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _OutputItemRendered_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
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
      
      private function _OutputItemRendered_BriskImageDynaLib2_i() : BriskImageDynaLib
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

