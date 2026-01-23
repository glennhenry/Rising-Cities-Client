package net.bigpoint.cityrama.view.common.skins
{
   import com.greensock.TweenMax;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.StateChangeEvent;
   import mx.states.State;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadServiceDynamic;
   import spark.components.RadioButton;
   import spark.core.SpriteVisualElement;
   import spark.skins.SparkSkin;
   
   public class RadioSkin extends SparkSkin implements IStateClient2
   {
      
      private var _367345007buttonContainer:SpriteVisualElement;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _colorUp:uint;
      
      private var _colorOver:uint;
      
      private var _colorDisabled:uint;
      
      private var _colorSelected:uint;
      
      private var _buttonSprite:Sprite;
      
      private var _buttonBlend:Sprite;
      
      private var _buttonBase:Sprite;
      
      private var _buttonSpriteClazz:Class;
      
      private var _buttonSpriteChanged:Boolean = false;
      
      private var _blinking:Boolean = false;
      
      private var _libLoaded:Boolean = false;
      
      private var _libLoadingProgress:Boolean = false;
      
      private var definitionNameBase:String;
      
      private var dynalibName:String;
      
      private var iconNameToggleUp:String;
      
      private var iconNameToggleDown:String;
      
      private var _selected:Boolean = false;
      
      private var _buttonIconToggleUp:Bitmap = null;
      
      private var _buttonIconToggleDown:Bitmap = null;
      
      private var _currentIcon:Bitmap = null;
      
      private var _213507019hostComponent:RadioButton;
      
      public function RadioSkin()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._RadioSkin_SpriteVisualElement1_i()];
         this.currentState = "up";
         this.addEventListener("currentStateChange",this.___RadioSkin_SparkSkin1_currentStateChange);
         this.addEventListener("initialize",this.___RadioSkin_SparkSkin1_initialize);
         states = [new State({
            "name":"up",
            "overrides":[]
         }),new State({
            "name":"over",
            "stateGroups":["overStates"],
            "overrides":[]
         }),new State({
            "name":"down",
            "stateGroups":["downStates"],
            "overrides":[]
         }),new State({
            "name":"disabled",
            "stateGroups":["disabledStates"],
            "overrides":[]
         }),new State({
            "name":"upAndSelected",
            "stateGroups":["selectedUpStates","selectedStates"],
            "overrides":[]
         }),new State({
            "name":"overAndSelected",
            "stateGroups":["overStates","selectedStates"],
            "overrides":[]
         }),new State({
            "name":"downAndSelected",
            "stateGroups":["downStates","selectedStates"],
            "overrides":[]
         }),new State({
            "name":"disabledAndSelected",
            "stateGroups":["disabledStates","selectedUpStates","selectedStates"],
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
      
      private function init() : void
      {
         focusEnabled = false;
         this.definitionNameBase = getStyle("definitionNameBase");
         this.dynalibName = getStyle("dynalibName");
         this.iconNameToggleUp = getStyle("iconNameToggleUp");
         this.iconNameToggleDown = getStyle("iconNameToggleDown");
         this.createButton();
      }
      
      override public function styleChanged(param1:String) : void
      {
         super.styleChanged(param1);
         this._colorUp = getStyle("colorUp");
         this._colorOver = getStyle("colorOver");
         this._colorSelected = getStyle("colorSelected");
         this._colorDisabled = getStyle("colorDisabled");
         this.definitionNameBase = getStyle("definitionNameBase");
         this.dynalibName = getStyle("dynalibName");
         this.iconNameToggleUp = getStyle("iconNameToggleUp");
         this.iconNameToggleDown = getStyle("iconNameToggleDown");
         invalidateProperties();
      }
      
      public function resetButton() : void
      {
         this._selected = false;
         this.hostComponent.selected = false;
         super.currentState = "up";
         this.commitProperties();
         invalidateProperties();
         invalidateDisplayList();
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this.buttonContainer)
         {
            if(this._buttonSpriteChanged)
            {
               this._buttonSpriteChanged = false;
               this._buttonSprite = null;
            }
         }
      }
      
      private function createButton(param1:Event = null) : void
      {
         var _loc4_:Array = null;
         var _loc5_:* = null;
         var _loc2_:FileRuntimeLoadServiceDynamic = FileRuntimeLoadServiceDynamic.getInstance();
         if(!_loc2_.libAllReadyLoaded(this.dynalibName))
         {
            if(this._libLoadingProgress)
            {
               return;
            }
            this._libLoadingProgress = true;
            _loc4_ = [this.dynalibName];
            _loc5_ = this.iconNameToggleUp + "ToggleButtonNotification";
            _loc2_.addEventListener(_loc5_,this.createButton);
            _loc2_.checkSWFArrayLoaded(_loc4_,_loc5_);
            return;
         }
         this._libLoaded = true;
         this._libLoadingProgress = false;
         if(this._libLoaded)
         {
            _loc2_.removeEventListener(this.iconNameToggleUp + "ToggleButtonNotification",this.createButton);
         }
         var _loc3_:Class = ApplicationDomain.currentDomain.getDefinition(this.definitionNameBase) as Class;
         if(Boolean(this._buttonSprite) && !(_loc3_ is this._buttonSpriteClazz))
         {
            this._buttonSpriteClazz = _loc3_;
            this._buttonSpriteChanged = true;
         }
         else if(!this._buttonSprite)
         {
            this._buttonSpriteClazz = _loc3_;
         }
         this._buttonSprite = Sprite(new this._buttonSpriteClazz());
         this.buttonContainer.addChild(this._buttonSprite);
         this._buttonBlend = this._buttonSprite.getChildByName("blend") as Sprite;
         this._buttonBase = this._buttonSprite.getChildByName("base") as Sprite;
         this.buttonContainer.height = this._buttonSprite.height;
         this.buttonContainer.width = this._buttonSprite.width;
         this._buttonIconToggleUp = _loc2_.getBitmap(this.dynalibName,this.iconNameToggleUp);
         this._buttonIconToggleDown = _loc2_.getBitmap(this.dynalibName,this.iconNameToggleDown);
         this._currentIcon = new Bitmap();
         this._buttonBase.addChild(this._currentIcon);
         this._currentIcon.bitmapData = this._buttonIconToggleUp.bitmapData;
         this.animateButton(currentState);
      }
      
      private function currentStateChangeHandler(param1:StateChangeEvent) : void
      {
         this.animateButton(param1.newState);
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         super.updateDisplayList(param1,param2);
         if(this._buttonSprite)
         {
            this._buttonSprite.width = param1;
            this._buttonSprite.height = param2;
         }
      }
      
      override protected function measure() : void
      {
         super.measure();
         if(this._buttonSprite)
         {
            if(this.measuredWidth == 0)
            {
               this.measuredWidth = this._buttonSprite.width;
            }
            if(this.measuredHeight == 0)
            {
               this.measuredHeight = this._buttonSprite.height;
            }
         }
      }
      
      private function animateButton(param1:String) : void
      {
         if(this._libLoaded == false)
         {
            return;
         }
         switch(param1)
         {
            case "over":
               TweenMax.to(this._buttonBlend,0.1,{"colorTransform":{
                  "tint":this._colorOver,
                  "tintAmount":1
               }});
               break;
            case "down":
               TweenMax.to(this._buttonBlend,0.1,{"colorTransform":{
                  "tint":this._colorSelected,
                  "tintAmount":1
               }});
               this._currentIcon.bitmapData = this._buttonIconToggleDown.bitmapData;
               break;
            case "up":
               TweenMax.to(this._buttonBlend,0.1,{"colorTransform":{
                  "tint":this._colorUp,
                  "tintAmount":1
               }});
               break;
            case "disabled":
               TweenMax.to(this._buttonBlend,0.1,{"colorTransform":{
                  "tint":this._colorDisabled,
                  "tintAmount":1
               }});
               break;
            case "upAndSelected":
               TweenMax.to(this._buttonBlend,0.1,{"colorTransform":{
                  "tint":this._colorSelected,
                  "tintAmount":1
               }});
               this._currentIcon.bitmapData = this._buttonIconToggleDown.bitmapData;
               break;
            case "downAndSelected":
               this._currentIcon.bitmapData = this._buttonIconToggleUp.bitmapData;
               TweenMax.to(this._buttonBlend,0.1,{"colorTransform":{
                  "tint":this._colorSelected,
                  "tintAmount":1
               }});
         }
      }
      
      override protected function stateChanged(param1:String, param2:String, param3:Boolean) : void
      {
         super.stateChanged(param1,param2,param3);
      }
      
      private function _RadioSkin_SpriteVisualElement1_i() : SpriteVisualElement
      {
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         _loc1_.initialized(this,"buttonContainer");
         this.buttonContainer = _loc1_;
         BindingManager.executeBindings(this,"buttonContainer",this.buttonContainer);
         return _loc1_;
      }
      
      public function ___RadioSkin_SparkSkin1_currentStateChange(param1:StateChangeEvent) : void
      {
         this.currentStateChangeHandler(param1);
      }
      
      public function ___RadioSkin_SparkSkin1_initialize(param1:FlexEvent) : void
      {
         this.init();
      }
      
      [Bindable(event="propertyChange")]
      public function get buttonContainer() : SpriteVisualElement
      {
         return this._367345007buttonContainer;
      }
      
      public function set buttonContainer(param1:SpriteVisualElement) : void
      {
         var _loc2_:Object = this._367345007buttonContainer;
         if(_loc2_ !== param1)
         {
            this._367345007buttonContainer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonContainer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : RadioButton
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:RadioButton) : void
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

