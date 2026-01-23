package net.bigpoint.cityrama.view.fieldInfoLayer.ui.components
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
   import net.bigpoint.cityrama.view.citysquare.ui.components.SlimProgressBarComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class FieldInfoLayerMasteryComponent extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private var _85291001masteryStar0:BriskImageDynaLib;
      
      private var _85291000masteryStar1:BriskImageDynaLib;
      
      private var _85290999masteryStar2:BriskImageDynaLib;
      
      private var _85290998masteryStar3:BriskImageDynaLib;
      
      private var _85290997masteryStar4:BriskImageDynaLib;
      
      private var _1131509414progressBar:SlimProgressBarComponent;
      
      private var _1926588729splitter:BriskImageDynaLib;
      
      private var _2125013837starGroup:HGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _masteryLevel:int;
      
      private var _masteryProgress:Number;
      
      private var _dataDirty:Boolean;
      
      private var _masteryStars:Vector.<BriskImageDynaLib>;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function FieldInfoLayerMasteryComponent()
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
         bindings = this._FieldInfoLayerMasteryComponent_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_fieldInfoLayer_ui_components_FieldInfoLayerMasteryComponentWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return FieldInfoLayerMasteryComponent[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.percentWidth = 100;
         this.mxmlContent = [this._FieldInfoLayerMasteryComponent_VGroup1_c()];
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         FieldInfoLayerMasteryComponent._watcherSetupUtil = param1;
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
      
      public function setData(param1:int, param2:Number) : void
      {
         if(param1 != this._masteryLevel || param2 != this._masteryProgress)
         {
            this._masteryLevel = param1;
            this._masteryProgress = param2;
            this._dataDirty = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:int = 0;
         var _loc2_:BriskImageDynaLib = null;
         super.commitProperties();
         if(this._dataDirty)
         {
            this._dataDirty = false;
            this.progressBar.progress = this._masteryProgress;
            _loc1_ = 0;
            for each(_loc2_ in this.masteryStars)
            {
               if(_loc1_ < this._masteryLevel)
               {
                  _loc2_.dynaBmpSourceName = "mastery_star_blue";
               }
               else
               {
                  _loc2_.dynaBmpSourceName = "mastery_star_grey";
               }
               _loc1_++;
            }
         }
      }
      
      private function get masteryStars() : Vector.<BriskImageDynaLib>
      {
         if(this._masteryStars == null)
         {
            this._masteryStars = new <BriskImageDynaLib>[this.masteryStar0,this.masteryStar1,this.masteryStar2,this.masteryStar3,this.masteryStar4];
         }
         return this._masteryStars;
      }
      
      private function _FieldInfoLayerMasteryComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._FieldInfoLayerMasteryComponent_HGroup1_i(),this._FieldInfoLayerMasteryComponent_SlimProgressBarComponent1_i(),this._FieldInfoLayerMasteryComponent_BriskImageDynaLib6_i(),this._FieldInfoLayerMasteryComponent_Group2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FieldInfoLayerMasteryComponent_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._FieldInfoLayerMasteryComponent_BriskImageDynaLib1_i(),this._FieldInfoLayerMasteryComponent_BriskImageDynaLib2_i(),this._FieldInfoLayerMasteryComponent_BriskImageDynaLib3_i(),this._FieldInfoLayerMasteryComponent_BriskImageDynaLib4_i(),this._FieldInfoLayerMasteryComponent_BriskImageDynaLib5_i()];
         _loc1_.id = "starGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.starGroup = _loc1_;
         BindingManager.executeBindings(this,"starGroup",this.starGroup);
         return _loc1_;
      }
      
      private function _FieldInfoLayerMasteryComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.id = "masteryStar0";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.masteryStar0 = _loc1_;
         BindingManager.executeBindings(this,"masteryStar0",this.masteryStar0);
         return _loc1_;
      }
      
      private function _FieldInfoLayerMasteryComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.id = "masteryStar1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.masteryStar1 = _loc1_;
         BindingManager.executeBindings(this,"masteryStar1",this.masteryStar1);
         return _loc1_;
      }
      
      private function _FieldInfoLayerMasteryComponent_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.id = "masteryStar2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.masteryStar2 = _loc1_;
         BindingManager.executeBindings(this,"masteryStar2",this.masteryStar2);
         return _loc1_;
      }
      
      private function _FieldInfoLayerMasteryComponent_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.id = "masteryStar3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.masteryStar3 = _loc1_;
         BindingManager.executeBindings(this,"masteryStar3",this.masteryStar3);
         return _loc1_;
      }
      
      private function _FieldInfoLayerMasteryComponent_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.id = "masteryStar4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.masteryStar4 = _loc1_;
         BindingManager.executeBindings(this,"masteryStar4",this.masteryStar4);
         return _loc1_;
      }
      
      private function _FieldInfoLayerMasteryComponent_SlimProgressBarComponent1_i() : SlimProgressBarComponent
      {
         var _loc1_:SlimProgressBarComponent = new SlimProgressBarComponent();
         _loc1_.id = "progressBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.progressBar = _loc1_;
         BindingManager.executeBindings(this,"progressBar",this.progressBar);
         return _loc1_;
      }
      
      private function _FieldInfoLayerMasteryComponent_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "infolayer_divider_new";
         _loc1_.id = "splitter";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.splitter = _loc1_;
         BindingManager.executeBindings(this,"splitter",this.splitter);
         return _loc1_;
      }
      
      private function _FieldInfoLayerMasteryComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 1;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FieldInfoLayerMasteryComponent_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Number
         {
            return starGroup.width;
         },null,"progressBar.width");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStar0() : BriskImageDynaLib
      {
         return this._85291001masteryStar0;
      }
      
      public function set masteryStar0(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._85291001masteryStar0;
         if(_loc2_ !== param1)
         {
            this._85291001masteryStar0 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar0",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStar1() : BriskImageDynaLib
      {
         return this._85291000masteryStar1;
      }
      
      public function set masteryStar1(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._85291000masteryStar1;
         if(_loc2_ !== param1)
         {
            this._85291000masteryStar1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStar2() : BriskImageDynaLib
      {
         return this._85290999masteryStar2;
      }
      
      public function set masteryStar2(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._85290999masteryStar2;
         if(_loc2_ !== param1)
         {
            this._85290999masteryStar2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStar3() : BriskImageDynaLib
      {
         return this._85290998masteryStar3;
      }
      
      public function set masteryStar3(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._85290998masteryStar3;
         if(_loc2_ !== param1)
         {
            this._85290998masteryStar3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get masteryStar4() : BriskImageDynaLib
      {
         return this._85290997masteryStar4;
      }
      
      public function set masteryStar4(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._85290997masteryStar4;
         if(_loc2_ !== param1)
         {
            this._85290997masteryStar4 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"masteryStar4",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBar() : SlimProgressBarComponent
      {
         return this._1131509414progressBar;
      }
      
      public function set progressBar(param1:SlimProgressBarComponent) : void
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
      public function get splitter() : BriskImageDynaLib
      {
         return this._1926588729splitter;
      }
      
      public function set splitter(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1926588729splitter;
         if(_loc2_ !== param1)
         {
            this._1926588729splitter = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"splitter",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get starGroup() : HGroup
      {
         return this._2125013837starGroup;
      }
      
      public function set starGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._2125013837starGroup;
         if(_loc2_ !== param1)
         {
            this._2125013837starGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starGroup",_loc2_,param1));
            }
         }
      }
   }
}

