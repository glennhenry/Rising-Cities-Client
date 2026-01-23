package net.bigpoint.cityrama.view.departmentBook.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.DepartmentSecurityBarComponent;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.SecurityBarPartComponent;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.SecurityGradeComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.skins.SparkSkin;
   
   public class DepartmentSecurityBarSkin extends SparkSkin implements IStateClient2
   {
      
      private var _453556521departmentImage:BriskImageDynaLib;
      
      private var _1184053038labelDisplay:LocaLabel;
      
      private var _1724029514partComponent:SecurityBarPartComponent;
      
      private var _1043845478securityGrade1:SecurityGradeComponent;
      
      private var _1043845477securityGrade2:SecurityGradeComponent;
      
      private var _1043845476securityGrade3:SecurityGradeComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:DepartmentSecurityBarComponent;
      
      public function DepartmentSecurityBarSkin()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._DepartmentSecurityBarSkin_StickyNoteComponent1_c(),this._DepartmentSecurityBarSkin_Group1_c(),this._DepartmentSecurityBarSkin_Group3_c(),this._DepartmentSecurityBarSkin_Group4_c()];
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
      
      private function _DepartmentSecurityBarSkin_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.tapeRight = true;
         _loc1_.tapeLeft = true;
         _loc1_.styleName = "blue";
         _loc1_.width = 526;
         _loc1_.height = 80;
         _loc1_.bottom = -6;
         _loc1_.right = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentSecurityBarSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.right = 34;
         _loc1_.left = 10;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._DepartmentSecurityBarSkin_Group2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentSecurityBarSkin_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.bottom = 4;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._DepartmentSecurityBarSkin_HGroup1_c(),this._DepartmentSecurityBarSkin_LocaLabel1_i(),this._DepartmentSecurityBarSkin_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentSecurityBarSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.left = 10;
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._DepartmentSecurityBarSkin_BriskImageDynaLib1_c(),this._DepartmentSecurityBarSkin_BriskImageDynaLib2_c(),this._DepartmentSecurityBarSkin_BriskImageDynaLib3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentSecurityBarSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "bluemarker_small_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentSecurityBarSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "bluemarker_small_middle";
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentSecurityBarSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "bluemarker_small_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentSecurityBarSkin_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.verticalCenter = 0;
         _loc1_.left = 16;
         _loc1_.styleName = "departmentSecurityLabel";
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
      
      private function _DepartmentSecurityBarSkin_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.right = 0;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._DepartmentSecurityBarSkin_SecurityGradeComponent1_i(),this._DepartmentSecurityBarSkin_SecurityGradeComponent2_i(),this._DepartmentSecurityBarSkin_SecurityGradeComponent3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentSecurityBarSkin_SecurityGradeComponent1_i() : SecurityGradeComponent
      {
         var _loc1_:SecurityGradeComponent = new SecurityGradeComponent();
         _loc1_.styleName = "departmentSecurity";
         _loc1_.id = "securityGrade1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.securityGrade1 = _loc1_;
         BindingManager.executeBindings(this,"securityGrade1",this.securityGrade1);
         return _loc1_;
      }
      
      private function _DepartmentSecurityBarSkin_SecurityGradeComponent2_i() : SecurityGradeComponent
      {
         var _loc1_:SecurityGradeComponent = new SecurityGradeComponent();
         _loc1_.styleName = "departmentSecurity";
         _loc1_.id = "securityGrade2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.securityGrade2 = _loc1_;
         BindingManager.executeBindings(this,"securityGrade2",this.securityGrade2);
         return _loc1_;
      }
      
      private function _DepartmentSecurityBarSkin_SecurityGradeComponent3_i() : SecurityGradeComponent
      {
         var _loc1_:SecurityGradeComponent = new SecurityGradeComponent();
         _loc1_.styleName = "departmentSecurity";
         _loc1_.id = "securityGrade3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.securityGrade3 = _loc1_;
         BindingManager.executeBindings(this,"securityGrade3",this.securityGrade3);
         return _loc1_;
      }
      
      private function _DepartmentSecurityBarSkin_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentHeight = 100;
         _loc1_.left = 10;
         _loc1_.mxmlContent = [this._DepartmentSecurityBarSkin_BriskImageDynaLib4_c(),this._DepartmentSecurityBarSkin_BriskImageDynaLib5_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentSecurityBarSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "batchbase_green";
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 15;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentSecurityBarSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "small_badges";
         _loc1_.dynaSWFFileName = "gui_ui_emergencyDepartmentsIcons";
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 2;
         _loc1_.id = "departmentImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.departmentImage = _loc1_;
         BindingManager.executeBindings(this,"departmentImage",this.departmentImage);
         return _loc1_;
      }
      
      private function _DepartmentSecurityBarSkin_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 12;
         _loc1_.left = 70;
         _loc1_.right = 30;
         _loc1_.mxmlContent = [this._DepartmentSecurityBarSkin_SecurityBarPartComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentSecurityBarSkin_SecurityBarPartComponent1_i() : SecurityBarPartComponent
      {
         var _loc1_:SecurityBarPartComponent = new SecurityBarPartComponent();
         _loc1_.percentWidth = 100;
         _loc1_.id = "partComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.partComponent = _loc1_;
         BindingManager.executeBindings(this,"partComponent",this.partComponent);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get departmentImage() : BriskImageDynaLib
      {
         return this._453556521departmentImage;
      }
      
      public function set departmentImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._453556521departmentImage;
         if(_loc2_ !== param1)
         {
            this._453556521departmentImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"departmentImage",_loc2_,param1));
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
      
      [Bindable(event="propertyChange")]
      public function get partComponent() : SecurityBarPartComponent
      {
         return this._1724029514partComponent;
      }
      
      public function set partComponent(param1:SecurityBarPartComponent) : void
      {
         var _loc2_:Object = this._1724029514partComponent;
         if(_loc2_ !== param1)
         {
            this._1724029514partComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"partComponent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get securityGrade1() : SecurityGradeComponent
      {
         return this._1043845478securityGrade1;
      }
      
      public function set securityGrade1(param1:SecurityGradeComponent) : void
      {
         var _loc2_:Object = this._1043845478securityGrade1;
         if(_loc2_ !== param1)
         {
            this._1043845478securityGrade1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"securityGrade1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get securityGrade2() : SecurityGradeComponent
      {
         return this._1043845477securityGrade2;
      }
      
      public function set securityGrade2(param1:SecurityGradeComponent) : void
      {
         var _loc2_:Object = this._1043845477securityGrade2;
         if(_loc2_ !== param1)
         {
            this._1043845477securityGrade2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"securityGrade2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get securityGrade3() : SecurityGradeComponent
      {
         return this._1043845476securityGrade3;
      }
      
      public function set securityGrade3(param1:SecurityGradeComponent) : void
      {
         var _loc2_:Object = this._1043845476securityGrade3;
         if(_loc2_ !== param1)
         {
            this._1043845476securityGrade3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"securityGrade3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : DepartmentSecurityBarComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:DepartmentSecurityBarComponent) : void
      {
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc2_ !== param1)
         {
            this._213507019hostComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
            }
         }
      }
   }
}

