package net.bigpoint.cityrama.view.fieldInfoLayer.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.HGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class DepartmentListItemRenderer extends ItemRenderer
   {
      
      private var _93494179badge:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _isDirty:Boolean;
      
      private var _department:String;
      
      public function DepartmentListItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 30;
         this.mxmlContent = [this._DepartmentListItemRenderer_HGroup1_c()];
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
         if(param1 is String)
         {
            if(!RandomUtilities.isEqual(param1,this._department))
            {
               this._isDirty = true;
               this._department = param1 as String;
               invalidateProperties();
            }
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(Boolean(this._department) && this._isDirty)
         {
            this._isDirty = false;
            this.badge.dynaLibName = "gui_infield_gui_infolayer";
            if(this._department == ServerTagConstants.FIRE_DEPARTMENT)
            {
               this.badge.dynaBmpSourceName = "badge_fire";
            }
            else if(this._department == ServerTagConstants.POLICE_DEPARTMENT)
            {
               this.badge.dynaBmpSourceName = "badge_police";
            }
            else if(this._department == ServerTagConstants.HOSPITAL)
            {
               this.badge.dynaBmpSourceName = "badge_hospital";
            }
         }
      }
      
      private function _DepartmentListItemRenderer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = null;
         _loc1_ = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.width = 30;
         _loc1_.mxmlContent = [this._DepartmentListItemRenderer_BriskImageDynaLib1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DepartmentListItemRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "batch_mini_fire";
         _loc1_.id = "badge";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.badge = _loc1_;
         BindingManager.executeBindings(this,"badge",this.badge);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get badge() : BriskImageDynaLib
      {
         return this._93494179badge;
      }
      
      public function set badge(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._93494179badge;
         if(_loc2_ !== param1)
         {
            this._93494179badge = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"badge",_loc2_,param1));
            }
         }
      }
   }
}

