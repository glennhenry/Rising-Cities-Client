package net.bigpoint.cityrama.view.upselling.ui
{
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
   import net.bigpoint.cityrama.view.upselling.vo.UpsellingNotificationLayerVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class UpsellNotificationMinilayer extends MediumLayerWindow
   {
      
      private static var _skinParts:Object = {
         "moveArea":false,
         "sparkles":false,
         "closeButton":false,
         "controlBarGroup":false,
         "contentGroup":false,
         "titleDisplay":false,
         "characterImage":false
      };
      
      private var _473928780buttonCancel:MultistateButton;
      
      private var _1108005746buttonOK:MultistateButton;
      
      private var _949820541flavourLabel:LocaLabel;
      
      private var _1638751296iconGfx:BriskImageDynaLib;
      
      private var _2116181862itemGfx:BriskImageDynaLib;
      
      private var _143560184offerLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:UpsellingNotificationLayerVo;
      
      private var _dataDirty:Boolean;
      
      public function UpsellNotificationMinilayer()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "upsellOffer";
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._UpsellNotificationMinilayer_Array1_c);
         this.addEventListener("creationComplete",this.___UpsellNotificationMinilayer_MediumLayerWindow1_creationComplete);
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
         title = LocaUtils.getString("rcl.booklayer.upsellingNotification","rcl.booklayer.upsellingNotification.title.capital");
         this.flavourLabel.text = LocaUtils.getString("rcl.booklayer.upsellingNotification","rcl.booklayer.upsellingNotification.text");
         this.buttonOK.label = LocaUtils.getString("rcl.booklayer.upsellingNotification","rcl.booklayer.upsellingNotification.buttonOK.capital");
         this.buttonOK.toolTip = LocaUtils.getString("rcl.booklayer.upsellingNotification","rcl.booklayer.upsellingNotification.buttonOK.tooltip");
         this.buttonCancel.label = LocaUtils.getString("rcl.booklayer.upsellingNotification","rcl.booklayer.upsellingNotification.buttonCancel.capital");
         this.buttonCancel.toolTip = LocaUtils.getString("rcl.booklayer.upsellingNotification","rcl.booklayer.upsellingNotification.buttonCancel.tooltip");
      }
      
      public function set data(param1:UpsellingNotificationLayerVo) : void
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
         var _loc1_:int = 0;
         super.commitProperties();
         if(this._dataDirty)
         {
            this._dataDirty = false;
            this.itemGfx.dynaBmpSourceName = "rebuyPack_" + this._data.packConfig.gfxId + "_big";
            this.offerLabel.text = LocaUtils.getString("rcl.booklayer.upsellingNotification","rcl.booklayer.upsellingNotification.offer",[this._data.amount,this._data.price.toString() + this._data.currency]);
            _loc1_ = this._data.currentUpsell.discount * 100;
            this.iconGfx.dynaBmpSourceName = "upsell_big_" + _loc1_;
         }
      }
      
      private function buttonOK_clickHandler(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(Event.OPEN));
      }
      
      private function buttonCancel_clickHandler(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(Event.CANCEL));
      }
      
      private function _UpsellNotificationMinilayer_Array1_c() : Array
      {
         return [this._UpsellNotificationMinilayer_VGroup1_c()];
      }
      
      private function _UpsellNotificationMinilayer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.top = 20;
         _loc1_.mxmlContent = [this._UpsellNotificationMinilayer_LocaLabel1_i(),this._UpsellNotificationMinilayer_Group1_c(),this._UpsellNotificationMinilayer_HGroup1_c(),this._UpsellNotificationMinilayer_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _UpsellNotificationMinilayer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "flavorText";
         _loc1_.maxWidth = 400;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.id = "flavourLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavourLabel = _loc1_;
         BindingManager.executeBindings(this,"flavourLabel",this.flavourLabel);
         return _loc1_;
      }
      
      private function _UpsellNotificationMinilayer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._UpsellNotificationMinilayer_BriskImageDynaLib1_c(),this._UpsellNotificationMinilayer_VGroup2_c(),this._UpsellNotificationMinilayer_VGroup3_c(),this._UpsellNotificationMinilayer_BriskImageDynaLib4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _UpsellNotificationMinilayer_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "layerGlow";
         _loc1_.top = -15;
         _loc1_.bottom = -20;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _UpsellNotificationMinilayer_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._UpsellNotificationMinilayer_BriskImageDynaLib2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _UpsellNotificationMinilayer_BriskImageDynaLib2_c() : BriskImageDynaLib
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
      
      private function _UpsellNotificationMinilayer_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._UpsellNotificationMinilayer_BriskImageDynaLib3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _UpsellNotificationMinilayer_BriskImageDynaLib3_i() : BriskImageDynaLib
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
      
      private function _UpsellNotificationMinilayer_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.top = 0;
         _loc1_.right = 0;
         _loc1_.id = "iconGfx";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.iconGfx = _loc1_;
         BindingManager.executeBindings(this,"iconGfx",this.iconGfx);
         return _loc1_;
      }
      
      private function _UpsellNotificationMinilayer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._UpsellNotificationMinilayer_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _UpsellNotificationMinilayer_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "priceTreasury";
         _loc1_.maxWidth = 400;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.id = "offerLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.offerLabel = _loc1_;
         BindingManager.executeBindings(this,"offerLabel",this.offerLabel);
         return _loc1_;
      }
      
      private function _UpsellNotificationMinilayer_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._UpsellNotificationMinilayer_MultistateButton1_i(),this._UpsellNotificationMinilayer_MultistateButton2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _UpsellNotificationMinilayer_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.styleName = "confirm";
         _loc1_.width = 120;
         _loc1_.addEventListener("click",this.__buttonOK_click);
         _loc1_.id = "buttonOK";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.buttonOK = _loc1_;
         BindingManager.executeBindings(this,"buttonOK",this.buttonOK);
         return _loc1_;
      }
      
      public function __buttonOK_click(param1:MouseEvent) : void
      {
         this.buttonOK_clickHandler(param1);
      }
      
      private function _UpsellNotificationMinilayer_MultistateButton2_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.styleName = "abort";
         _loc1_.width = 120;
         _loc1_.addEventListener("click",this.__buttonCancel_click);
         _loc1_.id = "buttonCancel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.buttonCancel = _loc1_;
         BindingManager.executeBindings(this,"buttonCancel",this.buttonCancel);
         return _loc1_;
      }
      
      public function __buttonCancel_click(param1:MouseEvent) : void
      {
         this.buttonCancel_clickHandler(param1);
      }
      
      public function ___UpsellNotificationMinilayer_MediumLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get buttonCancel() : MultistateButton
      {
         return this._473928780buttonCancel;
      }
      
      public function set buttonCancel(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._473928780buttonCancel;
         if(_loc2_ !== param1)
         {
            this._473928780buttonCancel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonCancel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buttonOK() : MultistateButton
      {
         return this._1108005746buttonOK;
      }
      
      public function set buttonOK(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1108005746buttonOK;
         if(_loc2_ !== param1)
         {
            this._1108005746buttonOK = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonOK",_loc2_,param1));
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
      public function get offerLabel() : LocaLabel
      {
         return this._143560184offerLabel;
      }
      
      public function set offerLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._143560184offerLabel;
         if(_loc2_ !== param1)
         {
            this._143560184offerLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"offerLabel",_loc2_,param1));
            }
         }
      }
   }
}

