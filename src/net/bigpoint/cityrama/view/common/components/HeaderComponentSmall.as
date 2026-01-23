package net.bigpoint.cityrama.view.common.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public class HeaderComponentSmall extends Group
   {
      
      private var _1065153926alignGroup:HGroup;
      
      private var _1184053038labelDisplay:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _label:String = "";
      
      private var _labelIsDirty:Boolean = false;
      
      public function HeaderComponentSmall()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._HeaderComponentSmall_HGroup1_c(),this._HeaderComponentSmall_HGroup2_i()];
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
      
      public function get label() : String
      {
         return this._label;
      }
      
      public function set label(param1:String) : void
      {
         if(param1 != this._label)
         {
            this._label = param1;
            this._labelIsDirty = true;
            invalidateProperties();
         }
      }
      
      public function set textHAlign(param1:String) : void
      {
         if(param1 == "right" || param1 == "center" || param1 == "left")
         {
            this.alignGroup.horizontalAlign = param1;
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._labelIsDirty)
         {
            this._labelIsDirty = false;
            this.labelDisplay.text = this._label;
         }
      }
      
      private function _HeaderComponentSmall_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._HeaderComponentSmall_BriskImageDynaLib1_c(),this._HeaderComponentSmall_BriskImageDynaLib2_c(),this._HeaderComponentSmall_BriskImageDynaLib3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _HeaderComponentSmall_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "bluemarker_small_left";
         _loc1_.height = 19;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _HeaderComponentSmall_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "bluemarker_small_middle";
         _loc1_.percentWidth = 100;
         _loc1_.height = 19;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _HeaderComponentSmall_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "bluemarker_small_right";
         _loc1_.height = 19;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _HeaderComponentSmall_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.height = 19;
         _loc1_.maxHeight = 19;
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "left";
         _loc1_.paddingLeft = 5;
         _loc1_.paddingRight = 5;
         _loc1_.mxmlContent = [this._HeaderComponentSmall_LocaLabel1_i()];
         _loc1_.id = "alignGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.alignGroup = _loc1_;
         BindingManager.executeBindings(this,"alignGroup",this.alignGroup);
         return _loc1_;
      }
      
      private function _HeaderComponentSmall_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "emergencySuccessBarLabel";
         _loc1_.maxDisplayedLines = 1;
         _loc1_.id = "labelDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.labelDisplay = _loc1_;
         BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get alignGroup() : HGroup
      {
         return this._1065153926alignGroup;
      }
      
      public function set alignGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._1065153926alignGroup;
         if(_loc2_ !== param1)
         {
            this._1065153926alignGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"alignGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get labelDisplay() : LocaLabel
      {
         return this._1184053038labelDisplay;
      }
      
      public function set labelDisplay(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1184053038labelDisplay;
         if(_loc2_ !== param1)
         {
            this._1184053038labelDisplay = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelDisplay",_loc2_,param1));
            }
         }
      }
   }
}

