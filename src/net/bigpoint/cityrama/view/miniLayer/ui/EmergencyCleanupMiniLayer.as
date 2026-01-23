package net.bigpoint.cityrama.view.miniLayer.ui
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.model.miniLayer.vo.EmergencyCleanupMiniLayerVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicPlusButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.skins.DynamicPlusButtonSkin;
   import net.bigpoint.cityrama.view.productionBook.ui.components.ProductionNeedItemRendered;
   import net.bigpoint.cityrama.view.productionBook.ui.skins.NeedsListSkin;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   
   public class EmergencyCleanupMiniLayer extends MiniLayerWindow
   {
      
      public static const OK:String = "OK";
      
      public static const RC:String = "RC";
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "sparkle":false,
         "closeButton":false,
         "controlBarGroup":false,
         "attentionSign":false,
         "contentGroup":false,
         "titleDisplay":false
      };
      
      private var _496408456buildCosts:List;
      
      private var _1602367816emergencyCleanupImage:BriskImageDynaLib;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _1221270899header:LocaLabel;
      
      private var _1213523686infoLabel:LocaLabel;
      
      private var _70621023neededGoods:LocaLabel;
      
      private var _781580483rcButton:DynamicPlusButton;
      
      private var _1943111220startButton:MultistateButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:EmergencyCleanupMiniLayerVo;
      
      private var _dirty:Boolean;
      
      public function EmergencyCleanupMiniLayer()
      {
         super();
         mx_internal::_document = this;
         this.width = 540;
         this.height = 313;
         this.showAttentionSign = true;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._EmergencyCleanupMiniLayer_Array1_c);
         this.addEventListener("creationComplete",this.___EmergencyCleanupMiniLayer_MiniLayerWindow1_creationComplete);
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
      
      public function setData(param1:EmergencyCleanupMiniLayerVo) : void
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
         dispatchEvent(new Event(OK));
      }
      
      private function handleRcClick(param1:Event) : void
      {
         dispatchEvent(new Event(RC));
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
            this.neededGoods.text = this._data.productionNeedVo.requiredAmount + " X";
            this.startButton.label = this._data.buttonText;
            this.infoLabel.text = StringUtil.substitute(this._data.instantFinishText,this._data.instantRCCosts);
            this.rcButton.priceToConfirm = this._data.instantRCCosts;
            if(!this._data.hasEnoughRC)
            {
               this.rcButton.showPlus = true;
               this.rcButton.toolTip = this._data.instantFinishToolTipBad;
            }
            if(this._data.productionNeedVo.requiredAmount > this._data.productionNeedVo.stockAmount)
            {
               this.startButton.enabled = false;
            }
            this.emergencyCleanupImage.dynaSWFFileName = this._data.swfName;
            this.emergencyCleanupImage.dynaLibName = this._data.libName;
            this.emergencyCleanupImage.dynaBmpSourceName = this._data.bmpName;
            this.buildCosts.dataProvider = new ArrayCollection([this._data.productionNeedVo]);
         }
      }
      
      protected function creationCompleteHandler(param1:FlexEvent) : void
      {
         this.startButton.addEventListener(MouseEvent.CLICK,this.handleOkClick);
         this.rcButton.addEventListener(MouseEvent.CLICK,this.handleRcClick);
      }
      
      private function _EmergencyCleanupMiniLayer_Array1_c() : Array
      {
         return [this._EmergencyCleanupMiniLayer_Group1_c(),this._EmergencyCleanupMiniLayer_Group5_c()];
      }
      
      private function _EmergencyCleanupMiniLayer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._EmergencyCleanupMiniLayer_HGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyCleanupMiniLayer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.left = 12;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._EmergencyCleanupMiniLayer_Group2_c(),this._EmergencyCleanupMiniLayer_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyCleanupMiniLayer_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._EmergencyCleanupMiniLayer_BriskImageDynaLib1_c(),this._EmergencyCleanupMiniLayer_BriskImageDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyCleanupMiniLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "quest_polaroidframe";
         _loc1_.dynaLibName = "gui_popups_questPopup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyCleanupMiniLayer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.top = 9;
         _loc1_.left = 10;
         _loc1_.id = "emergencyCleanupImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.emergencyCleanupImage = _loc1_;
         BindingManager.executeBindings(this,"emergencyCleanupImage",this.emergencyCleanupImage);
         return _loc1_;
      }
      
      private function _EmergencyCleanupMiniLayer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.paddingTop = 50;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._EmergencyCleanupMiniLayer_Group3_c(),this._EmergencyCleanupMiniLayer_HGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyCleanupMiniLayer_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 124;
         _loc1_.mxmlContent = [this._EmergencyCleanupMiniLayer_BriskImageDynaLib3_c(),this._EmergencyCleanupMiniLayer_BriskMCDynaLib1_c(),this._EmergencyCleanupMiniLayer_VGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyCleanupMiniLayer_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaBmpSourceName = "paper_quadrille_small";
         _loc1_.dynaLibName = "gui_popups_miniLayer";
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyCleanupMiniLayer_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_top";
         _loc1_.percentWidth = 50;
         _loc1_.top = -5;
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyCleanupMiniLayer_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 5;
         _loc1_.paddingTop = 20;
         _loc1_.mxmlContent = [this._EmergencyCleanupMiniLayer_LocaLabel1_i(),this._EmergencyCleanupMiniLayer_BriskImageDynaLib4_c(),this._EmergencyCleanupMiniLayer_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyCleanupMiniLayer_LocaLabel1_i() : LocaLabel
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
      
      private function _EmergencyCleanupMiniLayer_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_miniLayer";
         _loc1_.dynaBmpSourceName = "head_line_long";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyCleanupMiniLayer_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalCenter = 0;
         _loc1_.mxmlContent = [this._EmergencyCleanupMiniLayer_LocaLabel2_i(),this._EmergencyCleanupMiniLayer_List1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyCleanupMiniLayer_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.text = "Dev: 3 x";
         _loc1_.width = 60;
         _loc1_.height = 70;
         _loc1_.styleName = "levelLabel";
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.id = "neededGoods";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.neededGoods = _loc1_;
         BindingManager.executeBindings(this,"neededGoods",this.neededGoods);
         return _loc1_;
      }
      
      private function _EmergencyCleanupMiniLayer_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._EmergencyCleanupMiniLayer_ClassFactory1_c();
         _loc1_.horizontalCenter = 0;
         _loc1_.setStyle("skinClass",NeedsListSkin);
         _loc1_.id = "buildCosts";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.buildCosts = _loc1_;
         BindingManager.executeBindings(this,"buildCosts",this.buildCosts);
         return _loc1_;
      }
      
      private function _EmergencyCleanupMiniLayer_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ProductionNeedItemRendered;
         return _loc1_;
      }
      
      private function _EmergencyCleanupMiniLayer_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.width = 250;
         _loc1_.mxmlContent = [this._EmergencyCleanupMiniLayer_Group4_c(),this._EmergencyCleanupMiniLayer_DynamicPlusButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyCleanupMiniLayer_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._EmergencyCleanupMiniLayer_LocaLabel3_i(),this._EmergencyCleanupMiniLayer_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyCleanupMiniLayer_LocaLabel3_i() : LocaLabel
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
      
      private function _EmergencyCleanupMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.label = "Dev: Starten";
         _loc1_.imageNameLeft = "button_icon_build";
         _loc1_.libNameLeft = "gui_popups_paperPopup";
         _loc1_.id = "startButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.startButton = _loc1_;
         BindingManager.executeBindings(this,"startButton",this.startButton);
         return _loc1_;
      }
      
      private function _EmergencyCleanupMiniLayer_DynamicPlusButton1_i() : DynamicPlusButton
      {
         var _loc1_:DynamicPlusButton = new DynamicPlusButton();
         _loc1_.width = 40;
         _loc1_.useConfirmation = true;
         _loc1_.iconImageName = "dd_button_icon";
         _loc1_.iconLibName = "gui_resources_icons";
         _loc1_.setStyle("skinClass",DynamicPlusButtonSkin);
         _loc1_.addEventListener("mouseOver",this.__rcButton_mouseOver);
         _loc1_.addEventListener("mouseOut",this.__rcButton_mouseOut);
         _loc1_.id = "rcButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rcButton = _loc1_;
         BindingManager.executeBindings(this,"rcButton",this.rcButton);
         return _loc1_;
      }
      
      public function __rcButton_mouseOver(param1:MouseEvent) : void
      {
         this.startButton.visible = false;
         this.infoLabel.visible = true;
      }
      
      public function __rcButton_mouseOut(param1:MouseEvent) : void
      {
         this.startButton.visible = true;
         this.infoLabel.visible = false;
      }
      
      private function _EmergencyCleanupMiniLayer_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._EmergencyCleanupMiniLayer_BriskImageDynaLib5_c(),this._EmergencyCleanupMiniLayer_LocaLabel4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyCleanupMiniLayer_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popup_citysquare_general";
         _loc1_.dynaBmpSourceName = "bubble_small";
         _loc1_.top = -12;
         _loc1_.left = 0;
         _loc1_.mouseChildren = false;
         _loc1_.mouseEnabled = false;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EmergencyCleanupMiniLayer_LocaLabel4_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.text = "Dev: Awesome Headline";
         _loc1_.width = 436;
         _loc1_.height = 34;
         _loc1_.horizontalCenter = 0;
         _loc1_.styleName = "optionsLabel";
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.setStyle("paddingRight",10);
         _loc1_.id = "flavourText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavourText = _loc1_;
         BindingManager.executeBindings(this,"flavourText",this.flavourText);
         return _loc1_;
      }
      
      public function ___EmergencyCleanupMiniLayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get buildCosts() : List
      {
         return this._496408456buildCosts;
      }
      
      public function set buildCosts(param1:List) : void
      {
         var _loc2_:Object = this._496408456buildCosts;
         if(_loc2_ !== param1)
         {
            this._496408456buildCosts = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buildCosts",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get emergencyCleanupImage() : BriskImageDynaLib
      {
         return this._1602367816emergencyCleanupImage;
      }
      
      public function set emergencyCleanupImage(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1602367816emergencyCleanupImage;
         if(_loc2_ !== param1)
         {
            this._1602367816emergencyCleanupImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"emergencyCleanupImage",_loc2_,param1));
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
      public function get neededGoods() : LocaLabel
      {
         return this._70621023neededGoods;
      }
      
      public function set neededGoods(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._70621023neededGoods;
         if(_loc2_ !== param1)
         {
            this._70621023neededGoods = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"neededGoods",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rcButton() : DynamicPlusButton
      {
         return this._781580483rcButton;
      }
      
      public function set rcButton(param1:DynamicPlusButton) : void
      {
         var _loc2_:Object = this._781580483rcButton;
         if(_loc2_ !== param1)
         {
            this._781580483rcButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rcButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get startButton() : MultistateButton
      {
         return this._1943111220startButton;
      }
      
      public function set startButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1943111220startButton;
         if(_loc2_ !== param1)
         {
            this._1943111220startButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"startButton",_loc2_,param1));
            }
         }
      }
   }
}

