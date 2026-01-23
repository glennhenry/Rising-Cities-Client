package net.bigpoint.cityrama.view.fieldInfoLayer.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import spark.components.Group;
   
   public class ImprovementIcon extends Group implements IStateClient2
   {
      
      private var _1034821651_ImprovementIcon_BriskImageDynaLib1:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function ImprovementIcon()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._ImprovementIcon_BriskImageDynaLib1_i()];
         this.currentState = "empty";
         states = [new State({
            "name":"empty",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_ImprovementIcon_BriskImageDynaLib1",
               "name":"dynaBmpSourceName",
               "value":"infolayer_hipstate_empty"
            })]
         }),new State({
            "name":"locked",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_ImprovementIcon_BriskImageDynaLib1",
               "name":"dynaBmpSourceName",
               "value":"infolayer_hipstate_locked"
            })]
         }),new State({
            "name":"common",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_ImprovementIcon_BriskImageDynaLib1",
               "name":"dynaBmpSourceName",
               "value":"infolayer_hipstate_green"
            })]
         }),new State({
            "name":"commonExpired",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_ImprovementIcon_BriskImageDynaLib1",
               "name":"dynaBmpSourceName",
               "value":"infolayer_hipstate_green_expired"
            })]
         }),new State({
            "name":"rare",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_ImprovementIcon_BriskImageDynaLib1",
               "name":"dynaBmpSourceName",
               "value":"infolayer_hipstate_blue"
            })]
         }),new State({
            "name":"rareExpired",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_ImprovementIcon_BriskImageDynaLib1",
               "name":"dynaBmpSourceName",
               "value":"infolayer_hipstate_blue_expired"
            })]
         }),new State({
            "name":"epic",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_ImprovementIcon_BriskImageDynaLib1",
               "name":"dynaBmpSourceName",
               "value":"infolayer_hipstate_purple"
            })]
         }),new State({
            "name":"epicExpired",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_ImprovementIcon_BriskImageDynaLib1",
               "name":"dynaBmpSourceName",
               "value":"infolayer_hipstate_purple_expired"
            })]
         }),new State({
            "name":"legendary",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_ImprovementIcon_BriskImageDynaLib1",
               "name":"dynaBmpSourceName",
               "value":"infolayer_hipstate_orange"
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
      
      private function _ImprovementIcon_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.width = 24;
         _loc1_.height = 24;
         _loc1_.id = "_ImprovementIcon_BriskImageDynaLib1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ImprovementIcon_BriskImageDynaLib1 = _loc1_;
         BindingManager.executeBindings(this,"_ImprovementIcon_BriskImageDynaLib1",this._ImprovementIcon_BriskImageDynaLib1);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _ImprovementIcon_BriskImageDynaLib1() : BriskImageDynaLib
      {
         return this._1034821651_ImprovementIcon_BriskImageDynaLib1;
      }
      
      public function set _ImprovementIcon_BriskImageDynaLib1(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1034821651_ImprovementIcon_BriskImageDynaLib1;
         if(_loc2_ !== param1)
         {
            this._1034821651_ImprovementIcon_BriskImageDynaLib1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ImprovementIcon_BriskImageDynaLib1",_loc2_,param1));
            }
         }
      }
   }
}

