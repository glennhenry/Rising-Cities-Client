package net.bigpoint.cityrama.view.shopBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import mx.utils.StringUtil;
   import net.bigpoint.cityrama.model.good.vo.ShopStockGoodVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class ShopStockItemRendered extends ItemRenderer
   {
      
      private var _398367733checkMark:BriskImageDynaLib;
      
      private var _607253902frameBG:BriskImageDynaLib;
      
      private var _1484033980goodContainer:Group;
      
      private var _100313435image:BriskImageDynaLib;
      
      private var _1478417739itemAmount:LocaLabel;
      
      private var _1131509414progressBar:ShopItemProgress;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ShopStockGoodVo;
      
      public function ShopStockItemRendered()
      {
         super();
         mx_internal::_document = this;
         this.autoDrawBackground = false;
         this.mxmlContent = [this._ShopStockItemRendered_HGroup1_c()];
         this.addEventListener("creationComplete",this.___ShopStockItemRendered_ItemRenderer1_creationComplete);
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
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
         invalidateProperties();
      }
      
      override public function set data(param1:Object) : void
      {
         this._data = param1 as ShopStockGoodVo;
         invalidateProperties();
      }
      
      override protected function commitProperties() : void
      {
         if(this._data)
         {
            this.image.dynaBmpSourceName = "small_" + this._data.goodVo.gfxId;
            this.itemAmount.text = this._data.stockCurrent + " / " + this._data.stockMax;
            this.progressBar.progress = this._data.stockCurrent / this._data.stockMax;
            if(this._data.stockCurrent == 0)
            {
               this.checkMark.dynaBmpSourceName = "checkmark_gray";
               this.frameBG.dynaBmpSourceName = "needframe_bg_grey";
               this.goodContainer.toolTip = ResourceManager.getInstance().getString(String("rcl.tooltips.shopBook"),String("rcl.tooltips.shopBook.empty"));
            }
            else
            {
               this.checkMark.dynaBmpSourceName = "checkmark_green";
               this.frameBG.dynaBmpSourceName = "needframe_bg_green";
            }
            this.setTooltips();
         }
      }
      
      private function setTooltips() : void
      {
         var _loc1_:Number = Math.abs(this._data.consumeAmount);
         var _loc2_:String = ResourceManager.getInstance().getString(String("rcl.goods.goodname"),String("rcl.goods.goodname." + this._data.goodVo.localeId));
         this.progressBar.toolTip = StringUtil.substitute(ResourceManager.getInstance().getString(String("rcl.tooltips.shopBook"),String("rcl.tooltips.shopBook.consumeInfo")),_loc1_,_loc2_);
      }
      
      private function _ShopStockItemRendered_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._ShopStockItemRendered_Group1_i(),this._ShopStockItemRendered_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ShopStockItemRendered_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 0;
         _loc1_.width = 90;
         _loc1_.height = 71;
         _loc1_.mxmlContent = [this._ShopStockItemRendered_BriskImageDynaLib1_c(),this._ShopStockItemRendered_BriskImageDynaLib2_i(),this._ShopStockItemRendered_BriskImageDynaLib3_i(),this._ShopStockItemRendered_BriskImageDynaLib4_i()];
         _loc1_.id = "goodContainer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.goodContainer = _loc1_;
         BindingManager.executeBindings(this,"goodContainer",this.goodContainer);
         return _loc1_;
      }
      
      private function _ShopStockItemRendered_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_residentialPopup";
         _loc1_.dynaBmpSourceName = "needframe_open";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ShopStockItemRendered_BriskImageDynaLib2_i() : BriskImageDynaLib
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
      
      private function _ShopStockItemRendered_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_smallGoodIcons";
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
      
      private function _ShopStockItemRendered_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "checkmark_gray";
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
      
      private function _ShopStockItemRendered_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.percentWidth = 100;
         _loc1_.horizontalAlign = "center";
         _loc1_.height = 71;
         _loc1_.mxmlContent = [this._ShopStockItemRendered_ShopItemProgress1_i(),this._ShopStockItemRendered_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _ShopStockItemRendered_ShopItemProgress1_i() : ShopItemProgress
      {
         var _loc1_:ShopItemProgress = new ShopItemProgress();
         _loc1_.width = 100;
         _loc1_.id = "progressBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.progressBar = _loc1_;
         BindingManager.executeBindings(this,"progressBar",this.progressBar);
         return _loc1_;
      }
      
      private function _ShopStockItemRendered_LocaLabel1_i() : LocaLabel
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
      
      public function ___ShopStockItemRendered_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
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
      public function get progressBar() : ShopItemProgress
      {
         return this._1131509414progressBar;
      }
      
      public function set progressBar(param1:ShopItemProgress) : void
      {
         var _loc2_:Object = this._1131509414progressBar;
         if(_loc2_ !== param1)
         {
            this._1131509414progressBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBar",_loc2_,param1));
            }
         }
      }
   }
}

