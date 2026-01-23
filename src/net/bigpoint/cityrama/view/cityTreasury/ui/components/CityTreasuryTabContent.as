package net.bigpoint.cityrama.view.cityTreasury.ui.components
{
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.filters.*;
   import mx.styles.*;
   import net.bigpoint.cityrama.model.cityTreasury.vo.CityTreasuryCategoryVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.CityTreasuryTabVo;
   import net.bigpoint.cityrama.model.cityTreasury.vo.specificContentVos.CityTreasuryBonusCodeVo;
   import net.bigpoint.cityrama.view.common.components.CategoryListComponent;
   import net.bigpoint.cityrama.view.common.components.DebossedBackgroundComponent;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   
   public class CityTreasuryTabContent extends Group
   {
      
      private var _426022781categoryMenu:CategoryListComponent;
      
      private var _800887486flavourText:LocaLabel;
      
      private var _908635023leftLayerContent:Group;
      
      private var _66491520mainContent:CityTreasuryContentComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:CityTreasuryTabVo;
      
      private var _isDirty:Boolean;
      
      private var _currentSelectedCategoryIndex:int = -1;
      
      private var _currentSelectedPackIndex:int = -1;
      
      public function CityTreasuryTabContent()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.bottom = 3;
         this.top = -24;
         this.left = -2;
         this.mxmlContent = [this._CityTreasuryTabContent_VGroup1_c()];
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
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(Boolean(this._data) && this._isDirty)
         {
            this._isDirty = false;
            this.categoryMenu.removeEventListener(IndexChangeEvent.CHANGE,this.handleCategoryChanged);
            this.mainContent.removeEventListener(IndexChangeEvent.CHANGE,this.handlePackChanged);
            this.flavourText.text = this._data.flavourText;
            if(this._currentSelectedCategoryIndex == -1)
            {
               this._currentSelectedCategoryIndex = this._data.categoryToOpen;
            }
            if(this._currentSelectedPackIndex == -1)
            {
               this._currentSelectedPackIndex = this._data.packToSelect;
            }
            this.categoryMenu.addEventListener(IndexChangeEvent.CHANGE,this.handleCategoryChanged);
            this.categoryMenu.data = this._data.categoryMenuList;
            this.categoryMenu.selectedIndex = this._currentSelectedCategoryIndex;
            this.categoryMenu.addEventListener(FlexEvent.UPDATE_COMPLETE,this.handleCategoryListReady);
            this.mainContent.addEventListener(IndexChangeEvent.CHANGE,this.handlePackChanged);
            this.handleCategoryChanged();
         }
      }
      
      private function handlePackChanged(param1:IndexChangeEvent) : void
      {
         param1.stopPropagation();
         this._currentSelectedPackIndex = param1.newIndex;
      }
      
      private function handleCategoryListReady(param1:FlexEvent) : void
      {
         this.categoryMenu.removeEventListener(FlexEvent.UPDATE_COMPLETE,this.handleCategoryListReady);
         this.categoryMenu.selectedIndex = this._currentSelectedCategoryIndex;
      }
      
      private function handleCategoryChanged(param1:IndexChangeEvent = null) : void
      {
         if(param1)
         {
            if(param1.oldIndex != param1.newIndex)
            {
               this._currentSelectedCategoryIndex = param1.newIndex;
               this._currentSelectedPackIndex = 0;
               if(this._data.categories[param1.oldIndex].contentVo is CityTreasuryBonusCodeVo)
               {
                  (this._data.categories[param1.oldIndex].contentVo as CityTreasuryBonusCodeVo).errorLabel = "";
               }
            }
         }
         var _loc2_:CityTreasuryCategoryVo = this._data.categories[this._currentSelectedCategoryIndex];
         _loc2_.preSelectedPackIndex = this._currentSelectedPackIndex;
         this.mainContent.data = _loc2_;
      }
      
      public function set data(param1:CityTreasuryTabVo) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._isDirty = true;
            invalidateProperties();
         }
      }
      
      public function get currentSelectedCategoryIndex() : int
      {
         if(this._currentSelectedCategoryIndex != -1)
         {
            return this._currentSelectedCategoryIndex;
         }
         return 0;
      }
      
      public function get currentSelectedPackIndex() : int
      {
         if(this._currentSelectedPackIndex != -1)
         {
            return this._currentSelectedPackIndex;
         }
         return 0;
      }
      
      public function resetIndexes() : void
      {
         this._currentSelectedCategoryIndex = -1;
         this._currentSelectedCategoryIndex = -1;
      }
      
      private function _CityTreasuryTabContent_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalCenter = 0;
         _loc1_.gap = 3;
         _loc1_.top = 0;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._CityTreasuryTabContent_VGroup2_c(),this._CityTreasuryTabContent_HGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryTabContent_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.height = 48;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._CityTreasuryTabContent_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryTabContent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "twelveFlavourText";
         _loc1_.maxDisplayedLines = 2;
         _loc1_.percentWidth = 80;
         _loc1_.id = "flavourText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavourText = _loc1_;
         BindingManager.executeBindings(this,"flavourText",this.flavourText);
         return _loc1_;
      }
      
      private function _CityTreasuryTabContent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.gap = 2;
         _loc1_.verticalAlign = "top";
         _loc1_.mxmlContent = [this._CityTreasuryTabContent_Group2_i(),this._CityTreasuryTabContent_CityTreasuryContentComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryTabContent_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 186;
         _loc1_.percentHeight = 100;
         _loc1_.maxWidth = 186;
         _loc1_.mxmlContent = [this._CityTreasuryTabContent_DebossedBackgroundComponent1_c(),this._CityTreasuryTabContent_VGroup3_c()];
         _loc1_.id = "leftLayerContent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.leftLayerContent = _loc1_;
         BindingManager.executeBindings(this,"leftLayerContent",this.leftLayerContent);
         return _loc1_;
      }
      
      private function _CityTreasuryTabContent_DebossedBackgroundComponent1_c() : DebossedBackgroundComponent
      {
         var _loc1_:DebossedBackgroundComponent = new DebossedBackgroundComponent();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryTabContent_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.paddingLeft = 5;
         _loc1_.paddingRight = 5;
         _loc1_.paddingTop = 2;
         _loc1_.paddingBottom = 4;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._CityTreasuryTabContent_CategoryListComponent1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CityTreasuryTabContent_CategoryListComponent1_i() : CategoryListComponent
      {
         var _loc1_:CategoryListComponent = new CategoryListComponent();
         _loc1_.width = 176;
         _loc1_.height = 310;
         _loc1_.maxHeight = 310;
         _loc1_.maxWidth = 176;
         _loc1_.id = "categoryMenu";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.categoryMenu = _loc1_;
         BindingManager.executeBindings(this,"categoryMenu",this.categoryMenu);
         return _loc1_;
      }
      
      private function _CityTreasuryTabContent_CityTreasuryContentComponent1_i() : CityTreasuryContentComponent
      {
         var _loc1_:CityTreasuryContentComponent = new CityTreasuryContentComponent();
         _loc1_.percentWidth = 100;
         _loc1_.height = 310;
         _loc1_.id = "mainContent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mainContent = _loc1_;
         BindingManager.executeBindings(this,"mainContent",this.mainContent);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get categoryMenu() : CategoryListComponent
      {
         return this._426022781categoryMenu;
      }
      
      public function set categoryMenu(param1:CategoryListComponent) : void
      {
         var _loc2_:Object = this._426022781categoryMenu;
         if(_loc2_ !== param1)
         {
            this._426022781categoryMenu = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"categoryMenu",_loc2_,param1));
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
      public function get leftLayerContent() : Group
      {
         return this._908635023leftLayerContent;
      }
      
      public function set leftLayerContent(param1:Group) : void
      {
         var _loc2_:Object = this._908635023leftLayerContent;
         if(_loc2_ !== param1)
         {
            this._908635023leftLayerContent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftLayerContent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainContent() : CityTreasuryContentComponent
      {
         return this._66491520mainContent;
      }
      
      public function set mainContent(param1:CityTreasuryContentComponent) : void
      {
         var _loc2_:Object = this._66491520mainContent;
         if(_loc2_ !== param1)
         {
            this._66491520mainContent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainContent",_loc2_,param1));
            }
         }
      }
   }
}

