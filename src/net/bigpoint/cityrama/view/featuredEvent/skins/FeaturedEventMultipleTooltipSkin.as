package net.bigpoint.cityrama.view.featuredEvent.skins
{
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.view.assistants.ui.components.RentCollectorBubbleComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.featuredEvent.components.FeaturedEventMultipleItemRenderer;
   import net.bigpoint.cityrama.view.featuredEvent.components.FeaturedEventTooltip;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class FeaturedEventMultipleTooltipSkin extends SparkSkin
   {
      
      private var _1378241396bubble:RentCollectorBubbleComponent;
      
      private var _1221270899header:LocaLabel;
      
      private var _1977189542headerIcon:BriskImageDynaLib;
      
      private var _1924725208multipleEventList:List;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:FeaturedEventTooltip;
      
      public function FeaturedEventMultipleTooltipSkin()
      {
         super();
         mx_internal::_document = this;
         this.width = 250;
         this.minHeight = 90;
         this.mxmlContent = [this._FeaturedEventMultipleTooltipSkin_Group1_c()];
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
      
      private function _FeaturedEventMultipleTooltipSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._FeaturedEventMultipleTooltipSkin_Group2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FeaturedEventMultipleTooltipSkin_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._FeaturedEventMultipleTooltipSkin_RentCollectorBubbleComponent1_i(),this._FeaturedEventMultipleTooltipSkin_HGroup1_c(),this._FeaturedEventMultipleTooltipSkin_BriskImageDynaLib4_i(),this._FeaturedEventMultipleTooltipSkin_HGroup2_c(),this._FeaturedEventMultipleTooltipSkin_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FeaturedEventMultipleTooltipSkin_RentCollectorBubbleComponent1_i() : RentCollectorBubbleComponent
      {
         var _loc1_:RentCollectorBubbleComponent = new RentCollectorBubbleComponent();
         _loc1_.percentWidth = 100;
         _loc1_.bottom = 0;
         _loc1_.right = 0;
         _loc1_.id = "bubble";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bubble = _loc1_;
         BindingManager.executeBindings(this,"bubble",this.bubble);
         return _loc1_;
      }
      
      private function _FeaturedEventMultipleTooltipSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.left = 5;
         _loc1_.right = 15;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.top = 9;
         _loc1_.height = 30;
         _loc1_.mxmlContent = [this._FeaturedEventMultipleTooltipSkin_BriskImageDynaLib1_c(),this._FeaturedEventMultipleTooltipSkin_BriskImageDynaLib2_c(),this._FeaturedEventMultipleTooltipSkin_BriskImageDynaLib3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FeaturedEventMultipleTooltipSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_blueheadline_left";
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FeaturedEventMultipleTooltipSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_blueheadline_middle";
         _loc1_.percentWidth = 90;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FeaturedEventMultipleTooltipSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_blueheadline_right";
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FeaturedEventMultipleTooltipSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_ui_questSide";
         _loc1_.dynaBmpSourceName = "quest_bubble_icon_info";
         _loc1_.top = -6;
         _loc1_.left = -11;
         _loc1_.id = "headerIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.headerIcon = _loc1_;
         BindingManager.executeBindings(this,"headerIcon",this.headerIcon);
         return _loc1_;
      }
      
      private function _FeaturedEventMultipleTooltipSkin_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.left = 32;
         _loc1_.top = 11;
         _loc1_.right = 30;
         _loc1_.height = 30;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._FeaturedEventMultipleTooltipSkin_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FeaturedEventMultipleTooltipSkin_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "eventName";
         _loc1_.maxWidth = 170;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.id = "header";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.header = _loc1_;
         BindingManager.executeBindings(this,"header",this.header);
         return _loc1_;
      }
      
      private function _FeaturedEventMultipleTooltipSkin_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.left = 5;
         _loc1_.right = 15;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.paddingTop = 50;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._FeaturedEventMultipleTooltipSkin_List1_i(),this._FeaturedEventMultipleTooltipSkin_Group3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FeaturedEventMultipleTooltipSkin_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.percentWidth = 90;
         _loc1_.itemRenderer = this._FeaturedEventMultipleTooltipSkin_ClassFactory1_c();
         _loc1_.setStyle("skinClass",FeaturedEventMultipleListSkin);
         _loc1_.id = "multipleEventList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.multipleEventList = _loc1_;
         BindingManager.executeBindings(this,"multipleEventList",this.multipleEventList);
         return _loc1_;
      }
      
      private function _FeaturedEventMultipleTooltipSkin_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = FeaturedEventMultipleItemRenderer;
         return _loc1_;
      }
      
      private function _FeaturedEventMultipleTooltipSkin_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 5;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get bubble() : RentCollectorBubbleComponent
      {
         return this._1378241396bubble;
      }
      
      public function set bubble(param1:RentCollectorBubbleComponent) : void
      {
         var _loc2_:Object = this._1378241396bubble;
         if(_loc2_ !== param1)
         {
            this._1378241396bubble = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bubble",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get header() : LocaLabel
      {
         return this._1221270899header;
      }
      
      public function set header(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1221270899header;
         if(_loc2_ !== param1)
         {
            this._1221270899header = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"header",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get headerIcon() : BriskImageDynaLib
      {
         return this._1977189542headerIcon;
      }
      
      public function set headerIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1977189542headerIcon;
         if(_loc2_ !== param1)
         {
            this._1977189542headerIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get multipleEventList() : List
      {
         return this._1924725208multipleEventList;
      }
      
      public function set multipleEventList(param1:List) : void
      {
         var _loc2_:Object = this._1924725208multipleEventList;
         if(_loc2_ !== param1)
         {
            this._1924725208multipleEventList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"multipleEventList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : FeaturedEventTooltip
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:FeaturedEventTooltip) : void
      {
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc2_ !== param1)
         {
            this._213507019hostComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
            }
         }
      }
   }
}

