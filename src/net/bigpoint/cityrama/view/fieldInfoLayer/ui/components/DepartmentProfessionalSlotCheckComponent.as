package net.bigpoint.cityrama.view.fieldInfoLayer.ui.components
{
   import com.greensock.TweenMax;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.vo.DepartmentProfessionalComponentVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.VGroup;
   
   public class DepartmentProfessionalSlotCheckComponent extends Group
   {
      
      private var _3141bg:BriskImageDynaLib;
      
      private var _94627080check:BriskImageDynaLib;
      
      private var _3226745icon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _isDirty:Boolean;
      
      private var _data:DepartmentProfessionalComponentVo;
      
      public function DepartmentProfessionalSlotCheckComponent()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._DepartmentProfessionalSlotCheckComponent_Group2_c()];
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
      
      public function set data(param1:DepartmentProfessionalComponentVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._isDirty = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(Boolean(this._data) && this._isDirty)
         {
            this._isDirty = false;
            this.icon.dynaSWFFileName = this._data.professionalSWFName;
            this.icon.dynaLibName = this._data.professionalLibName;
            this.icon.dynaBmpSourceName = this._data.professionalBmpName;
            this.bg.dynaLibName = "gui_popups_optionsPopup";
            this.check.dynaLibName = "gui_infield_gui_infolayer";
            if(this._data.positionOccupied)
            {
               this.bg.dynaBmpSourceName = "options_bg_on";
               this.check.dynaBmpSourceName = "checkmark_green_small";
            }
            else
            {
               this.bg.dynaBmpSourceName = "options_bg_off";
               this.check.dynaBmpSourceName = "checkmark_grey_small";
               TweenMax.to(this.icon,0,{
                  "colorMatrixFilter":{"saturation":0},
                  "colorTransform":{
                     "tint":15263976,
                     "tintAmount":0.74
                  }
               });
            }
         }
      }
      
      private function _DepartmentProfessionalSlotCheckComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._DepartmentProfessionalSlotCheckComponent_BriskImageDynaLib1_c(),this._DepartmentProfessionalSlotCheckComponent_VGroup1_c(),this._DepartmentProfessionalSlotCheckComponent_VGroup2_c(),this._DepartmentProfessionalSlotCheckComponent_BriskImageDynaLib4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentProfessionalSlotCheckComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "options_frame";
         _loc1_.dynaLibName = "gui_popups_optionsPopup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentProfessionalSlotCheckComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 39;
         _loc1_.height = 37;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._DepartmentProfessionalSlotCheckComponent_BriskImageDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentProfessionalSlotCheckComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "options_bg_on";
         _loc1_.dynaLibName = "gui_popups_optionsPopup";
         _loc1_.id = "bg";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bg = _loc1_;
         BindingManager.executeBindings(this,"bg",this.bg);
         return _loc1_;
      }
      
      private function _DepartmentProfessionalSlotCheckComponent_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 39;
         _loc1_.height = 37;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._DepartmentProfessionalSlotCheckComponent_BriskImageDynaLib3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentProfessionalSlotCheckComponent_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "icon_badges";
         _loc1_.dynaSWFFileName = "gui_ui_emergencyDepartmentsIcons";
         _loc1_.id = "icon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.icon = _loc1_;
         BindingManager.executeBindings(this,"icon",this.icon);
         return _loc1_;
      }
      
      private function _DepartmentProfessionalSlotCheckComponent_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "checkmark_green_small";
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.right = -10;
         _loc1_.top = -3;
         _loc1_.id = "check";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.check = _loc1_;
         BindingManager.executeBindings(this,"check",this.check);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get bg() : BriskImageDynaLib
      {
         return this._3141bg;
      }
      
      public function set bg(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._3141bg;
         if(_loc2_ !== param1)
         {
            this._3141bg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get check() : BriskImageDynaLib
      {
         return this._94627080check;
      }
      
      public function set check(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._94627080check;
         if(_loc2_ !== param1)
         {
            this._94627080check = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"check",_loc2_,param1));
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

