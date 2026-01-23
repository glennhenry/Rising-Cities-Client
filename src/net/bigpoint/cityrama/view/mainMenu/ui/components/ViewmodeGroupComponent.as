package net.bigpoint.cityrama.view.mainMenu.ui.components
{
   import com.greensock.TweenMax;
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
   
   public class ViewmodeGroupComponent extends VGroup implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public static const EVENT_POLICE_SELECTED:String = "EVENT_POLICE_SELECTED";
      
      public static const EVENT_FIRE_SELECTED:String = "EVENT_FIRE_SELECTED";
      
      public static const EVENT_HOSPITAL_SELECTED:String = "EVENT_HOSPITAL_SELECTED";
      
      public static const EVENT_NONE_SELECTED:String = "EVENT_NONE_SELECTED";
      
      private var _1258932387emergencyViews:RadioButtonGroup;
      
      private var _397212403fireViewButton:RadioButton;
      
      private var _697116655hospitalViewButton:RadioButton;
      
      private var _1712402933policeViewButton:RadioButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ViewmodeGroupComponent()
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
         bindings = this._ViewmodeGroupComponent_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_mainMenu_ui_components_ViewmodeGroupComponentWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return ViewmodeGroupComponent[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._ViewmodeGroupComponent_BriskImageDynaLib1_c(),this._ViewmodeGroupComponent_Group1_c(),this._ViewmodeGroupComponent_BriskImageDynaLib3_c()];
         this._ViewmodeGroupComponent_RadioButtonGroup1_i();
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         ViewmodeGroupComponent._watcherSetupUtil = param1;
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
         var _loc2_:int = 0;
         while(_loc2_ < (param1.currentTarget as RadioButtonGroup).numRadioButtons)
         {
            if((param1.currentTarget as RadioButtonGroup).getRadioButtonAt(_loc2_).hasEventListener(MouseEvent.CLICK))
            {
               (param1.currentTarget as RadioButtonGroup).getRadioButtonAt(_loc2_).removeEventListener(MouseEvent.CLICK,this.deselectHandler);
            }
            _loc2_++;
         }
         switch((param1.currentTarget as RadioButtonGroup).selection)
         {
            case this.hospitalViewButton:
               dispatchEvent(new Event(EVENT_HOSPITAL_SELECTED));
               break;
            case this.policeViewButton:
               dispatchEvent(new Event(EVENT_POLICE_SELECTED));
               break;
            case this.fireViewButton:
               dispatchEvent(new Event(EVENT_FIRE_SELECTED));
         }
         TweenMax.delayedCall(0.1,this.delayedEventAdd,[(param1.currentTarget as RadioButtonGroup).selection]);
      }
      
      private function delayedEventAdd(param1:RadioButton) : void
      {
         param1.addEventListener(MouseEvent.CLICK,this.deselectHandler);
      }
      
      private function deselectHandler(param1:MouseEvent) : void
      {
         (param1.currentTarget as RadioButton).selected = false;
         (param1.currentTarget as RadioButton).removeEventListener(MouseEvent.CLICK,this.deselectHandler);
         dispatchEvent(new Event(EVENT_NONE_SELECTED));
      }
      
      private function _ViewmodeGroupComponent_RadioButtonGroup1_i() : RadioButtonGroup
      {
         var _loc1_:RadioButtonGroup = new RadioButtonGroup();
         _loc1_.addEventListener("change",this.__emergencyViews_change);
         _loc1_.initialized(this,"emergencyViews");
         this.emergencyViews = _loc1_;
         BindingManager.executeBindings(this,"emergencyViews",this.emergencyViews);
         return _loc1_;
      }
      
      public function __emergencyViews_change(param1:Event) : void
      {
         this.handleToolChange(param1);
      }
      
      private function _ViewmodeGroupComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
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
      
      private function _ViewmodeGroupComponent_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._ViewmodeGroupComponent_BriskImageDynaLib2_c(),this._ViewmodeGroupComponent_VGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ViewmodeGroupComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
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
      
      private function _ViewmodeGroupComponent_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalCenter = 0;
         _loc1_.percentHeight = 100;
         _loc1_.gap = 2;
         _loc1_.mxmlContent = [this._ViewmodeGroupComponent_RadioButton1_i(),this._ViewmodeGroupComponent_RadioButton2_i(),this._ViewmodeGroupComponent_RadioButton3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ViewmodeGroupComponent_RadioButton1_i() : RadioButton
      {
         var _loc1_:RadioButton = new RadioButton();
         _loc1_.groupName = "emergencyViews";
         _loc1_.styleName = "subMenueHospitalView";
         _loc1_.id = "hospitalViewButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.hospitalViewButton = _loc1_;
         BindingManager.executeBindings(this,"hospitalViewButton",this.hospitalViewButton);
         return _loc1_;
      }
      
      private function _ViewmodeGroupComponent_RadioButton2_i() : RadioButton
      {
         var _loc1_:RadioButton = new RadioButton();
         _loc1_.groupName = "emergencyViews";
         _loc1_.styleName = "subMenuePoliceView";
         _loc1_.id = "policeViewButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.policeViewButton = _loc1_;
         BindingManager.executeBindings(this,"policeViewButton",this.policeViewButton);
         return _loc1_;
      }
      
      private function _ViewmodeGroupComponent_RadioButton3_i() : RadioButton
      {
         var _loc1_:RadioButton = new RadioButton();
         _loc1_.groupName = "emergencyViews";
         _loc1_.styleName = "subMenueFireView";
         _loc1_.id = "fireViewButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.fireViewButton = _loc1_;
         BindingManager.executeBindings(this,"fireViewButton",this.fireViewButton);
         return _loc1_;
      }
      
      private function _ViewmodeGroupComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
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
      
      private function _ViewmodeGroupComponent_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = ResourceManager.getInstance().getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.viewmodes.hospitalView"));
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"hospitalViewButton.toolTip");
         result[1] = new Binding(this,function():String
         {
            var _loc1_:* = ResourceManager.getInstance().getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.viewmodes.policeView"));
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"policeViewButton.toolTip");
         result[2] = new Binding(this,function():String
         {
            var _loc1_:* = ResourceManager.getInstance().getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.viewmodes.fireView"));
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"fireViewButton.toolTip");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get emergencyViews() : RadioButtonGroup
      {
         return this._1258932387emergencyViews;
      }
      
      public function set emergencyViews(param1:RadioButtonGroup) : void
      {
         var _loc2_:Object = this._1258932387emergencyViews;
         if(_loc2_ !== param1)
         {
            this._1258932387emergencyViews = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"emergencyViews",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fireViewButton() : RadioButton
      {
         return this._397212403fireViewButton;
      }
      
      public function set fireViewButton(param1:RadioButton) : void
      {
         var _loc2_:Object = this._397212403fireViewButton;
         if(_loc2_ !== param1)
         {
            this._397212403fireViewButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fireViewButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hospitalViewButton() : RadioButton
      {
         return this._697116655hospitalViewButton;
      }
      
      public function set hospitalViewButton(param1:RadioButton) : void
      {
         var _loc2_:Object = this._697116655hospitalViewButton;
         if(_loc2_ !== param1)
         {
            this._697116655hospitalViewButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hospitalViewButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get policeViewButton() : RadioButton
      {
         return this._1712402933policeViewButton;
      }
      
      public function set policeViewButton(param1:RadioButton) : void
      {
         var _loc2_:Object = this._1712402933policeViewButton;
         if(_loc2_ !== param1)
         {
            this._1712402933policeViewButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"policeViewButton",_loc2_,param1));
            }
         }
      }
   }
}

