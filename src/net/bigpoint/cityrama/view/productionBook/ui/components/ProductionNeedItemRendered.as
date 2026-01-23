package net.bigpoint.cityrama.view.productionBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.detailViews.vo.ProductionNeedVo;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.NeedItemComponent;
   import spark.components.supportClasses.ItemRenderer;
   
   public class ProductionNeedItemRendered extends ItemRenderer
   {
      
      private var _1399907075component:NeedItemComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function ProductionNeedItemRendered()
      {
         super();
         mx_internal::_document = this;
         this.autoDrawBackground = false;
         this.mouseChildren = false;
         this.mouseEnabled = true;
         this.mxmlContent = [this._ProductionNeedItemRendered_NeedItemComponent1_i()];
         this.addEventListener("creationComplete",this.___ProductionNeedItemRendered_ItemRenderer1_creationComplete);
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
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         invalidateProperties();
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:ProductionNeedVo = data as ProductionNeedVo;
         if(_loc1_.available)
         {
            this.component.styleName = "active";
         }
         else
         {
            this.component.styleName = "inActive";
         }
         this.component.data = _loc1_;
         this.setToolTips(_loc1_);
      }
      
      private function setToolTips(param1:ProductionNeedVo) : void
      {
         var _loc2_:String = param1.goodName;
         var _loc3_:int = param1.stockAmount;
         if(param1.available)
         {
            _loc3_ = param1.requiredAmount;
         }
         this.toolTip = _loc3_ + "/" + param1.requiredAmount + " " + _loc2_;
      }
      
      private function _ProductionNeedItemRendered_NeedItemComponent1_i() : NeedItemComponent
      {
         var _loc1_:NeedItemComponent = new NeedItemComponent();
         _loc1_.id = "component";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.component = _loc1_;
         BindingManager.executeBindings(this,"component",this.component);
         return _loc1_;
      }
      
      public function ___ProductionNeedItemRendered_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get component() : NeedItemComponent
      {
         return this._1399907075component;
      }
      
      public function set component(param1:NeedItemComponent) : void
      {
         var _loc2_:Object = this._1399907075component;
         if(_loc2_ !== param1)
         {
            this._1399907075component = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"component",_loc2_,param1));
            }
         }
      }
   }
}

