package net.bigpoint.cityrama.view.architectBook.ui.skins
{
   import com.greensock.TweenMax;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.cityrama.view.architectBook.ui.components.GridItemComponent;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.skins.SparkSkin;
   
   public class GridItemLockedSkin extends SparkSkin implements IStateClient2
   {
      
      private var _292147534costGroup:Group;
      
      private var _100313435image:BriskImageDynaLib;
      
      private var _177606215infoIcon:BriskImageDynaLib;
      
      private var _2135689121itemLabel:LocaLabel;
      
      private var _238669838lvlLabel:LocaLabel;
      
      private var _1177829717stickyTape:BriskMCDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:GridItemComponent;
      
      public function GridItemLockedSkin()
      {
         super();
         mx_internal::_document = this;
         this.width = 120;
         this.height = 150;
         this.mxmlContent = [this._GridItemLockedSkin_Group1_c()];
         this.currentState = "up";
         this.addEventListener("creationComplete",this.___GridItemLockedSkin_SparkSkin1_creationComplete);
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
            "color":12565651,
            "alpha":1,
            "blurX":2,
            "blurY":2,
            "strength":20
         }});
         TweenMax.to(this.image,0,{
            "colorMatrixFilter":{"saturation":0},
            "colorTransform":{
               "tint":14473659,
               "tintAmount":0.74
            }
         });
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         this.lvlLabel.text = ResourceManager.getInstance().getString(String("rcl.misc.resources"),String("rcl.misc.resources.level"));
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
         }
      }
      
      private function _GridItemLockedSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._GridItemLockedSkin_Group2_i(),this._GridItemLockedSkin_BriskImageDynaLib2_c(),this._GridItemLockedSkin_BriskImageDynaLib3_i(),this._GridItemLockedSkin_BriskImageDynaLib4_i(),this._GridItemLockedSkin_BriskImageDynaLib5_c(),this._GridItemLockedSkin_BriskMCDynaLib1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _GridItemLockedSkin_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.bottom = 2;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._GridItemLockedSkin_BriskImageDynaLib1_c(),this._GridItemLockedSkin_HGroup1_c()];
         _loc1_.id = "costGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.costGroup = _loc1_;
         BindingManager.executeBindings(this,"costGroup",this.costGroup);
         return _loc1_;
      }
      
      private function _GridItemLockedSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = null;
         _loc1_ = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaBmpSourceName = "architect_postit_price";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _GridItemLockedSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.paddingTop = 4;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._GridItemLockedSkin_LocaLabel1_i(),this._GridItemLockedSkin_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _GridItemLockedSkin_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "priceLabel";
         _loc1_.text = "dev: LVL";
         _loc1_.id = "lvlLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.lvlLabel = _loc1_;
         BindingManager.executeBindings(this,"lvlLabel",this.lvlLabel);
         return _loc1_;
      }
      
      private function _GridItemLockedSkin_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "levelLabel";
         _loc1_.id = "itemLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemLabel = _loc1_;
         BindingManager.executeBindings(this,"itemLabel",this.itemLabel);
         return _loc1_;
      }
      
      private function _GridItemLockedSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 6;
         _loc1_.dynaBmpSourceName = "architect_postit_blocked";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _GridItemLockedSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
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
      
      private function _GridItemLockedSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
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
      
      private function _GridItemLockedSkin_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.verticalCenter = -12;
         _loc1_.horizontalCenter = -2;
         _loc1_.dynaBmpSourceName = "architect_icon_blocked";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _GridItemLockedSkin_BriskMCDynaLib1_i() : BriskMCDynaLib
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
      
      public function ___GridItemLockedSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
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
      public function get lvlLabel() : LocaLabel
      {
         return this._238669838lvlLabel;
      }
      
      public function set lvlLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._238669838lvlLabel;
         if(_loc2_ !== param1)
         {
            this._238669838lvlLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lvlLabel",_loc2_,param1));
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

