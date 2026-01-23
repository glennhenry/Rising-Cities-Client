package net.bigpoint.cityrama.view.miniLayer.ui
{
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.miniLayer.vo.ConstructionMiniLayerVo;
   import net.bigpoint.cityrama.model.residentialBook.vo.ResidentialNeedVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicPlusButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PostitHeaderComponentMultiline;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.cityrama.view.common.skins.DynamicPlusButtonSkin;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.NeedItemComponent;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class ConstructionMiniLayer extends MiniLayerWindow
   {
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "sparkle":false,
         "closeButton":false,
         "controlBarGroup":false,
         "attentionSign":false,
         "contentGroup":false,
         "titleDisplay":false
      };
      
      private var _1229015684amountLabel:LocaLabel;
      
      private var _1255424046ddButton:DynamicPlusButton;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _150471954instantDDText:LocaLabel;
      
      private var _273241018mainGroup:VGroup;
      
      private var _1604340842materialComponent:Group;
      
      private var _1935639916materialHeader:PostitHeaderComponentMultiline;
      
      private var _1169656716materialImage:NeedItemComponent;
      
      private var _391232536postIts:HGroup;
      
      private var _1182751149startConstruction:MultistateButton;
      
      private var _110364485timer:TimerBarComponent;
      
      private var _500208440timerComponent:StickyNoteComponent;
      
      private var _707097038timerHeader:PostitHeaderComponentMultiline;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _constructionData:ConstructionMiniLayerVo;
      
      private var _isDirty:Boolean;
      
      public function ConstructionMiniLayer()
      {
         super();
         mx_internal::_document = this;
         this.width = 540;
         this.height = 313;
         this.showAttentionSign = true;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._ConstructionMiniLayer_Array1_c);
         this.addEventListener("creationComplete",this.___ConstructionMiniLayer_MiniLayerWindow1_creationComplete);
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
      
      private function handleCreationComplete() : void
      {
         this.setTapes();
         this.title = LocaUtils.getString("rcl.miniLayer.construction","rcl.miniLayer.construction.title");
         this.flavourText.text = LocaUtils.getString("rcl.miniLayer.construction","rcl.miniLayer.construction.flavour");
         this.startConstruction.label = LocaUtils.getString("rcl.miniLayer.construction","rcl.miniLayer.construction.button");
         this.timerHeader.text = LocaUtils.getString("rcl.miniLayer.construction","rcl.miniLayer.construction.time");
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:TimerBarComponentVo = null;
         super.commitProperties();
         if(Boolean(this._constructionData) && this._isDirty)
         {
            this._isDirty = false;
            _loc1_ = new TimerBarComponentVo();
            _loc1_.startTime = this._constructionData.constructionStepEndTime - this._constructionData.constructionStepLength;
            _loc1_.currentTime = this._constructionData.constructionCurrentTime;
            _loc1_.targetTime = this._constructionData.constructionStepEndTime;
            _loc1_.cycleLength = this._constructionData.constructionStepLength;
            _loc1_.waitingForStart = !this._constructionData.hasStarted;
            if(this._constructionData.hasStarted)
            {
               _loc1_.userMayStart = true;
               this.materialComponent.includeInLayout = false;
               this.materialComponent.visible = false;
               this.timerComponent.tapeLeft = true;
               this.startConstruction.enabled = false;
            }
            else
            {
               this.materialComponent.includeInLayout = true;
               this.materialComponent.visible = true;
               this.timerComponent.tapeLeft = false;
               _loc1_.userMayStart = this._constructionData.materialAvailable;
               this.amountLabel.text = this._constructionData.amountNeeded + "x";
               this.materialHeader.text = LocaUtils.getString("rcl.miniLayer.construction","rcl.miniLayer.construction.resources");
               this.startConstruction.enabled = this._constructionData.materialAvailable;
            }
            this.setNeeds();
            this.timer.data = _loc1_;
            this.instantDDText.text = LocaUtils.getString("rcl.miniLayer.construction","rcl.miniLayer.construction.instant",[this._constructionData.realCurrencyCosts]);
            this.ddButton.showSparkle = this._constructionData.hasEnoughRC;
            this.ddButton.showPlus = !this._constructionData.hasEnoughRC;
            this.ddButton.priceToConfirm = this._constructionData.realCurrencyCosts;
            this.setTooltips();
         }
      }
      
      private function setTooltips() : void
      {
         this.timer.progressBar.toolTip = LocaUtils.getString("rcl.tooltips.miniLayer","rcl.tooltips.miniLayer.construction.timer");
         this.startConstruction.toolTip = LocaUtils.getString("rcl.tooltips.miniLayer","rcl.tooltips.miniLayer.construction.buildButton");
         this.ddButton.toolTip = LocaUtils.getString("rcl.tooltips.miniLayer","rcl.tooltips.miniLayer.construction.instant");
         var _loc1_:String = LocaUtils.getString("rcl.goods.goodname","rcl.goods.goodname." + this._constructionData.assetGfxId);
         if(this._constructionData.materialAvailable)
         {
            this.materialImage.icon.toolTip = _loc1_;
         }
         else
         {
            this.materialImage.icon.toolTip = this._constructionData.amountOwned + "/" + this._constructionData.amountNeeded + " " + _loc1_;
         }
      }
      
      public function setData(param1:ConstructionMiniLayerVo) : void
      {
         this._isDirty = true;
         this._constructionData = param1;
         invalidateProperties();
      }
      
      private function setTapes() : void
      {
         this.timerComponent.rightTape.setStyle("top",20);
         this.timerComponent.rightTape.setStyle("bottom",20);
         this.timerComponent.leftTape.setStyle("top",10);
         this.timerComponent.leftTape.setStyle("bottom",10);
      }
      
      private function setNeeds() : void
      {
         var _loc1_:ResidentialNeedVo = new ResidentialNeedVo(this._constructionData.assetLibName,this._constructionData.assetImageName,this._constructionData.materialAvailable,false);
         if(this._constructionData.materialAvailable)
         {
            this.materialImage.styleName = "active";
         }
         else
         {
            this.materialImage.styleName = "normal";
         }
         this.materialImage.data = _loc1_;
      }
      
      private function _ConstructionMiniLayer_Array1_c() : Array
      {
         return [this._ConstructionMiniLayer_VGroup1_i()];
      }
      
      private function _ConstructionMiniLayer_VGroup1_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.paddingTop = 10;
         _loc1_.paddingBottom = 45;
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = -20;
         _loc1_.mxmlContent = [this._ConstructionMiniLayer_LocaLabel1_i(),this._ConstructionMiniLayer_HGroup1_i(),this._ConstructionMiniLayer_Group2_c(),this._ConstructionMiniLayer_HGroup3_c()];
         _loc1_.id = "mainGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mainGroup = _loc1_;
         BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
         return _loc1_;
      }
      
      private function _ConstructionMiniLayer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.height = 45;
         _loc1_.percentWidth = 85;
         _loc1_.styleName = "miniLayerFlavourText";
         _loc1_.id = "flavourText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavourText = _loc1_;
         BindingManager.executeBindings(this,"flavourText",this.flavourText);
         return _loc1_;
      }
      
      private function _ConstructionMiniLayer_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = -40;
         _loc1_.top = -36;
         _loc1_.verticalAlign = "middle";
         _loc1_.height = 170;
         _loc1_.mxmlContent = [this._ConstructionMiniLayer_Group1_i(),this._ConstructionMiniLayer_StickyNoteComponent1_i()];
         _loc1_.id = "postIts";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.postIts = _loc1_;
         BindingManager.executeBindings(this,"postIts",this.postIts);
         return _loc1_;
      }
      
      private function _ConstructionMiniLayer_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._ConstructionMiniLayer_BriskImageDynaLib1_c(),this._ConstructionMiniLayer_BriskMCDynaLib1_c(),this._ConstructionMiniLayer_VGroup2_c()];
         _loc1_.id = "materialComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.materialComponent = _loc1_;
         BindingManager.executeBindings(this,"materialComponent",this.materialComponent);
         return _loc1_;
      }
      
      private function _ConstructionMiniLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_miniLayer";
         _loc1_.dynaBmpSourceName = "paper_quadrille_small";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionMiniLayer_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_top";
         _loc1_.top = -6;
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionMiniLayer_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 25;
         _loc1_.mxmlContent = [this._ConstructionMiniLayer_PostitHeaderComponentMultiline1_i(),this._ConstructionMiniLayer_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionMiniLayer_PostitHeaderComponentMultiline1_i() : PostitHeaderComponentMultiline
      {
         var _loc1_:PostitHeaderComponentMultiline = new PostitHeaderComponentMultiline();
         _loc1_.id = "materialHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.materialHeader = _loc1_;
         BindingManager.executeBindings(this,"materialHeader",this.materialHeader);
         return _loc1_;
      }
      
      private function _ConstructionMiniLayer_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 20;
         _loc1_.paddingRight = 55;
         _loc1_.mxmlContent = [this._ConstructionMiniLayer_LocaLabel2_i(),this._ConstructionMiniLayer_NeedItemComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionMiniLayer_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "amountLabel";
         _loc1_.maxWidth = 66;
         _loc1_.setStyle("paddingTop",25);
         _loc1_.id = "amountLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.amountLabel = _loc1_;
         BindingManager.executeBindings(this,"amountLabel",this.amountLabel);
         return _loc1_;
      }
      
      private function _ConstructionMiniLayer_NeedItemComponent1_i() : NeedItemComponent
      {
         var _loc1_:NeedItemComponent = new NeedItemComponent();
         _loc1_.id = "materialImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.materialImage = _loc1_;
         BindingManager.executeBindings(this,"materialImage",this.materialImage);
         return _loc1_;
      }
      
      private function _ConstructionMiniLayer_StickyNoteComponent1_i() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.width = 240;
         _loc1_.height = 125;
         _loc1_.tapeRight = true;
         _loc1_.tapeLeft = true;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ConstructionMiniLayer_Array7_c);
         _loc1_.id = "timerComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.timerComponent = _loc1_;
         BindingManager.executeBindings(this,"timerComponent",this.timerComponent);
         return _loc1_;
      }
      
      private function _ConstructionMiniLayer_Array7_c() : Array
      {
         return [this._ConstructionMiniLayer_VGroup3_c()];
      }
      
      private function _ConstructionMiniLayer_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalCenter = 0;
         _loc1_.top = -5;
         _loc1_.mxmlContent = [this._ConstructionMiniLayer_PostitHeaderComponentMultiline2_i(),this._ConstructionMiniLayer_TimerBarComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionMiniLayer_PostitHeaderComponentMultiline2_i() : PostitHeaderComponentMultiline
      {
         var _loc1_:PostitHeaderComponentMultiline = new PostitHeaderComponentMultiline();
         _loc1_.id = "timerHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.timerHeader = _loc1_;
         BindingManager.executeBindings(this,"timerHeader",this.timerHeader);
         return _loc1_;
      }
      
      private function _ConstructionMiniLayer_TimerBarComponent1_i() : TimerBarComponent
      {
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         _loc1_.showBoostButton = true;
         _loc1_.id = "timer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.timer = _loc1_;
         BindingManager.executeBindings(this,"timer",this.timer);
         return _loc1_;
      }
      
      private function _ConstructionMiniLayer_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 25;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionMiniLayer_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 6;
         _loc1_.mxmlContent = [this._ConstructionMiniLayer_Group3_c(),this._ConstructionMiniLayer_DynamicPlusButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionMiniLayer_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._ConstructionMiniLayer_LocaLabel3_i(),this._ConstructionMiniLayer_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ConstructionMiniLayer_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.width = 185;
         _loc1_.height = 26;
         _loc1_.styleName = "blueMiniLayerText";
         _loc1_.verticalCenter = "middle";
         _loc1_.visible = false;
         _loc1_.bottom = 0;
         _loc1_.id = "instantDDText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.instantDDText = _loc1_;
         BindingManager.executeBindings(this,"instantDDText",this.instantDDText);
         return _loc1_;
      }
      
      private function _ConstructionMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 204;
         _loc1_.imageNameLeft = "icon_build";
         _loc1_.libNameLeft = "gui_popups_miniLayer";
         _loc1_.id = "startConstruction";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.startConstruction = _loc1_;
         BindingManager.executeBindings(this,"startConstruction",this.startConstruction);
         return _loc1_;
      }
      
      private function _ConstructionMiniLayer_DynamicPlusButton1_i() : DynamicPlusButton
      {
         var _loc1_:DynamicPlusButton = new DynamicPlusButton();
         _loc1_.width = 40;
         _loc1_.useConfirmation = true;
         _loc1_.iconImageName = "dd_button_icon";
         _loc1_.iconLibName = "gui_resources_icons";
         _loc1_.setStyle("skinClass",DynamicPlusButtonSkin);
         _loc1_.id = "ddButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.ddButton = _loc1_;
         BindingManager.executeBindings(this,"ddButton",this.ddButton);
         return _loc1_;
      }
      
      public function ___ConstructionMiniLayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete();
      }
      
      [Bindable(event="propertyChange")]
      public function get amountLabel() : LocaLabel
      {
         return this._1229015684amountLabel;
      }
      
      public function set amountLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1229015684amountLabel;
         if(_loc2_ !== param1)
         {
            this._1229015684amountLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"amountLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ddButton() : DynamicPlusButton
      {
         return this._1255424046ddButton;
      }
      
      public function set ddButton(param1:DynamicPlusButton) : void
      {
         var _loc2_:Object = this._1255424046ddButton;
         if(_loc2_ !== param1)
         {
            this._1255424046ddButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ddButton",_loc2_,param1));
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
      public function get instantDDText() : LocaLabel
      {
         return this._150471954instantDDText;
      }
      
      public function set instantDDText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._150471954instantDDText;
         if(_loc2_ !== param1)
         {
            this._150471954instantDDText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"instantDDText",_loc2_,param1));
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
      public function get materialComponent() : Group
      {
         return this._1604340842materialComponent;
      }
      
      public function set materialComponent(param1:Group) : void
      {
         var _loc2_:Object = this._1604340842materialComponent;
         if(_loc2_ !== param1)
         {
            this._1604340842materialComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"materialComponent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get materialHeader() : PostitHeaderComponentMultiline
      {
         return this._1935639916materialHeader;
      }
      
      public function set materialHeader(param1:PostitHeaderComponentMultiline) : void
      {
         var _loc2_:Object = this._1935639916materialHeader;
         if(_loc2_ !== param1)
         {
            this._1935639916materialHeader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"materialHeader",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get materialImage() : NeedItemComponent
      {
         return this._1169656716materialImage;
      }
      
      public function set materialImage(param1:NeedItemComponent) : void
      {
         var _loc2_:Object = this._1169656716materialImage;
         if(_loc2_ !== param1)
         {
            this._1169656716materialImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"materialImage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get postIts() : HGroup
      {
         return this._391232536postIts;
      }
      
      public function set postIts(param1:HGroup) : void
      {
         var _loc2_:Object = this._391232536postIts;
         if(_loc2_ !== param1)
         {
            this._391232536postIts = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"postIts",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get startConstruction() : MultistateButton
      {
         return this._1182751149startConstruction;
      }
      
      public function set startConstruction(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1182751149startConstruction;
         if(_loc2_ !== param1)
         {
            this._1182751149startConstruction = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"startConstruction",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get timer() : TimerBarComponent
      {
         return this._110364485timer;
      }
      
      public function set timer(param1:TimerBarComponent) : void
      {
         var _loc2_:Object = this._110364485timer;
         if(_loc2_ !== param1)
         {
            this._110364485timer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get timerComponent() : StickyNoteComponent
      {
         return this._500208440timerComponent;
      }
      
      public function set timerComponent(param1:StickyNoteComponent) : void
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
      
      [Bindable(event="propertyChange")]
      public function get timerHeader() : PostitHeaderComponentMultiline
      {
         return this._707097038timerHeader;
      }
      
      public function set timerHeader(param1:PostitHeaderComponentMultiline) : void
      {
         var _loc2_:Object = this._707097038timerHeader;
         if(_loc2_ !== param1)
         {
            this._707097038timerHeader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timerHeader",_loc2_,param1));
            }
         }
      }
   }
}

