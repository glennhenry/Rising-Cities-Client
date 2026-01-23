package net.bigpoint.cityrama.view.quest.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import spark.components.supportClasses.ItemRenderer;
   
   public class BubblePagingItemRenderer extends ItemRenderer implements IStateClient2
   {
      
      private var _711999985indicator:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function BubblePagingItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 11;
         this.height = 12;
         this.autoDrawBackground = false;
         this.focusEnabled = false;
         this.mxmlContent = [this._BubblePagingItemRenderer_BriskImageDynaLib1_i()];
         this.currentState = "normal";
         states = [new State({
            "name":"normal",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"indicator",
               "name":"dynaBmpSourceName",
               "value":"paging_dot_grey"
            })]
         }),new State({
            "name":"selected",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"indicator",
               "name":"dynaBmpSourceName",
               "value":"paging_dot_white"
            })]
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
      
      private function _BubblePagingItemRenderer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.id = "indicator";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.indicator = _loc1_;
         BindingManager.executeBindings(this,"indicator",this.indicator);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get indicator() : BriskImageDynaLib
      {
         return this._711999985indicator;
      }
      
      public function set indicator(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._711999985indicator;
         if(_loc2_ !== param1)
         {
            this._711999985indicator = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"indicator",_loc2_,param1));
            }
         }
      }
   }
}

