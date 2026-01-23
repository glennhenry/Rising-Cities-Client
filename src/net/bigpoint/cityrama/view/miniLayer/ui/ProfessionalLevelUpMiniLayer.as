package net.bigpoint.cityrama.view.miniLayer.ui
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
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.resources.ResourceManager;
   import mx.styles.*;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.constants.ServerProfessionalConstants;
   import net.bigpoint.cityrama.model.professionals.ProfessionalLevelUpLayerVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.schoolBook.ui.components.SpecialistSlotComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class ProfessionalLevelUpMiniLayer extends MiniLayerWindow implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public static const EVENT_ACCEPT:String = "EVENT_ACCEPT";
      
      public static const EVENT_DECLINE:String = "EVENT_DECLINE";
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "sparkle":false,
         "closeButton":false,
         "controlBarGroup":false,
         "attentionSign":false,
         "contentGroup":false,
         "titleDisplay":false
      };
      
      public var _ProfessionalLevelUpMiniLayer_BriskImageDynaLib2:BriskImageDynaLib;
      
      private var _1480909402acceptButton:MultistateButton;
      
      private var _1600068152declineButton:MultistateButton;
      
      private var _1664451042layerText:LocaLabel;
      
      private var _273241018mainGroup:VGroup;
      
      private var _119892632minilayerFlavor:LocaLabel;
      
      private var _1845183867newSpec:BriskImageDynaLib;
      
      private var _1421216316newSpecGroup:HGroup;
      
      private var _1795780411professionalSlot:SpecialistSlotComponent;
      
      private var _2133501048specText:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ProfessionalLevelUpLayerVo;
      
      private var _dirty:Boolean;
      
      private const STATE_SKILLP:String = "skillpointsonly";
      
      private const STATE_SPEC:String = "canbespec";
      
      private const STATE_HERO:String = "hero";
      
      private var _layerState:String = "";
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ProfessionalLevelUpMiniLayer()
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
         bindings = this._ProfessionalLevelUpMiniLayer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_miniLayer_ui_ProfessionalLevelUpMiniLayerWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return ProfessionalLevelUpMiniLayer[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._ProfessionalLevelUpMiniLayer_Array1_c);
         this.addEventListener("creationComplete",this.___ProfessionalLevelUpMiniLayer_MiniLayerWindow1_creationComplete);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      private static function getString(param1:String, param2:String, param3:Array = null) : String
      {
         if(param3 == null)
         {
            param3 = [];
         }
         return StringUtil.substitute(ResourceManager.getInstance().getString(param1,param2),param3);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         ProfessionalLevelUpMiniLayer._watcherSetupUtil = param1;
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
      
      private function onCreationComplete(param1:FlexEvent) : void
      {
         this.title = getString("rcl.miniLayer.prefessionallevelup","rcl.miniLayer.prefessionallevelup.title.capital");
      }
      
      private function onDeclineClick() : void
      {
         dispatchEvent(new Event(EVENT_DECLINE));
      }
      
      private function onAcceptClick() : void
      {
         dispatchEvent(new Event(EVENT_ACCEPT));
      }
      
      public function set data(param1:ProfessionalLevelUpLayerVo) : void
      {
         this._data = param1;
         this._dirty = true;
         invalidateProperties();
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:String = null;
         super.commitProperties();
         if(this._dirty && Boolean(this._data))
         {
            this._dirty = false;
            this.professionalSlot.data = this._data;
            _loc1_ = this._data.gender ? "male" : "female";
            if(this._data.possibleSpecialisations.length == 0)
            {
               this._layerState = this.STATE_SKILLP;
               this.acceptButton.label = getString("rcl.miniLayer.prefessionallevelup","rcl.miniLayer.prefessionallevelup.button.skillpointsok.capital");
               this.acceptButton.toolTip = getString("rcl.miniLayer.prefessionallevelup","rcl.miniLayer.prefessionallevelup.btn.tooltip");
               this.declineButton.visible = this.declineButton.includeInLayout = false;
               this.newSpecGroup.visible = this.newSpecGroup.includeInLayout = false;
            }
            else if(this._data.possibleSpecialisations[0].rank == ServerProfessionalConstants.HERO)
            {
               this._layerState = this.STATE_HERO;
               this.acceptButton.label = getString("rcl.miniLayer.prefessionallevelup","rcl.miniLayer.prefessionallevelup.button.herook.capital");
               this.acceptButton.toolTip = getString("rcl.miniLayer.prefessionallevelup","rcl.miniLayer.prefessionallevelup.btn.tooltip");
               this.newSpec.dynaBmpSourceName = this._data.possibleSpecialisations[0].gfxId.toString();
               this.declineButton.visible = this.declineButton.includeInLayout = false;
               this.specText.text = getString("rcl.professions","rcl.professions." + this._data.possibleSpecialisations[0].gfxId);
            }
            else
            {
               this._layerState = this.STATE_SPEC;
               this.acceptButton.label = getString("rcl.miniLayer.prefessionallevelup","rcl.miniLayer.prefessionallevelup.button.acceptspec.capital");
               this.acceptButton.toolTip = getString("rcl.miniLayer.prefessionallevelup","rcl.miniLayer.prefessionallevelup.btn.accept.tooltip");
               this.acceptButton.styleName = "confirm";
               this.acceptButton.imageNameLeft = "icon_check";
               this.acceptButton.libNameLeft = "gui_popups_miniLayer";
               this.declineButton.label = getString("rcl.miniLayer.prefessionallevelup","rcl.miniLayer.prefessionallevelup.button.declinespec.capital");
               this.declineButton.toolTip = getString("rcl.miniLayer.prefessionallevelup","rcl.miniLayer.prefessionallevelup.btn.deny.tooltip");
               this.declineButton.styleName = "abort";
               this.declineButton.imageNameLeft = "icon_cancel";
               this.declineButton.libNameLeft = "gui_popups_miniLayer";
               this.newSpec.dynaBmpSourceName = this._data.possibleSpecialisations[0].gfxId.toString();
               this.declineButton.visible = this.declineButton.includeInLayout = true;
               this.specText.text = getString("rcl.professions","rcl.professions." + this._data.possibleSpecialisations[0].gfxId);
            }
            var _loc2_:* = "<FONT Face=\'Arial Black\' Size=\'14\' Color=\'#57605B\'> +" + this._data.skillPointGain + "</FONT>";
            this.layerText.text = getString("rcl.miniLayer.prefessionallevelup","rcl.miniLayer.prefessionallevelup." + this._layerState + ".text." + _loc1_,[null]);
            this.minilayerFlavor.text = getString("rcl.miniLayer.prefessionallevelup","rcl.miniLayer.prefessionallevelup." + this._layerState + ".flavour." + _loc1_,[this._data.currentLevel]);
         }
      }
      
      private function _ProfessionalLevelUpMiniLayer_Array1_c() : Array
      {
         return [this._ProfessionalLevelUpMiniLayer_VGroup1_i(),this._ProfessionalLevelUpMiniLayer_BriskImageDynaLib4_c()];
      }
      
      private function _ProfessionalLevelUpMiniLayer_VGroup1_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.paddingTop = -20;
         _loc1_.gap = -5;
         _loc1_.mxmlContent = [this._ProfessionalLevelUpMiniLayer_HGroup1_c(),this._ProfessionalLevelUpMiniLayer_HGroup2_c(),this._ProfessionalLevelUpMiniLayer_Group4_c(),this._ProfessionalLevelUpMiniLayer_HGroup4_c()];
         _loc1_.id = "mainGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mainGroup = _loc1_;
         BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
         return _loc1_;
      }
      
      private function _ProfessionalLevelUpMiniLayer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 90;
         _loc1_.height = 40;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._ProfessionalLevelUpMiniLayer_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalLevelUpMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 80;
         _loc1_.styleName = "miniLayerFlavourText";
         _loc1_.maxDisplayedLines = 2;
         _loc1_.id = "minilayerFlavor";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.minilayerFlavor = _loc1_;
         BindingManager.executeBindings(this,"minilayerFlavor",this.minilayerFlavor);
         return _loc1_;
      }
      
      private function _ProfessionalLevelUpMiniLayer_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._ProfessionalLevelUpMiniLayer_Group1_c(),this._ProfessionalLevelUpMiniLayer_Group2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalLevelUpMiniLayer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._ProfessionalLevelUpMiniLayer_SpecialistSlotComponent1_i(),this._ProfessionalLevelUpMiniLayer_BriskImageDynaLib1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalLevelUpMiniLayer_SpecialistSlotComponent1_i() : SpecialistSlotComponent
      {
         var _loc1_:SpecialistSlotComponent = new SpecialistSlotComponent();
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "professionalSlot";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.professionalSlot = _loc1_;
         BindingManager.executeBindings(this,"professionalSlot",this.professionalSlot);
         return _loc1_;
      }
      
      private function _ProfessionalLevelUpMiniLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "postit_tape_top";
         _loc1_.width = 80;
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalLevelUpMiniLayer_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._ProfessionalLevelUpMiniLayer_Group3_c(),this._ProfessionalLevelUpMiniLayer_VGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalLevelUpMiniLayer_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._ProfessionalLevelUpMiniLayer_BriskImageDynaLib2_i(),this._ProfessionalLevelUpMiniLayer_BriskMCDynaLib1_c(),this._ProfessionalLevelUpMiniLayer_BriskMCDynaLib2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalLevelUpMiniLayer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.id = "_ProfessionalLevelUpMiniLayer_BriskImageDynaLib2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._ProfessionalLevelUpMiniLayer_BriskImageDynaLib2 = _loc1_;
         BindingManager.executeBindings(this,"_ProfessionalLevelUpMiniLayer_BriskImageDynaLib2",this._ProfessionalLevelUpMiniLayer_BriskImageDynaLib2);
         return _loc1_;
      }
      
      private function _ProfessionalLevelUpMiniLayer_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_left";
         _loc1_.width = 20;
         _loc1_.height = 106;
         _loc1_.verticalCenter = 0;
         _loc1_.left = -4;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalLevelUpMiniLayer_BriskMCDynaLib2_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_right";
         _loc1_.width = 20;
         _loc1_.height = 106;
         _loc1_.verticalCenter = 0;
         _loc1_.right = -2;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalLevelUpMiniLayer_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.height = 140;
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.paddingTop = 10;
         _loc1_.paddingBottom = 10;
         _loc1_.gap = 10;
         _loc1_.paddingLeft = 10;
         _loc1_.paddingRight = 10;
         _loc1_.mxmlContent = [this._ProfessionalLevelUpMiniLayer_LocaLabel2_i(),this._ProfessionalLevelUpMiniLayer_HGroup3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalLevelUpMiniLayer_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "miniLayerFlavourText";
         _loc1_.maxWidth = 300;
         _loc1_.id = "layerText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.layerText = _loc1_;
         BindingManager.executeBindings(this,"layerText",this.layerText);
         return _loc1_;
      }
      
      private function _ProfessionalLevelUpMiniLayer_HGroup3_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._ProfessionalLevelUpMiniLayer_BriskImageDynaLib3_i(),this._ProfessionalLevelUpMiniLayer_LocaLabel3_i()];
         _loc1_.id = "newSpecGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.newSpecGroup = _loc1_;
         BindingManager.executeBindings(this,"newSpecGroup",this.newSpecGroup);
         return _loc1_;
      }
      
      private function _ProfessionalLevelUpMiniLayer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "1100006";
         _loc1_.dynaLibName = "big_badges";
         _loc1_.dynaSWFFileName = "gui_ui_emergencyDepartmentsIcons";
         _loc1_.id = "newSpec";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.newSpec = _loc1_;
         BindingManager.executeBindings(this,"newSpec",this.newSpec);
         return _loc1_;
      }
      
      private function _ProfessionalLevelUpMiniLayer_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "profLevelUpSpec";
         _loc1_.text = "DEVText";
         _loc1_.id = "specText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.specText = _loc1_;
         BindingManager.executeBindings(this,"specText",this.specText);
         return _loc1_;
      }
      
      private function _ProfessionalLevelUpMiniLayer_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 13;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalLevelUpMiniLayer_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._ProfessionalLevelUpMiniLayer_MultistateButton1_i(),this._ProfessionalLevelUpMiniLayer_MultistateButton2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ProfessionalLevelUpMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.label = "DEVText";
         _loc1_.width = 210;
         _loc1_.addEventListener("click",this.__acceptButton_click);
         _loc1_.id = "acceptButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.acceptButton = _loc1_;
         BindingManager.executeBindings(this,"acceptButton",this.acceptButton);
         return _loc1_;
      }
      
      public function __acceptButton_click(param1:MouseEvent) : void
      {
         this.onAcceptClick();
      }
      
      private function _ProfessionalLevelUpMiniLayer_MultistateButton2_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.label = "DEVText";
         _loc1_.width = 210;
         _loc1_.addEventListener("click",this.__declineButton_click);
         _loc1_.id = "declineButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.declineButton = _loc1_;
         BindingManager.executeBindings(this,"declineButton",this.declineButton);
         return _loc1_;
      }
      
      public function __declineButton_click(param1:MouseEvent) : void
      {
         this.onDeclineClick();
      }
      
      private function _ProfessionalLevelUpMiniLayer_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_emergencyBook";
         _loc1_.dynaBmpSourceName = "icon_levelUp__large";
         _loc1_.top = -60;
         _loc1_.left = -18;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___ProfessionalLevelUpMiniLayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.onCreationComplete(param1);
      }
      
      private function _ProfessionalLevelUpMiniLayer_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():BriskDynaVo
         {
            return new BriskDynaVo("gui_popups_emergencyBook","quadrillen_levelup");
         },null,"_ProfessionalLevelUpMiniLayer_BriskImageDynaLib2.briskDynaVo");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get acceptButton() : MultistateButton
      {
         return this._1480909402acceptButton;
      }
      
      public function set acceptButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1480909402acceptButton;
         if(_loc2_ !== param1)
         {
            this._1480909402acceptButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"acceptButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get declineButton() : MultistateButton
      {
         return this._1600068152declineButton;
      }
      
      public function set declineButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1600068152declineButton;
         if(_loc2_ !== param1)
         {
            this._1600068152declineButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"declineButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get layerText() : LocaLabel
      {
         return this._1664451042layerText;
      }
      
      public function set layerText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1664451042layerText;
         if(_loc2_ !== param1)
         {
            this._1664451042layerText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"layerText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainGroup() : VGroup
      {
         return this._273241018mainGroup;
      }
      
      public function set mainGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._273241018mainGroup;
         if(_loc2_ !== param1)
         {
            this._273241018mainGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get minilayerFlavor() : LocaLabel
      {
         return this._119892632minilayerFlavor;
      }
      
      public function set minilayerFlavor(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._119892632minilayerFlavor;
         if(_loc2_ !== param1)
         {
            this._119892632minilayerFlavor = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"minilayerFlavor",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get newSpec() : BriskImageDynaLib
      {
         return this._1845183867newSpec;
      }
      
      public function set newSpec(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1845183867newSpec;
         if(_loc2_ !== param1)
         {
            this._1845183867newSpec = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newSpec",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get newSpecGroup() : HGroup
      {
         return this._1421216316newSpecGroup;
      }
      
      public function set newSpecGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._1421216316newSpecGroup;
         if(_loc2_ !== param1)
         {
            this._1421216316newSpecGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newSpecGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get professionalSlot() : SpecialistSlotComponent
      {
         return this._1795780411professionalSlot;
      }
      
      public function set professionalSlot(param1:SpecialistSlotComponent) : void
      {
         var _loc2_:Object = this._1795780411professionalSlot;
         if(_loc2_ !== param1)
         {
            this._1795780411professionalSlot = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"professionalSlot",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get specText() : LocaLabel
      {
         return this._2133501048specText;
      }
      
      public function set specText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._2133501048specText;
         if(_loc2_ !== param1)
         {
            this._2133501048specText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"specText",_loc2_,param1));
            }
         }
      }
   }
}

