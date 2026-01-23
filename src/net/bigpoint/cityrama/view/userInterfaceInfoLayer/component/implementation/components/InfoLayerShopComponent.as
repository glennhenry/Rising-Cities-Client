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
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.InfoLayerConfigPlayfieldItemVo;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class InfoLayerShopComponent extends Group implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public var _InfoLayerShopComponent_LocaLabel1:LocaLabel;
      
      public var _InfoLayerShopComponent_LocaLabel3:LocaLabel;
      
      private var _1223098708shopMaxStockLabel:LocaLabel;
      
      private var _1523473236shopRadiusLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:InfoLayerConfigPlayfieldItemVo;
      
      private var _dataDirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function InfoLayerShopComponent()
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
         bindings = this._InfoLayerShopComponent_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_userInterfaceInfoLayer_component_implementation_components_InfoLayerShopComponentWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return InfoLayerShopComponent[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.percentWidth = 100;
         this.mxmlContent = [this._InfoLayerShopComponent_VGroup1_c()];
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         InfoLayerShopComponent._watcherSetupUtil = param1;
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
         if(this._dataDirty)
         {
            this._dataDirty = false;
            this.visible = this.includeInLayout = this._data.shopRadius != null;
            if(this._data.shopRadius)
            {
               this.shopRadiusLabel.text = LocaUtils.getString("rcl.guiinfolayer.playfielditems","rcl.guiinfolayer.playfielditems.shopradius.dimensiondivider",[this._data.shopRadius.width,this._data.shopRadius.height]);
               this.shopMaxStockLabel.text = this._data.shopMaxStock.toString();
            }
         }
      }
      
      private function _InfoLayerShopComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._InfoLayerShopComponent_HGroup1_c(),this._InfoLayerShopComponent_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfoLayerShopComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._InfoLayerShopComponent_LocaLabel1_i(),this._InfoLayerShopComponent_LocaLabel2_i(),this._InfoLayerShopComponent_Group2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfoLayerShopComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 2;
         _loc1_.styleName = "infoLabelLeft";
         _loc1_.percentWidth = 100;
         _loc1_.id = "_InfoLayerShopComponent_LocaLabel1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._InfoLayerShopComponent_LocaLabel1 = _loc1_;
         BindingManager.executeBindings(this,"_InfoLayerShopComponent_LocaLabel1",this._InfoLayerShopComponent_LocaLabel1);
         return _loc1_;
      }
      
      private function _InfoLayerShopComponent_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "infoLabel";
         _loc1_.id = "shopMaxStockLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.shopMaxStockLabel = _loc1_;
         BindingManager.executeBindings(this,"shopMaxStockLabel",this.shopMaxStockLabel);
         return _loc1_;
      }
      
      private function _InfoLayerShopComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 28;
         _loc1_.height = 36;
         _loc1_.mxmlContent = [this._InfoLayerShopComponent_BriskImageDynaLib1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfoLayerShopComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_shopBook";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaBmpSourceName = "shopstock";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfoLayerShopComponent_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._InfoLayerShopComponent_LocaLabel3_i(),this._InfoLayerShopComponent_LocaLabel4_i(),this._InfoLayerShopComponent_Group3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfoLayerShopComponent_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 2;
         _loc1_.styleName = "infoLabelLeft";
         _loc1_.percentWidth = 100;
         _loc1_.id = "_InfoLayerShopComponent_LocaLabel3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._InfoLayerShopComponent_LocaLabel3 = _loc1_;
         BindingManager.executeBindings(this,"_InfoLayerShopComponent_LocaLabel3",this._InfoLayerShopComponent_LocaLabel3);
         return _loc1_;
      }
      
      private function _InfoLayerShopComponent_LocaLabel4_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "infoLabel";
         _loc1_.id = "shopRadiusLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.shopRadiusLabel = _loc1_;
         BindingManager.executeBindings(this,"shopRadiusLabel",this.shopRadiusLabel);
         return _loc1_;
      }
      
      private function _InfoLayerShopComponent_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 28;
         _loc1_.height = 36;
         _loc1_.mxmlContent = [this._InfoLayerShopComponent_BriskImageDynaLib2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfoLayerShopComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_shopBook";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaBmpSourceName = "shopradius";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _InfoLayerShopComponent_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = LocaUtils.getString("rcl.guiinfolayer.playfielditems","rcl.guiinfolayer.playfielditems.shopmaxstock.label");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_InfoLayerShopComponent_LocaLabel1.text");
         result[1] = new Binding(this,function():String
         {
            var _loc1_:* = LocaUtils.getString("rcl.guiinfolayer.playfielditems","rcl.guiinfolayer.playfielditems.shopradius.label");
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"_InfoLayerShopComponent_LocaLabel3.text");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopMaxStockLabel() : LocaLabel
      {
         return this._1223098708shopMaxStockLabel;
      }
      
      public function set shopMaxStockLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1223098708shopMaxStockLabel;
         if(_loc2_ !== param1)
         {
            this._1223098708shopMaxStockLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopMaxStockLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shopRadiusLabel() : LocaLabel
      {
         return this._1523473236shopRadiusLabel;
      }
      
      public function set shopRadiusLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1523473236shopRadiusLabel;
         if(_loc2_ !== param1)
         {
            this._1523473236shopRadiusLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopRadiusLabel",_loc2_,param1));
            }
         }
      }
   }
}

