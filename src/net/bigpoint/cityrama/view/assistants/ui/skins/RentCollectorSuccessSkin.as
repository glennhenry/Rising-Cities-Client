package net.bigpoint.cityrama.view.assistants.ui.skins
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
   import mx.core.IStateClient2;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.resources.ResourceManager;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.assistants.ui.components.RentCollectorBubbleComponent;
   import net.bigpoint.cityrama.view.assistants.ui.components.RentCollectorInfoComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class RentCollectorSuccessSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _RentCollectorSuccessSkin_BriskImageDynaLib5:BriskImageDynaLib;
      
      public var _RentCollectorSuccessSkin_BriskImageDynaLib6:BriskImageDynaLib;
      
      public var _RentCollectorSuccessSkin_BriskImageDynaLib7:BriskImageDynaLib;
      
      private var _1378241396bubble:RentCollectorBubbleComponent;
      
      private var _1783636765epAmount:LocaLabel;
      
      private var _1297385352epText:LocaLabel;
      
      private var _1221270899header:LocaLabel;
      
      private var _207407736ppAmount:LocaLabel;
      
      private var _982464691ppText:LocaLabel;
      
      private var _873278107vcAmount:LocaLabel;
      
      private var _822695558vcText:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:RentCollectorInfoComponent;
      
      public function RentCollectorSuccessSkin()
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
         bindings = this._RentCollectorSuccessSkin_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_assistants_ui_skins_RentCollectorSuccessSkinWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return RentCollectorSuccessSkin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.width = 250;
         this.minHeight = 90;
         this.mxmlContent = [this._RentCollectorSuccessSkin_Group1_c()];
         this.currentState = "normal";
         this.addEventListener("creationComplete",this.___RentCollectorSuccessSkin_SparkSkin1_creationComplete);
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
         RentCollectorSuccessSkin._watcherSetupUtil = param1;
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
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         this.vcText.text = ResourceManager.getInstance().getString(String("rcl.misc.resources"),String("rcl.misc.resources.virtualcurrency"));
         this.ppText.text = ResourceManager.getInstance().getString(String("rcl.misc.resources"),String("rcl.misc.resources.productionpoints"));
         this.epText.text = ResourceManager.getInstance().getString(String("rcl.misc.resources"),String("rcl.misc.resources.educationpoints"));
      }
      
      private function _RentCollectorSuccessSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._RentCollectorSuccessSkin_Group2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorSuccessSkin_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._RentCollectorSuccessSkin_RentCollectorBubbleComponent1_i(),this._RentCollectorSuccessSkin_HGroup1_c(),this._RentCollectorSuccessSkin_BriskImageDynaLib4_c(),this._RentCollectorSuccessSkin_HGroup2_c(),this._RentCollectorSuccessSkin_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorSuccessSkin_RentCollectorBubbleComponent1_i() : RentCollectorBubbleComponent
      {
         var _loc1_:RentCollectorBubbleComponent = new RentCollectorBubbleComponent();
         _loc1_.percentWidth = 100;
         _loc1_.bottom = 0;
         _loc1_.right = 0;
         _loc1_.id = "bubble";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bubble = _loc1_;
         BindingManager.executeBindings(this,"bubble",this.bubble);
         return _loc1_;
      }
      
      private function _RentCollectorSuccessSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.left = 5;
         _loc1_.right = 15;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.top = 9;
         _loc1_.height = 30;
         _loc1_.mxmlContent = [this._RentCollectorSuccessSkin_BriskImageDynaLib1_c(),this._RentCollectorSuccessSkin_BriskImageDynaLib2_c(),this._RentCollectorSuccessSkin_BriskImageDynaLib3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorSuccessSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_blueheadline_left";
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorSuccessSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_blueheadline_middle";
         _loc1_.percentWidth = 90;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorSuccessSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_blueheadline_right";
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorSuccessSkin_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "infolayer_icon_attention";
         _loc1_.left = -8;
         _loc1_.top = -10;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorSuccessSkin_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.left = 5;
         _loc1_.top = 11;
         _loc1_.right = 10;
         _loc1_.height = 30;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._RentCollectorSuccessSkin_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorSuccessSkin_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "eventName";
         _loc1_.maxWidth = 170;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.id = "header";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.header = _loc1_;
         BindingManager.executeBindings(this,"header",this.header);
         return _loc1_;
      }
      
      private function _RentCollectorSuccessSkin_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.left = 5;
         _loc1_.right = 15;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.paddingTop = 50;
         _loc1_.minHeight = 30;
         _loc1_.mxmlContent = [this._RentCollectorSuccessSkin_HGroup3_c(),this._RentCollectorSuccessSkin_HGroup4_c(),this._RentCollectorSuccessSkin_HGroup5_c(),this._RentCollectorSuccessSkin_Group3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorSuccessSkin_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 85;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._RentCollectorSuccessSkin_LocaLabel2_i(),this._RentCollectorSuccessSkin_LocaLabel3_i(),this._RentCollectorSuccessSkin_BriskImageDynaLib5_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorSuccessSkin_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "residentialCycleTextLeft";
         _loc1_.percentWidth = 100;
         _loc1_.id = "vcText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.vcText = _loc1_;
         BindingManager.executeBindings(this,"vcText",this.vcText);
         return _loc1_;
      }
      
      private function _RentCollectorSuccessSkin_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "residentialCycleText";
         _loc1_.id = "vcAmount";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.vcAmount = _loc1_;
         BindingManager.executeBindings(this,"vcAmount",this.vcAmount);
         return _loc1_;
      }
      
      private function _RentCollectorSuccessSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_resources_icons";
         _loc1_.dynaBmpSourceName = "layer_cc_icon_small";
         _loc1_.id = "_RentCollectorSuccessSkin_BriskImageDynaLib5";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._RentCollectorSuccessSkin_BriskImageDynaLib5 = _loc1_;
         BindingManager.executeBindings(this,"_RentCollectorSuccessSkin_BriskImageDynaLib5",this._RentCollectorSuccessSkin_BriskImageDynaLib5);
         return _loc1_;
      }
      
      private function _RentCollectorSuccessSkin_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 85;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._RentCollectorSuccessSkin_LocaLabel4_i(),this._RentCollectorSuccessSkin_LocaLabel5_i(),this._RentCollectorSuccessSkin_BriskImageDynaLib6_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorSuccessSkin_LocaLabel4_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "residentialCycleTextLeft";
         _loc1_.percentWidth = 100;
         _loc1_.id = "ppText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.ppText = _loc1_;
         BindingManager.executeBindings(this,"ppText",this.ppText);
         return _loc1_;
      }
      
      private function _RentCollectorSuccessSkin_LocaLabel5_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "residentialCycleText";
         _loc1_.id = "ppAmount";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.ppAmount = _loc1_;
         BindingManager.executeBindings(this,"ppAmount",this.ppAmount);
         return _loc1_;
      }
      
      private function _RentCollectorSuccessSkin_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_resources_icons";
         _loc1_.dynaBmpSourceName = "pp_icon_small";
         _loc1_.id = "_RentCollectorSuccessSkin_BriskImageDynaLib6";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._RentCollectorSuccessSkin_BriskImageDynaLib6 = _loc1_;
         BindingManager.executeBindings(this,"_RentCollectorSuccessSkin_BriskImageDynaLib6",this._RentCollectorSuccessSkin_BriskImageDynaLib6);
         return _loc1_;
      }
      
      private function _RentCollectorSuccessSkin_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 85;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._RentCollectorSuccessSkin_LocaLabel6_i(),this._RentCollectorSuccessSkin_LocaLabel7_i(),this._RentCollectorSuccessSkin_BriskImageDynaLib7_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorSuccessSkin_LocaLabel6_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "residentialCycleTextLeft";
         _loc1_.percentWidth = 100;
         _loc1_.id = "epText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.epText = _loc1_;
         BindingManager.executeBindings(this,"epText",this.epText);
         return _loc1_;
      }
      
      private function _RentCollectorSuccessSkin_LocaLabel7_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "residentialCycleText";
         _loc1_.id = "epAmount";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.epAmount = _loc1_;
         BindingManager.executeBindings(this,"epAmount",this.epAmount);
         return _loc1_;
      }
      
      private function _RentCollectorSuccessSkin_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_resources_icons";
         _loc1_.dynaBmpSourceName = "ep_icon_small";
         _loc1_.id = "_RentCollectorSuccessSkin_BriskImageDynaLib7";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._RentCollectorSuccessSkin_BriskImageDynaLib7 = _loc1_;
         BindingManager.executeBindings(this,"_RentCollectorSuccessSkin_BriskImageDynaLib7",this._RentCollectorSuccessSkin_BriskImageDynaLib7);
         return _loc1_;
      }
      
      private function _RentCollectorSuccessSkin_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 5;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___RentCollectorSuccessSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      private function _RentCollectorSuccessSkin_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Boolean
         {
            return vcAmount.visible;
         },null,"vcText.visible");
         result[1] = new Binding(this,function():Boolean
         {
            return vcAmount.includeInLayout;
         },null,"vcText.includeInLayout");
         result[2] = new Binding(this,function():Boolean
         {
            return vcAmount.visible;
         },null,"_RentCollectorSuccessSkin_BriskImageDynaLib5.visible");
         result[3] = new Binding(this,function():Boolean
         {
            return vcAmount.includeInLayout;
         },null,"_RentCollectorSuccessSkin_BriskImageDynaLib5.includeInLayout");
         result[4] = new Binding(this,function():Boolean
         {
            return ppAmount.visible;
         },null,"ppText.visible");
         result[5] = new Binding(this,function():Boolean
         {
            return ppAmount.includeInLayout;
         },null,"ppText.includeInLayout");
         result[6] = new Binding(this,function():Boolean
         {
            return ppAmount.visible;
         },null,"_RentCollectorSuccessSkin_BriskImageDynaLib6.visible");
         result[7] = new Binding(this,function():Boolean
         {
            return ppAmount.includeInLayout;
         },null,"_RentCollectorSuccessSkin_BriskImageDynaLib6.includeInLayout");
         result[8] = new Binding(this,function():Boolean
         {
            return epAmount.visible;
         },null,"epText.visible");
         result[9] = new Binding(this,function():Boolean
         {
            return epAmount.includeInLayout;
         },null,"epText.includeInLayout");
         result[10] = new Binding(this,function():Boolean
         {
            return epAmount.visible;
         },null,"_RentCollectorSuccessSkin_BriskImageDynaLib7.visible");
         result[11] = new Binding(this,function():Boolean
         {
            return epAmount.includeInLayout;
         },null,"_RentCollectorSuccessSkin_BriskImageDynaLib7.includeInLayout");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get bubble() : RentCollectorBubbleComponent
      {
         return this._1378241396bubble;
      }
      
      public function set bubble(param1:RentCollectorBubbleComponent) : void
      {
         var _loc2_:Object = this._1378241396bubble;
         if(_loc2_ !== param1)
         {
            this._1378241396bubble = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bubble",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get epAmount() : LocaLabel
      {
         return this._1783636765epAmount;
      }
      
      public function set epAmount(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1783636765epAmount;
         if(_loc2_ !== param1)
         {
            this._1783636765epAmount = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"epAmount",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get epText() : LocaLabel
      {
         return this._1297385352epText;
      }
      
      public function set epText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1297385352epText;
         if(_loc2_ !== param1)
         {
            this._1297385352epText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"epText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get header() : LocaLabel
      {
         return this._1221270899header;
      }
      
      public function set header(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1221270899header;
         if(_loc2_ !== param1)
         {
            this._1221270899header = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"header",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ppAmount() : LocaLabel
      {
         return this._207407736ppAmount;
      }
      
      public function set ppAmount(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._207407736ppAmount;
         if(_loc2_ !== param1)
         {
            this._207407736ppAmount = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ppAmount",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ppText() : LocaLabel
      {
         return this._982464691ppText;
      }
      
      public function set ppText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._982464691ppText;
         if(_loc2_ !== param1)
         {
            this._982464691ppText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ppText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vcAmount() : LocaLabel
      {
         return this._873278107vcAmount;
      }
      
      public function set vcAmount(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._873278107vcAmount;
         if(_loc2_ !== param1)
         {
            this._873278107vcAmount = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vcAmount",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vcText() : LocaLabel
      {
         return this._822695558vcText;
      }
      
      public function set vcText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._822695558vcText;
         if(_loc2_ !== param1)
         {
            this._822695558vcText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vcText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : RentCollectorInfoComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:RentCollectorInfoComponent) : void
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

