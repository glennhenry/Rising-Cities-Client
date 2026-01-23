package net.bigpoint.cityrama.view.assistants.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.assistants.vo.RentCollectorActivatedVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MediumLayerWindow;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.VGroup;
   
   public class RentCollectorActivatedLayer extends MediumLayerWindow
   {
      
      public static const EVENT_MORE_OFFER:String = "EVENT_MORE_OFFER";
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "sparkles":false,
         "closeButton":false,
         "controlBarGroup":false,
         "contentGroup":false,
         "titleDisplay":false,
         "characterImage":false
      };
      
      private var _1682553352bottomText:LocaLabel;
      
      private var _647795034collectorIcon:BriskImageDynaLib;
      
      private var _111871826offerButton:MultistateButton;
      
      private var _1727590177stackIcon:BriskImageDynaLib;
      
      private var _110364485timer:TimerBarComponent;
      
      private var _1139881950topText:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:RentCollectorActivatedVo;
      
      private var _dataDirty:Boolean;
      
      public function RentCollectorActivatedLayer()
      {
         super();
         mx_internal::_document = this;
         this.showSparkles = true;
         this.styleName = "upsellOffer";
         this.characterImageBmpName = "characterOffer";
         this.characterImageLibName = "gui_popups_paperPopup";
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._RentCollectorActivatedLayer_Array1_c);
         this.addEventListener("creationComplete",this.___RentCollectorActivatedLayer_MediumLayerWindow1_creationComplete);
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
         title = LocaUtils.getString("rcl.misc.rentCollector","rcl.misc.rentCollector.name.capital");
         this.offerButton.label = LocaUtils.getString("rcl.booklayer.rentCollector","rcl.booklayer.rentCollector.button.label");
         this.offerButton.toolTip = LocaUtils.getString("rcl.booklayer.rentCollector","rcl.booklayer.rentCollector.button.tooltip");
      }
      
      public function set data(param1:RentCollectorActivatedVo) : void
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
         if(Boolean(this._data) && this._dataDirty)
         {
            this._dataDirty = false;
            this.topText.text = this._data.topText;
            this.bottomText.text = this._data.bottomText;
            this.collectorIcon.briskDynaVo = this._data.collectorIcon;
            this.stackIcon.includeInLayout = this.stackIcon.visible = this._data.stacked;
            if(this._data.stacked)
            {
               this.timer.width = 280;
            }
            else
            {
               this.timer.width = 180;
            }
            this.timer.data = this._data.timerVo;
         }
      }
      
      private function handleOfferButtonClicked(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(EVENT_MORE_OFFER,true,true));
      }
      
      private function _RentCollectorActivatedLayer_Array1_c() : Array
      {
         return [this._RentCollectorActivatedLayer_BriskImageDynaLib1_c(),this._RentCollectorActivatedLayer_VGroup1_c()];
      }
      
      private function _RentCollectorActivatedLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "layerGlow";
         _loc1_.height = 180;
         _loc1_.width = 230;
         _loc1_.maintainAspectRation = true;
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 40;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorActivatedLayer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "top";
         _loc1_.paddingTop = 6;
         _loc1_.mxmlContent = [this._RentCollectorActivatedLayer_VGroup2_c(),this._RentCollectorActivatedLayer_Group1_c(),this._RentCollectorActivatedLayer_VGroup3_c(),this._RentCollectorActivatedLayer_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorActivatedLayer_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.height = 40;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._RentCollectorActivatedLayer_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorActivatedLayer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 3;
         _loc1_.styleName = "flavourOfferLayer";
         _loc1_.percentWidth = 80;
         _loc1_.id = "topText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.topText = _loc1_;
         BindingManager.executeBindings(this,"topText",this.topText);
         return _loc1_;
      }
      
      private function _RentCollectorActivatedLayer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 180;
         _loc1_.mxmlContent = [this._RentCollectorActivatedLayer_BriskImageDynaLib2_i(),this._RentCollectorActivatedLayer_BriskImageDynaLib3_i(),this._RentCollectorActivatedLayer_TimerBarComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorActivatedLayer_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_rentCollector";
         _loc1_.dynaBmpSourceName = "rentCollector_big_44";
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 16;
         _loc1_.id = "collectorIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.collectorIcon = _loc1_;
         BindingManager.executeBindings(this,"collectorIcon",this.collectorIcon);
         return _loc1_;
      }
      
      private function _RentCollectorActivatedLayer_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_rentCollector";
         _loc1_.dynaBmpSourceName = "icon_bigPlus";
         _loc1_.left = 70;
         _loc1_.top = 6;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "stackIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.stackIcon = _loc1_;
         BindingManager.executeBindings(this,"stackIcon",this.stackIcon);
         return _loc1_;
      }
      
      private function _RentCollectorActivatedLayer_TimerBarComponent1_i() : TimerBarComponent
      {
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         _loc1_.showBoostButton = false;
         _loc1_.bottom = 0;
         _loc1_.horizontalCenter = -12;
         _loc1_.id = "timer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.timer = _loc1_;
         BindingManager.executeBindings(this,"timer",this.timer);
         return _loc1_;
      }
      
      private function _RentCollectorActivatedLayer_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.height = 40;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._RentCollectorActivatedLayer_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RentCollectorActivatedLayer_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 3;
         _loc1_.styleName = "flavourOfferLayer";
         _loc1_.percentWidth = 85;
         _loc1_.id = "bottomText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bottomText = _loc1_;
         BindingManager.executeBindings(this,"bottomText",this.bottomText);
         return _loc1_;
      }
      
      private function _RentCollectorActivatedLayer_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 200;
         _loc1_.addEventListener("click",this.__offerButton_click);
         _loc1_.id = "offerButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.offerButton = _loc1_;
         BindingManager.executeBindings(this,"offerButton",this.offerButton);
         return _loc1_;
      }
      
      public function __offerButton_click(param1:MouseEvent) : void
      {
         this.handleOfferButtonClicked(param1);
      }
      
      public function ___RentCollectorActivatedLayer_MediumLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get bottomText() : LocaLabel
      {
         return this._1682553352bottomText;
      }
      
      public function set bottomText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1682553352bottomText;
         if(_loc2_ !== param1)
         {
            this._1682553352bottomText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get collectorIcon() : BriskImageDynaLib
      {
         return this._647795034collectorIcon;
      }
      
      public function set collectorIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._647795034collectorIcon;
         if(_loc2_ !== param1)
         {
            this._647795034collectorIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"collectorIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get offerButton() : MultistateButton
      {
         return this._111871826offerButton;
      }
      
      public function set offerButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._111871826offerButton;
         if(_loc2_ !== param1)
         {
            this._111871826offerButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"offerButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stackIcon() : BriskImageDynaLib
      {
         return this._1727590177stackIcon;
      }
      
      public function set stackIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1727590177stackIcon;
         if(_loc2_ !== param1)
         {
            this._1727590177stackIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stackIcon",_loc2_,param1));
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
      public function get topText() : LocaLabel
      {
         return this._1139881950topText;
      }
      
      public function set topText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1139881950topText;
         if(_loc2_ !== param1)
         {
            this._1139881950topText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topText",_loc2_,param1));
            }
         }
      }
   }
}

