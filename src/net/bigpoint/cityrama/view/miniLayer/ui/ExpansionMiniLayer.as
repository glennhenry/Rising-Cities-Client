package net.bigpoint.cityrama.view.miniLayer.ui
{
   import flash.events.Event;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.miniLayer.vo.ExpansionMiniLayerVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicPlusButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MiniLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.PostitHeaderComponent;
   import net.bigpoint.cityrama.view.common.components.PriceComponent;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import net.bigpoint.cityrama.view.common.skins.DynamicPlusButtonSkin;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class ExpansionMiniLayer extends MiniLayerWindow
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
      
      private var _306158375buyExpansion:MultistateButton;
      
      private var _1253508016costComponent:StickyNoteComponent;
      
      private var _450449222costHeader:PostitHeaderComponent;
      
      private var _94849606costs:PriceComponent;
      
      private var _1255424046ddButton:DynamicPlusButton;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _150471954instantDDText:LocaLabel;
      
      private var _273241018mainGroup:VGroup;
      
      private var _1935734112saleIcon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _expansionData:ExpansionMiniLayerVo;
      
      private var _isDirty:Boolean;
      
      public function ExpansionMiniLayer()
      {
         super();
         mx_internal::_document = this;
         this.width = 540;
         this.height = 313;
         this.showAttentionSign = true;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._ExpansionMiniLayer_Array1_c);
         this.addEventListener("creationComplete",this.___ExpansionMiniLayer_MiniLayerWindow1_creationComplete);
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
      
      private function handleCreationComplete(param1:Event) : void
      {
         this.title = LocaUtils.getString("rcl.miniLayer.expansion","rcl.miniLayer.expansion.title");
         this.flavourText.text = LocaUtils.getString("rcl.miniLayer.expansion","rcl.miniLayer.expansion.flavour");
         this.buyExpansion.label = LocaUtils.getString("rcl.miniLayer.expansion","rcl.miniLayer.expansion.button");
         this.costHeader.text = LocaUtils.getString("rcl.miniLayer.expansion","rcl.miniLayer.expansion.costs").toUpperCase();
         this.buyExpansion.toolTip = LocaUtils.getString(String("rcl.tooltips.miniLayer"),String("rcl.tooltips.miniLayer.expansion.button"));
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(Boolean(this._expansionData) && this._isDirty)
         {
            this._isDirty = false;
            this.ddButton.showSparkle = this._expansionData.realCurrencyCosts <= this._expansionData.currentRealCurrency;
            this.ddButton.showPlus = this._expansionData.realCurrencyCosts > this._expansionData.currentRealCurrency;
            this.ddButton.priceToConfirm = this._expansionData.realCurrencyCosts;
            this.instantDDText.text = LocaUtils.getString("rcl.miniLayer.expansion","rcl.miniLayer.expansion.instant",[this._expansionData.realCurrencyCosts]);
            this.costs.affordable = this._expansionData.affordable;
            this.costs.priceLabel = LocaUtils.getThousendSeperatedNumber(this._expansionData.costs);
            this.saleIcon.visible = this.saleIcon.includeInLayout = this._expansionData.onSale;
            attentionSign.visible = attentionSign.includeInLayout = !this._expansionData.onSale;
            this.buyExpansion.enabled = this._expansionData.affordable;
         }
      }
      
      public function setData(param1:ExpansionMiniLayerVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._expansionData))
         {
            this._isDirty = true;
            this._expansionData = param1;
            this.invalidateProperties();
         }
      }
      
      private function _ExpansionMiniLayer_Array1_c() : Array
      {
         return [this._ExpansionMiniLayer_BriskImageDynaLib1_i(),this._ExpansionMiniLayer_VGroup1_i()];
      }
      
      private function _ExpansionMiniLayer_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         _loc1_.top = -60;
         _loc1_.left = -30;
         _loc1_.dynaLibName = "gui_popups_miniLayer";
         _loc1_.dynaBmpSourceName = "minilayer_sale_icon";
         _loc1_.width = 77;
         _loc1_.height = 72;
         _loc1_.id = "saleIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.saleIcon = _loc1_;
         BindingManager.executeBindings(this,"saleIcon",this.saleIcon);
         return _loc1_;
      }
      
      private function _ExpansionMiniLayer_VGroup1_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.paddingTop = 10;
         _loc1_.paddingBottom = 45;
         _loc1_.horizontalAlign = "center";
         _loc1_.gap = 10;
         _loc1_.mxmlContent = [this._ExpansionMiniLayer_LocaLabel1_i(),this._ExpansionMiniLayer_StickyNoteComponent1_i(),this._ExpansionMiniLayer_HGroup1_c()];
         _loc1_.id = "mainGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mainGroup = _loc1_;
         BindingManager.executeBindings(this,"mainGroup",this.mainGroup);
         return _loc1_;
      }
      
      private function _ExpansionMiniLayer_LocaLabel1_i() : LocaLabel
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
      
      private function _ExpansionMiniLayer_StickyNoteComponent1_i() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.width = 215;
         _loc1_.height = 110;
         _loc1_.tapeTop = true;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._ExpansionMiniLayer_Array3_c);
         _loc1_.id = "costComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.costComponent = _loc1_;
         BindingManager.executeBindings(this,"costComponent",this.costComponent);
         return _loc1_;
      }
      
      private function _ExpansionMiniLayer_Array3_c() : Array
      {
         return [this._ExpansionMiniLayer_VGroup2_c()];
      }
      
      private function _ExpansionMiniLayer_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._ExpansionMiniLayer_PostitHeaderComponent1_i(),this._ExpansionMiniLayer_PriceComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ExpansionMiniLayer_PostitHeaderComponent1_i() : PostitHeaderComponent
      {
         var _loc1_:PostitHeaderComponent = new PostitHeaderComponent();
         _loc1_.id = "costHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.costHeader = _loc1_;
         BindingManager.executeBindings(this,"costHeader",this.costHeader);
         return _loc1_;
      }
      
      private function _ExpansionMiniLayer_PriceComponent1_i() : PriceComponent
      {
         var _loc1_:PriceComponent = new PriceComponent();
         _loc1_.id = "costs";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.costs = _loc1_;
         BindingManager.executeBindings(this,"costs",this.costs);
         return _loc1_;
      }
      
      private function _ExpansionMiniLayer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 6;
         _loc1_.mxmlContent = [this._ExpansionMiniLayer_Group1_c(),this._ExpansionMiniLayer_DynamicPlusButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ExpansionMiniLayer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._ExpansionMiniLayer_LocaLabel2_i(),this._ExpansionMiniLayer_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ExpansionMiniLayer_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.width = 185;
         _loc1_.height = 26;
         _loc1_.styleName = "blueMiniLayerText";
         _loc1_.bottom = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "instantDDText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.instantDDText = _loc1_;
         BindingManager.executeBindings(this,"instantDDText",this.instantDDText);
         return _loc1_;
      }
      
      private function _ExpansionMiniLayer_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 204;
         _loc1_.imageNameLeft = "icon_expansion";
         _loc1_.libNameLeft = "gui_popups_miniLayer";
         _loc1_.id = "buyExpansion";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.buyExpansion = _loc1_;
         BindingManager.executeBindings(this,"buyExpansion",this.buyExpansion);
         return _loc1_;
      }
      
      private function _ExpansionMiniLayer_DynamicPlusButton1_i() : DynamicPlusButton
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
      
      public function ___ExpansionMiniLayer_MiniLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get buyExpansion() : MultistateButton
      {
         return this._306158375buyExpansion;
      }
      
      public function set buyExpansion(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._306158375buyExpansion;
         if(_loc2_ !== param1)
         {
            this._306158375buyExpansion = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyExpansion",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get costComponent() : StickyNoteComponent
      {
         return this._1253508016costComponent;
      }
      
      public function set costComponent(param1:StickyNoteComponent) : void
      {
         var _loc2_:Object = this._1253508016costComponent;
         if(_loc2_ !== param1)
         {
            this._1253508016costComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costComponent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get costHeader() : PostitHeaderComponent
      {
         return this._450449222costHeader;
      }
      
      public function set costHeader(param1:PostitHeaderComponent) : void
      {
         var _loc2_:Object = this._450449222costHeader;
         if(_loc2_ !== param1)
         {
            this._450449222costHeader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costHeader",_loc2_,param1));
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
      public function get saleIcon() : BriskImageDynaLib
      {
         return this._1935734112saleIcon;
      }
      
      public function set saleIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1935734112saleIcon;
         if(_loc2_ !== param1)
         {
            this._1935734112saleIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"saleIcon",_loc2_,param1));
            }
         }
      }
   }
}

