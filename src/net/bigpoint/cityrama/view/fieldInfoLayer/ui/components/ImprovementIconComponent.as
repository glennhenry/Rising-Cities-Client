package net.bigpoint.cityrama.view.fieldInfoLayer.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.ImprovementIconComponentVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class ImprovementIconComponent extends Group
   {
      
      private var _949820541flavourLabel:LocaLabel;
      
      private var _100029144icon1:ImprovementIcon;
      
      private var _100029145icon2:ImprovementIcon;
      
      private var _100029146icon3:ImprovementIcon;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ImprovementIconComponentVo;
      
      private var _dirty:Boolean;
      
      public function ImprovementIconComponent()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.mxmlContent = [this._ImprovementIconComponent_VGroup1_c()];
         this.addEventListener("creationComplete",this.___ImprovementIconComponent_Group1_creationComplete);
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
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         this.flavourLabel.text = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.improvement.slotDescription");
      }
      
      public function set data(param1:ImprovementIconComponentVo) : void
      {
         this._dirty = true;
         this._data = param1;
         this.includeInLayout = this.visible = this._data.enabled;
         invalidateProperties();
      }
      
      override protected function commitProperties() : void
      {
         if(this._dirty && Boolean(this._data))
         {
            this._dirty = false;
            this.icon1.currentState = this._data.getIcon1;
            this.icon2.currentState = this._data.getIcon2;
            this.icon3.currentState = this._data.getIcon3;
         }
         super.commitProperties();
      }
      
      private function _ImprovementIconComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.paddingLeft = 16;
         _loc1_.paddingRight = 14;
         _loc1_.mxmlContent = [this._ImprovementIconComponent_HGroup1_c(),this._ImprovementIconComponent_VGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementIconComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._ImprovementIconComponent_LocaLabel1_i(),this._ImprovementIconComponent_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementIconComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.height = 24;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.styleName = "residentialOutputItem";
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.id = "flavourLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavourLabel = _loc1_;
         BindingManager.executeBindings(this,"flavourLabel",this.flavourLabel);
         return _loc1_;
      }
      
      private function _ImprovementIconComponent_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._ImprovementIconComponent_ImprovementIcon1_i(),this._ImprovementIconComponent_ImprovementIcon2_i(),this._ImprovementIconComponent_ImprovementIcon3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementIconComponent_ImprovementIcon1_i() : ImprovementIcon
      {
         var _loc1_:ImprovementIcon = new ImprovementIcon();
         _loc1_.id = "icon1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.icon1 = _loc1_;
         BindingManager.executeBindings(this,"icon1",this.icon1);
         return _loc1_;
      }
      
      private function _ImprovementIconComponent_ImprovementIcon2_i() : ImprovementIcon
      {
         var _loc1_:ImprovementIcon = new ImprovementIcon();
         _loc1_.id = "icon2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.icon2 = _loc1_;
         BindingManager.executeBindings(this,"icon2",this.icon2);
         return _loc1_;
      }
      
      private function _ImprovementIconComponent_ImprovementIcon3_i() : ImprovementIcon
      {
         var _loc1_:ImprovementIcon = new ImprovementIcon();
         _loc1_.id = "icon3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.icon3 = _loc1_;
         BindingManager.executeBindings(this,"icon3",this.icon3);
         return _loc1_;
      }
      
      private function _ImprovementIconComponent_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.gap = 0;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._ImprovementIconComponent_BriskImageDynaLib1_c(),this._ImprovementIconComponent_Group2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementIconComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "infolayer_divider_new";
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementIconComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 2;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___ImprovementIconComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourLabel() : LocaLabel
      {
         return this._949820541flavourLabel;
      }
      
      public function set flavourLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._949820541flavourLabel;
         if(_loc2_ !== param1)
         {
            this._949820541flavourLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get icon1() : ImprovementIcon
      {
         return this._100029144icon1;
      }
      
      public function set icon1(param1:ImprovementIcon) : void
      {
         var _loc2_:Object = this._100029144icon1;
         if(_loc2_ !== param1)
         {
            this._100029144icon1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get icon2() : ImprovementIcon
      {
         return this._100029145icon2;
      }
      
      public function set icon2(param1:ImprovementIcon) : void
      {
         var _loc2_:Object = this._100029145icon2;
         if(_loc2_ !== param1)
         {
            this._100029145icon2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get icon3() : ImprovementIcon
      {
         return this._100029146icon3;
      }
      
      public function set icon3(param1:ImprovementIcon) : void
      {
         var _loc2_:Object = this._100029146icon3;
         if(_loc2_ !== param1)
         {
            this._100029146icon3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon3",_loc2_,param1));
            }
         }
      }
   }
}

