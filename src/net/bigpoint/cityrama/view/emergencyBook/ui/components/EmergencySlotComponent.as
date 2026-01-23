package net.bigpoint.cityrama.view.emergencyBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.EmergencyAssignVo;
   import net.bigpoint.cityrama.model.emergencyLayer.vo.ProfessionalSlotVo;
   import net.bigpoint.cityrama.view.common.components.HeaderComponent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.emergencyBook.ui.skins.EmergencySlotListSkin;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class EmergencySlotComponent extends VGroup
   {
      
      private var _1449269008headerComponent:HeaderComponent;
      
      private var _1872820157requiredSpecialists:LocaLabel;
      
      private var _1711535228specialistSlots:List;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:EmergencyAssignVo;
      
      private var _dataIsDirty:Boolean = false;
      
      public function EmergencySlotComponent()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.gap = 2;
         this.verticalAlign = "top";
         this.horizontalAlign = "center";
         this.mxmlContent = [this._EmergencySlotComponent_HeaderComponent1_i(),this._EmergencySlotComponent_LocaLabel1_i(),this._EmergencySlotComponent_List1_i()];
         this.addEventListener("creationComplete",this.___EmergencySlotComponent_VGroup1_creationComplete);
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
      
      public function set data(param1:EmergencyAssignVo) : void
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
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:ProfessionalSlotVo = null;
         super.commitProperties();
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            _loc1_ = new ArrayCollection();
            _loc2_ = int(this._data.professionalSlots.length);
            _loc3_ = 0;
            for each(_loc4_ in this._data.professionalSlots)
            {
               _loc1_.addItem(_loc4_);
               if(!_loc4_.empty)
               {
                  _loc3_++;
               }
            }
            this.specialistSlots.dataProvider = _loc1_;
            this.requiredSpecialists.text = ResourceManager.getInstance().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.specialistSelectionRequired")).replace("{0}",_loc3_).replace("{1}",_loc2_);
         }
      }
      
      private function handleCreationComplete() : void
      {
         this.headerComponent.label = ResourceManager.getInstance().getString(String("rcl.emergencybook.layer"),String("rcl.emergencybook.layer.specialistSelection"));
         this.headerComponent.labelDisplay.styleName = "StatusBarStyleright";
      }
      
      private function _EmergencySlotComponent_HeaderComponent1_i() : HeaderComponent
      {
         var _loc1_:HeaderComponent = new HeaderComponent();
         _loc1_.percentWidth = 100;
         _loc1_.id = "headerComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.headerComponent = _loc1_;
         BindingManager.executeBindings(this,"headerComponent",this.headerComponent);
         return _loc1_;
      }
      
      private function _EmergencySlotComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "specialistRequirements";
         _loc1_.id = "requiredSpecialists";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.requiredSpecialists = _loc1_;
         BindingManager.executeBindings(this,"requiredSpecialists",this.requiredSpecialists);
         return _loc1_;
      }
      
      private function _EmergencySlotComponent_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.itemRenderer = this._EmergencySlotComponent_ClassFactory1_c();
         _loc1_.setStyle("skinClass",EmergencySlotListSkin);
         _loc1_.id = "specialistSlots";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.specialistSlots = _loc1_;
         BindingManager.executeBindings(this,"specialistSlots",this.specialistSlots);
         return _loc1_;
      }
      
      private function _EmergencySlotComponent_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = SpecialistSlotItemrenderer;
         return _loc1_;
      }
      
      public function ___EmergencySlotComponent_VGroup1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete();
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
      public function get requiredSpecialists() : LocaLabel
      {
         return this._1872820157requiredSpecialists;
      }
      
      public function set requiredSpecialists(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1872820157requiredSpecialists;
         if(_loc2_ !== param1)
         {
            this._1872820157requiredSpecialists = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"requiredSpecialists",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get specialistSlots() : List
      {
         return this._1711535228specialistSlots;
      }
      
      public function set specialistSlots(param1:List) : void
      {
         var _loc2_:Object = this._1711535228specialistSlots;
         if(_loc2_ !== param1)
         {
            this._1711535228specialistSlots = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"specialistSlots",_loc2_,param1));
            }
         }
      }
   }
}

