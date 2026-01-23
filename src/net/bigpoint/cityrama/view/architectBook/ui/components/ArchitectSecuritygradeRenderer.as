package net.bigpoint.cityrama.view.architectBook.ui.components
{
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintSecuritygradeVO;
   import net.bigpoint.cityrama.model.infrastructure.vo.SecurityStatusVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.departmentBook.ui.components.SecurityGradeComponent;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class ArchitectSecuritygradeRenderer extends ItemRenderer implements IStateClient2
   {
      
      private var _453556521departmentImage:BriskImageDynaLib;
      
      private var _1043845478securityGrade1:SecurityGradeComponent;
      
      private var _1043845477securityGrade2:SecurityGradeComponent;
      
      private var _1043845476securityGrade3:SecurityGradeComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private const MAX_VALID_GRADES:int = 3;
      
      private var _data:BlueprintSecuritygradeVO;
      
      private var _dataIsDirty:Boolean;
      
      public function ArchitectSecuritygradeRenderer()
      {
         super();
         mx_internal::_document = this;
         this.autoDrawBackground = false;
         this.minWidth = 110;
         this.mxmlContent = [this._ArchitectSecuritygradeRenderer_VGroup1_c()];
         this.currentState = "normal";
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"hovered",
            "overrides":[]
         }),new State({
            "name":"selected",
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
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1 as BlueprintSecuritygradeVO;
            this._dataIsDirty = true;
            invalidateProperties();
         }
      }
      
      private function getGradeComponentByLevel(param1:int) : SecurityGradeComponent
      {
         if(this.hasOwnProperty("securityGrade" + param1))
         {
            return this["securityGrade" + param1] as SecurityGradeComponent;
         }
         return null;
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            var _temp_1:* = this.securityGrade1;
            this.securityGrade1.includeInLayout = false;
            _temp_1.visible = false;
            var _temp_2:* = this.securityGrade2;
            var _loc4_:Boolean;
            this.securityGrade2.includeInLayout = _loc4_ = false;
            _temp_2.visible = false;
            var _temp_3:* = this.securityGrade3;
            this.securityGrade3.includeInLayout = _loc4_ = false;
            _temp_3.visible = false;
            this.departmentImage.dynaLibName = this._data.departmentVisualLibName;
            this.departmentImage.dynaSWFFileName = this._data.departmentVisualSWFName;
            this.departmentImage.dynaBmpSourceName = this._data.departmentVisualSourceName;
            var _loc1_:int = 0;
            while(0 < this._data.gradeVoList.length)
            {
               var _loc3_:SecurityStatusVo = this._data.gradeVoList[0];
               var _loc2_:SecurityGradeComponent = this.getGradeComponentByLevel(null.level);
               _loc1_++;
            }
         }
      }
      
      private function _ArchitectSecuritygradeRenderer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.height = 130;
         _loc1_.top = 0;
         _loc1_.gap = 4;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._ArchitectSecuritygradeRenderer_BriskImageDynaLib1_i(),this._ArchitectSecuritygradeRenderer_Group1_c(),this._ArchitectSecuritygradeRenderer_SecurityGradeComponent1_i(),this._ArchitectSecuritygradeRenderer_SecurityGradeComponent2_i(),this._ArchitectSecuritygradeRenderer_SecurityGradeComponent3_i(),this._ArchitectSecuritygradeRenderer_Group2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ArchitectSecuritygradeRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.verticalCenter = 0;
         _loc1_.dynaLibName = "small_badges";
         _loc1_.dynaSWFFileName = "gui_ui_emergencyDepartmentsIcons";
         _loc1_.id = "departmentImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.departmentImage = _loc1_;
         BindingManager.executeBindings(this,"departmentImage",this.departmentImage);
         return _loc1_;
      }
      
      private function _ArchitectSecuritygradeRenderer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ArchitectSecuritygradeRenderer_SecurityGradeComponent1_i() : SecurityGradeComponent
      {
         var _loc1_:SecurityGradeComponent = new SecurityGradeComponent();
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "departmentArchitectSecurity";
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "securityGrade1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.securityGrade1 = _loc1_;
         BindingManager.executeBindings(this,"securityGrade1",this.securityGrade1);
         return _loc1_;
      }
      
      private function _ArchitectSecuritygradeRenderer_SecurityGradeComponent2_i() : SecurityGradeComponent
      {
         var _loc1_:SecurityGradeComponent = new SecurityGradeComponent();
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "departmentArchitectSecurity";
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "securityGrade2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.securityGrade2 = _loc1_;
         BindingManager.executeBindings(this,"securityGrade2",this.securityGrade2);
         return _loc1_;
      }
      
      private function _ArchitectSecuritygradeRenderer_SecurityGradeComponent3_i() : SecurityGradeComponent
      {
         var _loc1_:SecurityGradeComponent = new SecurityGradeComponent();
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "departmentArchitectSecurity";
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "securityGrade3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.securityGrade3 = _loc1_;
         BindingManager.executeBindings(this,"securityGrade3",this.securityGrade3);
         return _loc1_;
      }
      
      private function _ArchitectSecuritygradeRenderer_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
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
   }
}

