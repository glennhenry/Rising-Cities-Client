package net.bigpoint.cityrama.view.common.components
{
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.GradientEntry;
   import mx.graphics.LinearGradient;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.cityrama.view.common.skins.CategoryMenuListSkin;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.events.IndexChangeEvent;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Rect;
   
   public class CategoryListComponent extends Group
   {
      
      private var _320749718categoryLabel:LocaLabel;
      
      private var _507950523categoryMenuList:List;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _data:ArrayCollection;
      
      private var _isDirty:Boolean;
      
      public function CategoryListComponent()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.left = 0;
         this.right = 0;
         this.mxmlContent = [this._CategoryListComponent_HGroup1_c(),this._CategoryListComponent_HGroup2_c(),this._CategoryListComponent_LocaLabel1_i(),this._CategoryListComponent_List1_i()];
         this.addEventListener("creationComplete",this.___CategoryListComponent_Group1_creationComplete);
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
      
      private function handleCreationComplete() : void
      {
         this.categoryLabel.text = LocaUtils.getString("rcl.booklayer.goodrebuy","rcl.booklayer.goodrebuy.category.capital");
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(Boolean(this._data) && this._isDirty)
         {
            this._isDirty = false;
            this.categoryMenuList.dataProvider = this._data;
         }
      }
      
      public function set data(param1:ArrayCollection) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._data = param1;
            this._isDirty = true;
            invalidateProperties();
         }
      }
      
      public function set selectedIndex(param1:int) : void
      {
         this.categoryMenuList.selectedIndex = param1;
      }
      
      private function handleCategoryChanged(param1:IndexChangeEvent) : void
      {
         dispatchEvent(param1);
      }
      
      private function _CategoryListComponent_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.percentWidth = 100;
         _loc1_.left = 1;
         _loc1_.right = 1;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._CategoryListComponent_Rect1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CategoryListComponent_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.bottomLeftRadiusX = 9;
         _loc1_.bottomLeftRadiusY = 9;
         _loc1_.bottomRightRadiusX = 9;
         _loc1_.bottomRightRadiusY = 9;
         _loc1_.topLeftRadiusX = 9;
         _loc1_.topLeftRadiusY = 9;
         _loc1_.topRightRadiusX = 9;
         _loc1_.topRightRadiusY = 9;
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.stroke = this._CategoryListComponent_SolidColorStroke1_c();
         _loc1_.fill = this._CategoryListComponent_LinearGradient1_c();
         _loc1_.filters = [this._CategoryListComponent_DropShadowFilter1_c()];
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _CategoryListComponent_SolidColorStroke1_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         _loc1_.color = 16777215;
         _loc1_.alpha = 1;
         _loc1_.weight = 1;
         return _loc1_;
      }
      
      private function _CategoryListComponent_LinearGradient1_c() : LinearGradient
      {
         var _loc1_:LinearGradient = new LinearGradient();
         _loc1_.rotation = 90;
         _loc1_.entries = [this._CategoryListComponent_GradientEntry1_c(),this._CategoryListComponent_GradientEntry2_c()];
         return _loc1_;
      }
      
      private function _CategoryListComponent_GradientEntry1_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 16777215;
         _loc1_.alpha = 1;
         _loc1_.ratio = 0;
         return _loc1_;
      }
      
      private function _CategoryListComponent_GradientEntry2_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 15790320;
         _loc1_.alpha = 1;
         _loc1_.ratio = 1;
         return _loc1_;
      }
      
      private function _CategoryListComponent_DropShadowFilter1_c() : DropShadowFilter
      {
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         _loc1_.distance = 1;
         _loc1_.color = 5789784;
         return _loc1_;
      }
      
      private function _CategoryListComponent_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.left = -1;
         _loc1_.right = -1;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._CategoryListComponent_BriskImageDynaLib1_c(),this._CategoryListComponent_BriskImageDynaLib2_c(),this._CategoryListComponent_BriskImageDynaLib3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CategoryListComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
         _loc1_.dynaBmpSourceName = "bluebar_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CategoryListComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
         _loc1_.dynaBmpSourceName = "bluebar_middle";
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CategoryListComponent_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_goodRebuyPopup";
         _loc1_.dynaBmpSourceName = "bluebar_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _CategoryListComponent_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "departmentSecurityLabel";
         _loc1_.percentWidth = 90;
         _loc1_.maxDisplayedLines = 1;
         _loc1_.setStyle("paddingTop",11);
         _loc1_.setStyle("paddingLeft",14);
         _loc1_.id = "categoryLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.categoryLabel = _loc1_;
         BindingManager.executeBindings(this,"categoryLabel",this.categoryLabel);
         return _loc1_;
      }
      
      private function _CategoryListComponent_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.left = 5;
         _loc1_.right = 2;
         _loc1_.top = 42;
         _loc1_.percentWidth = 100;
         _loc1_.itemRenderer = this._CategoryListComponent_ClassFactory1_c();
         _loc1_.setStyle("skinClass",CategoryMenuListSkin);
         _loc1_.addEventListener("change",this.__categoryMenuList_change);
         _loc1_.id = "categoryMenuList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.categoryMenuList = _loc1_;
         BindingManager.executeBindings(this,"categoryMenuList",this.categoryMenuList);
         return _loc1_;
      }
      
      private function _CategoryListComponent_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CategoryMenuListItemRenderer;
         return _loc1_;
      }
      
      public function __categoryMenuList_change(param1:IndexChangeEvent) : void
      {
         this.handleCategoryChanged(param1);
      }
      
      public function ___CategoryListComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete();
      }
      
      [Bindable(event="propertyChange")]
      public function get categoryLabel() : LocaLabel
      {
         return this._320749718categoryLabel;
      }
      
      public function set categoryLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._320749718categoryLabel;
         if(_loc2_ !== param1)
         {
            this._320749718categoryLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"categoryLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get categoryMenuList() : List
      {
         return this._507950523categoryMenuList;
      }
      
      public function set categoryMenuList(param1:List) : void
      {
         var _loc2_:Object = this._507950523categoryMenuList;
         if(_loc2_ !== param1)
         {
            this._507950523categoryMenuList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"categoryMenuList",_loc2_,param1));
            }
         }
      }
   }
}

