package net.bigpoint.cityrama.view.citysquare.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.model.detailViews.vo.EventChallengeDetailViewVo;
   import spark.components.supportClasses.ItemRenderer;
   
   public class ChallangeItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      private var _3059471comp:ChallengeItemComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _dataDirty:Boolean;
      
      private var _compdata:EventChallengeDetailViewVo;
      
      public function ChallangeItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.autoDrawBackground = false;
         this.mxmlContent = [this._ChallangeItemRenderer_ChallengeItemComponent1_i()];
         this.currentState = "normal";
         this.addEventListener("creationComplete",this.___ChallangeItemRenderer_ItemRenderer1_creationComplete);
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
         this._dataDirty = true;
         invalidateProperties();
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataDirty)
         {
            this._dataDirty = false;
            this.comp.data = super.data as EventChallengeDetailViewVo;
         }
      }
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
      }
      
      private function _ChallangeItemRenderer_ChallengeItemComponent1_i() : ChallengeItemComponent
      {
         var _loc1_:ChallengeItemComponent = new ChallengeItemComponent();
         _loc1_.id = "comp";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.comp = _loc1_;
         BindingManager.executeBindings(this,"comp",this.comp);
         return _loc1_;
      }
      
      public function ___ChallangeItemRenderer_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get comp() : ChallengeItemComponent
      {
         return this._3059471comp;
      }
      
      public function set comp(param1:ChallengeItemComponent) : void
      {
         var _loc2_:Object = this._3059471comp;
         if(_loc2_ !== param1)
         {
            this._3059471comp = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"comp",_loc2_,param1));
            }
         }
      }
   }
}

