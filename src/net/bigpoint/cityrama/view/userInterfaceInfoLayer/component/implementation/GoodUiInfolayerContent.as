package net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation
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
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.AbstractUIInfolayerComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.AbstractUIInfolayerContentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.GoodUiInfolayerContentVo;
   import net.bigpoint.util.LocaUtils;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class GoodUiInfolayerContent extends AbstractUIInfolayerComponent implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private static var _skinParts:Object = {
         "backgroundGroup":true,
         "topInformation":true,
         "header":true,
         "headerIcon":true,
         "contentGroup":false
      };
      
      public var _GoodUiInfolayerContent_BriskImageDynaLib1:BriskImageDynaLib;
      
      private var _308835287consumerGroup:VGroup;
      
      private var _840871357consumerText:LocaLabel;
      
      private var _450047601consumerTextLabel:LocaLabel;
      
      private var _1461658125producerGroup:VGroup;
      
      private var _601714655producerText:LocaLabel;
      
      private var _1458228651producerTextLabel:LocaLabel;
      
      private var _1286778554specialGroup:VGroup;
      
      private var _1615133998specialtextLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _implementationData:GoodUiInfolayerContentVo;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function GoodUiInfolayerContent()
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
         bindings = this._GoodUiInfolayerContent_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_userInterfaceInfoLayer_component_implementation_GoodUiInfolayerContentWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return GoodUiInfolayerContent[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.maxWidth = 230;
         this.width = 230;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._GoodUiInfolayerContent_Array1_c);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         GoodUiInfolayerContent._watcherSetupUtil = param1;
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
      
      override public function set data(param1:AbstractUIInfolayerContentVo) : void
      {
         if(param1 is AbstractUIInfolayerContentVo)
         {
            this._implementationData = param1 as GoodUiInfolayerContentVo;
            super.data = param1;
            return;
         }
         throw new ArgumentError("Wrong Vo for this component use GoodUiInfolayerContentVo " + this);
      }
      
      override protected function commitProperties() : void
      {
         if(Boolean(this._implementationData) && _dirty)
         {
            _data.headerIconType = AbstractUIInfolayerContentVo.HEADER_ICON_INFO;
            if(this._implementationData.locked)
            {
               _data.headerIconType = AbstractUIInfolayerContentVo.HEADER_ICON_LOCKED;
            }
            this.specialGroup.visible = this.specialGroup.includeInLayout = this._implementationData.goodType != ServerTagConstants.GOOD_NORMAL && this._implementationData.goodType != ServerTagConstants.GOOD_CONSTRUCTION;
            this.producerGroup.visible = this.producerGroup.includeInLayout = this._implementationData.productionBuildingLocaleIds.length > 0;
            this.consumerGroup.visible = this.consumerGroup.includeInLayout = this._implementationData.consumerBuildingLocaleIds.length > 0;
            if(this._implementationData.goodType == ServerTagConstants.GOOD_EVENT)
            {
               this.specialtextLabel.text = LocaUtils.getString("rcl.citysquarequests." + this._implementationData.currentEventLocaleId,"rcl.citysquarequests." + this._implementationData.currentEventLocaleId + ".goods.tooltip." + this._implementationData.goodLocaleId);
            }
            else
            {
               this.specialtextLabel.text = LocaUtils.getString("rcl.guiinfolayer.goods","rcl.guiinfolayer.goods.special." + this._implementationData.goodLocaleId + ".flavor");
               if(LocaUtils.getString("rcl.guiinfolayer.goods","rcl.guiinfolayer.goods.special." + this._implementationData.goodLocaleId + ".flavor") == "")
               {
                  this.specialtextLabel.visible = this.specialtextLabel.includeInLayout = false;
               }
            }
            this.producerTextLabel.text = LocaUtils.getString("rcl.guiinfolayer.goods","rcl.guiinfolayer.goods.normal.producedin.label");
            var _loc1_:* = "";
            var _loc2_:int = 0;
            for each(var _loc3_ in this._implementationData.productionBuildingLocaleIds)
            {
               _loc1_ = null + LocaUtils.getString("rcl.playfielditems.name","rcl.playfielditems.name." + null);
               if(0 < this._implementationData.productionBuildingLocaleIds.length - 1)
               {
                  _loc1_ = null + "<br>";
               }
               _loc2_++;
            }
            this.producerText.text = null;
            this.consumerTextLabel.text = LocaUtils.getString("rcl.guiinfolayer.goods","rcl.guiinfolayer.goods.normal.usedin.label");
            _loc1_ = "";
            _loc2_ = 0;
            for each(var _loc4_ in this._implementationData.consumerBuildingLocaleIds)
            {
               if(LocaUtils.getString("rcl.playfielditems.name","rcl.playfielditems.name." + null) != "")
               {
                  _loc1_ = null + LocaUtils.getString("rcl.playfielditems.name","rcl.playfielditems.name." + null);
                  if(0 < this._implementationData.consumerBuildingLocaleIds.length - 1)
                  {
                     _loc1_ = null + "<br>";
                  }
                  _loc2_++;
               }
            }
            this.consumerText.text = null;
         }
         super.commitProperties();
      }
      
      private function _GoodUiInfolayerContent_Array1_c() : Array
      {
         return [this._GoodUiInfolayerContent_VGroup1_c()];
      }
      
      private function _GoodUiInfolayerContent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.maxWidth = 230;
         _loc1_.paddingLeft = 5;
         _loc1_.paddingRight = 5;
         _loc1_.mxmlContent = [this._GoodUiInfolayerContent_VGroup2_i(),this._GoodUiInfolayerContent_VGroup3_i(),this._GoodUiInfolayerContent_VGroup4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _GoodUiInfolayerContent_VGroup2_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._GoodUiInfolayerContent_LocaLabel1_i()];
         _loc1_.id = "specialGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.specialGroup = _loc1_;
         BindingManager.executeBindings(this,"specialGroup",this.specialGroup);
         return _loc1_;
      }
      
      private function _GoodUiInfolayerContent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "infoLabel";
         _loc1_.percentWidth = 80;
         _loc1_.id = "specialtextLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.specialtextLabel = _loc1_;
         BindingManager.executeBindings(this,"specialtextLabel",this.specialtextLabel);
         return _loc1_;
      }
      
      private function _GoodUiInfolayerContent_VGroup3_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._GoodUiInfolayerContent_BriskImageDynaLib1_i(),this._GoodUiInfolayerContent_LocaLabel2_i(),this._GoodUiInfolayerContent_LocaLabel3_i()];
         _loc1_.id = "producerGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.producerGroup = _loc1_;
         BindingManager.executeBindings(this,"producerGroup",this.producerGroup);
         return _loc1_;
      }
      
      private function _GoodUiInfolayerContent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "infolayer_divider_new";
         _loc1_.id = "_GoodUiInfolayerContent_BriskImageDynaLib1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._GoodUiInfolayerContent_BriskImageDynaLib1 = _loc1_;
         BindingManager.executeBindings(this,"_GoodUiInfolayerContent_BriskImageDynaLib1",this._GoodUiInfolayerContent_BriskImageDynaLib1);
         return _loc1_;
      }
      
      private function _GoodUiInfolayerContent_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "infoLabelLeft";
         _loc1_.percentWidth = 80;
         _loc1_.id = "producerTextLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.producerTextLabel = _loc1_;
         BindingManager.executeBindings(this,"producerTextLabel",this.producerTextLabel);
         return _loc1_;
      }
      
      private function _GoodUiInfolayerContent_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "expansionBlue";
         _loc1_.percentWidth = 80;
         _loc1_.id = "producerText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.producerText = _loc1_;
         BindingManager.executeBindings(this,"producerText",this.producerText);
         return _loc1_;
      }
      
      private function _GoodUiInfolayerContent_VGroup4_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._GoodUiInfolayerContent_BriskImageDynaLib2_c(),this._GoodUiInfolayerContent_LocaLabel4_i(),this._GoodUiInfolayerContent_LocaLabel5_i()];
         _loc1_.id = "consumerGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.consumerGroup = _loc1_;
         BindingManager.executeBindings(this,"consumerGroup",this.consumerGroup);
         return _loc1_;
      }
      
      private function _GoodUiInfolayerContent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "infolayer_divider_new";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _GoodUiInfolayerContent_LocaLabel4_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "infoLabelLeft";
         _loc1_.percentWidth = 80;
         _loc1_.id = "consumerTextLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.consumerTextLabel = _loc1_;
         BindingManager.executeBindings(this,"consumerTextLabel",this.consumerTextLabel);
         return _loc1_;
      }
      
      private function _GoodUiInfolayerContent_LocaLabel5_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "expansionBlue";
         _loc1_.percentWidth = 80;
         _loc1_.id = "consumerText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.consumerText = _loc1_;
         BindingManager.executeBindings(this,"consumerText",this.consumerText);
         return _loc1_;
      }
      
      private function _GoodUiInfolayerContent_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Boolean
         {
            return specialGroup.visible;
         },null,"_GoodUiInfolayerContent_BriskImageDynaLib1.visible");
         result[1] = new Binding(this,function():Boolean
         {
            return specialGroup.includeInLayout;
         },null,"_GoodUiInfolayerContent_BriskImageDynaLib1.includeInLayout");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get consumerGroup() : VGroup
      {
         return this._308835287consumerGroup;
      }
      
      public function set consumerGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._308835287consumerGroup;
         if(_loc2_ !== param1)
         {
            this._308835287consumerGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"consumerGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get consumerText() : LocaLabel
      {
         return this._840871357consumerText;
      }
      
      public function set consumerText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._840871357consumerText;
         if(_loc2_ !== param1)
         {
            this._840871357consumerText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"consumerText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get consumerTextLabel() : LocaLabel
      {
         return this._450047601consumerTextLabel;
      }
      
      public function set consumerTextLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._450047601consumerTextLabel;
         if(_loc2_ !== param1)
         {
            this._450047601consumerTextLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"consumerTextLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get producerGroup() : VGroup
      {
         return this._1461658125producerGroup;
      }
      
      public function set producerGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._1461658125producerGroup;
         if(_loc2_ !== param1)
         {
            this._1461658125producerGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"producerGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get producerText() : LocaLabel
      {
         return this._601714655producerText;
      }
      
      public function set producerText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._601714655producerText;
         if(_loc2_ !== param1)
         {
            this._601714655producerText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"producerText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get producerTextLabel() : LocaLabel
      {
         return this._1458228651producerTextLabel;
      }
      
      public function set producerTextLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1458228651producerTextLabel;
         if(_loc2_ !== param1)
         {
            this._1458228651producerTextLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"producerTextLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get specialGroup() : VGroup
      {
         return this._1286778554specialGroup;
      }
      
      public function set specialGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._1286778554specialGroup;
         if(_loc2_ !== param1)
         {
            this._1286778554specialGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"specialGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get specialtextLabel() : LocaLabel
      {
         return this._1615133998specialtextLabel;
      }
      
      public function set specialtextLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1615133998specialtextLabel;
         if(_loc2_ !== param1)
         {
            this._1615133998specialtextLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"specialtextLabel",_loc2_,param1));
            }
         }
      }
   }
}

