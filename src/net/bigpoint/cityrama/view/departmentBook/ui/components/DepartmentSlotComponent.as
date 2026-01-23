package net.bigpoint.cityrama.view.departmentBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.departmentBook.vo.DepartmentProfessionalListVo;
   import net.bigpoint.cityrama.model.departmentBook.vo.ProfessionalDepartmentSlotVo;
   import net.bigpoint.cityrama.view.common.components.HeaderComponent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.emergencyBook.ui.skins.SpecialistSlotListSkin;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class DepartmentSlotComponent extends VGroup
   {
      
      private var _1449269008headerComponent:HeaderComponent;
      
      private var _317481311professionalAmount:LocaLabel;
      
      private var _1795991707professionalList:List;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:DepartmentProfessionalListVo;
      
      private var _dataIsDirty:Boolean = false;
      
      public function DepartmentSlotComponent()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.verticalAlign = "top";
         this.horizontalAlign = "center";
         this.mxmlContent = [this._DepartmentSlotComponent_HeaderComponent1_i(),this._DepartmentSlotComponent_LocaLabel1_i(),this._DepartmentSlotComponent_List1_i()];
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
      
      public function set data(param1:DepartmentProfessionalListVo) : void
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
         var _loc1_:ArrayCollection = null;
         var _loc2_:ProfessionalDepartmentSlotVo = null;
         super.commitProperties();
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            _loc1_ = new ArrayCollection();
            for each(_loc2_ in this._data.professionalSlots)
            {
               _loc1_.addItem(_loc2_);
            }
            this.professionalList.dataProvider = _loc1_;
            this.professionalAmount.text = this._data.flavourText;
            this.headerComponent.label = this._data.headerText;
            this.headerComponent.icon = new BriskDynaVo(this._data.headerIconLib,this._data.headerIconImg);
         }
      }
      
      private function _DepartmentSlotComponent_HeaderComponent1_i() : HeaderComponent
      {
         var _loc1_:HeaderComponent = new HeaderComponent();
         _loc1_.percentWidth = 94;
         _loc1_.label = "";
         _loc1_.id = "headerComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.headerComponent = _loc1_;
         BindingManager.executeBindings(this,"headerComponent",this.headerComponent);
         return _loc1_;
      }
      
      private function _DepartmentSlotComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "professionalAmount";
         _loc1_.text = "";
         _loc1_.id = "professionalAmount";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.professionalAmount = _loc1_;
         BindingManager.executeBindings(this,"professionalAmount",this.professionalAmount);
         return _loc1_;
      }
      
      private function _DepartmentSlotComponent_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.itemRenderer = this._DepartmentSlotComponent_ClassFactory1_c();
         _loc1_.setStyle("skinClass",SpecialistSlotListSkin);
         _loc1_.id = "professionalList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.professionalList = _loc1_;
         BindingManager.executeBindings(this,"professionalList",this.professionalList);
         return _loc1_;
      }
      
      private function _DepartmentSlotComponent_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = DepartmentSlotItemrenderer;
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get headerComponent() : HeaderComponent
      {
         return this._1449269008headerComponent;
      }
      
      public function set headerComponent(param1:HeaderComponent) : void
      {
         var _loc2_:Object = this._1449269008headerComponent;
         if(_loc2_ !== param1)
         {
            this._1449269008headerComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerComponent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get professionalAmount() : LocaLabel
      {
         return this._317481311professionalAmount;
      }
      
      public function set professionalAmount(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._317481311professionalAmount;
         if(_loc2_ !== param1)
         {
            this._317481311professionalAmount = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"professionalAmount",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get professionalList() : List
      {
         return this._1795991707professionalList;
      }
      
      public function set professionalList(param1:List) : void
      {
         var _loc2_:Object = this._1795991707professionalList;
         if(_loc2_ !== param1)
         {
            this._1795991707professionalList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"professionalList",_loc2_,param1));
            }
         }
      }
   }
}

