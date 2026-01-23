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
   import mx.styles.*;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.constants.ServerProfessionalConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.miniLayer.vo.EmergencyRehireProfessionalMiniLayerVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicPlusButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PriceComponent;
   import net.bigpoint.cityrama.view.common.components.StatsProgressbar;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.common.skins.DynamicPlusButtonSkin;
   import net.bigpoint.cityrama.view.emergencyBook.ui.components.SideSpecialistSlotComponent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public class EmergencyRehireProfessionalMiniLayer extends MiniLayerWindow implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
      
      public static const EP:String = "EP";
      
      public static const DEXTRO:String = "DEXTRO";
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "sparkle":false,
         "closeButton":false,
         "controlBarGroup":false,
         "attentionSign":false,
         "contentGroup":false,
         "titleDisplay":false
      };
      
      private var _1016580566attributeOne:StatsProgressbar;
      
      private var _1971893150attributeThree:StatsProgressbar;
      
      private var _1016575472attributeTwo:StatsProgressbar;
      
      private var _1935219026bluePaper:BriskImageDynaLib;
      
      private var _94849606costs:PriceComponent;
      
      private var _443494924dextroButton:DynamicPlusButton;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _1221270899header:LocaLabel;
      
      private var _1213523686infoLabel:LocaLabel;
      
      private var _1002918665profSlot:SideSpecialistSlotComponent;
      
      private var _778037831rehireButton:MultistateButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:EmergencyRehireProfessionalMiniLayerVo;
      
      private var _dirty:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function EmergencyRehireProfessionalMiniLayer()
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
         bindings = this._EmergencyRehireProfessionalMiniLayer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_net_bigpoint_cityrama_view_miniLayer_ui_EmergencyRehireProfessionalMiniLayerWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return EmergencyRehireProfessionalMiniLayer[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.width = 540;
         this.height = 313;
         this.showAttentionSign = true;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._EmergencyRehireProfessionalMiniLayer_Array1_c);
         this.addEventListener("creationComplete",this.___EmergencyRehireProfessionalMiniLayer_MiniLayerWindow1_creationComplete);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         EmergencyRehireProfessionalMiniLayer._watcherSetupUtil = param1;
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
      
      public function setData(param1:EmergencyRehireProfessionalMiniLayerVo) : void
      {
         if(!RandomUtilities.isEqual(this._data,param1))
         {
            this._dirty = true;
            this._data = param1;
            this.invalidateProperties();
         }
      }
      
      private function handleOkClick(param1:Event) : void
      {
         dispatchEvent(new Event(EP));
      }
      
      private function handleDextroClick(param1:Event) : void
      {
         dispatchEvent(new Event(DEXTRO));
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dirty && this._data != null)
         {
            this._dirty = false;
            this.title = this._data.title;
            this.header.text = this._data.header;
            this.flavourText.text = this._data.flavourText;
            this.rehireButton.label = this._data.buttonText;
            this.infoLabel.text = StringUtil.substitute(this._data.instantFinishText,this._data.instantDextroCosts);
            if(!this._data.hasEnoughDextro)
            {
               this.dextroButton.showPlus = true;
               this.dextroButton.toolTip = this._data.instantFinishToolTipBad;
            }
            if(!this._data.hasEnoughEp)
            {
               this.rehireButton.enabled = false;
            }
            this.costs.affordable = this._data.hasEnoughEp;
            this.costs.priceLabel = LocaUtils.getThousendSeperatedNumber(this._data.epCosts);
            this.profSlot.data = this._data.professionalSlotVo;
            this.profSlot.enableNameDisplay(false);
            this.updateAttributeProgressBars();
         }
      }
      
      private function updateAttributeProgressBars() : void
      {
         this.attributeOne.styleName = ServerProfessionalConstants.ATTRIBUTE_EFFICIENCY;
         this.attributeOne.progressbar.percentWidth = this._data.efficencyProgress;
         this.attributeOne.plusButton.includeInLayout = false;
         this.attributeTwo.styleName = ServerProfessionalConstants.ATTRIBUTE_LUCK;
         this.attributeTwo.progressbar.percentWidth = this._data.luckProgress;
         this.attributeTwo.plusButton.includeInLayout = false;
         this.attributeThree.styleName = ServerProfessionalConstants.ATTRIBUTE_PERCEPTION;
         this.attributeThree.progressbar.percentWidth = this._data.perceptionProgress;
         this.attributeThree.plusButton.includeInLayout = false;
      }
      
      protected function creationCompleteHandler(param1:FlexEvent) : void
      {
         this.rehireButton.addEventListener(MouseEvent.CLICK,this.handleOkClick);
         this.dextroButton.addEventListener(MouseEvent.CLICK,this.handleDextroClick);
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_Array1_c() : Array
      {
         return [this._EmergencyRehireProfessionalMiniLayer_Group1_c(),this._EmergencyRehireProfessionalMiniLayer_Group5_c()];
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._EmergencyRehireProfessionalMiniLayer_HGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.left = 12;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._EmergencyRehireProfessionalMiniLayer_Group2_c(),this._EmergencyRehireProfessionalMiniLayer_VGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 50;
         _loc1_.left = 0;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._EmergencyRehireProfessionalMiniLayer_BriskImageDynaLib1_i(),this._EmergencyRehireProfessionalMiniLayer_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_miniLayer";
         _loc1_.dynaBmpSourceName = "postit_blue_small";
         _loc1_.left = 5;
         _loc1_.top = -15;
         _loc1_.width = 204;
         _loc1_.height = 251;
         _loc1_.id = "bluePaper";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bluePaper = _loc1_;
         BindingManager.executeBindings(this,"bluePaper",this.bluePaper);
         return _loc1_;
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.top = 35;
         _loc1_.mxmlContent = [this._EmergencyRehireProfessionalMiniLayer_SideSpecialistSlotComponent1_i(),this._EmergencyRehireProfessionalMiniLayer_VGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_SideSpecialistSlotComponent1_i() : SideSpecialistSlotComponent
      {
         var _loc1_:SideSpecialistSlotComponent = new SideSpecialistSlotComponent();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.id = "profSlot";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.profSlot = _loc1_;
         BindingManager.executeBindings(this,"profSlot",this.profSlot);
         return _loc1_;
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.gap = -1;
         _loc1_.paddingLeft = 15;
         _loc1_.paddingRight = 30;
         _loc1_.top = -15;
         _loc1_.mxmlContent = [this._EmergencyRehireProfessionalMiniLayer_StatsProgressbar1_i(),this._EmergencyRehireProfessionalMiniLayer_StatsProgressbar2_i(),this._EmergencyRehireProfessionalMiniLayer_StatsProgressbar3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_StatsProgressbar1_i() : StatsProgressbar
      {
         var _loc1_:StatsProgressbar = new StatsProgressbar();
         _loc1_.percentWidth = 100;
         _loc1_.enableDividerGroup = false;
         _loc1_.enablePlusClick = false;
         _loc1_.id = "attributeOne";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.attributeOne = _loc1_;
         BindingManager.executeBindings(this,"attributeOne",this.attributeOne);
         return _loc1_;
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_StatsProgressbar2_i() : StatsProgressbar
      {
         var _loc1_:StatsProgressbar = new StatsProgressbar();
         _loc1_.percentWidth = 100;
         _loc1_.enableDividerGroup = false;
         _loc1_.enablePlusClick = false;
         _loc1_.id = "attributeTwo";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.attributeTwo = _loc1_;
         BindingManager.executeBindings(this,"attributeTwo",this.attributeTwo);
         return _loc1_;
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_StatsProgressbar3_i() : StatsProgressbar
      {
         var _loc1_:StatsProgressbar = new StatsProgressbar();
         _loc1_.percentWidth = 100;
         _loc1_.enableDividerGroup = false;
         _loc1_.enablePlusClick = false;
         _loc1_.id = "attributeThree";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.attributeThree = _loc1_;
         BindingManager.executeBindings(this,"attributeThree",this.attributeThree);
         return _loc1_;
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 50;
         _loc1_.percentHeight = 100;
         _loc1_.paddingTop = 50;
         _loc1_.horizontalAlign = "center";
         _loc1_.right = 0;
         _loc1_.mxmlContent = [this._EmergencyRehireProfessionalMiniLayer_Group3_c(),this._EmergencyRehireProfessionalMiniLayer_HGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 124;
         _loc1_.mxmlContent = [this._EmergencyRehireProfessionalMiniLayer_StickyNoteComponent1_c(),this._EmergencyRehireProfessionalMiniLayer_VGroup4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.horizontalCenter = 0;
         _loc1_.percentHeight = 100;
         _loc1_.tapeLeft = true;
         _loc1_.tapeRight = true;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_VGroup4_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalCenter = 0;
         _loc1_.gap = 5;
         _loc1_.paddingTop = 20;
         _loc1_.mxmlContent = [this._EmergencyRehireProfessionalMiniLayer_LocaLabel1_i(),this._EmergencyRehireProfessionalMiniLayer_BriskImageDynaLib2_c(),this._EmergencyRehireProfessionalMiniLayer_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.text = "Dev: Awesome Headline";
         _loc1_.styleName = "residentialOutputHeader";
         _loc1_.id = "header";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.header = _loc1_;
         BindingManager.executeBindings(this,"header",this.header);
         return _loc1_;
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "head_line";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalCenter = 0;
         _loc1_.mxmlContent = [this._EmergencyRehireProfessionalMiniLayer_PriceComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_PriceComponent1_i() : PriceComponent
      {
         var _loc1_:PriceComponent = new PriceComponent();
         _loc1_.percentWidth = 100;
         _loc1_.id = "costs";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.costs = _loc1_;
         BindingManager.executeBindings(this,"costs",this.costs);
         return _loc1_;
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.width = 250;
         _loc1_.mxmlContent = [this._EmergencyRehireProfessionalMiniLayer_Group4_c(),this._EmergencyRehireProfessionalMiniLayer_DynamicPlusButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._EmergencyRehireProfessionalMiniLayer_LocaLabel2_i(),this._EmergencyRehireProfessionalMiniLayer_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "residentialProgressComment";
         _loc1_.text = "Dev: Kauf mich";
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.id = "infoLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.infoLabel = _loc1_;
         BindingManager.executeBindings(this,"infoLabel",this.infoLabel);
         return _loc1_;
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.label = "Dev: Starten";
         _loc1_.id = "rehireButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rehireButton = _loc1_;
         BindingManager.executeBindings(this,"rehireButton",this.rehireButton);
         return _loc1_;
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_DynamicPlusButton1_i() : DynamicPlusButton
      {
         var _loc1_:DynamicPlusButton = new DynamicPlusButton();
         _loc1_.width = 40;
         _loc1_.iconImageName = "btn_icon_dextro";
         _loc1_.iconLibName = "gui_popups_schoolBook";
         _loc1_.showSparkle = true;
         _loc1_.setStyle("skinClass",DynamicPlusButtonSkin);
         _loc1_.addEventListener("mouseOver",this.__dextroButton_mouseOver);
         _loc1_.addEventListener("mouseOut",this.__dextroButton_mouseOut);
         _loc1_.id = "dextroButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.dextroButton = _loc1_;
         BindingManager.executeBindings(this,"dextroButton",this.dextroButton);
         return _loc1_;
      }
      
      public function __dextroButton_mouseOver(param1:MouseEvent) : void
      {
         this.rehireButton.visible = false;
         this.infoLabel.visible = true;
      }
      
      public function __dextroButton_mouseOut(param1:MouseEvent) : void
      {
         this.rehireButton.visible = true;
         this.infoLabel.visible = false;
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.top = -17;
         _loc1_.mxmlContent = [this._EmergencyRehireProfessionalMiniLayer_BriskImageDynaLib3_c(),this._EmergencyRehireProfessionalMiniLayer_LocaLabel3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "bubble_small";
         _loc1_.left = 0;
         _loc1_.mouseChildren = false;
         _loc1_.mouseEnabled = false;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.text = "Dev: Awesome Headline";
         _loc1_.width = 436;
         _loc1_.height = 34;
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.styleName = "optionsLabel";
         _loc1_.left = -10;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("paddingRight",10);
         _loc1_.setStyle("paddingTop",-5);
         _loc1_.id = "flavourText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavourText = _loc1_;
         BindingManager.executeBindings(this,"flavourText",this.flavourText);
         return _loc1_;
      }
      
      public function ___EmergencyRehireProfessionalMiniLayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      private function _EmergencyRehireProfessionalMiniLayer_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():String
         {
            var _loc1_:* = ServerResConst.RESOURCE_EDUCATIONPOINTS;
            return _loc1_ == undefined ? null : String(_loc1_);
         },null,"costs.currencyType");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get attributeOne() : StatsProgressbar
      {
         return this._1016580566attributeOne;
      }
      
      public function set attributeOne(param1:StatsProgressbar) : void
      {
         var _loc2_:Object = this._1016580566attributeOne;
         if(_loc2_ !== param1)
         {
            this._1016580566attributeOne = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attributeOne",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get attributeThree() : StatsProgressbar
      {
         return this._1971893150attributeThree;
      }
      
      public function set attributeThree(param1:StatsProgressbar) : void
      {
         var _loc2_:Object = this._1971893150attributeThree;
         if(_loc2_ !== param1)
         {
            this._1971893150attributeThree = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attributeThree",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get attributeTwo() : StatsProgressbar
      {
         return this._1016575472attributeTwo;
      }
      
      public function set attributeTwo(param1:StatsProgressbar) : void
      {
         var _loc2_:Object = this._1016575472attributeTwo;
         if(_loc2_ !== param1)
         {
            this._1016575472attributeTwo = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attributeTwo",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bluePaper() : BriskImageDynaLib
      {
         return this._1935219026bluePaper;
      }
      
      public function set bluePaper(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1935219026bluePaper;
         if(_loc2_ !== param1)
         {
            this._1935219026bluePaper = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bluePaper",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get costs() : PriceComponent
      {
         return this._94849606costs;
      }
      
      public function set costs(param1:PriceComponent) : void
      {
         var _loc2_:Object = this._94849606costs;
         if(_loc2_ !== param1)
         {
            this._94849606costs = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costs",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dextroButton() : DynamicPlusButton
      {
         return this._443494924dextroButton;
      }
      
      public function set dextroButton(param1:DynamicPlusButton) : void
      {
         var _loc2_:Object = this._443494924dextroButton;
         if(_loc2_ !== param1)
         {
            this._443494924dextroButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dextroButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourText() : LocaLabel
      {
         return this._800887486flavourText;
      }
      
      public function set flavourText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._800887486flavourText;
         if(_loc2_ !== param1)
         {
            this._800887486flavourText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourText",_loc2_,param1));
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
      public function get infoLabel() : LocaLabel
      {
         return this._1213523686infoLabel;
      }
      
      public function set infoLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1213523686infoLabel;
         if(_loc2_ !== param1)
         {
            this._1213523686infoLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get profSlot() : SideSpecialistSlotComponent
      {
         return this._1002918665profSlot;
      }
      
      public function set profSlot(param1:SideSpecialistSlotComponent) : void
      {
         var _loc2_:Object = this._1002918665profSlot;
         if(_loc2_ !== param1)
         {
            this._1002918665profSlot = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"profSlot",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rehireButton() : MultistateButton
      {
         return this._778037831rehireButton;
      }
      
      public function set rehireButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._778037831rehireButton;
         if(_loc2_ !== param1)
         {
            this._778037831rehireButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rehireButton",_loc2_,param1));
            }
         }
      }
   }
}

