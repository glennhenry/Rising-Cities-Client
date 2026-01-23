package net.bigpoint.cityrama.view.common.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import spark.components.Group;
   import spark.skins.SparkSkin;
   
   public class MiniLayerSkin extends SparkSkin implements IStateClient2
   {
      
      private var _230902789attentionSign:BriskImageDynaLib;
      
      private var _312699062closeButton:DynamicImageButton;
      
      private var _809612678contentGroup:Group;
      
      private var _104976386moveArea:Group;
      
      private var _2011710186sparkle:BriskImageDynaLib;
      
      private var _1893287094titleDisplay:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:MiniLayerWindow;
      
      public function MiniLayerSkin()
      {
         super();
         mx_internal::_document = this;
         this.width = 540;
         this.height = 313;
         this.mxmlContent = [this._MiniLayerSkin_Group1_c()];
         this.currentState = "normal";
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[]
         }),new State({
            "name":"inactive",
            "overrides":[]
         }),new State({
            "name":"disabledWithControlBar",
            "overrides":[]
         }),new State({
            "name":"normalWithControlBar",
            "overrides":[]
         }),new State({
            "name":"inactiveWithControlBar",
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
      
      private function _MiniLayerSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 540;
         _loc1_.height = 313;
         _loc1_.mxmlContent = [this._MiniLayerSkin_BriskImageDynaLib1_c(),this._MiniLayerSkin_Group2_i(),this._MiniLayerSkin_BriskImageDynaLib2_i(),this._MiniLayerSkin_BriskImageDynaLib3_i(),this._MiniLayerSkin_DynamicImageButton1_i(),this._MiniLayerSkin_LocaLabel1_i(),this._MiniLayerSkin_Group3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MiniLayerSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_miniLayer";
         _loc1_.dynaBmpSourceName = "layer_bg";
         _loc1_.width = 540;
         _loc1_.height = 313;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MiniLayerSkin_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 25;
         _loc1_.right = 25;
         _loc1_.top = 55;
         _loc1_.bottom = 18;
         _loc1_.id = "contentGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.contentGroup = _loc1_;
         BindingManager.executeBindings(this,"contentGroup",this.contentGroup);
         return _loc1_;
      }
      
      private function _MiniLayerSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.top = 10;
         _loc1_.left = 54;
         _loc1_.dynaLibName = "gui_popups_miniLayer";
         _loc1_.dynaBmpSourceName = "base_minilayer_icon_attention";
         _loc1_.visible = true;
         _loc1_.includeInLayout = true;
         _loc1_.id = "attentionSign";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.attentionSign = _loc1_;
         BindingManager.executeBindings(this,"attentionSign",this.attentionSign);
         return _loc1_;
      }
      
      private function _MiniLayerSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "sparkle";
         _loc1_.dynaLibName = "gui_resources_icons";
         _loc1_.visible = true;
         _loc1_.top = -4;
         _loc1_.left = 38;
         _loc1_.includeInLayout = true;
         _loc1_.id = "sparkle";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.sparkle = _loc1_;
         BindingManager.executeBindings(this,"sparkle",this.sparkle);
         return _loc1_;
      }
      
      private function _MiniLayerSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "close";
         _loc1_.top = 44;
         _loc1_.right = 25;
         _loc1_.id = "closeButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.closeButton = _loc1_;
         BindingManager.executeBindings(this,"closeButton",this.closeButton);
         return _loc1_;
      }
      
      private function _MiniLayerSkin_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "fontABlack";
         _loc1_.left = 77;
         _loc1_.top = 20;
         _loc1_.setStyle("fontSize",13);
         _loc1_.setStyle("color",16777215);
         _loc1_.id = "titleDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.titleDisplay = _loc1_;
         BindingManager.executeBindings(this,"titleDisplay",this.titleDisplay);
         return _loc1_;
      }
      
      private function _MiniLayerSkin_Group3_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 5;
         _loc1_.left = 44;
         _loc1_.width = 317;
         _loc1_.height = 35;
         _loc1_.id = "moveArea";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.moveArea = _loc1_;
         BindingManager.executeBindings(this,"moveArea",this.moveArea);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get attentionSign() : BriskImageDynaLib
      {
         return this._230902789attentionSign;
      }
      
      public function set attentionSign(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._230902789attentionSign;
         if(_loc2_ !== param1)
         {
            this._230902789attentionSign = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attentionSign",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get closeButton() : DynamicImageButton
      {
         return this._312699062closeButton;
      }
      
      public function set closeButton(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._312699062closeButton;
         if(_loc2_ !== param1)
         {
            this._312699062closeButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"closeButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get contentGroup() : Group
      {
         return this._809612678contentGroup;
      }
      
      public function set contentGroup(param1:Group) : void
      {
         var _loc2_:Object = this._809612678contentGroup;
         if(_loc2_ !== param1)
         {
            this._809612678contentGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get moveArea() : Group
      {
         return this._104976386moveArea;
      }
      
      public function set moveArea(param1:Group) : void
      {
         var _loc2_:Object = this._104976386moveArea;
         if(_loc2_ !== param1)
         {
            this._104976386moveArea = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moveArea",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sparkle() : BriskImageDynaLib
      {
         return this._2011710186sparkle;
      }
      
      public function set sparkle(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._2011710186sparkle;
         if(_loc2_ !== param1)
         {
            this._2011710186sparkle = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sparkle",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get titleDisplay() : LocaLabel
      {
         return this._1893287094titleDisplay;
      }
      
      public function set titleDisplay(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1893287094titleDisplay;
         if(_loc2_ !== param1)
         {
            this._1893287094titleDisplay = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleDisplay",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : MiniLayerWindow
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:MiniLayerWindow) : void
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

