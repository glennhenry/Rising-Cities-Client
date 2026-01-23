package net.bigpoint.cityrama.view.shopBook.ui.components
{
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.TextInputCursorSave;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.events.TextOperationEvent;
   import spark.filters.GlowFilter;
   
   use namespace mx_internal;
   
   public class NumericStepperComponent extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public static const KEY_RETURN:String = "KEY_RETURN";
      
      private var _1691997336inputBackground:BriskImageDynaLib;
      
      private var _103901296minus:MultistateButton;
      
      private var _3444122plus:MultistateButton;
      
      private var _2025208835valueLabel:TextInputCursorSave;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _value:uint = 1;
      
      private var _intervalID:uint;
      
      private var _timeoutID:uint;
      
      private var _step:int;
      
      private var _ctrlPressed:Boolean;
      
      private var _max:uint;
      
      private var _min:uint;
      
      private var _limit:uint;
      
      private var _minMaxSet:Boolean;
      
      private var _limitSet:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function NumericStepperComponent()
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._NumericStepperComponent_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_shopBook_ui_components_NumericStepperComponentWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return NumericStepperComponent[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._NumericStepperComponent_HGroup1_c(),this._NumericStepperComponent_TextInputCursorSave1_i()];
         this.addEventListener("creationComplete",this.___NumericStepperComponent_Group1_creationComplete);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         NumericStepperComponent._watcherSetupUtil = param1;
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
      
      private function handleCreationComplete(param1:FlexEvent) : void
      {
         this.value = 1;
         this.minus.addEventListener(MouseEvent.CLICK,this.handleMinusClick);
         this.plus.addEventListener(MouseEvent.CLICK,this.handlePlusClick);
         if(stage)
         {
            stage.addEventListener(KeyboardEvent.KEY_DOWN,this.handleKeyDown);
            stage.addEventListener(KeyboardEvent.KEY_UP,this.handleKeyUp);
         }
         this.valueLabel.setStyle("backgroundAlpha",0);
         this.minus.addEventListener(MouseEvent.MOUSE_DOWN,this.handleMinusDown);
         this.plus.addEventListener(MouseEvent.MOUSE_DOWN,this.handlePlusDown);
         this.valueLabel.filters = [new GlowFilter(0,1,2,2,10)];
         this.valueLabel.addEventListener(KeyboardEvent.KEY_UP,this.onInputKeyUp);
      }
      
      private function onInputKeyUp(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER)
         {
            if(this.valueLabel.text != "" && this.valueLabel.text != "0")
            {
               dispatchEvent(new Event(KEY_RETURN));
            }
         }
      }
      
      private function handleKeyUp(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.CONTROL)
         {
            this._ctrlPressed = false;
         }
         if(this.value > this._max && this._minMaxSet)
         {
            this.value = this._max;
         }
      }
      
      private function handleKeyDown(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.CONTROL)
         {
            this._ctrlPressed = true;
         }
      }
      
      private function handlePlusDown(param1:MouseEvent) : void
      {
         this.root.addEventListener(MouseEvent.MOUSE_UP,this.handleMouseUp);
         clearInterval(this._intervalID);
         clearTimeout(this._timeoutID);
         this._step = 1;
         this._timeoutID = setTimeout(this.beginInterval,500);
      }
      
      private function beginInterval() : void
      {
         clearInterval(this._intervalID);
         this._intervalID = setInterval(this.doInterval,10);
      }
      
      private function handleMouseUp(param1:MouseEvent) : void
      {
         this.root.removeEventListener(MouseEvent.MOUSE_UP,this.handleMouseUp);
         clearInterval(this._intervalID);
         clearTimeout(this._timeoutID);
      }
      
      private function handleMinusDown(param1:MouseEvent) : void
      {
         this.root.addEventListener(MouseEvent.MOUSE_UP,this.handleMouseUp);
         clearInterval(this._intervalID);
         clearTimeout(this._timeoutID);
         this._step = -1;
         this._timeoutID = setTimeout(this.beginInterval,500);
      }
      
      private function doInterval() : void
      {
         if(this._limitSet)
         {
            if(this.value + this._step >= this._limit)
            {
               this.value = this._limit;
            }
            else
            {
               this.value += this._step;
            }
         }
         else
         {
            this.value += this._step;
         }
      }
      
      private function handleMinusClick(param1:MouseEvent) : void
      {
         if(this._ctrlPressed && this._minMaxSet)
         {
            this.value = this._min;
         }
         else
         {
            --this.value;
         }
      }
      
      private function handlePlusClick(param1:MouseEvent) : void
      {
         if(this._ctrlPressed && this._minMaxSet)
         {
            this.value = this._max;
         }
         else if(this._limitSet)
         {
            if(this.value + 1 > this._limit)
            {
               this.value = this._limit;
            }
            else
            {
               ++this.value;
            }
         }
         else
         {
            ++this.value;
         }
      }
      
      public function get value() : uint
      {
         return this._value;
      }
      
      public function set value(param1:uint) : void
      {
         this._value = param1;
         this.valueLabel.text = param1.toString();
         if(param1 <= 1)
         {
            this.minus.enabled = false;
            clearInterval(this._intervalID);
            clearTimeout(this._timeoutID);
         }
         else
         {
            this.minus.enabled = true;
         }
         if(this._limitSet)
         {
            this.plus.enabled = param1 < this._limit;
         }
         dispatchEvent(new Event(Event.CHANGE,true,true));
      }
      
      public function setMaxMin(param1:uint, param2:uint) : void
      {
         this._max = param1;
         this._min = param2;
         if(param2 == 0)
         {
            this._min = 1;
         }
         this._minMaxSet = true;
      }
      
      public function setLimit(param1:uint) : void
      {
         this._limit = param1;
         this._limitSet = true;
      }
      
      private function _NumericStepperComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.gap = 15;
         _loc1_.mxmlContent = [this._NumericStepperComponent_MultistateButton1_i(),this._NumericStepperComponent_HGroup2_c(),this._NumericStepperComponent_MultistateButton2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NumericStepperComponent_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 40;
         _loc1_.libNameLeft = "gui_popups_shopBook";
         _loc1_.imageNameLeft = "button_icon_minus";
         _loc1_.id = "minus";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.minus = _loc1_;
         BindingManager.executeBindings(this,"minus",this.minus);
         return _loc1_;
      }
      
      private function _NumericStepperComponent_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.left = 10;
         _loc1_.right = 10;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._NumericStepperComponent_BriskImageDynaLib1_c(),this._NumericStepperComponent_BriskImageDynaLib2_i(),this._NumericStepperComponent_BriskImageDynaLib3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NumericStepperComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
         _loc1_.dynaBmpSourceName = "ui_main_inner_ressourcebase_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NumericStepperComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
         _loc1_.dynaBmpSourceName = "ui_main_inner_ressourcebase_middle";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.id = "inputBackground";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.inputBackground = _loc1_;
         BindingManager.executeBindings(this,"inputBackground",this.inputBackground);
         return _loc1_;
      }
      
      private function _NumericStepperComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
         _loc1_.dynaBmpSourceName = "ui_main_inner_ressourcebase_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NumericStepperComponent_MultistateButton2_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 40;
         _loc1_.libNameLeft = "gui_popups_shopBook";
         _loc1_.imageNameLeft = "button_icon_positive";
         _loc1_.id = "plus";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.plus = _loc1_;
         BindingManager.executeBindings(this,"plus",this.plus);
         return _loc1_;
      }
      
      private function _NumericStepperComponent_TextInputCursorSave1_i() : TextInputCursorSave
      {
         var _loc1_:TextInputCursorSave = new TextInputCursorSave();
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.text = "1";
         _loc1_.restrict = " 0123456789";
         _loc1_.selectable = true;
         _loc1_.styleName = "numStepper";
         _loc1_.addEventListener("change",this.__valueLabel_change);
         _loc1_.id = "valueLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.valueLabel = _loc1_;
         BindingManager.executeBindings(this,"valueLabel",this.valueLabel);
         return _loc1_;
      }
      
      public function __valueLabel_change(param1:TextOperationEvent) : void
      {
         this.value = Number(this.valueLabel.text);
      }
      
      public function ___NumericStepperComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
      }
      
      private function _NumericStepperComponent_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Number
         {
            return inputBackground.width + 6;
         },null,"valueLabel.width");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get inputBackground() : BriskImageDynaLib
      {
         return this._1691997336inputBackground;
      }
      
      public function set inputBackground(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1691997336inputBackground;
         if(_loc2_ !== param1)
         {
            this._1691997336inputBackground = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inputBackground",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get minus() : MultistateButton
      {
         return this._103901296minus;
      }
      
      public function set minus(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._103901296minus;
         if(_loc2_ !== param1)
         {
            this._103901296minus = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"minus",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get plus() : MultistateButton
      {
         return this._3444122plus;
      }
      
      public function set plus(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._3444122plus;
         if(_loc2_ !== param1)
         {
            this._3444122plus = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"plus",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get valueLabel() : TextInputCursorSave
      {
         return this._2025208835valueLabel;
      }
      
      public function set valueLabel(param1:TextInputCursorSave) : void
      {
         var _loc2_:Object = this._2025208835valueLabel;
         if(_loc2_ !== param1)
         {
            this._2025208835valueLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"valueLabel",_loc2_,param1));
            }
         }
      }
   }
}

