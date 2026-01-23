package net.bigpoint.cityrama.view.friendBook.ui.skins
{
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.friendBook.ui.components.FriendLevelStarComponent;
   import net.bigpoint.cityrama.view.friendBook.ui.components.GridItemFriendBookComponent;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class GridItemFriendBookNormalOwn extends SparkSkin implements IStateClient2
   {
      
      private var _1299216927backgroundPrint:BriskImageDynaLib;
      
      private var _292147534costGroup:Group;
      
      private var _2096547611friendLevelStarComponent:FriendLevelStarComponent;
      
      private var _100313435image:BriskImageDynaLib;
      
      private var _177606215infoIcon:BriskImageDynaLib;
      
      private var _2135689121itemLabel:LocaLabel;
      
      private var _1844873785newIcon:BriskImageDynaLib;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:GridItemFriendBookComponent;
      
      public function GridItemFriendBookNormalOwn()
      {
         super();
         mx_internal::_document = this;
         this.width = 132;
         this.height = 160;
         this.mxmlContent = [this._GridItemFriendBookNormalOwn_HGroup1_c()];
         this.currentState = "up";
         this.addEventListener("creationComplete",this.___GridItemFriendBookNormalOwn_SparkSkin1_creationComplete);
         states = [new State({
            "name":"up",
            "overrides":[]
         }),new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"over",
            "overrides":[]
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
      }
      
      override protected function measure() : void
      {
         super.measure();
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
      }
      
      private function _GridItemFriendBookNormalOwn_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._GridItemFriendBookNormalOwn_Group1_c(),this._GridItemFriendBookNormalOwn_VGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _GridItemFriendBookNormalOwn_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 8;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _GridItemFriendBookNormalOwn_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.mxmlContent = [this._GridItemFriendBookNormalOwn_Group2_c(),this._GridItemFriendBookNormalOwn_Group3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _GridItemFriendBookNormalOwn_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 20;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _GridItemFriendBookNormalOwn_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._GridItemFriendBookNormalOwn_Group4_i(),this._GridItemFriendBookNormalOwn_BriskImageDynaLib1_i(),this._GridItemFriendBookNormalOwn_BriskImageDynaLib2_i(),this._GridItemFriendBookNormalOwn_BriskImageDynaLib3_i(),this._GridItemFriendBookNormalOwn_BriskMCDynaLib2_c(),this._GridItemFriendBookNormalOwn_FriendLevelStarComponent1_i(),this._GridItemFriendBookNormalOwn_BriskImageDynaLib4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _GridItemFriendBookNormalOwn_Group4_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.bottom = -20;
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._GridItemFriendBookNormalOwn_BriskMCDynaLib1_c(),this._GridItemFriendBookNormalOwn_VGroup2_c()];
         _loc1_.id = "costGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.costGroup = _loc1_;
         BindingManager.executeBindings(this,"costGroup",this.costGroup);
         return _loc1_;
      }
      
      private function _GridItemFriendBookNormalOwn_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.dynaMCSourceName = "stickyPaperCenterDetail";
         _loc1_.horizontalCenter = 0;
         _loc1_.bottom = 12;
         _loc1_.width = 104;
         _loc1_.height = 38;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _GridItemFriendBookNormalOwn_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 116;
         _loc1_.paddingTop = 4;
         _loc1_.height = 36;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._GridItemFriendBookNormalOwn_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _GridItemFriendBookNormalOwn_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.styleName = "friendNameLabel";
         _loc1_.maxWidth = 92;
         _loc1_.maxHeight = 28;
         _loc1_.bottom = -10;
         _loc1_.text = "peter Mann Grafenstein";
         _loc1_.id = "itemLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.itemLabel = _loc1_;
         BindingManager.executeBindings(this,"itemLabel",this.itemLabel);
         return _loc1_;
      }
      
      private function _GridItemFriendBookNormalOwn_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.horizontalCenter = 0;
         _loc1_.top = 6;
         _loc1_.id = "backgroundPrint";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.backgroundPrint = _loc1_;
         BindingManager.executeBindings(this,"backgroundPrint",this.backgroundPrint);
         return _loc1_;
      }
      
      private function _GridItemFriendBookNormalOwn_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_FriendBook";
         _loc1_.verticalCenter = -12;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaBmpSourceName = "polaroid_myself";
         _loc1_.id = "image";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.image = _loc1_;
         BindingManager.executeBindings(this,"image",this.image);
         return _loc1_;
      }
      
      private function _GridItemFriendBookNormalOwn_BriskImageDynaLib3_i() : BriskImageDynaLib
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
      
      private function _GridItemFriendBookNormalOwn_BriskMCDynaLib2_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.top = -3;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaMCSourceName = "stickytape_top";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _GridItemFriendBookNormalOwn_FriendLevelStarComponent1_i() : FriendLevelStarComponent
      {
         var _loc1_:FriendLevelStarComponent = new FriendLevelStarComponent();
         _loc1_.id = "friendLevelStarComponent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.friendLevelStarComponent = _loc1_;
         BindingManager.executeBindings(this,"friendLevelStarComponent",this.friendLevelStarComponent);
         return _loc1_;
      }
      
      private function _GridItemFriendBookNormalOwn_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.top = -8;
         _loc1_.right = 0;
         _loc1_.measuredWidth = 0;
         _loc1_.includeInLayout = false;
         _loc1_.visible = true;
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
      
      public function ___GridItemFriendBookNormalOwn_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get backgroundPrint() : BriskImageDynaLib
      {
         return this._1299216927backgroundPrint;
      }
      
      public function set backgroundPrint(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1299216927backgroundPrint;
         if(_loc2_ !== param1)
         {
            this._1299216927backgroundPrint = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backgroundPrint",_loc2_,param1));
            }
         }
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
      public function get friendLevelStarComponent() : FriendLevelStarComponent
      {
         return this._2096547611friendLevelStarComponent;
      }
      
      public function set friendLevelStarComponent(param1:FriendLevelStarComponent) : void
      {
         var _loc2_:Object = this._2096547611friendLevelStarComponent;
         if(_loc2_ !== param1)
         {
            this._2096547611friendLevelStarComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"friendLevelStarComponent",_loc2_,param1));
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
      public function get hostComponent() : GridItemFriendBookComponent
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:GridItemFriendBookComponent) : void
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

