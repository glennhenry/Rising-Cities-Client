package net.bigpoint.cityrama.view.constructionLayer
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.construction.ConstructionLayerStepVo;
   import spark.components.supportClasses.ItemRenderer;
   
   public class ConstructionStepItemRenderer extends ItemRenderer
   {
      
      private var _2024730540detailComponent:ConstructionStepDetailComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ConstructionLayerStepVo;
      
      private var _dataDirty:Boolean;
      
      public function ConstructionStepItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.minHeight = 75;
         this.autoDrawBackground = false;
         this.mxmlContent = [this._ConstructionStepItemRenderer_ConstructionStepDetailComponent1_i()];
         this.addEventListener("creationComplete",this.___ConstructionStepItemRenderer_ItemRenderer1_creationComplete);
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
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         if(param1 is ConstructionLayerStepVo)
         {
            this._data = param1 as ConstructionLayerStepVo;
            this._dataDirty = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataDirty)
         {
            this._dataDirty = false;
            this.detailComponent.data = this._data;
         }
      }
      
      private function _ConstructionStepItemRenderer_ConstructionStepDetailComponent1_i() : ConstructionStepDetailComponent
      {
         var _loc1_:ConstructionStepDetailComponent = new ConstructionStepDetailComponent();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.top = 1;
         _loc1_.left = 2;
         _loc1_.right = 2;
         _loc1_.bottom = 1;
         _loc1_.id = "detailComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.detailComponent = _loc1_;
         BindingManager.executeBindings(this,"detailComponent",this.detailComponent);
         return _loc1_;
      }
      
      public function ___ConstructionStepItemRenderer_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get detailComponent() : ConstructionStepDetailComponent
      {
         return this._2024730540detailComponent;
      }
      
      public function set detailComponent(param1:ConstructionStepDetailComponent) : void
      {
         var _loc2_:Object = this._2024730540detailComponent;
         if(_loc2_ !== param1)
         {
            this._2024730540detailComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"detailComponent",_loc2_,param1));
            }
         }
      }
   }
}

