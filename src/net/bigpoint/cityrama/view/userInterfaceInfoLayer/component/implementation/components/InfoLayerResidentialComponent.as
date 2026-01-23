package net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components
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
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.InfoLayerConfigPlayfieldItemVo;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class InfoLayerResidentialComponent extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _InfoLayerResidentialComponent_LocaLabel1:LocaLabel;
      
      private var _1132963699baseIncomeIcon:BriskImageDynaLib;
      
      private var _903034022baseincomeLabel:LocaLabel;
      
      private var _500208440timerComponent:TimerBarComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:InfoLayerConfigPlayfieldItemVo;
      
      private var _dataDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function InfoLayerResidentialComponent()
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
         bindings = this._InfoLayerResidentialComponent_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_userInterfaceInfoLayer_component_implementation_components_InfoLayerResidentialComponentWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return InfoLayerResidentialComponent[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.percentWidth = 100;
         this.mxmlContent = [this._InfoLayerResidentialComponent_VGroup1_c()];
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         InfoLayerResidentialComponent._watcherSetupUtil = param1;
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
      
      public function set data(param1:InfoLayerConfigPlayfieldItemVo) : void
      {
         this._data = param1;
         this._dataDirty = true;
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataDirty && Boolean(this._data))
         {
            this._dataDirty = false;
            this.visible = this.includeInLayout = this._data.baseharvestOutput != null;
            if(this._data.baseharvestOutput)
            {
               this.baseincomeLabel.text = Math.abs(this._data.baseharvestOutput.outputAmount).toString();
               switch(this._data.baseharvestOutput.resourceConfig.type)
               {
                  case ServerResConst.RESOURCE_PRODUCTIONPOINTS:
                     this.baseIncomeIcon.dynaBmpSourceName = "pp_icon_small";
                     break;
                  case ServerResConst.RESOURCE_VIRTUALCURRENCY:
                     this.baseIncomeIcon.dynaBmpSourceName = "layer_cc_icon_small";
                     break;
                  case ServerResConst.RESOURCE_EDUCATIONPOINTS:
                     this.baseIncomeIcon.dynaBmpSourceName = "ep_icon_small";
               }
               this.timerComponent.visible = this.timerComponent.includeInLayout = !isNaN(this._data.timerCycle);
               var _loc1_:TimerBarComponentVo = new TimerBarComponentVo();
               null.cycleLength = this._data.timerCycle;
               null.waitingForStart = true;
               this.timerComponent.data = null;
            }
         }
      }
      
      private function _InfoLayerResidentialComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._InfoLayerResidentialComponent_HGroup1_c(),this._InfoLayerResidentialComponent_TimerBarComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfoLayerResidentialComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.paddingRight = 2;
         _loc1_.mxmlContent = [this._InfoLayerResidentialComponent_LocaLabel1_i(),this._InfoLayerResidentialComponent_LocaLabel2_i(),this._InfoLayerResidentialComponent_Group2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfoLayerResidentialComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 2;
         _loc1_.styleName = "infoLabelLeft";
         _loc1_.percentWidth = 100;
         _loc1_.id = "_InfoLayerResidentialComponent_LocaLabel1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._InfoLayerResidentialComponent_LocaLabel1 = _loc1_;
         BindingManager.executeBindings(this,"_InfoLayerResidentialComponent_LocaLabel1",this._InfoLayerResidentialComponent_LocaLabel1);
         return _loc1_;
      }
      
      private function _InfoLayerResidentialComponent_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "infoLabel";
         _loc1_.id = "baseincomeLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.baseincomeLabel = _loc1_;
         BindingManager.executeBindings(this,"baseincomeLabel",this.baseincomeLabel);
         return _loc1_;
      }
      
      private function _InfoLayerResidentialComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 28;
         _loc1_.height = 36;
         _loc1_.mxmlContent = [this._InfoLayerResidentialComponent_BriskImageDynaLib1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfoLayerResidentialComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_resources_icons";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "baseIncomeIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.baseIncomeIcon = _loc1_;
         BindingManager.executeBindings(this,"baseIncomeIcon",this.baseIncomeIcon);
         return _loc1_;
      }
      
      private function _InfoLayerResidentialComponent_TimerBarComponent1_i() : TimerBarComponent
      {
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         _loc1_.showBoostButton = false;
         _loc1_.activeTimer = false;
         _loc1_.width = 140;
         _loc1_.maxWidth = 160;
         _loc1_.id = "timerComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.timerComponent = _loc1_;
         BindingManager.executeBindings(this,"timerComponent",this.timerComponent);
         return _loc1_;
      }
      
      private function _InfoLayerResidentialComponent_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = LocaUtils.getString("rcl.guiinfolayer.playfielditems","rcl.guiinfolayer.playfielditems.baseincome.label");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_InfoLayerResidentialComponent_LocaLabel1.text");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get baseIncomeIcon() : BriskImageDynaLib
      {
         return this._1132963699baseIncomeIcon;
      }
      
      public function set baseIncomeIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1132963699baseIncomeIcon;
         if(_loc2_ !== param1)
         {
            this._1132963699baseIncomeIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"baseIncomeIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get baseincomeLabel() : LocaLabel
      {
         return this._903034022baseincomeLabel;
      }
      
      public function set baseincomeLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._903034022baseincomeLabel;
         if(_loc2_ !== param1)
         {
            this._903034022baseincomeLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"baseincomeLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get timerComponent() : TimerBarComponent
      {
         return this._500208440timerComponent;
      }
      
      public function set timerComponent(param1:TimerBarComponent) : void
      {
         var _loc2_:Object = this._500208440timerComponent;
         if(_loc2_ !== param1)
         {
            this._500208440timerComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timerComponent",_loc2_,param1));
            }
         }
      }
   }
}

