package net.bigpoint.cityrama.view.mainMenu.ui.components
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
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.resources.ResourceManager;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import spark.components.Group;
   import spark.components.RadioButton;
   import spark.components.RadioButtonGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class CursorGroupComponent extends VGroup implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _590797979bg_bottom:BriskImageDynaLib;
      
      private var _281910577bg_middle:BriskImageDynaLib;
      
      private var _1391242661bg_top:BriskImageDynaLib;
      
      private var _1932099489hipButton:RadioButton;
      
      private var _2066190749moveButton:RadioButton;
      
      private var _1339123498removeButton:RadioButton;
      
      private var _110545371tools:RadioButtonGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function CursorGroupComponent()
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
         bindings = this._CursorGroupComponent_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_mainMenu_ui_components_CursorGroupComponentWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return CursorGroupComponent[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._CursorGroupComponent_BriskImageDynaLib1_i(),this._CursorGroupComponent_Group1_c(),this._CursorGroupComponent_BriskImageDynaLib3_i()];
         this._CursorGroupComponent_RadioButtonGroup1_i();
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         CursorGroupComponent._watcherSetupUtil = param1;
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
      
      private function handleToolChange(param1:Event) : void
      {
         var _temp_1:* = this;
         this.visible = false;
         _temp_1.includeInLayout = false;
      }
      
      private function _CursorGroupComponent_RadioButtonGroup1_i() : RadioButtonGroup
      {
         var _loc1_:RadioButtonGroup = new RadioButtonGroup();
         _loc1_.addEventListener("change",this.__tools_change);
         _loc1_.initialized(this,"tools");
         this.tools = _loc1_;
         BindingManager.executeBindings(this,"tools",this.tools);
         return _loc1_;
      }
      
      public function __tools_change(param1:Event) : void
      {
         this.handleToolChange(param1);
      }
      
      private function _CursorGroupComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
         _loc1_.dynaBmpSourceName = "ui_main_subkategorie_top";
         _loc1_.id = "bg_top";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bg_top = _loc1_;
         BindingManager.executeBindings(this,"bg_top",this.bg_top);
         return _loc1_;
      }
      
      private function _CursorGroupComponent_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._CursorGroupComponent_BriskImageDynaLib2_i(),this._CursorGroupComponent_VGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CursorGroupComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
         _loc1_.dynaBmpSourceName = "ui_main_subkategorie_middle";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.id = "bg_middle";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bg_middle = _loc1_;
         BindingManager.executeBindings(this,"bg_middle",this.bg_middle);
         return _loc1_;
      }
      
      private function _CursorGroupComponent_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalCenter = 0;
         _loc1_.percentHeight = 100;
         _loc1_.gap = 2;
         _loc1_.mxmlContent = [this._CursorGroupComponent_RadioButton1_i(),this._CursorGroupComponent_RadioButton2_i(),this._CursorGroupComponent_RadioButton3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CursorGroupComponent_RadioButton1_i() : RadioButton
      {
         var _loc1_:RadioButton = new RadioButton();
         _loc1_.groupName = "tools";
         _loc1_.styleName = "subMenueCursorImprovement";
         _loc1_.id = "hipButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.hipButton = _loc1_;
         BindingManager.executeBindings(this,"hipButton",this.hipButton);
         return _loc1_;
      }
      
      private function _CursorGroupComponent_RadioButton2_i() : RadioButton
      {
         var _loc1_:RadioButton = new RadioButton();
         _loc1_.groupName = "tools";
         _loc1_.styleName = "subMenueCursorMove";
         _loc1_.id = "moveButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.moveButton = _loc1_;
         BindingManager.executeBindings(this,"moveButton",this.moveButton);
         return _loc1_;
      }
      
      private function _CursorGroupComponent_RadioButton3_i() : RadioButton
      {
         var _loc1_:RadioButton = new RadioButton();
         _loc1_.groupName = "tools";
         _loc1_.styleName = "subMenueCursorRemove";
         _loc1_.id = "removeButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.removeButton = _loc1_;
         BindingManager.executeBindings(this,"removeButton",this.removeButton);
         return _loc1_;
      }
      
      private function _CursorGroupComponent_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
         _loc1_.dynaBmpSourceName = "ui_main_subkategorie_bottom";
         _loc1_.id = "bg_bottom";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bg_bottom = _loc1_;
         BindingManager.executeBindings(this,"bg_bottom",this.bg_bottom);
         return _loc1_;
      }
      
      private function _CursorGroupComponent_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = ResourceManager.getInstance().getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.cursor.hip"));
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"hipButton.toolTip");
         result[1] = new Binding(this,function():String
         {
            var _loc1_:* = ResourceManager.getInstance().getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.cursor.move"));
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"moveButton.toolTip");
         result[2] = new Binding(this,function():String
         {
            var _loc1_:* = ResourceManager.getInstance().getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.cursor.demolition"));
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"removeButton.toolTip");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get bg_bottom() : BriskImageDynaLib
      {
         return this._590797979bg_bottom;
      }
      
      public function set bg_bottom(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._590797979bg_bottom;
         if(_loc2_ !== param1)
         {
            this._590797979bg_bottom = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bg_bottom",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bg_middle() : BriskImageDynaLib
      {
         return this._281910577bg_middle;
      }
      
      public function set bg_middle(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._281910577bg_middle;
         if(_loc2_ !== param1)
         {
            this._281910577bg_middle = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bg_middle",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bg_top() : BriskImageDynaLib
      {
         return this._1391242661bg_top;
      }
      
      public function set bg_top(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1391242661bg_top;
         if(_loc2_ !== param1)
         {
            this._1391242661bg_top = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bg_top",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hipButton() : RadioButton
      {
         return this._1932099489hipButton;
      }
      
      public function set hipButton(param1:RadioButton) : void
      {
         var _loc2_:Object = this._1932099489hipButton;
         if(_loc2_ !== param1)
         {
            this._1932099489hipButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hipButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get moveButton() : RadioButton
      {
         return this._2066190749moveButton;
      }
      
      public function set moveButton(param1:RadioButton) : void
      {
         var _loc2_:Object = this._2066190749moveButton;
         if(_loc2_ !== param1)
         {
            this._2066190749moveButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moveButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get removeButton() : RadioButton
      {
         return this._1339123498removeButton;
      }
      
      public function set removeButton(param1:RadioButton) : void
      {
         var _loc2_:Object = this._1339123498removeButton;
         if(_loc2_ !== param1)
         {
            this._1339123498removeButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"removeButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tools() : RadioButtonGroup
      {
         return this._110545371tools;
      }
      
      public function set tools(param1:RadioButtonGroup) : void
      {
         var _loc2_:Object = this._110545371tools;
         if(_loc2_ !== param1)
         {
            this._110545371tools = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tools",_loc2_,param1));
            }
         }
      }
   }
}

