package net.bigpoint.cityrama.view.emergencyBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyAssignListVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalListInfoVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.HeaderComponent;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.VGroup;
   
   public class SpecialistDetailsListComponent extends Group
   {
      
      private var _1788676624dataGrid:EmergencyDataGridComponent;
      
      private var _1221270899header:HeaderComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var arrColl:ArrayCollection;
      
      private var _data:EmergencyAssignListVo;
      
      private var _dataIsDirty:Boolean = false;
      
      public function SpecialistDetailsListComponent()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._SpecialistDetailsListComponent_VGroup1_c(),this._SpecialistDetailsListComponent_BriskImageDynaLib1_c(),this._SpecialistDetailsListComponent_BriskImageDynaLib2_c(),this._SpecialistDetailsListComponent_BriskImageDynaLib3_c()];
         this.addEventListener("creationComplete",this.___SpecialistDetailsListComponent_Group1_creationComplete);
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
      
      public function set data(param1:EmergencyAssignListVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._dataIsDirty = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:int = 0;
         var _loc2_:ArrayCollection = null;
         var _loc3_:ProfessionalListInfoVo = null;
         super.commitProperties();
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            _loc1_ = -1;
            _loc2_ = new ArrayCollection();
            for each(_loc3_ in this._data.professionalList)
            {
               _loc3_.requiredDepartment = this._data.requiredSlotDepartment;
               _loc3_.requiredSpecialisationRank = this._data.requiredSlotSpecialisationRank;
               _loc3_.requiredSpecialisationId = this._data.requiredSlotSpecialisationId;
               if(_loc1_ < 0 && _loc3_.operationsLeft > 0)
               {
                  _loc1_ = int(_loc2_.source.length);
               }
               _loc2_.addItem(_loc3_);
            }
            this.dataGrid.dataProvider = _loc2_;
            this.dataGrid.preselectedIndex = _loc1_;
         }
      }
      
      private function handleCreationComplete() : void
      {
         this.header.label = ResourceManager.getInstance().getString("rcl.emergencybook.layer" + "","rcl.emergencybook.layer.specialistDetails" + "");
         this.header.labelDisplay.styleName = "StatusBarStyleright";
      }
      
      public function get data() : EmergencyAssignListVo
      {
         return this._data;
      }
      
      private function _SpecialistDetailsListComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._SpecialistDetailsListComponent_HeaderComponent1_i(),this._SpecialistDetailsListComponent_EmergencyDataGridComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SpecialistDetailsListComponent_HeaderComponent1_i() : HeaderComponent
      {
         var _loc1_:HeaderComponent = new HeaderComponent();
         _loc1_.percentWidth = 100;
         _loc1_.label = "";
         _loc1_.height = 31;
         _loc1_.id = "header";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.header = _loc1_;
         BindingManager.executeBindings(this,"header",this.header);
         return _loc1_;
      }
      
      private function _SpecialistDetailsListComponent_EmergencyDataGridComponent1_i() : EmergencyDataGridComponent
      {
         var _loc1_:EmergencyDataGridComponent = new EmergencyDataGridComponent();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.itemRenderer = this._SpecialistDetailsListComponent_ClassFactory1_c();
         _loc1_.id = "dataGrid";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.dataGrid = _loc1_;
         BindingManager.executeBindings(this,"dataGrid",this.dataGrid);
         return _loc1_;
      }
      
      private function _SpecialistDetailsListComponent_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = DataGridItemRenderer;
         return _loc1_;
      }
      
      private function _SpecialistDetailsListComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_residentialPopup";
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 70;
         _loc1_.width = 420;
         _loc1_.dynaBmpSourceName = "head_line_long";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SpecialistDetailsListComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "good_divider";
         _loc1_.height = 158;
         _loc1_.left = 110;
         _loc1_.top = 43;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _SpecialistDetailsListComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "good_divider";
         _loc1_.height = 158;
         _loc1_.left = 285;
         _loc1_.top = 43;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___SpecialistDetailsListComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete();
      }
      
      [Bindable(event="propertyChange")]
      public function get dataGrid() : EmergencyDataGridComponent
      {
         return this._1788676624dataGrid;
      }
      
      public function set dataGrid(param1:EmergencyDataGridComponent) : void
      {
         var _loc2_:Object = this._1788676624dataGrid;
         if(_loc2_ !== param1)
         {
            this._1788676624dataGrid = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGrid",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get header() : HeaderComponent
      {
         return this._1221270899header;
      }
      
      public function set header(param1:HeaderComponent) : void
      {
         var _loc2_:Object = this._1221270899header;
         if(_loc2_ !== param1)
         {
            this._1221270899header = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"header",_loc2_,param1));
            }
         }
      }
   }
}

