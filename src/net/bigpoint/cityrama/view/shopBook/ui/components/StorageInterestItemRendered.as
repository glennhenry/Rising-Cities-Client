package net.bigpoint.cityrama.view.shopBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.model.good.vo.GoodObjectVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.StickyNoteComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public class StorageInterestItemRendered extends ItemRenderer
   {
      
      private var _100313435image:BriskImageDynaLib;
      
      private var _1478417739itemAmount:LocaLabel;
      
      private var _2135689121itemLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:GoodObjectVo;
      
      public function StorageInterestItemRendered()
      {
         super();
         mx_internal::_document = this;
         this.autoDrawBackground = false;
         this.mxmlContent = [this._StorageInterestItemRendered_StickyNoteComponent1_c(),this._StorageInterestItemRendered_Group1_c()];
         this.addEventListener("creationComplete",this.___StorageInterestItemRendered_ItemRenderer1_creationComplete);
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
         this._data = param1 as GoodObjectVo;
         invalidateProperties();
      }
      
      override protected function commitProperties() : void
      {
         if(this._data)
         {
            this.image.dynaBmpSourceName = "small_" + this._data.gfxId;
            this.itemLabel.text = ResourceManager.getInstance().getString(String("rcl.goods.goodname"),"rcl.goods.goodname." + this._data.gfxId);
            this.itemAmount.text = this._data.playerStock.toString();
         }
      }
      
      private function _StorageInterestItemRendered_StickyNoteComponent1_c() : StickyNoteComponent
      {
         var _loc1_:StickyNoteComponent = new StickyNoteComponent();
         _loc1_.width = 200;
         _loc1_.height = 80;
         _loc1_.top = -8;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._StorageInterestItemRendered_Array2_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StorageInterestItemRendered_Array2_c() : Array
      {
         return [this._StorageInterestItemRendered_VGroup1_c()];
      }
      
      private function _StorageInterestItemRendered_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 100;
         _loc1_.right = 10;
         _loc1_.horizontalAlign = "left";
         _loc1_.top = -10;
         _loc1_.mxmlContent = [this._StorageInterestItemRendered_LocaLabel1_i(),this._StorageInterestItemRendered_HGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StorageInterestItemRendered_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "priceLabel";
         _loc1_.id = "itemLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemLabel = _loc1_;
         BindingManager.executeBindings(this,"itemLabel",this.itemLabel);
         return _loc1_;
      }
      
      private function _StorageInterestItemRendered_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.width = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "left";
         _loc1_.mxmlContent = [this._StorageInterestItemRendered_BriskImageDynaLib1_c(),this._StorageInterestItemRendered_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StorageInterestItemRendered_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_resources_icons";
         _loc1_.dynaBmpSourceName = "product_icon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StorageInterestItemRendered_LocaLabel2_i() : LocaLabel
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
      
      private function _StorageInterestItemRendered_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._StorageInterestItemRendered_BriskImageDynaLib2_c(),this._StorageInterestItemRendered_BriskImageDynaLib3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StorageInterestItemRendered_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_shopBook";
         _loc1_.dynaBmpSourceName = "ressource_cardboard_mini";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _StorageInterestItemRendered_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_smallGoodIcons";
         _loc1_.verticalCenter = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "image";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.image = _loc1_;
         BindingManager.executeBindings(this,"image",this.image);
         return _loc1_;
      }
      
      public function ___StorageInterestItemRendered_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
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
      public function get itemLabel() : LocaLabel
      {
         return this._2135689121itemLabel;
      }
      
      public function set itemLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._2135689121itemLabel;
         if(_loc2_ !== param1)
         {
            this._2135689121itemLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemLabel",_loc2_,param1));
            }
         }
      }
   }
}

