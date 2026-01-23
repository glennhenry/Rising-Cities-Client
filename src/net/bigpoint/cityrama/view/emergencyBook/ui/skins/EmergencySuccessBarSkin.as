package net.bigpoint.cityrama.view.emergencyBook.ui.skins
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
   import mx.core.IStateClient2;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.emergencyBook.ui.components.EmergencySuccessBarComponent;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class EmergencySuccessBarSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _686650417advanceBar:Group;
      
      private var _940952062blendBar:HGroup;
      
      private var _1367696671capBar:Group;
      
      private var _1747238253capBarMask:HGroup;
      
      private var _1321302782capBubble:Button;
      
      private var _1494859114capBubbleLabel:LocaLabel;
      
      private var _3226745icon:BriskImageDynaLib;
      
      private var _1184053038labelDisplay:LocaLabel;
      
      private var _1131509414progressBar:Group;
      
      private var _187521914stripeBar:HGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:EmergencySuccessBarComponent;
      
      public function EmergencySuccessBarSkin()
      {
         var watchers:Array;
         var i:uint;
         var bindings:Array = null;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this.mx_internal::_bindings = [];
         this.mx_internal::_watchers = [];
         this.mx_internal::_bindingsByDestination = {};
         this.mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._EmergencySuccessBarSkin_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_emergencyBook_ui_skins_EmergencySuccessBarSkinWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return EmergencySuccessBarSkin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._EmergencySuccessBarSkin_StickyNoteComponent1_c(),this._EmergencySuccessBarSkin_Group1_c()];
         this.currentState = "normal";
         this.addEventListener("creationComplete",this.___EmergencySuccessBarSkin_SparkSkin1_creationComplete);
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[]
         })];
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         EmergencySuccessBarSkin._watcherSetupUtil = param1;
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
      
      private function handleCreationComplete() : void
      {
         var _loc3_:BriskImageDynaLib = null;
         var _loc1_:Number = 53236;
         if(this.hostComponent.getStyle("tint") != null)
         {
            _loc1_ = this.hostComponent.getStyle("tint") as uint;
         }
         TweenMax.to(this.blendBar,0,{"tint":_loc1_});
         var _loc2_:Number = 0;
         while(_loc2_ < this.stripeBar.width)
         {
            _loc3_ = new BriskImageDynaLib();
            _loc3_.dynaLibName = "gui_popups_emergencyBook";
            _loc3_.dynaBmpSourceName = "infrabar_blocked";
            this.stripeBar.addElement(_loc3_);
            _loc2_ += 11;
         }
      }
      
      private function handleBubbleClicked() : void
      {
         dispatchEvent(new Event(EmergencySuccessBarComponent.BUBBLE_CLICKED));
      }
      
      private function _EmergencySuccessBarSkin_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.tapeRight = true;
         _loc1_.tapeLeft = true;
         _loc1_.styleName = "blue";
         _loc1_.width = 526;
         _loc1_.height = 80;
         _loc1_.bottom = -6;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.right = 34;
         _loc1_.left = 20;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_Group2_c(),this._EmergencySuccessBarSkin_Group3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.bottom = 44;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_HGroup1_c(),this._EmergencySuccessBarSkin_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.left = 5;
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_BriskImageDynaLib1_c(),this._EmergencySuccessBarSkin_BriskImageDynaLib2_c(),this._EmergencySuccessBarSkin_BriskImageDynaLib3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "bluemarker_small_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "bluemarker_small_middle";
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "bluemarker_small_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.verticalCenter = 0;
         _loc1_.left = 40;
         _loc1_.styleName = "emergencySuccessBarLabel";
         _loc1_.maxDisplayedLines = 1;
         _loc1_.id = "labelDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.labelDisplay = _loc1_;
         BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.bottom = 4;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_HGroup2_c(),this._EmergencySuccessBarSkin_HGroup3_i(),this._EmergencySuccessBarSkin_HGroup4_c(),this._EmergencySuccessBarSkin_HGroup6_c(),this._EmergencySuccessBarSkin_BriskImageDynaLib16_i(),this._EmergencySuccessBarSkin_HGroup9_c(),this._EmergencySuccessBarSkin_HGroup10_c(),this._EmergencySuccessBarSkin_Group8_c(),this._EmergencySuccessBarSkin_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.left = 20;
         _loc1_.right = 30;
         _loc1_.verticalCenter = 0;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_BriskImageDynaLib4_c(),this._EmergencySuccessBarSkin_BriskImageDynaLib5_c(),this._EmergencySuccessBarSkin_BriskImageDynaLib6_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "infrabar_bg_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "infrabar_bg_middle";
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "infrabar_bg_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_HGroup3_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.left = 20;
         _loc1_.right = 30;
         _loc1_.verticalCenter = 0;
         _loc1_.gap = 0;
         _loc1_.id = "stripeBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.stripeBar = _loc1_;
         BindingManager.executeBindings(this,"stripeBar",this.stripeBar);
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.left = 20;
         _loc1_.right = 30;
         _loc1_.paddingLeft = 3;
         _loc1_.paddingRight = 3;
         _loc1_.verticalCenter = 0;
         _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_Group4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_Group4_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.verticalCenter = 0;
         _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_HGroup5_c()];
         _loc1_.id = "advanceBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.advanceBar = _loc1_;
         BindingManager.executeBindings(this,"advanceBar",this.advanceBar);
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_BriskImageDynaLib7_c(),this._EmergencySuccessBarSkin_BriskImageDynaLib8_c(),this._EmergencySuccessBarSkin_BriskImageDynaLib9_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "infrabar_yellow_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "infrabar_yellow_middle";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib9_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "infrabar_yellow_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_HGroup6_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.left = 20;
         _loc1_.right = 30;
         _loc1_.paddingLeft = 3;
         _loc1_.paddingRight = 3;
         _loc1_.verticalCenter = 0;
         _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_Group5_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_Group5_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.verticalCenter = 0;
         _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_HGroup7_c(),this._EmergencySuccessBarSkin_HGroup8_i()];
         _loc1_.id = "progressBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.progressBar = _loc1_;
         BindingManager.executeBindings(this,"progressBar",this.progressBar);
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_HGroup7_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_BriskImageDynaLib10_c(),this._EmergencySuccessBarSkin_BriskImageDynaLib11_c(),this._EmergencySuccessBarSkin_BriskImageDynaLib12_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib10_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "infrabar_green_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib11_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "infrabar_green_middle";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib12_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "infrabar_green_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_HGroup8_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_BriskImageDynaLib13_c(),this._EmergencySuccessBarSkin_BriskImageDynaLib14_c(),this._EmergencySuccessBarSkin_BriskImageDynaLib15_c()];
         _loc1_.id = "blendBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.blendBar = _loc1_;
         BindingManager.executeBindings(this,"blendBar",this.blendBar);
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib13_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "infrabar_green_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib14_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "infrabar_green_middle";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib15_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "infrabar_green_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib16_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.id = "icon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.icon = _loc1_;
         BindingManager.executeBindings(this,"icon",this.icon);
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_HGroup9_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.left = 20;
         _loc1_.right = 26;
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 70;
         _loc1_.verticalCenter = 0;
         _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_BriskImageDynaLib17_c(),this._EmergencySuccessBarSkin_BriskImageDynaLib18_c(),this._EmergencySuccessBarSkin_BriskImageDynaLib19_c(),this._EmergencySuccessBarSkin_BriskImageDynaLib20_c(),this._EmergencySuccessBarSkin_BriskImageDynaLib21_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib17_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "infrabar_divider";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib18_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "infrabar_divider";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib19_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "infrabar_divider";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib20_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "infrabar_divider";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib21_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "infrabar_divider";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_HGroup10_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.left = 20;
         _loc1_.right = 30;
         _loc1_.horizontalAlign = "right";
         _loc1_.paddingLeft = 3;
         _loc1_.paddingRight = 3;
         _loc1_.verticalCenter = 0;
         _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_Group6_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_Group6_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_Group7_c()];
         _loc1_.id = "capBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.capBar = _loc1_;
         BindingManager.executeBindings(this,"capBar",this.capBar);
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_Group7_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_HGroup11_i(),this._EmergencySuccessBarSkin_BriskImageDynaLib24_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_HGroup11_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.paddingTop = 5;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_BriskImageDynaLib22_c(),this._EmergencySuccessBarSkin_BriskImageDynaLib23_c()];
         _loc1_.id = "capBarMask";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.capBarMask = _loc1_;
         BindingManager.executeBindings(this,"capBarMask",this.capBarMask);
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib22_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "citysquare_bar_middle";
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib23_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "citysquare_bar_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_BriskImageDynaLib24_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "indicator";
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.left = -5;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_Group8_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.right = 0;
         _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_Button1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_Button1_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.focusEnabled = false;
         _loc1_.setStyle("skinClass",EmergencySuccessBarButtonSkin);
         _loc1_.addEventListener("click",this.__capBubble_click);
         _loc1_.id = "capBubble";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.capBubble = _loc1_;
         BindingManager.executeBindings(this,"capBubble",this.capBubble);
         return _loc1_;
      }
      
      public function __capBubble_click(param1:MouseEvent) : void
      {
         this.handleBubbleClicked();
      }
      
      private function _EmergencySuccessBarSkin_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.height = 45;
         _loc1_.width = 45;
         _loc1_.right = 0;
         _loc1_.mouseEnabled = false;
         _loc1_.mouseChildren = false;
         _loc1_.mxmlContent = [this._EmergencySuccessBarSkin_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencySuccessBarSkin_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "maxSuccessChance";
         _loc1_.id = "capBubbleLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.capBubbleLabel = _loc1_;
         BindingManager.executeBindings(this,"capBubbleLabel",this.capBubbleLabel);
         return _loc1_;
      }
      
      public function ___EmergencySuccessBarSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete();
      }
      
      private function _EmergencySuccessBarSkin_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():DisplayObject
         {
            return this.capBarMask;
         },null,"stripeBar.mask");
         result[1] = new Binding(this,function():String
         {
            var _loc1_:* = BlendMode.OVERLAY;
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"blendBar.blendMode");
         result[2] = new Binding(this,function():String
         {
            var _loc1_:* = this.hostComponent.getStyle("dynaLibName");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"icon.dynaLibName");
         result[3] = new Binding(this,function():String
         {
            var _loc1_:* = this.hostComponent.getStyle("icon");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"icon.dynaBmpSourceName");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get advanceBar() : Group
      {
         return this._686650417advanceBar;
      }
      
      public function set advanceBar(param1:Group) : void
      {
         var _loc2_:Object = this._686650417advanceBar;
         if(_loc2_ !== param1)
         {
            this._686650417advanceBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"advanceBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get blendBar() : HGroup
      {
         return this._940952062blendBar;
      }
      
      public function set blendBar(param1:HGroup) : void
      {
         var _loc2_:Object = this._940952062blendBar;
         if(_loc2_ !== param1)
         {
            this._940952062blendBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blendBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get capBar() : Group
      {
         return this._1367696671capBar;
      }
      
      public function set capBar(param1:Group) : void
      {
         var _loc2_:Object = this._1367696671capBar;
         if(_loc2_ !== param1)
         {
            this._1367696671capBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"capBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get capBarMask() : HGroup
      {
         return this._1747238253capBarMask;
      }
      
      public function set capBarMask(param1:HGroup) : void
      {
         var _loc2_:Object = this._1747238253capBarMask;
         if(_loc2_ !== param1)
         {
            this._1747238253capBarMask = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"capBarMask",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get capBubble() : Button
      {
         return this._1321302782capBubble;
      }
      
      public function set capBubble(param1:Button) : void
      {
         var _loc2_:Object = this._1321302782capBubble;
         if(_loc2_ !== param1)
         {
            this._1321302782capBubble = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"capBubble",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get capBubbleLabel() : LocaLabel
      {
         return this._1494859114capBubbleLabel;
      }
      
      public function set capBubbleLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1494859114capBubbleLabel;
         if(_loc2_ !== param1)
         {
            this._1494859114capBubbleLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"capBubbleLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get icon() : BriskImageDynaLib
      {
         return this._3226745icon;
      }
      
      public function set icon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._3226745icon;
         if(_loc2_ !== param1)
         {
            this._3226745icon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get labelDisplay() : LocaLabel
      {
         return this._1184053038labelDisplay;
      }
      
      public function set labelDisplay(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1184053038labelDisplay;
         if(_loc2_ !== param1)
         {
            this._1184053038labelDisplay = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelDisplay",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBar() : Group
      {
         return this._1131509414progressBar;
      }
      
      public function set progressBar(param1:Group) : void
      {
         var _loc2_:Object = this._1131509414progressBar;
         if(_loc2_ !== param1)
         {
            this._1131509414progressBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stripeBar() : HGroup
      {
         return this._187521914stripeBar;
      }
      
      public function set stripeBar(param1:HGroup) : void
      {
         var _loc2_:Object = this._187521914stripeBar;
         if(_loc2_ !== param1)
         {
            this._187521914stripeBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stripeBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : EmergencySuccessBarComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:EmergencySuccessBarComponent) : void
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

