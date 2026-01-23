package net.bigpoint.cityrama.view.architectBook.ui.skins
{
   import com.greensock.TweenMax;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.architectBook.ui.components.GridItemComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import spark.components.Group;
   import spark.skins.SparkSkin;
   
   public class GridItemPremiumSkin extends SparkSkin implements IStateClient2
   {
      
      private var _292147534costGroup:Group;
      
      private var _1004941354currencyIcon:BriskImageDynaLib;
      
      private var _100313435image:BriskImageDynaLib;
      
      private var _177606215infoIcon:BriskImageDynaLib;
      
      private var _2135689121itemLabel:LocaLabel;
      
      private var _1844873785newIcon:BriskImageDynaLib;
      
      private var _1177829717stickyTape:BriskMCDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:GridItemComponent;
      
      public function GridItemPremiumSkin()
      {
         super();
         mx_internal::_document = this;
         this.width = 120;
         this.height = 150;
         this.mxmlContent = [this._GridItemPremiumSkin_Group1_c()];
         this.currentState = "up";
         this.addEventListener("creationComplete",this.___GridItemPremiumSkin_SparkSkin1_creationComplete);
         states = [new State({
            "name":"up",
            "overrides":[]
         }),new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"over",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"infoIcon",
               "name":"dynaBmpSourceName",
               "value":"architect_icon_detailinfo_mouseover"
            })]
         }),new State({
            "name":"down",
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
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
         TweenMax.to(this.infoIcon,0,{"glowFilter":{
            "color":13475921,
            "alpha":1,
            "blurX":2,
            "blurY":2,
            "strength":20
         }});
         TweenMax.to(this.image,0,{"glowFilter":{
            "color":15984814,
            "alpha":1,
            "blurX":2,
            "blurY":2,
            "strength":20
         }});
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this.costGroup)
         {
            if(this.hostComponent.showPrice)
            {
               this.costGroup.includeInLayout = true;
               this.costGroup.visible = true;
            }
            else
            {
               this.costGroup.includeInLayout = false;
               this.costGroup.visible = false;
            }
            if(this.infoIcon)
            {
               if(this.hostComponent.showInfoIcon)
               {
                  this.infoIcon.includeInLayout = true;
                  this.infoIcon.visible = true;
               }
               else
               {
                  this.infoIcon.includeInLayout = false;
                  this.infoIcon.visible = false;
               }
            }
            if(this.newIcon)
            {
               if(this.hostComponent.showNewIcon)
               {
                  this.newIcon.includeInLayout = true;
                  this.newIcon.visible = true;
               }
               else
               {
                  this.newIcon.includeInLayout = false;
                  this.newIcon.visible = false;
               }
            }
         }
      }
      
      private function _GridItemPremiumSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._GridItemPremiumSkin_Group2_i(),this._GridItemPremiumSkin_BriskImageDynaLib3_c(),this._GridItemPremiumSkin_BriskImageDynaLib4_i(),this._GridItemPremiumSkin_BriskImageDynaLib5_i(),this._GridItemPremiumSkin_BriskMCDynaLib1_i(),this._GridItemPremiumSkin_BriskImageDynaLib6_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _GridItemPremiumSkin_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.bottom = 2;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._GridItemPremiumSkin_BriskImageDynaLib1_c(),this._GridItemPremiumSkin_BriskImageDynaLib2_i(),this._GridItemPremiumSkin_LocaLabel1_i()];
         _loc1_.id = "costGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.costGroup = _loc1_;
         BindingManager.executeBindings(this,"costGroup",this.costGroup);
         return _loc1_;
      }
      
      private function _GridItemPremiumSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaBmpSourceName = "architect_postit_price_slightlyLarger";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _GridItemPremiumSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.bottom = 6;
         _loc1_.left = 8;
         _loc1_.id = "currencyIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.currencyIcon = _loc1_;
         BindingManager.executeBindings(this,"currencyIcon",this.currencyIcon);
         return _loc1_;
      }
      
      private function _GridItemPremiumSkin_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "priceLabel";
         _loc1_.bottom = 9;
         _loc1_.right = 8;
         _loc1_.text = "00.000.000";
         _loc1_.id = "itemLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemLabel = _loc1_;
         BindingManager.executeBindings(this,"itemLabel",this.itemLabel);
         return _loc1_;
      }
      
      private function _GridItemPremiumSkin_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 6;
         _loc1_.dynaBmpSourceName = "architect_goldprint_small";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _GridItemPremiumSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.verticalCenter = -12;
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
      
      private function _GridItemPremiumSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.bottom = 43;
         _loc1_.right = 15;
         _loc1_.dynaBmpSourceName = "architect_icon_detailinfo";
         _loc1_.id = "infoIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.infoIcon = _loc1_;
         BindingManager.executeBindings(this,"infoIcon",this.infoIcon);
         return _loc1_;
      }
      
      private function _GridItemPremiumSkin_BriskMCDynaLib1_i() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.top = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaMCSourceName = "stickytape_top";
         _loc1_.id = "stickyTape";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.stickyTape = _loc1_;
         BindingManager.executeBindings(this,"stickyTape",this.stickyTape);
         return _loc1_;
      }
      
      private function _GridItemPremiumSkin_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.bottom = 110;
         _loc1_.right = 0;
         _loc1_.dynaBmpSourceName = "new_icon";
         _loc1_.id = "newIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.newIcon = _loc1_;
         BindingManager.executeBindings(this,"newIcon",this.newIcon);
         return _loc1_;
      }
      
      public function ___GridItemPremiumSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get costGroup() : Group
      {
         return this._292147534costGroup;
      }
      
      public function set costGroup(param1:Group) : void
      {
         var _loc2_:Object = this._292147534costGroup;
         if(_loc2_ !== param1)
         {
            this._292147534costGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get currencyIcon() : BriskImageDynaLib
      {
         return this._1004941354currencyIcon;
      }
      
      public function set currencyIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1004941354currencyIcon;
         if(_loc2_ !== param1)
         {
            this._1004941354currencyIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currencyIcon",_loc2_,param1));
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
      public function get infoIcon() : BriskImageDynaLib
      {
         return this._177606215infoIcon;
      }
      
      public function set infoIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._177606215infoIcon;
         if(_loc2_ !== param1)
         {
            this._177606215infoIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoIcon",_loc2_,param1));
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
      
      [Bindable(event="propertyChange")]
      public function get newIcon() : BriskImageDynaLib
      {
         return this._1844873785newIcon;
      }
      
      public function set newIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1844873785newIcon;
         if(_loc2_ !== param1)
         {
            this._1844873785newIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stickyTape() : BriskMCDynaLib
      {
         return this._1177829717stickyTape;
      }
      
      public function set stickyTape(param1:BriskMCDynaLib) : void
      {
         var _loc2_:Object = this._1177829717stickyTape;
         if(_loc2_ !== param1)
         {
            this._1177829717stickyTape = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stickyTape",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : GridItemComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:GridItemComponent) : void
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

