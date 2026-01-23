package net.bigpoint.cityrama.view.emergencyBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.GradeVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.SeparatorItemRenderer;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public class DepartmentTaskItemRenderer extends SeparatorItemRenderer
   {
      
      private var _1836954358baseImage:BriskImageDynaLib;
      
      private var _133200872checkMarkBackgroundImage:BriskImageDynaLib;
      
      private var _880103014checkMarkImage:BriskImageDynaLib;
      
      private var _453556521departmentImage:BriskImageDynaLib;
      
      private var _1732829925separator:BriskImageDynaLib;
      
      private var _909318622statusLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _dataIsDirty:Boolean = false;
      
      private var _data:GradeVo;
      
      public function DepartmentTaskItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 450;
         this.height = 48;
         this.autoDrawBackground = false;
         this.mxmlContent = [this._DepartmentTaskItemRenderer_Group1_c(),this._DepartmentTaskItemRenderer_BriskImageDynaLib6_i()];
         this.addEventListener("creationComplete",this.___DepartmentTaskItemRenderer_SeparatorItemRenderer1_creationComplete);
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
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
         invalidateProperties();
         this.separator.visible = true;
         this.separator.includeInLayout = true;
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         if(!RandomUtilities.isEqual(this._data,param1))
         {
            this._dataIsDirty = true;
            this._data = param1 as GradeVo;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:* = false;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         super.commitProperties();
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            _loc1_ = this._data.currentGrade >= this._data.requiredGrade;
            this.baseImage.dynaBmpSourceName = _loc1_ ? "batchbase_green" : "batchbase_red";
            this.statusLabel.styleName = _loc1_ ? "emergencyDepartmentBoxAcitveLabel" : "emergencyDepartmentBoxDeacitveLabel";
            this.checkMarkImage.dynaBmpSourceName = _loc1_ ? "checkmark_green" : "checkmark_gray";
            this.checkMarkBackgroundImage.dynaBmpSourceName = _loc1_ ? "options_bg_on" : "options_bg_off";
            this.departmentImage.dynaBmpSourceName = this._data.gfxID.toString();
            _loc2_ = ResourceManager.getInstance().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.grade." + this._data.requiredGrade));
            _loc3_ = ResourceManager.getInstance().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.grade." + this._data.currentGrade));
            _loc4_ = ResourceManager.getInstance().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.department." + this._data.locaID));
            _loc5_ = ResourceManager.getInstance().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.status"));
            _loc5_ = _loc5_.replace("{0}",_loc4_).replace("{1}",_loc2_).replace("{2}",_loc3_);
            this.statusLabel.text = _loc5_;
         }
      }
      
      private function _DepartmentTaskItemRenderer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._DepartmentTaskItemRenderer_HGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentTaskItemRenderer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "left";
         _loc1_.paddingRight = 5;
         _loc1_.mxmlContent = [this._DepartmentTaskItemRenderer_Group2_c(),this._DepartmentTaskItemRenderer_LocaLabel1_i(),this._DepartmentTaskItemRenderer_Group3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentTaskItemRenderer_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._DepartmentTaskItemRenderer_BriskImageDynaLib1_i(),this._DepartmentTaskItemRenderer_BriskImageDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentTaskItemRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "batchbase_red";
         _loc1_.horizontalCenter = 0;
         _loc1_.bottom = 0;
         _loc1_.id = "baseImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.baseImage = _loc1_;
         BindingManager.executeBindings(this,"baseImage",this.baseImage);
         return _loc1_;
      }
      
      private function _DepartmentTaskItemRenderer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaSWFFileName = "gui_ui_emergencyDepartmentsIcons";
         _loc1_.dynaLibName = "small_badges";
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = -4;
         _loc1_.id = "departmentImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.departmentImage = _loc1_;
         BindingManager.executeBindings(this,"departmentImage",this.departmentImage);
         return _loc1_;
      }
      
      private function _DepartmentTaskItemRenderer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "emergencyDepartmentBoxLabel";
         _loc1_.percentWidth = 100;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.id = "statusLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.statusLabel = _loc1_;
         BindingManager.executeBindings(this,"statusLabel",this.statusLabel);
         return _loc1_;
      }
      
      private function _DepartmentTaskItemRenderer_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._DepartmentTaskItemRenderer_BriskImageDynaLib3_c(),this._DepartmentTaskItemRenderer_BriskImageDynaLib4_i(),this._DepartmentTaskItemRenderer_BriskImageDynaLib5_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentTaskItemRenderer_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_optionsPopup";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaBmpSourceName = "options_frame";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentTaskItemRenderer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_optionsPopup";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaBmpSourceName = "options_bg_off";
         _loc1_.id = "checkMarkBackgroundImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.checkMarkBackgroundImage = _loc1_;
         BindingManager.executeBindings(this,"checkMarkBackgroundImage",this.checkMarkBackgroundImage);
         return _loc1_;
      }
      
      private function _DepartmentTaskItemRenderer_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "checkmark_gray";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "checkMarkImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.checkMarkImage = _loc1_;
         BindingManager.executeBindings(this,"checkMarkImage",this.checkMarkImage);
         return _loc1_;
      }
      
      private function _DepartmentTaskItemRenderer_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_taskline";
         _loc1_.width = 450;
         _loc1_.bottom = 3;
         _loc1_.id = "separator";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.separator = _loc1_;
         BindingManager.executeBindings(this,"separator",this.separator);
         return _loc1_;
      }
      
      public function ___DepartmentTaskItemRenderer_SeparatorItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get baseImage() : BriskImageDynaLib
      {
         return this._1836954358baseImage;
      }
      
      public function set baseImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1836954358baseImage;
         if(_loc2_ !== param1)
         {
            this._1836954358baseImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"baseImage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get checkMarkBackgroundImage() : BriskImageDynaLib
      {
         return this._133200872checkMarkBackgroundImage;
      }
      
      public function set checkMarkBackgroundImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._133200872checkMarkBackgroundImage;
         if(_loc2_ !== param1)
         {
            this._133200872checkMarkBackgroundImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"checkMarkBackgroundImage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get checkMarkImage() : BriskImageDynaLib
      {
         return this._880103014checkMarkImage;
      }
      
      public function set checkMarkImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._880103014checkMarkImage;
         if(_loc2_ !== param1)
         {
            this._880103014checkMarkImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"checkMarkImage",_loc2_,param1));
            }
         }
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
      public function get separator() : BriskImageDynaLib
      {
         return this._1732829925separator;
      }
      
      public function set separator(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1732829925separator;
         if(_loc2_ !== param1)
         {
            this._1732829925separator = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"separator",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get statusLabel() : LocaLabel
      {
         return this._909318622statusLabel;
      }
      
      public function set statusLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._909318622statusLabel;
         if(_loc2_ !== param1)
         {
            this._909318622statusLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"statusLabel",_loc2_,param1));
            }
         }
      }
   }
}

