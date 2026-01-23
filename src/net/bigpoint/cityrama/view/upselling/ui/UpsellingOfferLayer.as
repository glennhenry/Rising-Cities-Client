package net.bigpoint.cityrama.view.upselling.ui
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MediumLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.upselling.vo.UpsellingOfferLayerVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class UpsellingOfferLayer extends MediumLayerWindow
   {
      
      public static const SHOW_OFFER:String = "SHOW_OFFER";
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "sparkles":false,
         "closeButton":false,
         "controlBarGroup":false,
         "contentGroup":false,
         "titleDisplay":false,
         "characterImage":false
      };
      
      private var _427674644detailsButton:MultistateButton;
      
      private var _150980045discountLabel:LocaLabel;
      
      private var _949820541flavourLabel:LocaLabel;
      
      private var _1638751296iconGfx:BriskImageDynaLib;
      
      private var _2116181862itemGfx:BriskImageDynaLib;
      
      private var _2131590956itemGroup:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:UpsellingOfferLayerVo;
      
      private var _dataDirty:Boolean;
      
      public function UpsellingOfferLayer()
      {
         super();
         mx_internal::_document = this;
         this.showSparkles = true;
         this.styleName = "upsellOffer";
         this.characterImageBmpName = "characterOffer";
         this.characterImageLibName = "gui_popups_paperPopup";
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._UpsellingOfferLayer_Array1_c);
         this.addEventListener("creationComplete",this.___UpsellingOfferLayer_MediumLayerWindow1_creationComplete);
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
      
      private function creationCompleteHandler(param1:FlexEvent) : void
      {
         title = LocaUtils.getString("rcl.booklayer.upsellingOffer","rcl.booklayer.upsellingOffer.title.capital");
         this.detailsButton.label = LocaUtils.getString("rcl.booklayer.upsellingOffer","rcl.booklayer.upsellingOffer.button.capital");
         this.detailsButton.toolTip = LocaUtils.getString("rcl.booklayer.upsellingOffer","rcl.booklayer.upsellingOffer.button.tooltip");
         TweenMax.to(this.discountLabel,0,{"glowFilter":{
            "color":16731136,
            "alpha":1,
            "blurX":4,
            "blurY":4,
            "strength":20
         }});
      }
      
      public function set data(param1:UpsellingOfferLayerVo) : void
      {
         if(!RandomUtilities.isEqual(this._data,param1))
         {
            this._data = param1;
            this._dataDirty = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dataDirty)
         {
            this._dataDirty = false;
            this.itemGfx.dynaBmpSourceName = "rebuyPack_" + this._data.packConfig.gfxId + "_big";
            this.flavourLabel.text = LocaUtils.getString("rcl.booklayer.upsellingOffer","rcl.booklayer.upsellingOffer.text." + this._data.locaID);
            if(this._data.currentUpsell.discount == 0)
            {
               this.itemGroup.visible = this.itemGroup.includeInLayout = false;
            }
            else
            {
               this.itemGroup.visible = this.itemGroup.includeInLayout = true;
            }
            var _loc1_:int = this._data.currentUpsell.discount * 100;
            this.discountLabel.text = "-" + 0 + "%";
            this.iconGfx.dynaBmpSourceName = "upsell_big";
         }
      }
      
      private function detailsButtonClickHandler(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(SHOW_OFFER));
      }
      
      private function _UpsellingOfferLayer_Array1_c() : Array
      {
         return [this._UpsellingOfferLayer_VGroup1_c()];
      }
      
      private function _UpsellingOfferLayer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._UpsellingOfferLayer_Group1_c(),this._UpsellingOfferLayer_VGroup4_c(),this._UpsellingOfferLayer_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _UpsellingOfferLayer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._UpsellingOfferLayer_BriskImageDynaLib1_c(),this._UpsellingOfferLayer_VGroup2_c(),this._UpsellingOfferLayer_VGroup3_c(),this._UpsellingOfferLayer_Group2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _UpsellingOfferLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "layerGlow";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _UpsellingOfferLayer_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._UpsellingOfferLayer_BriskImageDynaLib2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _UpsellingOfferLayer_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "special_cardboard_big";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _UpsellingOfferLayer_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._UpsellingOfferLayer_BriskImageDynaLib3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _UpsellingOfferLayer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
         _loc1_.dynaBmpSourceName = "";
         _loc1_.id = "itemGfx";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemGfx = _loc1_;
         BindingManager.executeBindings(this,"itemGfx",this.itemGfx);
         return _loc1_;
      }
      
      private function _UpsellingOfferLayer_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 0;
         _loc1_.right = 0;
         _loc1_.mxmlContent = [this._UpsellingOfferLayer_BriskImageDynaLib4_i(),this._UpsellingOfferLayer_HGroup1_c()];
         _loc1_.id = "itemGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemGroup = _loc1_;
         BindingManager.executeBindings(this,"itemGroup",this.itemGroup);
         return _loc1_;
      }
      
      private function _UpsellingOfferLayer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.id = "iconGfx";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.iconGfx = _loc1_;
         BindingManager.executeBindings(this,"iconGfx",this.iconGfx);
         return _loc1_;
      }
      
      private function _UpsellingOfferLayer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.top = 0;
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.bottom = 0;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._UpsellingOfferLayer_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _UpsellingOfferLayer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "whiteThirtyCenter";
         _loc1_.id = "discountLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.discountLabel = _loc1_;
         BindingManager.executeBindings(this,"discountLabel",this.discountLabel);
         return _loc1_;
      }
      
      private function _UpsellingOfferLayer_VGroup4_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._UpsellingOfferLayer_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _UpsellingOfferLayer_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 3;
         _loc1_.maxWidth = 400;
         _loc1_.styleName = "flavourOfferLayer";
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "flavourLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavourLabel = _loc1_;
         BindingManager.executeBindings(this,"flavourLabel",this.flavourLabel);
         return _loc1_;
      }
      
      private function _UpsellingOfferLayer_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._UpsellingOfferLayer_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _UpsellingOfferLayer_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.styleName = "confirm";
         _loc1_.width = 200;
         _loc1_.addEventListener("click",this.__detailsButton_click);
         _loc1_.id = "detailsButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.detailsButton = _loc1_;
         BindingManager.executeBindings(this,"detailsButton",this.detailsButton);
         return _loc1_;
      }
      
      public function __detailsButton_click(param1:MouseEvent) : void
      {
         this.detailsButtonClickHandler(param1);
      }
      
      public function ___UpsellingOfferLayer_MediumLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get detailsButton() : MultistateButton
      {
         return this._427674644detailsButton;
      }
      
      public function set detailsButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._427674644detailsButton;
         if(_loc2_ !== param1)
         {
            this._427674644detailsButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"detailsButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get discountLabel() : LocaLabel
      {
         return this._150980045discountLabel;
      }
      
      public function set discountLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._150980045discountLabel;
         if(_loc2_ !== param1)
         {
            this._150980045discountLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"discountLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get flavourLabel() : LocaLabel
      {
         return this._949820541flavourLabel;
      }
      
      public function set flavourLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._949820541flavourLabel;
         if(_loc2_ !== param1)
         {
            this._949820541flavourLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavourLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iconGfx() : BriskImageDynaLib
      {
         return this._1638751296iconGfx;
      }
      
      public function set iconGfx(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1638751296iconGfx;
         if(_loc2_ !== param1)
         {
            this._1638751296iconGfx = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconGfx",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemGfx() : BriskImageDynaLib
      {
         return this._2116181862itemGfx;
      }
      
      public function set itemGfx(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._2116181862itemGfx;
         if(_loc2_ !== param1)
         {
            this._2116181862itemGfx = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemGfx",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemGroup() : Group
      {
         return this._2131590956itemGroup;
      }
      
      public function set itemGroup(param1:Group) : void
      {
         var _loc2_:Object = this._2131590956itemGroup;
         if(_loc2_ !== param1)
         {
            this._2131590956itemGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemGroup",_loc2_,param1));
            }
         }
      }
   }
}

