package net.bigpoint.cityrama.view.departmentBook.ui.components
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.schoolBook.CharacteristicsEntryVo;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.supportClasses.ItemRenderer;
   
   public class ScrollTextItemRenderer extends ItemRenderer
   {
      
      private var _2135689121itemLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:CharacteristicsEntryVo;
      
      private var _dataIsDirty:Boolean = false;
      
      public function ScrollTextItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.focusEnabled = false;
         this.mxmlContent = [this._ScrollTextItemRenderer_LocaLabel1_i()];
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
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1 as CharacteristicsEntryVo;
            this._dataIsDirty = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:* = false;
         super.commitProperties();
         if(this._dataIsDirty)
         {
            this._dataIsDirty = false;
            this.itemLabel.text = LocaUtils.getString("rcl.education.characteristics","rcl.education.characteristics.name.capital." + this._data.localeId);
            _loc1_ = LocaUtils.getString("rcl.tooltips.minilayer.traitunlock","rcl.tooltips.minilayer.traitunlock." + this._data.gender + "." + this._data.localeId).indexOf("%") != -1;
            this.itemLabel.toolTip = LocaUtils.getString("rcl.tooltips.minilayer.traitunlock","rcl.tooltips.minilayer.traitunlock." + this._data.gender + "." + this._data.localeId,[_loc1_ ? this._data.amountSum * 100 : this._data.amountSum]);
         }
      }
      
      override public function set selected(param1:Boolean) : void
      {
      }
      
      private function _ScrollTextItemRenderer_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.percentWidth = 100;
         _loc1_.verticalCenter = 0;
         _loc1_.styleName = "professionalCharacteristicsLabel";
         _loc1_.id = "itemLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemLabel = _loc1_;
         BindingManager.executeBindings(this,"itemLabel",this.itemLabel);
         return _loc1_;
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

