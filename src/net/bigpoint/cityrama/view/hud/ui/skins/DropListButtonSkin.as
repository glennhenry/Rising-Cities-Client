package net.bigpoint.cityrama.view.hud.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import spark.components.Button;
   import spark.components.HGroup;
   import spark.skins.SparkSkin;
   
   public class DropListButtonSkin extends SparkSkin implements IStateClient2
   {
      
      private var _2135445627_DropListButtonSkin_BriskImageDynaLib4:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:Button;
      
      public function DropListButtonSkin()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._DropListButtonSkin_HGroup1_c(),this._DropListButtonSkin_BriskImageDynaLib3_c(),this._DropListButtonSkin_BriskImageDynaLib4_i()];
         this.currentState = "up";
         states = [new State({
            "name":"up",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_DropListButtonSkin_BriskImageDynaLib4",
               "name":"rotation",
               "value":180
            })]
         }),new State({
            "name":"over",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_DropListButtonSkin_BriskImageDynaLib4",
               "name":"dynaBmpSourceName",
               "value":"mainhud_bar_arrow_mouseover"
            }),new SetProperty().initializeFromObject({
               "target":"_DropListButtonSkin_BriskImageDynaLib4",
               "name":"rotation",
               "value":180
            })]
         }),new State({
            "name":"down",
            "overrides":[]
         }),new State({
            "name":"disabled",
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
      
      private function _DropListButtonSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.width = 25;
         _loc1_.height = 25;
         _loc1_.mxmlContent = [this._DropListButtonSkin_BriskImageDynaLib1_c(),this._DropListButtonSkin_BriskImageDynaLib2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DropListButtonSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_main_hud";
         _loc1_.dynaBmpSourceName = "mainhud_outerbar_middle";
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DropListButtonSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_main_hud";
         _loc1_.dynaBmpSourceName = "mainhud_outerbar_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DropListButtonSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_main_hud";
         _loc1_.dynaBmpSourceName = "mainhud_divider";
         _loc1_.verticalCenter = -1;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DropListButtonSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.verticalCenter = -1;
         _loc1_.horizontalCenter = -1;
         _loc1_.dynaLibName = "gui_main_hud";
         _loc1_.dynaBmpSourceName = "mainhud_bar_arrow_normal";
         _loc1_.rotation = 0;
         _loc1_.id = "_DropListButtonSkin_BriskImageDynaLib4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._DropListButtonSkin_BriskImageDynaLib4 = _loc1_;
         BindingManager.executeBindings(this,"_DropListButtonSkin_BriskImageDynaLib4",this._DropListButtonSkin_BriskImageDynaLib4);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _DropListButtonSkin_BriskImageDynaLib4() : BriskImageDynaLib
      {
         return this._2135445627_DropListButtonSkin_BriskImageDynaLib4;
      }
      
      public function set _DropListButtonSkin_BriskImageDynaLib4(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._2135445627_DropListButtonSkin_BriskImageDynaLib4;
         if(_loc2_ !== param1)
         {
            this._2135445627_DropListButtonSkin_BriskImageDynaLib4 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_DropListButtonSkin_BriskImageDynaLib4",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : Button
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:Button) : void
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

