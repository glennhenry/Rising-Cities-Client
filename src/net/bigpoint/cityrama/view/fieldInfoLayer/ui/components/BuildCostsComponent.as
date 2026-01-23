package net.bigpoint.cityrama.view.fieldInfoLayer.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.model.miniLayer.vo.ConstructionMiniLayerVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class BuildCostsComponent extends Group implements IStateClient2
   {
      
      private var _398367733checkMark:BriskImageDynaLib;
      
      private var _1229032395ddPriceLabel:LocaLabel;
      
      private var _607253902frameBG:BriskImageDynaLib;
      
      private var _1484033980goodContainer:Group;
      
      private var _100313435image:BriskImageDynaLib;
      
      private var _1478417739itemAmount:LocaLabel;
      
      private var _1229408559orLabel:LocaLabel;
      
      private var _717437366sellAmount:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ConstructionMiniLayerVo;
      
      private var _dataIsDirty:Boolean;
      
      public function BuildCostsComponent()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._BuildCostsComponent_HGroup1_c()];
         this.currentState = "normal";
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[]
         })];
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
      
      public function set data(param1:ConstructionMiniLayerVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._dataIsDirty = true;
            this._data = param1;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            this.image.dynaBmpSourceName = this._data.assetImageName;
            this.image.dynaLibName = this._data.assetLibName;
            this.itemAmount.text = this._data.amountOwned.toString();
            this.sellAmount.text = Math.abs(this._data.amountNeeded) + "x";
            if(this._data.amountOwned >= this._data.amountNeeded)
            {
               this.checkMark.dynaBmpSourceName = "checkmark_green_small";
               this.frameBG.dynaBmpSourceName = "needframe_bg_green";
               this.image.alpha = 1;
               this.itemAmount.setStyle("color",7303023);
            }
            else
            {
               this.checkMark.dynaBmpSourceName = "checkmark_grey_small";
               this.frameBG.dynaBmpSourceName = "needframe_bg_grey";
               this.image.alpha = 0.5;
               this.itemAmount.setStyle("color",7303023);
            }
            this.ddPriceLabel.text = this._data.realCurrencyCosts.toString();
            this.orLabel.text = LocaUtils.getString("rcl.fieldinfo.layer","rcl.fieldinfo.layer.expansion.or");
         }
      }
      
      private function _BuildCostsComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.width = 157;
         _loc1_.gap = 10;
         _loc1_.mxmlContent = [this._BuildCostsComponent_HGroup2_c(),this._BuildCostsComponent_LocaLabel3_i(),this._BuildCostsComponent_HGroup4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BuildCostsComponent_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 10;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._BuildCostsComponent_HGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BuildCostsComponent_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.maxHeight = 83;
         _loc1_.mxmlContent = [this._BuildCostsComponent_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BuildCostsComponent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.maxHeight = 83;
         _loc1_.gap = 5;
         _loc1_.mxmlContent = [this._BuildCostsComponent_LocaLabel1_i(),this._BuildCostsComponent_Group2_i(),this._BuildCostsComponent_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BuildCostsComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "sellAmountLabel";
         _loc1_.id = "sellAmount";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.sellAmount = _loc1_;
         BindingManager.executeBindings(this,"sellAmount",this.sellAmount);
         return _loc1_;
      }
      
      private function _BuildCostsComponent_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 0;
         _loc1_.width = 60;
         _loc1_.height = 52;
         _loc1_.mxmlContent = [this._BuildCostsComponent_BriskImageDynaLib1_i(),this._BuildCostsComponent_BriskImageDynaLib2_i(),this._BuildCostsComponent_BriskImageDynaLib3_i()];
         _loc1_.id = "goodContainer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.goodContainer = _loc1_;
         BindingManager.executeBindings(this,"goodContainer",this.goodContainer);
         return _loc1_;
      }
      
      private function _BuildCostsComponent_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_residentialPopup";
         _loc1_.dynaBmpSourceName = "needframe_bg_grey";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "frameBG";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.frameBG = _loc1_;
         BindingManager.executeBindings(this,"frameBG",this.frameBG);
         return _loc1_;
      }
      
      private function _BuildCostsComponent_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.maxWidth = 60;
         _loc1_.maxHeight = 52;
         _loc1_.smoothing = true;
         _loc1_.maintainAspectRation = true;
         _loc1_.id = "image";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.image = _loc1_;
         BindingManager.executeBindings(this,"image",this.image);
         return _loc1_;
      }
      
      private function _BuildCostsComponent_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "checkmark_grey_small";
         _loc1_.top = 0;
         _loc1_.right = 0;
         _loc1_.id = "checkMark";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.checkMark = _loc1_;
         BindingManager.executeBindings(this,"checkMark",this.checkMark);
         return _loc1_;
      }
      
      private function _BuildCostsComponent_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "priceLabel";
         _loc1_.id = "itemAmount";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemAmount = _loc1_;
         BindingManager.executeBindings(this,"itemAmount",this.itemAmount);
         return _loc1_;
      }
      
      private function _BuildCostsComponent_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "expansionBlue";
         _loc1_.id = "orLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.orLabel = _loc1_;
         BindingManager.executeBindings(this,"orLabel",this.orLabel);
         return _loc1_;
      }
      
      private function _BuildCostsComponent_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 10;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._BuildCostsComponent_LocaLabel4_i(),this._BuildCostsComponent_BriskImageDynaLib4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _BuildCostsComponent_LocaLabel4_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "expansionGrey";
         _loc1_.id = "ddPriceLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.ddPriceLabel = _loc1_;
         BindingManager.executeBindings(this,"ddPriceLabel",this.ddPriceLabel);
         return _loc1_;
      }
      
      private function _BuildCostsComponent_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_infield_gui_infolayer";
         _loc1_.dynaBmpSourceName = "infolayer_mm";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get checkMark() : BriskImageDynaLib
      {
         return this._398367733checkMark;
      }
      
      public function set checkMark(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._398367733checkMark;
         if(_loc2_ !== param1)
         {
            this._398367733checkMark = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"checkMark",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ddPriceLabel() : LocaLabel
      {
         return this._1229032395ddPriceLabel;
      }
      
      public function set ddPriceLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1229032395ddPriceLabel;
         if(_loc2_ !== param1)
         {
            this._1229032395ddPriceLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ddPriceLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get frameBG() : BriskImageDynaLib
      {
         return this._607253902frameBG;
      }
      
      public function set frameBG(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._607253902frameBG;
         if(_loc2_ !== param1)
         {
            this._607253902frameBG = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"frameBG",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get goodContainer() : Group
      {
         return this._1484033980goodContainer;
      }
      
      public function set goodContainer(param1:Group) : void
      {
         var _loc2_:Object = this._1484033980goodContainer;
         if(_loc2_ !== param1)
         {
            this._1484033980goodContainer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goodContainer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get image() : BriskImageDynaLib
      {
         return this._100313435image;
      }
      
      public function set image(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._100313435image;
         if(_loc2_ !== param1)
         {
            this._100313435image = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemAmount() : LocaLabel
      {
         return this._1478417739itemAmount;
      }
      
      public function set itemAmount(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1478417739itemAmount;
         if(_loc2_ !== param1)
         {
            this._1478417739itemAmount = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemAmount",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get orLabel() : LocaLabel
      {
         return this._1229408559orLabel;
      }
      
      public function set orLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1229408559orLabel;
         if(_loc2_ !== param1)
         {
            this._1229408559orLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"orLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sellAmount() : LocaLabel
      {
         return this._717437366sellAmount;
      }
      
      public function set sellAmount(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._717437366sellAmount;
         if(_loc2_ !== param1)
         {
            this._717437366sellAmount = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sellAmount",_loc2_,param1));
            }
         }
      }
   }
}

