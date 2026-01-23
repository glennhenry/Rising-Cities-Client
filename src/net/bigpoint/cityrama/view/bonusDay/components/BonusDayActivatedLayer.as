package net.bigpoint.cityrama.view.bonusDay.components
{
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MediumLayerWindow;
   import net.bigpoint.cityrama.view.common.components.TimerBarComponent;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.VGroup;
   
   public class BonusDayActivatedLayer extends MediumLayerWindow
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
      
      private var _949820541flavourLabel:LocaLabel;
      
      private var _1638751296iconGfx:BriskImageDynaLib;
      
      private var _770681112progressTimer:TimerBarComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:TimerBarComponentVo;
      
      private var _dataDirty:Boolean;
      
      public function BonusDayActivatedLayer()
      {
         super();
         mx_internal::_document = this;
         this.showSparkles = true;
         this.styleName = "upsellOffer";
         this.characterImageBmpName = "characterOffer";
         this.characterImageLibName = "gui_popups_paperPopup";
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._BonusDayActivatedLayer_Array1_c);
         this.addEventListener("creationComplete",this.___BonusDayActivatedLayer_MediumLayerWindow1_creationComplete);
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
         title = LocaUtils.getString("rcl.booklayer.bonusDayActivated","rcl.booklayer.bonusDayActivated.title.capital");
         this.flavourLabel.text = LocaUtils.getString("rcl.booklayer.bonusDayActivated","rcl.booklayer.bonusDayActivated.flavour");
      }
      
      public function set data(param1:TimerBarComponentVo) : void
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
            this.progressTimer.data = this._data;
         }
      }
      
      private function _BonusDayActivatedLayer_Array1_c() : Array
      {
         return [this._BonusDayActivatedLayer_VGroup1_c()];
      }
      
      private function _BonusDayActivatedLayer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._BonusDayActivatedLayer_Group1_c(),this._BonusDayActivatedLayer_VGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BonusDayActivatedLayer_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._BonusDayActivatedLayer_BriskImageDynaLib1_c(),this._BonusDayActivatedLayer_VGroup2_c(),this._BonusDayActivatedLayer_BriskImageDynaLib3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BonusDayActivatedLayer_BriskImageDynaLib1_c() : BriskImageDynaLib
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
      
      private function _BonusDayActivatedLayer_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.gap = 10;
         _loc1_.mxmlContent = [this._BonusDayActivatedLayer_BriskImageDynaLib2_c(),this._BonusDayActivatedLayer_TimerBarComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BonusDayActivatedLayer_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "bonusDay_big";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BonusDayActivatedLayer_TimerBarComponent1_i() : TimerBarComponent
      {
         var _loc1_:TimerBarComponent = new TimerBarComponent();
         _loc1_.showBoostButton = false;
         _loc1_.revertFlow = true;
         _loc1_.width = 207;
         _loc1_.id = "progressTimer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.progressTimer = _loc1_;
         BindingManager.executeBindings(this,"progressTimer",this.progressTimer);
         return _loc1_;
      }
      
      private function _BonusDayActivatedLayer_BriskImageDynaLib3_i() : BriskImageDynaLib
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
      
      private function _BonusDayActivatedLayer_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._BonusDayActivatedLayer_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BonusDayActivatedLayer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 4;
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
      
      public function ___BonusDayActivatedLayer_MediumLayerWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
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
      public function get progressTimer() : TimerBarComponent
      {
         return this._770681112progressTimer;
      }
      
      public function set progressTimer(param1:TimerBarComponent) : void
      {
         var _loc2_:Object = this._770681112progressTimer;
         if(_loc2_ !== param1)
         {
            this._770681112progressTimer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressTimer",_loc2_,param1));
            }
         }
      }
   }
}

