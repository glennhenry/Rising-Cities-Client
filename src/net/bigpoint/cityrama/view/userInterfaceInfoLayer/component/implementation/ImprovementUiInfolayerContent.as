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
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.constants.ServerImprovementConstants;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.AbstractUIInfolayerComponent;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components.ImprovementEfficiencyItemRenderer;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.component.implementation.components.skins.ImprovementEfficiencyListSkin;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.AbstractUIInfolayerContentVo;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo.ImprovementUiInfolayerContentVo;
   import net.bigpoint.util.LocaUtils;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class ImprovementUiInfolayerContent extends AbstractUIInfolayerComponent implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      private static var _skinParts:Object = {
         "backgroundGroup":true,
         "topInformation":true,
         "header":true,
         "headerIcon":true,
         "contentGroup":false
      };
      
      private var _163328345efficiencyList:List;
      
      private var _385971994improvementProgressComponent:TimerBarComponent;
      
      private var _181955275qualityLabel:LocaLabel;
      
      private var _559815988qualityText:LocaLabel;
      
      private var _2053116446unlimitedGroup:HGroup;
      
      private var _1554700218unlimitedTimeLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _implementationData:ImprovementUiInfolayerContentVo;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ImprovementUiInfolayerContent()
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
         bindings = this._ImprovementUiInfolayerContent_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_userInterfaceInfoLayer_component_implementation_ImprovementUiInfolayerContentWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return ImprovementUiInfolayerContent[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.maxWidth = 230;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._ImprovementUiInfolayerContent_Array1_c);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         ImprovementUiInfolayerContent._watcherSetupUtil = param1;
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
         if(param1 is ImprovementUiInfolayerContentVo)
         {
            this._implementationData = param1 as ImprovementUiInfolayerContentVo;
            super.data = param1;
            return;
         }
         throw new ArgumentError("Wrong Vo for this component use ImprovementUiInfolayerContentVo " + this);
      }
      
      override protected function commitProperties() : void
      {
         if(Boolean(this._implementationData) && _dirty)
         {
            this.efficiencyList.dataProvider = this._implementationData.listOfEffiencies;
            this.qualityLabel.text = LocaUtils.getString("rcl.guiinfolayer.improvements","rcl.guiinfolayer.improvements.qualitylabel");
            this.qualityText.text = LocaUtils.getString("rcl.guiinfolayer.improvements","rcl.guiinfolayer.improvements.quality." + this._implementationData.quality);
            switch(this._implementationData.quality)
            {
               case ServerImprovementConstants.QUALITY_COMMON:
                  this.qualityText.styleName = "improvementQualityCommon";
                  break;
               case ServerImprovementConstants.QUALITY_EPIC:
                  this.qualityText.styleName = "improvementQualityEpic";
                  break;
               case ServerImprovementConstants.QUALITY_RARE:
                  this.qualityText.styleName = "improvementQualityRare";
                  break;
               case ServerImprovementConstants.QUALITY_LEGENDARY:
                  this.qualityText.styleName = "improvementQualityLegendary";
            }
            this.improvementProgressComponent.visible = this.improvementProgressComponent.includeInLayout = this._implementationData.timerFull != -1;
            this.unlimitedGroup.visible = this.unlimitedGroup.includeInLayout = !this.improvementProgressComponent.visible;
            this.unlimitedTimeLabel.text = LocaUtils.getString("rcl.guiinfolayer.improvements","rcl.guiinfolayer.improvements.timer.unlimited");
            this.improvementProgressComponent.revertFlow = this._implementationData.harvestProgressVo != null;
            if(this._implementationData.harvestProgressVo != null)
            {
               this.improvementProgressComponent.data = this._implementationData.harvestProgressVo;
            }
         }
         super.commitProperties();
      }
      
      private function _ImprovementUiInfolayerContent_Array1_c() : Array
      {
         return [this._ImprovementUiInfolayerContent_VGroup1_c()];
      }
      
      private function _ImprovementUiInfolayerContent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.maxWidth = 200;
         _loc1_.paddingLeft = 5;
         _loc1_.paddingRight = 5;
         _loc1_.mxmlContent = [this._ImprovementUiInfolayerContent_HGroup1_c(),this._ImprovementUiInfolayerContent_BriskImageDynaLib1_c(),this._ImprovementUiInfolayerContent_List1_i(),this._ImprovementUiInfolayerContent_BriskImageDynaLib2_c(),this._ImprovementUiInfolayerContent_TimerBarComponent1_i(),this._ImprovementUiInfolayerContent_HGroup2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementUiInfolayerContent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._ImprovementUiInfolayerContent_LocaLabel1_i(),this._ImprovementUiInfolayerContent_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementUiInfolayerContent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "infoLabelLeft";
         _loc1_.percentWidth = 50;
         _loc1_.percentHeight = 100;
         _loc1_.id = "qualityLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.qualityLabel = _loc1_;
         BindingManager.executeBindings(this,"qualityLabel",this.qualityLabel);
         return _loc1_;
      }
      
      private function _ImprovementUiInfolayerContent_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.percentWidth = 50;
         _loc1_.styleName = "infoLabelRight";
         _loc1_.percentHeight = 100;
         _loc1_.id = "qualityText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.qualityText = _loc1_;
         BindingManager.executeBindings(this,"qualityText",this.qualityText);
         return _loc1_;
      }
      
      private function _ImprovementUiInfolayerContent_BriskImageDynaLib1_c() : BriskImageDynaLib
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
      
      private function _ImprovementUiInfolayerContent_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.percentWidth = 100;
         _loc1_.itemRenderer = this._ImprovementUiInfolayerContent_ClassFactory1_c();
         _loc1_.setStyle("skinClass",ImprovementEfficiencyListSkin);
         _loc1_.id = "efficiencyList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.efficiencyList = _loc1_;
         BindingManager.executeBindings(this,"efficiencyList",this.efficiencyList);
         return _loc1_;
      }
      
      private function _ImprovementUiInfolayerContent_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ImprovementEfficiencyItemRenderer;
         return _loc1_;
      }
      
      private function _ImprovementUiInfolayerContent_BriskImageDynaLib2_c() : BriskImageDynaLib
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
      
      private function _ImprovementUiInfolayerContent_TimerBarComponent1_i() : TimerBarComponent
      {
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         _loc1_.showBoostButton = false;
         _loc1_.width = 160;
         _loc1_.revertFlow = true;
         _loc1_.id = "improvementProgressComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.improvementProgressComponent = _loc1_;
         BindingManager.executeBindings(this,"improvementProgressComponent",this.improvementProgressComponent);
         return _loc1_;
      }
      
      private function _ImprovementUiInfolayerContent_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.paddingLeft = 5;
         _loc1_.paddingRight = 5;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._ImprovementUiInfolayerContent_BriskImageDynaLib3_c(),this._ImprovementUiInfolayerContent_LocaLabel3_i()];
         _loc1_.id = "unlimitedGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.unlimitedGroup = _loc1_;
         BindingManager.executeBindings(this,"unlimitedGroup",this.unlimitedGroup);
         return _loc1_;
      }
      
      private function _ImprovementUiInfolayerContent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_residentialPopup";
         _loc1_.dynaBmpSourceName = "timer_clock";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ImprovementUiInfolayerContent_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "epicUnlimitedLabel";
         _loc1_.percentWidth = 100;
         _loc1_.id = "unlimitedTimeLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.unlimitedTimeLabel = _loc1_;
         BindingManager.executeBindings(this,"unlimitedTimeLabel",this.unlimitedTimeLabel);
         return _loc1_;
      }
      
      private function _ImprovementUiInfolayerContent_bindingsSetup() : Array
      {
         var _loc1_:Array = [];
         _loc1_[0] = new Binding(this,null,null,"efficiencyList.maxWidth","maxWidth");
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get efficiencyList() : List
      {
         return this._163328345efficiencyList;
      }
      
      public function set efficiencyList(param1:List) : void
      {
         var _loc2_:Object = this._163328345efficiencyList;
         if(_loc2_ !== param1)
         {
            this._163328345efficiencyList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"efficiencyList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get improvementProgressComponent() : TimerBarComponent
      {
         return this._385971994improvementProgressComponent;
      }
      
      public function set improvementProgressComponent(param1:TimerBarComponent) : void
      {
         var _loc2_:Object = this._385971994improvementProgressComponent;
         if(_loc2_ !== param1)
         {
            this._385971994improvementProgressComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"improvementProgressComponent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get qualityLabel() : LocaLabel
      {
         return this._181955275qualityLabel;
      }
      
      public function set qualityLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._181955275qualityLabel;
         if(_loc2_ !== param1)
         {
            this._181955275qualityLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"qualityLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get qualityText() : LocaLabel
      {
         return this._559815988qualityText;
      }
      
      public function set qualityText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._559815988qualityText;
         if(_loc2_ !== param1)
         {
            this._559815988qualityText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"qualityText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get unlimitedGroup() : HGroup
      {
         return this._2053116446unlimitedGroup;
      }
      
      public function set unlimitedGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._2053116446unlimitedGroup;
         if(_loc2_ !== param1)
         {
            this._2053116446unlimitedGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unlimitedGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get unlimitedTimeLabel() : LocaLabel
      {
         return this._1554700218unlimitedTimeLabel;
      }
      
      public function set unlimitedTimeLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1554700218unlimitedTimeLabel;
         if(_loc2_ !== param1)
         {
            this._1554700218unlimitedTimeLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unlimitedTimeLabel",_loc2_,param1));
            }
         }
      }
   }
}

