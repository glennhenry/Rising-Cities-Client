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
   import spark.components.ToggleButton;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class OptionsGroupComponent extends VGroup implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _1599314517subMenueBasement:ToggleButton;
      
      private var _459622175subMenueFullscreen:ToggleButton;
      
      private var _1336135971subMenueMoreOptions:ToggleButton;
      
      private var _583625769subMenueSound:ToggleButton;
      
      private var _573224313subMenueZoom:ToggleButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function OptionsGroupComponent()
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
         bindings = this._OptionsGroupComponent_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_mainMenu_ui_components_OptionsGroupComponentWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return OptionsGroupComponent[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._OptionsGroupComponent_BriskImageDynaLib1_c(),this._OptionsGroupComponent_Group1_c(),this._OptionsGroupComponent_BriskImageDynaLib3_c()];
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         OptionsGroupComponent._watcherSetupUtil = param1;
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
      
      private function _OptionsGroupComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
         _loc1_.dynaBmpSourceName = "ui_main_subkategorie_top";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _OptionsGroupComponent_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._OptionsGroupComponent_BriskImageDynaLib2_c(),this._OptionsGroupComponent_VGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _OptionsGroupComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
         _loc1_.dynaBmpSourceName = "ui_main_subkategorie_middle";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _OptionsGroupComponent_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalCenter = 0;
         _loc1_.percentHeight = 100;
         _loc1_.gap = 2;
         _loc1_.mxmlContent = [this._OptionsGroupComponent_ToggleButton1_i(),this._OptionsGroupComponent_ToggleButton2_i(),this._OptionsGroupComponent_ToggleButton3_i(),this._OptionsGroupComponent_ToggleButton4_i(),this._OptionsGroupComponent_ToggleButton5_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _OptionsGroupComponent_ToggleButton1_i() : ToggleButton
      {
         var _loc1_:ToggleButton = new ToggleButton();
         _loc1_.styleName = "subMenueMoreOptions";
         _loc1_.id = "subMenueMoreOptions";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.subMenueMoreOptions = _loc1_;
         BindingManager.executeBindings(this,"subMenueMoreOptions",this.subMenueMoreOptions);
         return _loc1_;
      }
      
      private function _OptionsGroupComponent_ToggleButton2_i() : ToggleButton
      {
         var _loc1_:ToggleButton = new ToggleButton();
         _loc1_.styleName = "subMenueBasement";
         _loc1_.id = "subMenueBasement";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.subMenueBasement = _loc1_;
         BindingManager.executeBindings(this,"subMenueBasement",this.subMenueBasement);
         return _loc1_;
      }
      
      private function _OptionsGroupComponent_ToggleButton3_i() : ToggleButton
      {
         var _loc1_:ToggleButton = new ToggleButton();
         _loc1_.styleName = "subMenueZoom";
         _loc1_.id = "subMenueZoom";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.subMenueZoom = _loc1_;
         BindingManager.executeBindings(this,"subMenueZoom",this.subMenueZoom);
         return _loc1_;
      }
      
      private function _OptionsGroupComponent_ToggleButton4_i() : ToggleButton
      {
         var _loc1_:ToggleButton = new ToggleButton();
         _loc1_.styleName = "subMenueFullscreen";
         _loc1_.id = "subMenueFullscreen";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.subMenueFullscreen = _loc1_;
         BindingManager.executeBindings(this,"subMenueFullscreen",this.subMenueFullscreen);
         return _loc1_;
      }
      
      private function _OptionsGroupComponent_ToggleButton5_i() : ToggleButton
      {
         var _loc1_:ToggleButton = new ToggleButton();
         _loc1_.styleName = "subMenueSound";
         _loc1_.id = "subMenueSound";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.subMenueSound = _loc1_;
         BindingManager.executeBindings(this,"subMenueSound",this.subMenueSound);
         return _loc1_;
      }
      
      private function _OptionsGroupComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_mainmenue";
         _loc1_.dynaBmpSourceName = "ui_main_subkategorie_bottom";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _OptionsGroupComponent_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = ResourceManager.getInstance().getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.options.advanced"));
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"subMenueMoreOptions.toolTip");
         result[1] = new Binding(this,function():String
         {
            var _loc1_:* = subMenueBasement.selected ? ResourceManager.getInstance().getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.basement.off")) : ResourceManager.getInstance().getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.basement.on"));
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"subMenueBasement.toolTip");
         result[2] = new Binding(this,function():String
         {
            var _loc1_:* = subMenueZoom.selected ? ResourceManager.getInstance().getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.zoom.in")) : ResourceManager.getInstance().getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.zoom.out"));
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"subMenueZoom.toolTip");
         result[3] = new Binding(this,function():String
         {
            var _loc1_:* = subMenueFullscreen.selected ? ResourceManager.getInstance().getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.fullscreen.off")) : ResourceManager.getInstance().getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.fullscreen.on"));
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"subMenueFullscreen.toolTip");
         result[4] = new Binding(this,function():String
         {
            var _loc1_:* = !subMenueSound.selected ? ResourceManager.getInstance().getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.sound.on")) : ResourceManager.getInstance().getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.sound.off"));
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"subMenueSound.toolTip");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get subMenueBasement() : ToggleButton
      {
         return this._1599314517subMenueBasement;
      }
      
      public function set subMenueBasement(param1:ToggleButton) : void
      {
         var _loc2_:Object = this._1599314517subMenueBasement;
         if(_loc2_ !== param1)
         {
            this._1599314517subMenueBasement = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"subMenueBasement",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get subMenueFullscreen() : ToggleButton
      {
         return this._459622175subMenueFullscreen;
      }
      
      public function set subMenueFullscreen(param1:ToggleButton) : void
      {
         var _loc2_:Object = this._459622175subMenueFullscreen;
         if(_loc2_ !== param1)
         {
            this._459622175subMenueFullscreen = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"subMenueFullscreen",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get subMenueMoreOptions() : ToggleButton
      {
         return this._1336135971subMenueMoreOptions;
      }
      
      public function set subMenueMoreOptions(param1:ToggleButton) : void
      {
         var _loc2_:Object = this._1336135971subMenueMoreOptions;
         if(_loc2_ !== param1)
         {
            this._1336135971subMenueMoreOptions = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"subMenueMoreOptions",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get subMenueSound() : ToggleButton
      {
         return this._583625769subMenueSound;
      }
      
      public function set subMenueSound(param1:ToggleButton) : void
      {
         var _loc2_:Object = this._583625769subMenueSound;
         if(_loc2_ !== param1)
         {
            this._583625769subMenueSound = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"subMenueSound",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get subMenueZoom() : ToggleButton
      {
         return this._573224313subMenueZoom;
      }
      
      public function set subMenueZoom(param1:ToggleButton) : void
      {
         var _loc2_:Object = this._573224313subMenueZoom;
         if(_loc2_ !== param1)
         {
            this._573224313subMenueZoom = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"subMenueZoom",_loc2_,param1));
            }
         }
      }
   }
}

