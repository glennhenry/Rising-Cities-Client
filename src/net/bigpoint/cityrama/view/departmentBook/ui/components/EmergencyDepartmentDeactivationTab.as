package net.bigpoint.cityrama.view.departmentBook.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.BlueBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class EmergencyDepartmentDeactivationTab extends Group
   {
      
      public static const STATE_DEACTIVATED:String = "STATE_DEACTIVATED";
      
      public static const STATE_ACTIVE:String = "STATE_ACTIVE";
      
      public static const STATE_ACTIVE_EMERGENCY_RUNNING:String = "STATE_ACTIVE_EMERGENCY_RUNNING";
      
      public static const EVENT_DEACTIVATE_EMERGENCIES:String = "EVENT_DEACTIVATE_EMERGENCIES";
      
      private var _1682553352bottomText:LocaLabel;
      
      private var _1256794519deactivationButton:MultistateButton;
      
      private var _1166031975headerLabel:LocaLabel;
      
      private var _1139881950topText:LocaLabel;
      
      private var _481019159warningText:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:String;
      
      private var _isDirty:Boolean;
      
      public function EmergencyDepartmentDeactivationTab()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mxmlContent = [this._EmergencyDepartmentDeactivationTab_BlueBarComponent1_c(),this._EmergencyDepartmentDeactivationTab_BriskImageDynaLib1_c(),this._EmergencyDepartmentDeactivationTab_HGroup1_c(),this._EmergencyDepartmentDeactivationTab_VGroup1_c(),this._EmergencyDepartmentDeactivationTab_BriskImageDynaLib2_c()];
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
         if(Boolean(this._data) && this._isDirty)
         {
            this._isDirty = false;
            this.deactivationButton.label = LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.deactivation.button.capital");
            this.deactivationButton.toolTip = LocaUtils.getString("rcl.tooltips.departmentBook","rcl.tooltips.departmentBook.deactivation.button");
            this.deactivationButton.enabled = false;
            var _temp_2:* = this.warningText;
            this.warningText.visible = false;
            _temp_2.includeInLayout = false;
            var _loc1_:* = this._data;
            switch(false)
            {
               case STATE_ACTIVE:
                  this.headerLabel.text = LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.deactivation.header.active.capital");
                  this.topText.text = LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.deactivation.explanationText.top.active");
                  this.bottomText.text = LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.deactivation.explanationText.bottom.active");
                  this.deactivationButton.enabled = true;
                  break;
               case STATE_ACTIVE_EMERGENCY_RUNNING:
                  this.headerLabel.text = LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.deactivation.header.active.capital");
                  this.topText.text = LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.deactivation.explanationText.top.active");
                  this.bottomText.text = LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.deactivation.explanationText.bottom.active");
                  this.warningText.text = LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.deactivation.blockedText");
                  var _temp_3:* = this.warningText;
                  this.warningText.visible = _loc1_ = true;
                  _temp_3.includeInLayout = false;
                  break;
               case STATE_DEACTIVATED:
                  this.headerLabel.text = LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.deactivation.header.inactive.capital");
                  this.topText.text = LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.deactivation.explanationText.top.inactive");
                  this.bottomText.text = LocaUtils.getString("rcl.booklayer.departmentBook","rcl.booklayer.departmentBook.deactivation.explanationText.bottom.inactive");
            }
         }
      }
      
      public function set data(param1:String) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._isDirty = true;
            invalidateProperties();
         }
      }
      
      private function handleDeactivationClick() : void
      {
         this.deactivationButton.enabled = false;
         dispatchEvent(new Event(EVENT_DEACTIVATE_EMERGENCIES,true,true));
      }
      
      private function _EmergencyDepartmentDeactivationTab_BlueBarComponent1_c() : BlueBarComponent
      {
         var _loc1_:BlueBarComponent = new BlueBarComponent();
         _loc1_.percentWidth = 100;
         _loc1_.height = 38;
         _loc1_.horizontalCenter = 0;
         _loc1_.left = 20;
         _loc1_.right = 20;
         _loc1_.top = 5;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyDepartmentDeactivationTab_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "infolayer_icon_attention";
         _loc1_.left = 16;
         _loc1_.top = -10;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyDepartmentDeactivationTab_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.height = 38;
         _loc1_.top = 5;
         _loc1_.left = 54;
         _loc1_.right = 220;
         _loc1_.mxmlContent = [this._EmergencyDepartmentDeactivationTab_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyDepartmentDeactivationTab_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "StatusBarStyleright";
         _loc1_.percentWidth = 100;
         _loc1_.maxDisplayedLines = 1;
         _loc1_.id = "headerLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.headerLabel = _loc1_;
         BindingManager.executeBindings(this,"headerLabel",this.headerLabel);
         return _loc1_;
      }
      
      private function _EmergencyDepartmentDeactivationTab_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.top = 54;
         _loc1_.left = 24;
         _loc1_.right = 230;
         _loc1_.height = 280;
         _loc1_.percentWidth = 100;
         _loc1_.gap = 0;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._EmergencyDepartmentDeactivationTab_HGroup2_c(),this._EmergencyDepartmentDeactivationTab_HGroup3_c(),this._EmergencyDepartmentDeactivationTab_Group2_c(),this._EmergencyDepartmentDeactivationTab_MultistateButton1_i(),this._EmergencyDepartmentDeactivationTab_Group3_c(),this._EmergencyDepartmentDeactivationTab_HGroup4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyDepartmentDeactivationTab_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.height = 90;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._EmergencyDepartmentDeactivationTab_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyDepartmentDeactivationTab_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "twelveDarkCenter";
         _loc1_.percentWidth = 90;
         _loc1_.id = "topText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.topText = _loc1_;
         BindingManager.executeBindings(this,"topText",this.topText);
         return _loc1_;
      }
      
      private function _EmergencyDepartmentDeactivationTab_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.height = 90;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._EmergencyDepartmentDeactivationTab_LocaLabel3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyDepartmentDeactivationTab_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "twelveBlueCenter";
         _loc1_.percentWidth = 90;
         _loc1_.id = "bottomText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bottomText = _loc1_;
         BindingManager.executeBindings(this,"bottomText",this.bottomText);
         return _loc1_;
      }
      
      private function _EmergencyDepartmentDeactivationTab_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 5;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyDepartmentDeactivationTab_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 200;
         _loc1_.enabled = false;
         _loc1_.addEventListener("click",this.__deactivationButton_click);
         _loc1_.id = "deactivationButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.deactivationButton = _loc1_;
         BindingManager.executeBindings(this,"deactivationButton",this.deactivationButton);
         return _loc1_;
      }
      
      public function __deactivationButton_click(param1:MouseEvent) : void
      {
         this.handleDeactivationClick();
      }
      
      private function _EmergencyDepartmentDeactivationTab_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 5;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyDepartmentDeactivationTab_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.height = 50;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._EmergencyDepartmentDeactivationTab_LocaLabel4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyDepartmentDeactivationTab_LocaLabel4_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "twelveRedCenter";
         _loc1_.percentWidth = 100;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "warningText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.warningText = _loc1_;
         BindingManager.executeBindings(this,"warningText",this.warningText);
         return _loc1_;
      }
      
      private function _EmergencyDepartmentDeactivationTab_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "char_emergencyOff";
         _loc1_.right = 30;
         _loc1_.top = -10;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get bottomText() : LocaLabel
      {
         return this._1682553352bottomText;
      }
      
      public function set bottomText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1682553352bottomText;
         if(_loc2_ !== param1)
         {
            this._1682553352bottomText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get deactivationButton() : MultistateButton
      {
         return this._1256794519deactivationButton;
      }
      
      public function set deactivationButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1256794519deactivationButton;
         if(_loc2_ !== param1)
         {
            this._1256794519deactivationButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"deactivationButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get headerLabel() : LocaLabel
      {
         return this._1166031975headerLabel;
      }
      
      public function set headerLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1166031975headerLabel;
         if(_loc2_ !== param1)
         {
            this._1166031975headerLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get topText() : LocaLabel
      {
         return this._1139881950topText;
      }
      
      public function set topText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1139881950topText;
         if(_loc2_ !== param1)
         {
            this._1139881950topText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get warningText() : LocaLabel
      {
         return this._481019159warningText;
      }
      
      public function set warningText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._481019159warningText;
         if(_loc2_ !== param1)
         {
            this._481019159warningText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"warningText",_loc2_,param1));
            }
         }
      }
   }
}

