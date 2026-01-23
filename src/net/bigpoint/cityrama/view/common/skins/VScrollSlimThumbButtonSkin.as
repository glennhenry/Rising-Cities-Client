package net.bigpoint.cityrama.view.common.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.VScrollThumbButton;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class VScrollSlimThumbButtonSkin extends SparkSkin implements IStateClient2
   {
      
      private var _282843249bottomImageContainer:BriskImageDynaLib;
      
      private var _1174468891centerImageContainer:BriskImageDynaLib;
      
      private var _863972891topImageContainer:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:VScrollThumbButton;
      
      public function VScrollSlimThumbButtonSkin()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._VScrollSlimThumbButtonSkin_VGroup1_c()];
         this.currentState = "up";
         states = [new State({
            "name":"up",
            "overrides":[]
         }),new State({
            "name":"over",
            "overrides":[]
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
      
      private function _VScrollSlimThumbButtonSkin_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentHeight = 100;
         _loc1_.gap = 0;
         _loc1_.top = 2;
         _loc1_.bottom = 2;
         _loc1_.mxmlContent = [this._VScrollSlimThumbButtonSkin_BriskImageDynaLib1_i(),this._VScrollSlimThumbButtonSkin_BriskImageDynaLib2_i(),this._VScrollSlimThumbButtonSkin_BriskImageDynaLib3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _VScrollSlimThumbButtonSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "vScrollBar_top";
         _loc1_.width = 4;
         _loc1_.id = "topImageContainer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.topImageContainer = _loc1_;
         BindingManager.executeBindings(this,"topImageContainer",this.topImageContainer);
         return _loc1_;
      }
      
      private function _VScrollSlimThumbButtonSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "vScrollBar_middle";
         _loc1_.percentHeight = 100;
         _loc1_.width = 4;
         _loc1_.id = "centerImageContainer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.centerImageContainer = _loc1_;
         BindingManager.executeBindings(this,"centerImageContainer",this.centerImageContainer);
         return _loc1_;
      }
      
      private function _VScrollSlimThumbButtonSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "vScrollBar_bottom";
         _loc1_.width = 4;
         _loc1_.id = "bottomImageContainer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bottomImageContainer = _loc1_;
         BindingManager.executeBindings(this,"bottomImageContainer",this.bottomImageContainer);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get bottomImageContainer() : BriskImageDynaLib
      {
         return this._282843249bottomImageContainer;
      }
      
      public function set bottomImageContainer(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._282843249bottomImageContainer;
         if(_loc2_ !== param1)
         {
            this._282843249bottomImageContainer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomImageContainer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get centerImageContainer() : BriskImageDynaLib
      {
         return this._1174468891centerImageContainer;
      }
      
      public function set centerImageContainer(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1174468891centerImageContainer;
         if(_loc2_ !== param1)
         {
            this._1174468891centerImageContainer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"centerImageContainer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get topImageContainer() : BriskImageDynaLib
      {
         return this._863972891topImageContainer;
      }
      
      public function set topImageContainer(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._863972891topImageContainer;
         if(_loc2_ !== param1)
         {
            this._863972891topImageContainer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topImageContainer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : VScrollThumbButton
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:VScrollThumbButton) : void
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

