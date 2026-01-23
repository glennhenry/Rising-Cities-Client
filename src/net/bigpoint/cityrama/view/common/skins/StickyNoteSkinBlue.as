package net.bigpoint.cityrama.view.common.skins
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
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.graphics.BitmapFill;
   import mx.states.State;
   import mx.styles.*;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import spark.components.Group;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Graphic;
   import spark.primitives.Rect;
   import spark.skins.SparkSkin;
   
   use namespace mx_internal;
   
   public class StickyNoteSkinBlue extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _StickyNoteSkinBlue_BitmapFill1:BitmapFill;
      
      public var _StickyNoteSkinBlue_Graphic1:Graphic;
      
      public var _StickyNoteSkinBlue_Rect1:Rect;
      
      private var _1682557459bottomTape:Group;
      
      private var _809612678contentGroup:Group;
      
      private var _3314090lala:BriskMCDynaLib;
      
      private var _1718414793leftTape:Group;
      
      private var _1569129122rightTape:Group;
      
      private var _1139886057topTape:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function StickyNoteSkinBlue()
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
         bindings = this._StickyNoteSkinBlue_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_common_skins_StickyNoteSkinBlueWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return StickyNoteSkinBlue[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._StickyNoteSkinBlue_Group1_c(),this._StickyNoteSkinBlue_Group3_i(),this._StickyNoteSkinBlue_Group4_i(),this._StickyNoteSkinBlue_Group5_i(),this._StickyNoteSkinBlue_Group6_i(),this._StickyNoteSkinBlue_Group7_i()];
         this.currentState = "normal";
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
         StickyNoteSkinBlue._watcherSetupUtil = param1;
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
      
      private function _StickyNoteSkinBlue_Group1_c() : Group
      {
         var _loc1_:Group = null;
         _loc1_ = new Group();
         _loc1_.bottom = 5;
         _loc1_.right = 5;
         _loc1_.top = 5;
         _loc1_.left = 5;
         _loc1_.mxmlContent = [this._StickyNoteSkinBlue_Group2_c(),this._StickyNoteSkinBlue_Graphic1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StickyNoteSkinBlue_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.filters = [this._StickyNoteSkinBlue_DropShadowFilter1_c()];
         _loc1_.mxmlContent = [this._StickyNoteSkinBlue_BriskMCDynaLib1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StickyNoteSkinBlue_DropShadowFilter1_c() : DropShadowFilter
      {
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         _loc1_.angle = 90;
         _loc1_.alpha = 0.7;
         _loc1_.blurX = 7;
         _loc1_.blurY = 4;
         _loc1_.strength = 0.9;
         return _loc1_;
      }
      
      private function _StickyNoteSkinBlue_BriskMCDynaLib1_i() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "postit_bg_blue";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.id = "lala";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.lala = _loc1_;
         BindingManager.executeBindings(this,"lala",this.lala);
         return _loc1_;
      }
      
      private function _StickyNoteSkinBlue_Graphic1_i() : Graphic
      {
         var _loc1_:Graphic = new Graphic();
         _loc1_.blendMode = "multiply";
         _loc1_.mxmlContent = [this._StickyNoteSkinBlue_Rect1_i()];
         _loc1_.id = "_StickyNoteSkinBlue_Graphic1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._StickyNoteSkinBlue_Graphic1 = _loc1_;
         BindingManager.executeBindings(this,"_StickyNoteSkinBlue_Graphic1",this._StickyNoteSkinBlue_Graphic1);
         return _loc1_;
      }
      
      private function _StickyNoteSkinBlue_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.fill = this._StickyNoteSkinBlue_BitmapFill1_i();
         _loc1_.initialized(this,"_StickyNoteSkinBlue_Rect1");
         this._StickyNoteSkinBlue_Rect1 = _loc1_;
         BindingManager.executeBindings(this,"_StickyNoteSkinBlue_Rect1",this._StickyNoteSkinBlue_Rect1);
         return _loc1_;
      }
      
      private function _StickyNoteSkinBlue_BitmapFill1_i() : BitmapFill
      {
         var _loc1_:BitmapFill = new BitmapFill();
         _loc1_.alpha = 0.8;
         _loc1_.fillMode = "repeat";
         _loc1_.scaleX = 2;
         _loc1_.scaleY = 2;
         this._StickyNoteSkinBlue_BitmapFill1 = _loc1_;
         BindingManager.executeBindings(this,"_StickyNoteSkinBlue_BitmapFill1",this._StickyNoteSkinBlue_BitmapFill1);
         return _loc1_;
      }
      
      private function _StickyNoteSkinBlue_Group3_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 15;
         _loc1_.right = 15;
         _loc1_.top = 28;
         _loc1_.bottom = 20;
         _loc1_.minWidth = 0;
         _loc1_.minHeight = 0;
         _loc1_.id = "contentGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.contentGroup = _loc1_;
         BindingManager.executeBindings(this,"contentGroup",this.contentGroup);
         return _loc1_;
      }
      
      private function _StickyNoteSkinBlue_Group4_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 0;
         _loc1_.left = 30;
         _loc1_.right = 30;
         _loc1_.visible = false;
         _loc1_.mxmlContent = [this._StickyNoteSkinBlue_BriskMCDynaLib2_c()];
         _loc1_.id = "topTape";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.topTape = _loc1_;
         BindingManager.executeBindings(this,"topTape",this.topTape);
         return _loc1_;
      }
      
      private function _StickyNoteSkinBlue_BriskMCDynaLib2_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_top";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StickyNoteSkinBlue_Group5_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.bottom = 0;
         _loc1_.left = 30;
         _loc1_.right = 30;
         _loc1_.visible = false;
         _loc1_.mxmlContent = [this._StickyNoteSkinBlue_BriskMCDynaLib3_c()];
         _loc1_.id = "bottomTape";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bottomTape = _loc1_;
         BindingManager.executeBindings(this,"bottomTape",this.bottomTape);
         return _loc1_;
      }
      
      private function _StickyNoteSkinBlue_BriskMCDynaLib3_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_bottom";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StickyNoteSkinBlue_Group6_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentHeight = 100;
         _loc1_.left = 0;
         _loc1_.visible = false;
         _loc1_.mxmlContent = [this._StickyNoteSkinBlue_BriskMCDynaLib4_c()];
         _loc1_.id = "leftTape";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.leftTape = _loc1_;
         BindingManager.executeBindings(this,"leftTape",this.leftTape);
         return _loc1_;
      }
      
      private function _StickyNoteSkinBlue_BriskMCDynaLib4_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_left";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StickyNoteSkinBlue_Group7_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentHeight = 100;
         _loc1_.right = 0;
         _loc1_.visible = false;
         _loc1_.mxmlContent = [this._StickyNoteSkinBlue_BriskMCDynaLib5_c()];
         _loc1_.id = "rightTape";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rightTape = _loc1_;
         BindingManager.executeBindings(this,"rightTape",this.rightTape);
         return _loc1_;
      }
      
      private function _StickyNoteSkinBlue_BriskMCDynaLib5_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_right";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StickyNoteSkinBlue_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Number
         {
            return lala.width - 5;
         },null,"_StickyNoteSkinBlue_Graphic1.width");
         result[1] = new Binding(this,function():Number
         {
            return lala.height - 5;
         },null,"_StickyNoteSkinBlue_Graphic1.height");
         result[2] = new Binding(this,function():Number
         {
            return lala.width - 5;
         },null,"_StickyNoteSkinBlue_Rect1.width");
         result[3] = new Binding(this,function():Number
         {
            return lala.height - 5;
         },null,"_StickyNoteSkinBlue_Rect1.height");
         result[4] = new Binding(this,function():Object
         {
            return new Bitmap(new testingkax());
         },null,"_StickyNoteSkinBlue_BitmapFill1.source");
         result[5] = new Binding(this,function():Object
         {
            return leftTape.getStyle("tapeTop") is Number ? leftTape.getStyle("tapeTop") : 5;
         },null,"leftTape.top");
         result[6] = new Binding(this,function():Object
         {
            return leftTape.getStyle("tapeBottom") is Number ? leftTape.getStyle("tapeBottom") : 5;
         },null,"leftTape.bottom");
         result[7] = new Binding(this,function():Object
         {
            return rightTape.getStyle("tapeTop") is Number ? rightTape.getStyle("tapeTop") : 5;
         },null,"rightTape.top");
         result[8] = new Binding(this,function():Object
         {
            return rightTape.getStyle("tapeBottom") is Number ? rightTape.getStyle("tapeBottom") : 5;
         },null,"rightTape.bottom");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get bottomTape() : Group
      {
         return this._1682557459bottomTape;
      }
      
      public function set bottomTape(param1:Group) : void
      {
         var _loc2_:Object = this._1682557459bottomTape;
         if(_loc2_ !== param1)
         {
            this._1682557459bottomTape = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomTape",_loc2_,param1));
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
      public function get lala() : BriskMCDynaLib
      {
         return this._3314090lala;
      }
      
      public function set lala(param1:BriskMCDynaLib) : void
      {
         var _loc2_:Object = this._3314090lala;
         if(_loc2_ !== param1)
         {
            this._3314090lala = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lala",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get leftTape() : Group
      {
         return this._1718414793leftTape;
      }
      
      public function set leftTape(param1:Group) : void
      {
         var _loc2_:Object = this._1718414793leftTape;
         if(_loc2_ !== param1)
         {
            this._1718414793leftTape = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftTape",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rightTape() : Group
      {
         return this._1569129122rightTape;
      }
      
      public function set rightTape(param1:Group) : void
      {
         var _loc2_:Object = this._1569129122rightTape;
         if(_loc2_ !== param1)
         {
            this._1569129122rightTape = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rightTape",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get topTape() : Group
      {
         return this._1139886057topTape;
      }
      
      public function set topTape(param1:Group) : void
      {
         var _loc2_:Object = this._1139886057topTape;
         if(_loc2_ !== param1)
         {
            this._1139886057topTape = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topTape",_loc2_,param1));
            }
         }
      }
   }
}

