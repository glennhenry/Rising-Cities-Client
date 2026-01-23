package net.bigpoint.cityrama.view.mainMenu.ui.skins
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
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.events.BriskImageDynaLibEvent;
   import net.bigpoint.cityrama.view.mainMenu.ui.components.QuadToggleButton;
   import spark.components.Group;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class QuadToggleButtonSmallSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _QuadToggleButtonSmallSkin_BriskImageDynaLib2:BriskImageDynaLib;
      
      public var _QuadToggleButtonSmallSkin_BriskImageDynaLib3:BriskImageDynaLib;
      
      private var _934236280_QuadToggleButtonSmallSkin_BriskImageDynaLib4:BriskImageDynaLib;
      
      public var _QuadToggleButtonSmallSkin_BriskImageDynaLib5:BriskImageDynaLib;
      
      private var _1355974591_QuadToggleButtonSmallSkin_SetProperty1:SetProperty;
      
      private var _1355974590_QuadToggleButtonSmallSkin_SetProperty2:SetProperty;
      
      private var _1355974589_QuadToggleButtonSmallSkin_SetProperty3:SetProperty;
      
      private var _1355974588_QuadToggleButtonSmallSkin_SetProperty4:SetProperty;
      
      private var _1060367224badgeImage:BriskImageDynaLib;
      
      private var _1988292782blendGroup:Group;
      
      private var _410956671container:Group;
      
      private var _1412649594iconGroup:Group;
      
      private var _72342065maskImage:BriskImageDynaLib;
      
      private var _399041002middleGroup:Group;
      
      private var _1585954497shadowGroup:Group;
      
      private var _1584270309shadowImage:BriskImageDynaLib;
      
      private var _988229078topGroup:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:QuadToggleButton;
      
      public function QuadToggleButtonSmallSkin()
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
         bindings = this._QuadToggleButtonSmallSkin_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_mainMenu_ui_skins_QuadToggleButtonSmallSkinWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return QuadToggleButtonSmallSkin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._QuadToggleButtonSmallSkin_Group1_i(),this._QuadToggleButtonSmallSkin_BriskImageDynaLib7_i()];
         this.currentState = "up";
         states = [new State({
            "name":"up",
            "stateGroups":["upStates","normalState"],
            "overrides":[]
         }),new State({
            "name":"over",
            "stateGroups":["overStates","normalState"],
            "overrides":[new SetProperty().initializeFromObject({
               "target":"topGroup",
               "name":"top",
               "value":0
            }),new SetProperty().initializeFromObject({
               "target":"iconGroup",
               "name":"top",
               "value":0
            }),new SetProperty().initializeFromObject({
               "target":"maskImage",
               "name":"top",
               "value":0
            })]
         }),new State({
            "name":"down",
            "stateGroups":["normalState","downStates"],
            "overrides":[new SetProperty().initializeFromObject({
               "target":"topGroup",
               "name":"top",
               "value":3
            }),new SetProperty().initializeFromObject({
               "target":"iconGroup",
               "name":"top",
               "value":3
            }),new SetProperty().initializeFromObject({
               "target":"maskImage",
               "name":"top",
               "value":3
            })]
         }),new State({
            "name":"disabled",
            "stateGroups":["disabledStates","normalState"],
            "overrides":[]
         }),new State({
            "name":"upAndSelected",
            "stateGroups":["upStates","selectedState"],
            "overrides":[new SetProperty().initializeFromObject({
               "target":"topGroup",
               "name":"top",
               "value":3
            }),new SetProperty().initializeFromObject({
               "target":"iconGroup",
               "name":"top",
               "value":3
            }),this._QuadToggleButtonSmallSkin_SetProperty1 = SetProperty(new SetProperty().initializeFromObject({
               "isBaseValueDataBound":true,
               "target":"_QuadToggleButtonSmallSkin_BriskImageDynaLib4",
               "name":"dynaBmpSourceName",
               "value":undefined
            })),new SetProperty().initializeFromObject({
               "target":"maskImage",
               "name":"top",
               "value":3
            })]
         }),new State({
            "name":"overAndSelected",
            "stateGroups":["overStates","selectedState"],
            "overrides":[new SetProperty().initializeFromObject({
               "target":"topGroup",
               "name":"top",
               "value":3
            }),new SetProperty().initializeFromObject({
               "target":"iconGroup",
               "name":"top",
               "value":3
            }),this._QuadToggleButtonSmallSkin_SetProperty2 = SetProperty(new SetProperty().initializeFromObject({
               "isBaseValueDataBound":true,
               "target":"_QuadToggleButtonSmallSkin_BriskImageDynaLib4",
               "name":"dynaBmpSourceName",
               "value":undefined
            })),new SetProperty().initializeFromObject({
               "target":"maskImage",
               "name":"top",
               "value":3
            })]
         }),new State({
            "name":"downAndSelected",
            "stateGroups":["downStates","selectedState"],
            "overrides":[new SetProperty().initializeFromObject({
               "target":"topGroup",
               "name":"top",
               "value":3
            }),new SetProperty().initializeFromObject({
               "target":"iconGroup",
               "name":"top",
               "value":3
            }),this._QuadToggleButtonSmallSkin_SetProperty3 = SetProperty(new SetProperty().initializeFromObject({
               "isBaseValueDataBound":true,
               "target":"_QuadToggleButtonSmallSkin_BriskImageDynaLib4",
               "name":"dynaBmpSourceName",
               "value":undefined
            })),new SetProperty().initializeFromObject({
               "target":"maskImage",
               "name":"top",
               "value":3
            })]
         }),new State({
            "name":"disabledAndSelected",
            "stateGroups":["disabledStates","selectedState"],
            "overrides":[this._QuadToggleButtonSmallSkin_SetProperty4 = SetProperty(new SetProperty().initializeFromObject({
               "isBaseValueDataBound":true,
               "target":"_QuadToggleButtonSmallSkin_BriskImageDynaLib4",
               "name":"dynaBmpSourceName",
               "value":undefined
            }))]
         }),new State({
            "name":"upAndInactive",
            "stateGroups":["inactiveState","upStates"],
            "overrides":[]
         }),new State({
            "name":"overAndInactive",
            "stateGroups":["overStates","inactiveState"],
            "overrides":[]
         }),new State({
            "name":"downAndInactive",
            "stateGroups":["inactiveState","downStates"],
            "overrides":[]
         }),new State({
            "name":"disabledAndInactive",
            "stateGroups":["disabledStates","inactiveState"],
            "overrides":[]
         }),new State({
            "name":"upAndBlinking",
            "stateGroups":["upStates","blinkingState"],
            "overrides":[]
         }),new State({
            "name":"overAndBlinking",
            "stateGroups":["overStates","blinkingState"],
            "overrides":[]
         }),new State({
            "name":"downAndBlinking",
            "stateGroups":["downStates","blinkingState"],
            "overrides":[]
         }),new State({
            "name":"disabledAndBlinking",
            "stateGroups":["disabledStates","blinkingState"],
            "overrides":[]
         })];
         BindingManager.executeBindings(this,"_QuadToggleButtonSmallSkin_SetProperty1",this._QuadToggleButtonSmallSkin_SetProperty1);
         BindingManager.executeBindings(this,"_QuadToggleButtonSmallSkin_SetProperty2",this._QuadToggleButtonSmallSkin_SetProperty2);
         BindingManager.executeBindings(this,"_QuadToggleButtonSmallSkin_SetProperty3",this._QuadToggleButtonSmallSkin_SetProperty3);
         BindingManager.executeBindings(this,"_QuadToggleButtonSmallSkin_SetProperty4",this._QuadToggleButtonSmallSkin_SetProperty4);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         QuadToggleButtonSmallSkin._watcherSetupUtil = param1;
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
      
      override protected function stateChanged(param1:String, param2:String, param3:Boolean) : void
      {
         var _loc6_:State = null;
         super.stateChanged(param1,param2,param3);
         var _loc4_:State = null;
         for each(_loc6_ in this.states)
         {
            if(_loc6_.name == param2)
            {
               _loc4_ = _loc6_;
               break;
            }
         }
         TweenMax.killTweensOf(this,true);
         if(_loc4_.stateGroups.indexOf("normalState") != -1)
         {
            if(_loc4_.stateGroups.indexOf("overStates") != -1)
            {
               TweenMax.to(this.blendGroup,0.1,{"tint":this.hostComponent.getStyle("regularOverColor")});
            }
            else
            {
               TweenMax.to(this.blendGroup,0.1,{"tint":this.hostComponent.getStyle("regularColor")});
            }
         }
         else if(_loc4_.stateGroups.indexOf("selectedState") != -1)
         {
            TweenMax.to(this.blendGroup,0.1,{"tint":this.hostComponent.getStyle("selectedColor")});
         }
         else if(_loc4_.stateGroups.indexOf("inactiveState") != -1)
         {
            TweenMax.to(this.blendGroup,0.1,{"tint":this.hostComponent.getStyle("disabledColor")});
         }
         else if(_loc4_.stateGroups.indexOf("blinkingState") != -1)
         {
            TweenMax.to(this.blendGroup,0.1,{"tint":this.hostComponent.getStyle("inactiveColor")});
         }
      }
      
      private function handleSizeChanged() : void
      {
         this.container.scrollRect = new Rectangle(0,0,this.shadowImage.width,this.shadowImage.height);
      }
      
      private function _QuadToggleButtonSmallSkin_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._QuadToggleButtonSmallSkin_Group2_i(),this._QuadToggleButtonSmallSkin_Group3_i(),this._QuadToggleButtonSmallSkin_Group4_i(),this._QuadToggleButtonSmallSkin_Group5_i(),this._QuadToggleButtonSmallSkin_Group6_i()];
         _loc1_.id = "container";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.container = _loc1_;
         BindingManager.executeBindings(this,"container",this.container);
         return _loc1_;
      }
      
      private function _QuadToggleButtonSmallSkin_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._QuadToggleButtonSmallSkin_BriskImageDynaLib1_i()];
         _loc1_.id = "shadowGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.shadowGroup = _loc1_;
         BindingManager.executeBindings(this,"shadowGroup",this.shadowGroup);
         return _loc1_;
      }
      
      private function _QuadToggleButtonSmallSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.addEventListener("sizeChanged",this.__shadowImage_sizeChanged);
         _loc1_.id = "shadowImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.shadowImage = _loc1_;
         BindingManager.executeBindings(this,"shadowImage",this.shadowImage);
         return _loc1_;
      }
      
      public function __shadowImage_sizeChanged(param1:BriskImageDynaLibEvent) : void
      {
         this.handleSizeChanged();
      }
      
      private function _QuadToggleButtonSmallSkin_Group3_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._QuadToggleButtonSmallSkin_BriskImageDynaLib2_i()];
         _loc1_.id = "middleGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.middleGroup = _loc1_;
         BindingManager.executeBindings(this,"middleGroup",this.middleGroup);
         return _loc1_;
      }
      
      private function _QuadToggleButtonSmallSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.id = "_QuadToggleButtonSmallSkin_BriskImageDynaLib2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._QuadToggleButtonSmallSkin_BriskImageDynaLib2 = _loc1_;
         BindingManager.executeBindings(this,"_QuadToggleButtonSmallSkin_BriskImageDynaLib2",this._QuadToggleButtonSmallSkin_BriskImageDynaLib2);
         return _loc1_;
      }
      
      private function _QuadToggleButtonSmallSkin_Group4_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 0;
         _loc1_.mxmlContent = [this._QuadToggleButtonSmallSkin_BriskImageDynaLib3_i()];
         _loc1_.id = "topGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.topGroup = _loc1_;
         BindingManager.executeBindings(this,"topGroup",this.topGroup);
         return _loc1_;
      }
      
      private function _QuadToggleButtonSmallSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.id = "_QuadToggleButtonSmallSkin_BriskImageDynaLib3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._QuadToggleButtonSmallSkin_BriskImageDynaLib3 = _loc1_;
         BindingManager.executeBindings(this,"_QuadToggleButtonSmallSkin_BriskImageDynaLib3",this._QuadToggleButtonSmallSkin_BriskImageDynaLib3);
         return _loc1_;
      }
      
      private function _QuadToggleButtonSmallSkin_Group5_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 0;
         _loc1_.mxmlContent = [this._QuadToggleButtonSmallSkin_BriskImageDynaLib4_i()];
         _loc1_.id = "iconGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.iconGroup = _loc1_;
         BindingManager.executeBindings(this,"iconGroup",this.iconGroup);
         return _loc1_;
      }
      
      private function _QuadToggleButtonSmallSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.id = "_QuadToggleButtonSmallSkin_BriskImageDynaLib4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._QuadToggleButtonSmallSkin_BriskImageDynaLib4 = _loc1_;
         BindingManager.executeBindings(this,"_QuadToggleButtonSmallSkin_BriskImageDynaLib4",this._QuadToggleButtonSmallSkin_BriskImageDynaLib4);
         return _loc1_;
      }
      
      private function _QuadToggleButtonSmallSkin_Group6_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.blendMode = "overlay";
         _loc1_.mxmlContent = [this._QuadToggleButtonSmallSkin_BriskImageDynaLib5_i(),this._QuadToggleButtonSmallSkin_BriskImageDynaLib6_i()];
         _loc1_.id = "blendGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.blendGroup = _loc1_;
         BindingManager.executeBindings(this,"blendGroup",this.blendGroup);
         return _loc1_;
      }
      
      private function _QuadToggleButtonSmallSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.id = "_QuadToggleButtonSmallSkin_BriskImageDynaLib5";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._QuadToggleButtonSmallSkin_BriskImageDynaLib5 = _loc1_;
         BindingManager.executeBindings(this,"_QuadToggleButtonSmallSkin_BriskImageDynaLib5",this._QuadToggleButtonSmallSkin_BriskImageDynaLib5);
         return _loc1_;
      }
      
      private function _QuadToggleButtonSmallSkin_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.top = 0;
         _loc1_.id = "maskImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.maskImage = _loc1_;
         BindingManager.executeBindings(this,"maskImage",this.maskImage);
         return _loc1_;
      }
      
      private function _QuadToggleButtonSmallSkin_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.top = -5;
         _loc1_.right = -5;
         _loc1_.dynaBmpSourceName = "symbol_new_small";
         _loc1_.dynaLibName = "gui_ui_questSide";
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "badgeImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.badgeImage = _loc1_;
         BindingManager.executeBindings(this,"badgeImage",this.badgeImage);
         return _loc1_;
      }
      
      private function _QuadToggleButtonSmallSkin_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Number
         {
            return shadowImage.width;
         },null,"container.width");
         result[1] = new Binding(this,function():Number
         {
            return shadowImage.height;
         },null,"container.height");
         result[2] = new Binding(this,function():String
         {
            var _loc1_:* = hostComponent.getStyle("libraryName");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"shadowImage.dynaLibName");
         result[3] = new Binding(this,function():String
         {
            var _loc1_:* = hostComponent.getStyle("shadowImage");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"shadowImage.dynaBmpSourceName");
         result[4] = new Binding(this,function():String
         {
            var _loc1_:* = hostComponent.getStyle("fileName");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"shadowImage.dynaSWFFileName");
         result[5] = new Binding(this,function():String
         {
            var _loc1_:* = hostComponent.getStyle("libraryName");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_QuadToggleButtonSmallSkin_BriskImageDynaLib2.dynaLibName");
         result[6] = new Binding(this,function():String
         {
            var _loc1_:* = hostComponent.getStyle("middleImage");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_QuadToggleButtonSmallSkin_BriskImageDynaLib2.dynaBmpSourceName");
         result[7] = new Binding(this,function():String
         {
            var _loc1_:* = hostComponent.getStyle("fileName");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_QuadToggleButtonSmallSkin_BriskImageDynaLib2.dynaSWFFileName");
         result[8] = new Binding(this,function():String
         {
            var _loc1_:* = hostComponent.getStyle("libraryName");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_QuadToggleButtonSmallSkin_BriskImageDynaLib3.dynaLibName");
         result[9] = new Binding(this,function():String
         {
            var _loc1_:* = hostComponent.getStyle("topImage");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_QuadToggleButtonSmallSkin_BriskImageDynaLib3.dynaBmpSourceName");
         result[10] = new Binding(this,function():String
         {
            var _loc1_:* = hostComponent.getStyle("fileName");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_QuadToggleButtonSmallSkin_BriskImageDynaLib3.dynaSWFFileName");
         result[11] = new Binding(this,function():String
         {
            var _loc1_:* = hostComponent.getStyle("libraryName");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_QuadToggleButtonSmallSkin_BriskImageDynaLib4.dynaLibName");
         result[12] = new Binding(this,function():String
         {
            var _loc1_:* = hostComponent.getStyle("iconImage");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_QuadToggleButtonSmallSkin_BriskImageDynaLib4.dynaBmpSourceName");
         result[13] = new Binding(this,function():*
         {
            return hostComponent.getStyle("iconSelectedImage");
         },null,"_QuadToggleButtonSmallSkin_SetProperty1.value");
         result[14] = new Binding(this,function():*
         {
            return hostComponent.getStyle("iconSelectedImage");
         },null,"_QuadToggleButtonSmallSkin_SetProperty2.value");
         result[15] = new Binding(this,function():*
         {
            return hostComponent.getStyle("iconSelectedImage");
         },null,"_QuadToggleButtonSmallSkin_SetProperty3.value");
         result[16] = new Binding(this,function():*
         {
            return hostComponent.getStyle("iconSelectedImage");
         },null,"_QuadToggleButtonSmallSkin_SetProperty4.value");
         result[17] = new Binding(this,function():String
         {
            var _loc1_:* = hostComponent.getStyle("fileName");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_QuadToggleButtonSmallSkin_BriskImageDynaLib4.dynaSWFFileName");
         result[18] = new Binding(this,function():String
         {
            var _loc1_:* = hostComponent.getStyle("libraryName");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_QuadToggleButtonSmallSkin_BriskImageDynaLib5.dynaLibName");
         result[19] = new Binding(this,function():String
         {
            var _loc1_:* = hostComponent.getStyle("maskImage");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_QuadToggleButtonSmallSkin_BriskImageDynaLib5.dynaBmpSourceName");
         result[20] = new Binding(this,function():String
         {
            var _loc1_:* = hostComponent.getStyle("fileName");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_QuadToggleButtonSmallSkin_BriskImageDynaLib5.dynaSWFFileName");
         result[21] = new Binding(this,null,null,"_QuadToggleButtonSmallSkin_BriskImageDynaLib5.mask","maskImage");
         result[22] = new Binding(this,function():String
         {
            var _loc1_:* = hostComponent.getStyle("libraryName");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"maskImage.dynaLibName");
         result[23] = new Binding(this,function():String
         {
            var _loc1_:* = hostComponent.getStyle("maskImage");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"maskImage.dynaBmpSourceName");
         result[24] = new Binding(this,function():String
         {
            var _loc1_:* = hostComponent.getStyle("fileName");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"maskImage.dynaSWFFileName");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get _QuadToggleButtonSmallSkin_BriskImageDynaLib4() : BriskImageDynaLib
      {
         return this._934236280_QuadToggleButtonSmallSkin_BriskImageDynaLib4;
      }
      
      public function set _QuadToggleButtonSmallSkin_BriskImageDynaLib4(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._934236280_QuadToggleButtonSmallSkin_BriskImageDynaLib4;
         if(_loc2_ !== param1)
         {
            this._934236280_QuadToggleButtonSmallSkin_BriskImageDynaLib4 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_QuadToggleButtonSmallSkin_BriskImageDynaLib4",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _QuadToggleButtonSmallSkin_SetProperty1() : SetProperty
      {
         return this._1355974591_QuadToggleButtonSmallSkin_SetProperty1;
      }
      
      public function set _QuadToggleButtonSmallSkin_SetProperty1(param1:SetProperty) : void
      {
         var _loc2_:Object = this._1355974591_QuadToggleButtonSmallSkin_SetProperty1;
         if(_loc2_ !== param1)
         {
            this._1355974591_QuadToggleButtonSmallSkin_SetProperty1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_QuadToggleButtonSmallSkin_SetProperty1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _QuadToggleButtonSmallSkin_SetProperty2() : SetProperty
      {
         return this._1355974590_QuadToggleButtonSmallSkin_SetProperty2;
      }
      
      public function set _QuadToggleButtonSmallSkin_SetProperty2(param1:SetProperty) : void
      {
         var _loc2_:Object = this._1355974590_QuadToggleButtonSmallSkin_SetProperty2;
         if(_loc2_ !== param1)
         {
            this._1355974590_QuadToggleButtonSmallSkin_SetProperty2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_QuadToggleButtonSmallSkin_SetProperty2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _QuadToggleButtonSmallSkin_SetProperty3() : SetProperty
      {
         return this._1355974589_QuadToggleButtonSmallSkin_SetProperty3;
      }
      
      public function set _QuadToggleButtonSmallSkin_SetProperty3(param1:SetProperty) : void
      {
         var _loc2_:Object = this._1355974589_QuadToggleButtonSmallSkin_SetProperty3;
         if(_loc2_ !== param1)
         {
            this._1355974589_QuadToggleButtonSmallSkin_SetProperty3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_QuadToggleButtonSmallSkin_SetProperty3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _QuadToggleButtonSmallSkin_SetProperty4() : SetProperty
      {
         return this._1355974588_QuadToggleButtonSmallSkin_SetProperty4;
      }
      
      public function set _QuadToggleButtonSmallSkin_SetProperty4(param1:SetProperty) : void
      {
         var _loc2_:Object = this._1355974588_QuadToggleButtonSmallSkin_SetProperty4;
         if(_loc2_ !== param1)
         {
            this._1355974588_QuadToggleButtonSmallSkin_SetProperty4 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_QuadToggleButtonSmallSkin_SetProperty4",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get badgeImage() : BriskImageDynaLib
      {
         return this._1060367224badgeImage;
      }
      
      public function set badgeImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1060367224badgeImage;
         if(_loc2_ !== param1)
         {
            this._1060367224badgeImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"badgeImage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get blendGroup() : Group
      {
         return this._1988292782blendGroup;
      }
      
      public function set blendGroup(param1:Group) : void
      {
         var _loc2_:Object = this._1988292782blendGroup;
         if(_loc2_ !== param1)
         {
            this._1988292782blendGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blendGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get container() : Group
      {
         return this._410956671container;
      }
      
      public function set container(param1:Group) : void
      {
         var _loc2_:Object = this._410956671container;
         if(_loc2_ !== param1)
         {
            this._410956671container = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"container",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iconGroup() : Group
      {
         return this._1412649594iconGroup;
      }
      
      public function set iconGroup(param1:Group) : void
      {
         var _loc2_:Object = this._1412649594iconGroup;
         if(_loc2_ !== param1)
         {
            this._1412649594iconGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get maskImage() : BriskImageDynaLib
      {
         return this._72342065maskImage;
      }
      
      public function set maskImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._72342065maskImage;
         if(_loc2_ !== param1)
         {
            this._72342065maskImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maskImage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get middleGroup() : Group
      {
         return this._399041002middleGroup;
      }
      
      public function set middleGroup(param1:Group) : void
      {
         var _loc2_:Object = this._399041002middleGroup;
         if(_loc2_ !== param1)
         {
            this._399041002middleGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"middleGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shadowGroup() : Group
      {
         return this._1585954497shadowGroup;
      }
      
      public function set shadowGroup(param1:Group) : void
      {
         var _loc2_:Object = this._1585954497shadowGroup;
         if(_loc2_ !== param1)
         {
            this._1585954497shadowGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shadowGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shadowImage() : BriskImageDynaLib
      {
         return this._1584270309shadowImage;
      }
      
      public function set shadowImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1584270309shadowImage;
         if(_loc2_ !== param1)
         {
            this._1584270309shadowImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shadowImage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get topGroup() : Group
      {
         return this._988229078topGroup;
      }
      
      public function set topGroup(param1:Group) : void
      {
         var _loc2_:Object = this._988229078topGroup;
         if(_loc2_ !== param1)
         {
            this._988229078topGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : QuadToggleButton
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:QuadToggleButton) : void
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

