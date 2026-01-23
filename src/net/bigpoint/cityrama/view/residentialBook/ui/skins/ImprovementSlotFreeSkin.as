package net.bigpoint.cityrama.view.residentialBook.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ImprovementSlotComponent;
   import spark.components.Group;
   import spark.skins.SparkSkin;
   
   public class ImprovementSlotFreeSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1333604737_ImprovementSlotFreeSkin_BriskImageDynaLib1:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:ImprovementSlotComponent;
      
      public function ImprovementSlotFreeSkin()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._ImprovementSlotFreeSkin_Group1_c()];
         this.currentState = "normal";
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[]
         }),new State({
            "name":"highlight",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_ImprovementSlotFreeSkin_BriskImageDynaLib1",
               "name":"dynaBmpSourceName",
               "value":"slot_free_highlight"
            })]
         }),new State({
            "name":"highlightOver",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_ImprovementSlotFreeSkin_BriskImageDynaLib1",
               "name":"dynaBmpSourceName",
               "value":"slot_free_highlight"
            })]
         }),new State({
            "name":"down",
            "overrides":[]
         }),new State({
            "name":"over",
            "overrides":[]
         }),new State({
            "name":"up",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_ImprovementSlotFreeSkin_BriskImageDynaLib1",
               "name":"dynaBmpSourceName",
               "value":"slot_free"
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
      
      override public function setCurrentState(param1:String, param2:Boolean = true) : void
      {
         if(currentState == "highlight" && param1 == "over")
         {
            param1 = "highlightOver";
         }
         if((currentState == "highlight" || currentState == "highlightOver") && param1 == "up")
         {
            if(this.hostComponent.highlight)
            {
               param1 = "highlight";
            }
         }
         super.setCurrentState(param1,param2);
      }
      
      private function _ImprovementSlotFreeSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 138;
         _loc1_.height = 138;
         _loc1_.mxmlContent = [this._ImprovementSlotFreeSkin_BriskImageDynaLib1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementSlotFreeSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_improvements";
         _loc1_.dynaBmpSourceName = "slot_free";
         _loc1_.id = "_ImprovementSlotFreeSkin_BriskImageDynaLib1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ImprovementSlotFreeSkin_BriskImageDynaLib1 = _loc1_;
         BindingManager.executeBindings(this,"_ImprovementSlotFreeSkin_BriskImageDynaLib1",this._ImprovementSlotFreeSkin_BriskImageDynaLib1);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _ImprovementSlotFreeSkin_BriskImageDynaLib1() : BriskImageDynaLib
      {
         return this._1333604737_ImprovementSlotFreeSkin_BriskImageDynaLib1;
      }
      
      public function set _ImprovementSlotFreeSkin_BriskImageDynaLib1(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1333604737_ImprovementSlotFreeSkin_BriskImageDynaLib1;
         if(_loc2_ !== param1)
         {
            this._1333604737_ImprovementSlotFreeSkin_BriskImageDynaLib1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ImprovementSlotFreeSkin_BriskImageDynaLib1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : ImprovementSlotComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:ImprovementSlotComponent) : void
      {
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc2_ !== param1)
         {
            this._213507019hostComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
            }
         }
      }
   }
}

