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
   
   public class NumericMaxStepperComponent extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public static const KEY_RETURN:String = "KEY_RETURN";
      
      public static const MAX_MINUS_CLICKED:String = "MAX_MINUS_CLICKED";
      
      public static const MAX_PLUS_CLICKED:String = "MAX_PLUS_CLICKED";
      
      private var _1775187398bgMiddle:BriskImageDynaLib;
      
      private var _391156076maxMinus:MultistateButton;
      
      private var _843994398maxPlus:MultistateButton;
      
      private var _103901296minus:MultistateButton;
      
      private var _3444122plus:MultistateButton;
      
      private var _2025208835valueLabel:TextInputCursorSave;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _value:uint = 1;
      
      private var _intervalID:uint;
      
      private var _timeoutID:uint;
      
      private var _step:int;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function NumericMaxStepperComponent()
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
         bindings = this._NumericMaxStepperComponent_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_shopBook_ui_components_NumericMaxStepperComponentWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return NumericMaxStepperComponent[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._NumericMaxStepperComponent_HGroup1_c(),this._NumericMaxStepperComponent_TextInputCursorSave1_i()];
         this.addEventListener("creationComplete",this.___NumericMaxStepperComponent_Group1_creationComplete);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         NumericMaxStepperComponent._watcherSetupUtil = param1;
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
      
      private function handleCreationComplete(param1:*) : void
      {
         this.value = 1;
         this.minus.addEventListener(MouseEvent.CLICK,this.handleMinusClick);
         this.plus.addEventListener(MouseEvent.CLICK,this.handlePlusClick);
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
         this.value += this._step;
      }
      
      private function handleMinusClick(param1:MouseEvent) : void
      {
         --this.value;
      }
      
      private function handlePlusClick(param1:MouseEvent) : void
      {
         ++this.value;
      }
      
      private function handleMaxPlusClick() : void
      {
         dispatchEvent(new Event(MAX_PLUS_CLICKED,true,true));
         this.enableMaxPlusButton(false);
      }
      
      private function handleMaxMinusClick() : void
      {
         dispatchEvent(new Event(MAX_MINUS_CLICKED,true,true));
         this.enableMaxMinusButton(false);
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
         dispatchEvent(new Event(Event.CHANGE,true,true));
      }
      
      public function enableMaxMinusButton(param1:Boolean = true) : void
      {
         this.maxMinus.enabled = param1;
      }
      
      public function enableMaxPlusButton(param1:Boolean = true) : void
      {
         this.maxPlus.enabled = param1;
      }
      
      private function _NumericMaxStepperComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.gap = 2;
         _loc1_.mxmlContent = [this._NumericMaxStepperComponent_MultistateButton1_i(),this._NumericMaxStepperComponent_MultistateButton2_i(),this._NumericMaxStepperComponent_HGroup2_c(),this._NumericMaxStepperComponent_MultistateButton3_i(),this._NumericMaxStepperComponent_MultistateButton4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NumericMaxStepperComponent_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 40;
         _loc1_.libNameLeft = "gui_popups_shopBook";
         _loc1_.imageNameLeft = "button_icon_minus_double";
         _loc1_.addEventListener("click",this.__maxMinus_click);
         _loc1_.id = "maxMinus";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.maxMinus = _loc1_;
         BindingManager.executeBindings(this,"maxMinus",this.maxMinus);
         return _loc1_;
      }
      
      public function __maxMinus_click(param1:MouseEvent) : void
      {
         this.handleMaxMinusClick();
      }
      
      private function _NumericMaxStepperComponent_MultistateButton2_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 27;
         _loc1_.libNameLeft = "gui_popups_shopBook";
         _loc1_.imageNameLeft = "button_icon_minus_mini";
         _loc1_.useMiniSkin = true;
         _loc1_.id = "minus";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.minus = _loc1_;
         BindingManager.executeBindings(this,"minus",this.minus);
         return _loc1_;
      }
      
      private function _NumericMaxStepperComponent_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._NumericMaxStepperComponent_BriskImageDynaLib1_c(),this._NumericMaxStepperComponent_BriskImageDynaLib2_i(),this._NumericMaxStepperComponent_BriskImageDynaLib3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NumericMaxStepperComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_shopBook";
         _loc1_.dynaBmpSourceName = "bar_grey_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NumericMaxStepperComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_shopBook";
         _loc1_.dynaBmpSourceName = "bar_grey_middle";
         _loc1_.percentWidth = 100;
         _loc1_.id = "bgMiddle";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bgMiddle = _loc1_;
         BindingManager.executeBindings(this,"bgMiddle",this.bgMiddle);
         return _loc1_;
      }
      
      private function _NumericMaxStepperComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_shopBook";
         _loc1_.dynaBmpSourceName = "bar_grey_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _NumericMaxStepperComponent_MultistateButton3_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 27;
         _loc1_.libNameLeft = "gui_popups_shopBook";
         _loc1_.imageNameLeft = "button_icon_plus_mini";
         _loc1_.useMiniSkin = true;
         _loc1_.id = "plus";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.plus = _loc1_;
         BindingManager.executeBindings(this,"plus",this.plus);
         return _loc1_;
      }
      
      private function _NumericMaxStepperComponent_MultistateButton4_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 40;
         _loc1_.libNameLeft = "gui_popups_shopBook";
         _loc1_.imageNameLeft = "button_icon_plus_double";
         _loc1_.addEventListener("click",this.__maxPlus_click);
         _loc1_.id = "maxPlus";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.maxPlus = _loc1_;
         BindingManager.executeBindings(this,"maxPlus",this.maxPlus);
         return _loc1_;
      }
      
      public function __maxPlus_click(param1:MouseEvent) : void
      {
         this.handleMaxPlusClick();
      }
      
      private function _NumericMaxStepperComponent_TextInputCursorSave1_i() : TextInputCursorSave
      {
         var _loc1_:TextInputCursorSave = new TextInputCursorSave();
         _loc1_.verticalCenter = 1;
         _loc1_.horizontalCenter = 0;
         _loc1_.text = "1";
         _loc1_.restrict = " 0123456789";
         _loc1_.selectable = true;
         _loc1_.styleName = "bigNumStepper";
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
      
      public function ___NumericMaxStepperComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
      }
      
      private function _NumericMaxStepperComponent_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = getStyle("tooltipMaxMinus");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"maxMinus.toolTip");
         result[1] = new Binding(this,function():String
         {
            var _loc1_:* = getStyle("tooltipMaxPlus");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"maxPlus.toolTip");
         result[2] = new Binding(this,function():Number
         {
            return bgMiddle.width;
         },null,"valueLabel.width");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get bgMiddle() : BriskImageDynaLib
      {
         return this._1775187398bgMiddle;
      }
      
      public function set bgMiddle(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1775187398bgMiddle;
         if(_loc2_ !== param1)
         {
            this._1775187398bgMiddle = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bgMiddle",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get maxMinus() : MultistateButton
      {
         return this._391156076maxMinus;
      }
      
      public function set maxMinus(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._391156076maxMinus;
         if(_loc2_ !== param1)
         {
            this._391156076maxMinus = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxMinus",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get maxPlus() : MultistateButton
      {
         return this._843994398maxPlus;
      }
      
      public function set maxPlus(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._843994398maxPlus;
         if(_loc2_ !== param1)
         {
            this._843994398maxPlus = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxPlus",_loc2_,param1));
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

