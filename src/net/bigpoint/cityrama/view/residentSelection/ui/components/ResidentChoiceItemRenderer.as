package net.bigpoint.cityrama.view.residentSelection.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.residentSelection.vo.ResidentDetailVo;
   import spark.components.supportClasses.ItemRenderer;
   
   public class ResidentChoiceItemRenderer extends ItemRenderer
   {
      
      private var _951530617content:ResidentChoiceDetailComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _residentData:ResidentDetailVo;
      
      private var _isDirty:Boolean;
      
      public function ResidentChoiceItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.autoDrawBackground = false;
         this.width = 222;
         this.height = 320;
         this.mxmlContent = [this._ResidentChoiceItemRenderer_ResidentChoiceDetailComponent1_i()];
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
         if(param1 is ResidentDetailVo)
         {
            if(param1 != this._residentData)
            {
               super.data = param1;
               this._residentData = param1 as ResidentDetailVo;
               this._isDirty = true;
               invalidateProperties();
            }
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(Boolean(this._residentData) && this._isDirty)
         {
            this._isDirty = false;
            this.content.data = this._residentData;
         }
      }
      
      private function _ResidentChoiceItemRenderer_ResidentChoiceDetailComponent1_i() : ResidentChoiceDetailComponent
      {
         var _loc1_:ResidentChoiceDetailComponent = new ResidentChoiceDetailComponent();
         _loc1_.width = 222;
         _loc1_.height = 320;
         _loc1_.id = "content";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.content = _loc1_;
         BindingManager.executeBindings(this,"content",this.content);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get content() : ResidentChoiceDetailComponent
      {
         return this._951530617content;
      }
      
      public function set content(param1:ResidentChoiceDetailComponent) : void
      {
         var _loc2_:Object = this._951530617content;
         if(_loc2_ !== param1)
         {
            this._951530617content = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"content",_loc2_,param1));
            }
         }
      }
   }
}

