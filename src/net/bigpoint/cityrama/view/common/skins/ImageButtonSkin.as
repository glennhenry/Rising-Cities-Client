package net.bigpoint.cityrama.view.common.skins
{
   import com.greensock.TweenMax;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.events.StateChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.ImageOutlineButton;
   import spark.components.Button;
   import spark.skins.SparkSkin;
   
   public class ImageButtonSkin extends SparkSkin implements IStateClient2
   {
      
      private var _100313435image:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:Button;
      
      public function ImageButtonSkin()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._ImageButtonSkin_BriskImageDynaLib1_i()];
         this.currentState = "up";
         this.addEventListener("currentStateChange",this.___ImageButtonSkin_SparkSkin1_currentStateChange);
         states = [new State({
            "name":"up",
            "overrides":[]
         }),new State({
            "name":"down",
            "overrides":[]
         }),new State({
            "name":"over",
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
      
      private function handleCurrentStateChange() : void
      {
         if(currentState != "disabled")
         {
            TweenMax.to(this.image,0,{"colorMatrixFilter":{"saturation":1}});
         }
         switch(currentState)
         {
            case "up":
               if((this.hostComponent as ImageOutlineButton).hasUpOutline)
               {
                  TweenMax.to(this.image,0,{"glowFilter":{
                     "color":this.getStyle("colorUp"),
                     "alpha":1,
                     "blurX":4,
                     "blurY":4,
                     "strength":4
                  }});
                  break;
               }
               TweenMax.to(this.image,0,{"glowFilter":{
                  "color":0,
                  "alpha":0,
                  "blurX":0,
                  "blurY":0,
                  "strength":0
               }});
               break;
            case "over":
               if((this.hostComponent as ImageOutlineButton).hasOverOutline)
               {
                  TweenMax.to(this.image,0,{"glowFilter":{
                     "color":this.getStyle("colorOver"),
                     "alpha":1,
                     "blurX":4,
                     "blurY":4,
                     "strength":4
                  }});
                  break;
               }
               TweenMax.to(this.image,0,{"glowFilter":{
                  "color":0,
                  "alpha":0,
                  "blurX":0,
                  "blurY":0,
                  "strength":0
               }});
               break;
            case "down":
               if((this.hostComponent as ImageOutlineButton).hasDownOutline)
               {
                  TweenMax.to(this.image,0,{"glowFilter":{
                     "color":this.getStyle("colorDown"),
                     "alpha":1,
                     "blurX":4,
                     "blurY":4,
                     "strength":4
                  }});
                  break;
               }
               TweenMax.to(this.image,0,{"glowFilter":{
                  "color":0,
                  "alpha":0,
                  "blurX":0,
                  "blurY":0,
                  "strength":0
               }});
               break;
            case "disabled":
               if((this.hostComponent as ImageOutlineButton).hasDisabledOutline)
               {
                  TweenMax.to(this.image,0,{"glowFilter":{
                     "color":this.getStyle("colorDisabled"),
                     "alpha":1,
                     "blurX":4,
                     "blurY":4,
                     "strength":4
                  }});
               }
               else
               {
                  TweenMax.to(this.image,0,{"glowFilter":{
                     "color":0,
                     "alpha":0,
                     "blurX":0,
                     "blurY":0,
                     "strength":0
                  }});
               }
               TweenMax.to(this.image,0,{"colorMatrixFilter":{"saturation":0}});
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         this.handleCurrentStateChange();
      }
      
      private function _ImageButtonSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.id = "image";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.image = _loc1_;
         BindingManager.executeBindings(this,"image",this.image);
         return _loc1_;
      }
      
      public function ___ImageButtonSkin_SparkSkin1_currentStateChange(param1:StateChangeEvent) : void
      {
         this.handleCurrentStateChange();
      }
      
      [Bindable(event="propertyChange")]
      public function get image() : BriskImageDynaLib
      {
         return this._100313435image;
      }
      
      public function set image(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._100313435image;
         if(_loc2_ !== param1)
         {
            this._100313435image = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
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

