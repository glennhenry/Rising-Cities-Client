package net.bigpoint.cityrama.view.common.components
{
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.IFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.events.IndexChangeEvent;
   
   public class WheelComponent extends Group
   {
      
      private var _385593099dataGroup:DataGroup;
      
      private var _113097563wheel:WheelLayout;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function WheelComponent()
      {
         super();
         mx_internal::_document = this;
         this.clipAndEnableScrolling = true;
         this.mxmlContent = [this._WheelComponent_DataGroup1_i()];
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
      
      public function set scrollPosition(param1:Number) : void
      {
         if(Math.floor(param1 + 0.5) != Math.floor(this.scrollPosition + 0.5))
         {
            dispatchEvent(new IndexChangeEvent(IndexChangeEvent.CHANGE,false,false,Math.floor(param1),Math.floor(this.scrollPosition)));
         }
         if(this.dataGroup.dataProvider.length > 0)
         {
            this.wheel.scrollPosition = param1 / this.dataGroup.dataProvider.length;
         }
      }
      
      public function get scrollPosition() : Number
      {
         return this.wheel.scrollPosition * this.dataGroup.dataProvider.length;
      }
      
      public function set elementWidth(param1:Number) : void
      {
         this.wheel.elementWidth = param1;
      }
      
      public function set itemRenderer(param1:IFactory) : void
      {
         this.dataGroup.itemRenderer = param1;
      }
      
      private function _WheelComponent_DataGroup1_i() : DataGroup
      {
         var _loc1_:DataGroup = new DataGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.layout = this._WheelComponent_WheelLayout1_i();
         _loc1_.dataProvider = this._WheelComponent_ArrayCollection1_c();
         _loc1_.id = "dataGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.dataGroup = _loc1_;
         BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
         return _loc1_;
      }
      
      private function _WheelComponent_WheelLayout1_i() : WheelLayout
      {
         var _loc1_:WheelLayout = new WheelLayout();
         this.wheel = _loc1_;
         BindingManager.executeBindings(this,"wheel",this.wheel);
         return _loc1_;
      }
      
      private function _WheelComponent_ArrayCollection1_c() : ArrayCollection
      {
         var _loc1_:ArrayCollection = new ArrayCollection();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get dataGroup() : DataGroup
      {
         return this._385593099dataGroup;
      }
      
      public function set dataGroup(param1:DataGroup) : void
      {
         var _loc2_:Object = this._385593099dataGroup;
         if(_loc2_ !== param1)
         {
            this._385593099dataGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get wheel() : WheelLayout
      {
         return this._113097563wheel;
      }
      
      public function set wheel(param1:WheelLayout) : void
      {
         var _loc2_:Object = this._113097563wheel;
         if(_loc2_ !== param1)
         {
            this._113097563wheel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wheel",_loc2_,param1));
            }
         }
      }
   }
}

