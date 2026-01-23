package net.bigpoint.cityrama.view.common.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.VScrollThumbButton;
   import net.bigpoint.cityrama.view.common.components.VScrollTrackButton;
   import spark.components.Group;
   import spark.components.VScrollBar;
   import spark.skins.SparkSkin;
   
   public class SlimVScrollBarSkin extends SparkSkin implements IStateClient2
   {
      
      private var _6518152_SlimVScrollBarSkin_Group1:Group;
      
      private var _110342614thumb:VScrollThumbButton;
      
      private var _110621003track:VScrollTrackButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:VScrollBar;
      
      public function SlimVScrollBarSkin()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._SlimVScrollBarSkin_Group1_i()];
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
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"inactive",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_SlimVScrollBarSkin_Group1",
               "name":"width",
               "value":2
            }),new SetProperty().initializeFromObject({
               "target":"_SlimVScrollBarSkin_Group1",
               "name":"visible",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"track",
               "name":"visible",
               "value":false
            })]
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
      
      private function _SlimVScrollBarSkin_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._SlimVScrollBarSkin_VScrollTrackButton1_i(),this._SlimVScrollBarSkin_VScrollThumbButton1_i()];
         _loc1_.id = "_SlimVScrollBarSkin_Group1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SlimVScrollBarSkin_Group1 = _loc1_;
         BindingManager.executeBindings(this,"_SlimVScrollBarSkin_Group1",this._SlimVScrollBarSkin_Group1);
         return _loc1_;
      }
      
      private function _SlimVScrollBarSkin_VScrollTrackButton1_i() : VScrollTrackButton
      {
         var _loc1_:VScrollTrackButton = new VScrollTrackButton();
         _loc1_.percentHeight = 100;
         _loc1_.horizontalCenter = 0;
         _loc1_.styleName = "scrollbartrack";
         _loc1_.id = "track";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.track = _loc1_;
         BindingManager.executeBindings(this,"track",this.track);
         return _loc1_;
      }
      
      private function _SlimVScrollBarSkin_VScrollThumbButton1_i() : VScrollThumbButton
      {
         var _loc1_:VScrollThumbButton = new VScrollThumbButton();
         _loc1_.horizontalCenter = 0;
         _loc1_.styleName = "scrollbarSlimThumb";
         _loc1_.id = "thumb";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.thumb = _loc1_;
         BindingManager.executeBindings(this,"thumb",this.thumb);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _SlimVScrollBarSkin_Group1() : Group
      {
         return this._6518152_SlimVScrollBarSkin_Group1;
      }
      
      public function set _SlimVScrollBarSkin_Group1(param1:Group) : void
      {
         var _loc2_:Object = this._6518152_SlimVScrollBarSkin_Group1;
         if(_loc2_ !== param1)
         {
            this._6518152_SlimVScrollBarSkin_Group1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_SlimVScrollBarSkin_Group1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get thumb() : VScrollThumbButton
      {
         return this._110342614thumb;
      }
      
      public function set thumb(param1:VScrollThumbButton) : void
      {
         var _loc2_:Object = this._110342614thumb;
         if(_loc2_ !== param1)
         {
            this._110342614thumb = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"thumb",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get track() : VScrollTrackButton
      {
         return this._110621003track;
      }
      
      public function set track(param1:VScrollTrackButton) : void
      {
         var _loc2_:Object = this._110621003track;
         if(_loc2_ !== param1)
         {
            this._110621003track = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"track",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : VScrollBar
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:VScrollBar) : void
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

