package net.bigpoint.cityrama.view.common.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.RewardItemComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.skins.SparkSkin;
   
   public class RewardItemSmallSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1628856716buffMultiplier:BriskImageDynaLib;
      
      private var _2074527203cardBoardGfx:BriskImageDynaLib;
      
      private var _3242771item:BriskImageDynaLib;
      
      private var _1184053038labelDisplay:LocaLabel;
      
      private var _1844873785newIcon:BriskImageDynaLib;
      
      private var _2121281877pricingBg:BriskImageDynaLib;
      
      private var _1557790047pricingIcon:BriskImageDynaLib;
      
      private var _191188508qualityBadge:BriskImageDynaLib;
      
      private var _1177829717stickyTape:BriskMCDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:RewardItemComponent;
      
      public function RewardItemSmallSkin()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._RewardItemSmallSkin_Group1_c()];
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
      
      private function _RewardItemSmallSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 160;
         _loc1_.width = 115;
         _loc1_.mxmlContent = [this._RewardItemSmallSkin_Group2_c(),this._RewardItemSmallSkin_BriskImageDynaLib3_i(),this._RewardItemSmallSkin_BriskMCDynaLib1_i(),this._RewardItemSmallSkin_BriskImageDynaLib4_i(),this._RewardItemSmallSkin_Group4_c(),this._RewardItemSmallSkin_BriskImageDynaLib6_i(),this._RewardItemSmallSkin_BriskImageDynaLib7_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RewardItemSmallSkin_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.bottom = 0;
         _loc1_.height = 65;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._RewardItemSmallSkin_Group3_c(),this._RewardItemSmallSkin_HGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RewardItemSmallSkin_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 3;
         _loc1_.bottom = 15;
         _loc1_.mxmlContent = [this._RewardItemSmallSkin_BriskImageDynaLib1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RewardItemSmallSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.left = 2;
         _loc1_.verticalCenter = 0;
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "rewardcomponentPriceBg_small";
         _loc1_.id = "pricingBg";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.pricingBg = _loc1_;
         BindingManager.executeBindings(this,"pricingBg",this.pricingBg);
         return _loc1_;
      }
      
      private function _RewardItemSmallSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.height = 25;
         _loc1_.bottom = 17;
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._RewardItemSmallSkin_LocaLabel1_i(),this._RewardItemSmallSkin_BriskImageDynaLib2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RewardItemSmallSkin_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.verticalCenter = 3;
         _loc1_.id = "labelDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.labelDisplay = _loc1_;
         BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
         return _loc1_;
      }
      
      private function _RewardItemSmallSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.verticalCenter = 0;
         _loc1_.id = "pricingIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.pricingIcon = _loc1_;
         BindingManager.executeBindings(this,"pricingIcon",this.pricingIcon);
         return _loc1_;
      }
      
      private function _RewardItemSmallSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.top = 6;
         _loc1_.id = "cardBoardGfx";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.cardBoardGfx = _loc1_;
         BindingManager.executeBindings(this,"cardBoardGfx",this.cardBoardGfx);
         return _loc1_;
      }
      
      private function _RewardItemSmallSkin_BriskMCDynaLib1_i() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickytape_top";
         _loc1_.percentWidth = 80;
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 0;
         _loc1_.id = "stickyTape";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.stickyTape = _loc1_;
         BindingManager.executeBindings(this,"stickyTape",this.stickyTape);
         return _loc1_;
      }
      
      private function _RewardItemSmallSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaBmpSourceName = "hip_badge_common_small";
         _loc1_.top = 6;
         _loc1_.left = 2;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "qualityBadge";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.qualityBadge = _loc1_;
         BindingManager.executeBindings(this,"qualityBadge",this.qualityBadge);
         return _loc1_;
      }
      
      private function _RewardItemSmallSkin_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._RewardItemSmallSkin_BriskImageDynaLib5_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _RewardItemSmallSkin_BriskImageDynaLib5_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = -20;
         _loc1_.id = "item";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.item = _loc1_;
         BindingManager.executeBindings(this,"item",this.item);
         return _loc1_;
      }
      
      private function _RewardItemSmallSkin_BriskImageDynaLib6_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.top = 0;
         _loc1_.right = 0;
         _loc1_.dynaBmpSourceName = "new_icon";
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.id = "newIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.newIcon = _loc1_;
         BindingManager.executeBindings(this,"newIcon",this.newIcon);
         return _loc1_;
      }
      
      private function _RewardItemSmallSkin_BriskImageDynaLib7_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.top = -1;
         _loc1_.right = 0;
         _loc1_.dynaBmpSourceName = "buff_16_small";
         _loc1_.dynaLibName = "gui_popups_citywheel";
         _loc1_.id = "buffMultiplier";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.buffMultiplier = _loc1_;
         BindingManager.executeBindings(this,"buffMultiplier",this.buffMultiplier);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get buffMultiplier() : BriskImageDynaLib
      {
         return this._1628856716buffMultiplier;
      }
      
      public function set buffMultiplier(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1628856716buffMultiplier;
         if(_loc2_ !== param1)
         {
            this._1628856716buffMultiplier = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buffMultiplier",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cardBoardGfx() : BriskImageDynaLib
      {
         return this._2074527203cardBoardGfx;
      }
      
      public function set cardBoardGfx(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._2074527203cardBoardGfx;
         if(_loc2_ !== param1)
         {
            this._2074527203cardBoardGfx = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cardBoardGfx",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get item() : BriskImageDynaLib
      {
         return this._3242771item;
      }
      
      public function set item(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._3242771item;
         if(_loc2_ !== param1)
         {
            this._3242771item = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get labelDisplay() : LocaLabel
      {
         return this._1184053038labelDisplay;
      }
      
      public function set labelDisplay(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1184053038labelDisplay;
         if(_loc2_ !== param1)
         {
            this._1184053038labelDisplay = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelDisplay",_loc2_,param1));
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
      public function get pricingBg() : BriskImageDynaLib
      {
         return this._2121281877pricingBg;
      }
      
      public function set pricingBg(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._2121281877pricingBg;
         if(_loc2_ !== param1)
         {
            this._2121281877pricingBg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pricingBg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pricingIcon() : BriskImageDynaLib
      {
         return this._1557790047pricingIcon;
      }
      
      public function set pricingIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1557790047pricingIcon;
         if(_loc2_ !== param1)
         {
            this._1557790047pricingIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pricingIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get qualityBadge() : BriskImageDynaLib
      {
         return this._191188508qualityBadge;
      }
      
      public function set qualityBadge(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._191188508qualityBadge;
         if(_loc2_ !== param1)
         {
            this._191188508qualityBadge = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"qualityBadge",_loc2_,param1));
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
      public function get hostComponent() : RewardItemComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:RewardItemComponent) : void
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

