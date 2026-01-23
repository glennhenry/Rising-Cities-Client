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
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.core.SpriteVisualElement;
   
   use namespace mx_internal;
   
   public class MainMenuComponent extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _201073350bgGroup:HGroup;
      
      private var _1349119146cursor:QuadToggleButton;
      
      private var _1591961399cursorGroup:CursorGroupComponent;
      
      private var _600094315friends:QuadToggleButton;
      
      private var _1147097226ingameStore:QuadToggleButton;
      
      private var _2020599460inventory:QuadToggleButton;
      
      private var _987049855inventorySparkleSprite:SpriteVisualElement;
      
      private var _310630091majorvilla:QuadToggleButton;
      
      private var _1081306052market:QuadToggleButton;
      
      private var _1249474914options:QuadToggleButton;
      
      private var _1990659455optionsGroup:OptionsGroupComponent;
      
      private var _1313256166playfieldSwitch:QuadToggleButton;
      
      private var _355710569viewmodeGroup:ViewmodeGroupComponent;
      
      private var _1560240213viewmodes:QuadToggleButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function MainMenuComponent()
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
         bindings = this._MainMenuComponent_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_mainMenu_ui_components_MainMenuComponentWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return MainMenuComponent[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mouseEnabled = false;
         this.mxmlContent = [this._MainMenuComponent_HGroup1_i(),this._MainMenuComponent_HGroup2_c(),this._MainMenuComponent_CursorGroupComponent1_i(),this._MainMenuComponent_ViewmodeGroupComponent1_i(),this._MainMenuComponent_OptionsGroupComponent1_i()];
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         MainMenuComponent._watcherSetupUtil = param1;
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
      
      public function determineShowViewModeGroup() : void
      {
         this.viewmodeGroup.visible = this.viewmodeGroup.includeInLayout = this.viewmodes.selected && !this.viewmodes.inactive;
      }
      
      private function _MainMenuComponent_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = null;
         _loc1_ = new HGroup();
         _loc1_.gap = 0;
         _loc1_.width = 475;
         _loc1_.horizontalCenter = 0;
         _loc1_.bottom = 0;
         _loc1_.mxmlContent = [this._MainMenuComponent_BriskImageDynaLib1_c(),this._MainMenuComponent_BriskImageDynaLib2_c(),this._MainMenuComponent_BriskImageDynaLib3_c()];
         _loc1_.id = "bgGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bgGroup = _loc1_;
         BindingManager.executeBindings(this,"bgGroup",this.bgGroup);
         return _loc1_;
      }
      
      private function _MainMenuComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
         _loc1_.dynaBmpSourceName = "ui_main_groundbase_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MainMenuComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
         _loc1_.dynaBmpSourceName = "ui_main_groundbase_middle";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MainMenuComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
         _loc1_.dynaBmpSourceName = "ui_main_groundbase_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MainMenuComponent_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "bottom";
         _loc1_.horizontalCenter = 0;
         _loc1_.bottom = 0;
         _loc1_.gap = 4;
         _loc1_.mouseEnabled = false;
         _loc1_.mxmlContent = [this._MainMenuComponent_QuadToggleButton1_i(),this._MainMenuComponent_QuadToggleButton2_i(),this._MainMenuComponent_QuadToggleButton3_i(),this._MainMenuComponent_Group2_c(),this._MainMenuComponent_QuadToggleButton5_i(),this._MainMenuComponent_QuadToggleButton6_i(),this._MainMenuComponent_QuadToggleButton7_i(),this._MainMenuComponent_QuadToggleButton8_i(),this._MainMenuComponent_QuadToggleButton9_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MainMenuComponent_QuadToggleButton1_i() : QuadToggleButton
      {
         var _loc1_:QuadToggleButton = new QuadToggleButton();
         _loc1_.styleName = "cursor";
         _loc1_.id = "cursor";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.cursor = _loc1_;
         BindingManager.executeBindings(this,"cursor",this.cursor);
         return _loc1_;
      }
      
      private function _MainMenuComponent_QuadToggleButton2_i() : QuadToggleButton
      {
         var _loc1_:QuadToggleButton = new QuadToggleButton();
         _loc1_.styleName = "viewmodes";
         _loc1_.inactive = true;
         _loc1_.id = "viewmodes";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.viewmodes = _loc1_;
         BindingManager.executeBindings(this,"viewmodes",this.viewmodes);
         return _loc1_;
      }
      
      private function _MainMenuComponent_QuadToggleButton3_i() : QuadToggleButton
      {
         var _loc1_:QuadToggleButton = new QuadToggleButton();
         _loc1_.styleName = "architect";
         _loc1_.id = "ingameStore";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.ingameStore = _loc1_;
         BindingManager.executeBindings(this,"ingameStore",this.ingameStore);
         return _loc1_;
      }
      
      private function _MainMenuComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mouseEnabled = false;
         _loc1_.mxmlContent = [this._MainMenuComponent_QuadToggleButton4_i(),this._MainMenuComponent_SpriteVisualElement1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _MainMenuComponent_QuadToggleButton4_i() : QuadToggleButton
      {
         var _loc1_:QuadToggleButton = new QuadToggleButton();
         _loc1_.styleName = "inventory";
         _loc1_.id = "inventory";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.inventory = _loc1_;
         BindingManager.executeBindings(this,"inventory",this.inventory);
         return _loc1_;
      }
      
      private function _MainMenuComponent_SpriteVisualElement1_i() : SpriteVisualElement
      {
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.mouseChildren = false;
         _loc1_.mouseEnabled = false;
         _loc1_.initialized(this,"inventorySparkleSprite");
         this.inventorySparkleSprite = _loc1_;
         BindingManager.executeBindings(this,"inventorySparkleSprite",this.inventorySparkleSprite);
         return _loc1_;
      }
      
      private function _MainMenuComponent_QuadToggleButton5_i() : QuadToggleButton
      {
         var _loc1_:QuadToggleButton = new QuadToggleButton();
         _loc1_.styleName = "market";
         _loc1_.id = "market";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.market = _loc1_;
         BindingManager.executeBindings(this,"market",this.market);
         return _loc1_;
      }
      
      private function _MainMenuComponent_QuadToggleButton6_i() : QuadToggleButton
      {
         var _loc1_:QuadToggleButton = new QuadToggleButton();
         _loc1_.styleName = "friends";
         _loc1_.id = "friends";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.friends = _loc1_;
         BindingManager.executeBindings(this,"friends",this.friends);
         return _loc1_;
      }
      
      private function _MainMenuComponent_QuadToggleButton7_i() : QuadToggleButton
      {
         var _loc1_:QuadToggleButton = new QuadToggleButton();
         _loc1_.styleName = "majorvilla";
         _loc1_.showBadge = true;
         _loc1_.id = "majorvilla";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.majorvilla = _loc1_;
         BindingManager.executeBindings(this,"majorvilla",this.majorvilla);
         return _loc1_;
      }
      
      private function _MainMenuComponent_QuadToggleButton8_i() : QuadToggleButton
      {
         var _loc1_:QuadToggleButton = new QuadToggleButton();
         _loc1_.styleName = "playfieldSwitch";
         _loc1_.inactive = true;
         _loc1_.id = "playfieldSwitch";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.playfieldSwitch = _loc1_;
         BindingManager.executeBindings(this,"playfieldSwitch",this.playfieldSwitch);
         return _loc1_;
      }
      
      private function _MainMenuComponent_QuadToggleButton9_i() : QuadToggleButton
      {
         var _loc1_:QuadToggleButton = new QuadToggleButton();
         _loc1_.styleName = "options";
         _loc1_.id = "options";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.options = _loc1_;
         BindingManager.executeBindings(this,"options",this.options);
         return _loc1_;
      }
      
      private function _MainMenuComponent_CursorGroupComponent1_i() : CursorGroupComponent
      {
         var _loc1_:CursorGroupComponent = new CursorGroupComponent();
         _loc1_.left = 5;
         _loc1_.bottom = 50;
         _loc1_.gap = 0;
         _loc1_.id = "cursorGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.cursorGroup = _loc1_;
         BindingManager.executeBindings(this,"cursorGroup",this.cursorGroup);
         return _loc1_;
      }
      
      private function _MainMenuComponent_ViewmodeGroupComponent1_i() : ViewmodeGroupComponent
      {
         var _loc1_:ViewmodeGroupComponent = new ViewmodeGroupComponent();
         _loc1_.left = 50;
         _loc1_.bottom = 50;
         _loc1_.gap = 0;
         _loc1_.visible = false;
         _loc1_.includeInLayout = false;
         _loc1_.id = "viewmodeGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.viewmodeGroup = _loc1_;
         BindingManager.executeBindings(this,"viewmodeGroup",this.viewmodeGroup);
         return _loc1_;
      }
      
      private function _MainMenuComponent_OptionsGroupComponent1_i() : OptionsGroupComponent
      {
         var _loc1_:OptionsGroupComponent = new OptionsGroupComponent();
         _loc1_.right = 5;
         _loc1_.bottom = 50;
         _loc1_.gap = 0;
         _loc1_.id = "optionsGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.optionsGroup = _loc1_;
         BindingManager.executeBindings(this,"optionsGroup",this.optionsGroup);
         return _loc1_;
      }
      
      private function _MainMenuComponent_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Boolean
         {
            return cursor.selected;
         },null,"cursorGroup.visible");
         result[1] = new Binding(this,function():Boolean
         {
            return cursor.selected;
         },null,"cursorGroup.includeInLayout");
         result[2] = new Binding(this,function():Boolean
         {
            return options.selected;
         },null,"optionsGroup.visible");
         result[3] = new Binding(this,function():Boolean
         {
            return options.selected;
         },null,"optionsGroup.includeInLayout");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get bgGroup() : HGroup
      {
         return this._201073350bgGroup;
      }
      
      public function set bgGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._201073350bgGroup;
         if(_loc2_ !== param1)
         {
            this._201073350bgGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bgGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cursor() : QuadToggleButton
      {
         return this._1349119146cursor;
      }
      
      public function set cursor(param1:QuadToggleButton) : void
      {
         var _loc2_:Object = this._1349119146cursor;
         if(_loc2_ !== param1)
         {
            this._1349119146cursor = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cursor",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cursorGroup() : CursorGroupComponent
      {
         return this._1591961399cursorGroup;
      }
      
      public function set cursorGroup(param1:CursorGroupComponent) : void
      {
         var _loc2_:Object = this._1591961399cursorGroup;
         if(_loc2_ !== param1)
         {
            this._1591961399cursorGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cursorGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get friends() : QuadToggleButton
      {
         return this._600094315friends;
      }
      
      public function set friends(param1:QuadToggleButton) : void
      {
         var _loc2_:Object = this._600094315friends;
         if(_loc2_ !== param1)
         {
            this._600094315friends = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"friends",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ingameStore() : QuadToggleButton
      {
         return this._1147097226ingameStore;
      }
      
      public function set ingameStore(param1:QuadToggleButton) : void
      {
         var _loc2_:Object = this._1147097226ingameStore;
         if(_loc2_ !== param1)
         {
            this._1147097226ingameStore = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ingameStore",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get inventory() : QuadToggleButton
      {
         return this._2020599460inventory;
      }
      
      public function set inventory(param1:QuadToggleButton) : void
      {
         var _loc2_:Object = this._2020599460inventory;
         if(_loc2_ !== param1)
         {
            this._2020599460inventory = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inventory",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get inventorySparkleSprite() : SpriteVisualElement
      {
         return this._987049855inventorySparkleSprite;
      }
      
      public function set inventorySparkleSprite(param1:SpriteVisualElement) : void
      {
         var _loc2_:Object = this._987049855inventorySparkleSprite;
         if(_loc2_ !== param1)
         {
            this._987049855inventorySparkleSprite = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inventorySparkleSprite",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get majorvilla() : QuadToggleButton
      {
         return this._310630091majorvilla;
      }
      
      public function set majorvilla(param1:QuadToggleButton) : void
      {
         var _loc2_:Object = this._310630091majorvilla;
         if(_loc2_ !== param1)
         {
            this._310630091majorvilla = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"majorvilla",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get market() : QuadToggleButton
      {
         return this._1081306052market;
      }
      
      public function set market(param1:QuadToggleButton) : void
      {
         var _loc2_:Object = this._1081306052market;
         if(_loc2_ !== param1)
         {
            this._1081306052market = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"market",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get options() : QuadToggleButton
      {
         return this._1249474914options;
      }
      
      public function set options(param1:QuadToggleButton) : void
      {
         var _loc2_:Object = this._1249474914options;
         if(_loc2_ !== param1)
         {
            this._1249474914options = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"options",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get optionsGroup() : OptionsGroupComponent
      {
         return this._1990659455optionsGroup;
      }
      
      public function set optionsGroup(param1:OptionsGroupComponent) : void
      {
         var _loc2_:Object = this._1990659455optionsGroup;
         if(_loc2_ !== param1)
         {
            this._1990659455optionsGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"optionsGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get playfieldSwitch() : QuadToggleButton
      {
         return this._1313256166playfieldSwitch;
      }
      
      public function set playfieldSwitch(param1:QuadToggleButton) : void
      {
         var _loc2_:Object = this._1313256166playfieldSwitch;
         if(_loc2_ !== param1)
         {
            this._1313256166playfieldSwitch = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"playfieldSwitch",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get viewmodeGroup() : ViewmodeGroupComponent
      {
         return this._355710569viewmodeGroup;
      }
      
      public function set viewmodeGroup(param1:ViewmodeGroupComponent) : void
      {
         var _loc2_:Object = this._355710569viewmodeGroup;
         if(_loc2_ !== param1)
         {
            this._355710569viewmodeGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"viewmodeGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get viewmodes() : QuadToggleButton
      {
         return this._1560240213viewmodes;
      }
      
      public function set viewmodes(param1:QuadToggleButton) : void
      {
         var _loc2_:Object = this._1560240213viewmodes;
         if(_loc2_ !== param1)
         {
            this._1560240213viewmodes = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"viewmodes",_loc2_,param1));
            }
         }
      }
   }
}

