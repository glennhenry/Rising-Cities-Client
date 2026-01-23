package net.bigpoint.cityrama.view.friendBook.ui.skins
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.resources.ResourceManager;
   import mx.states.State;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.friendBook.ui.components.FriendBookPaperPopupWindow;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.skins.SparkSkin;
   
   public class FriendBookPaperPopupSkin extends SparkSkin implements IStateClient2
   {
      
      private var _1022398728actionButton:Button;
      
      private var _1629589545actionButton1:Button;
      
      private var _1629589546actionButton2:Button;
      
      private var _1906413305backButton:DynamicImageButton;
      
      private var _312699062closeButton:DynamicImageButton;
      
      private var _809612678contentGroup:Group;
      
      private var _104976386moveArea:Group;
      
      private var _216916822sideMenu:Group;
      
      private var _881418178tabBar:BriskImageDynaLib;
      
      private var _1133061742tabOneGroup:HGroup;
      
      private var _1210330454tabOneIcon:BriskImageDynaLib;
      
      private var _1137159907tabOneLabel:LocaLabel;
      
      private var _2077196541tabThreGroup:HGroup;
      
      private var _625775477tabThreIcon:BriskImageDynaLib;
      
      private var _2073098376tabThreLabel:LocaLabel;
      
      private var _941068872tabTwoGroup:HGroup;
      
      private var _800881776tabTwoIcon:BriskImageDynaLib;
      
      private var _945167037tabTwoLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _menueTab:int = 1;
      
      private var _dirty:Boolean;
      
      private var _213507019hostComponent:FriendBookPaperPopupWindow;
      
      public function FriendBookPaperPopupSkin()
      {
         super();
         mx_internal::_document = this;
         this.width = 785;
         this.height = 430;
         this.mxmlContent = [this._FriendBookPaperPopupSkin_Group1_i(),this._FriendBookPaperPopupSkin_Group2_c()];
         this.currentState = "normal";
         this.addEventListener("creationComplete",this.___FriendBookPaperPopupSkin_SparkSkin1_creationComplete);
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[]
         }),new State({
            "name":"inactive",
            "overrides":[]
         }),new State({
            "name":"disabledWithControlBar",
            "overrides":[]
         }),new State({
            "name":"normalWithControlBar",
            "overrides":[]
         }),new State({
            "name":"inactiveWithControlBar",
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
      
      private function init() : void
      {
         var _loc1_:uint = 16754688;
         if(getStyle("titleColor"))
         {
            _loc1_ = uint(getStyle("titleColor"));
         }
         this.tabOneLabel.text = ResourceManager.getInstance().getString(String("rcl.booklayer.friendbook"),String("rcl.booklayer.friendbook.inviteFriendsTab"));
         this.tabTwoLabel.text = ResourceManager.getInstance().getString(String("rcl.booklayer.friendbook"),String("rcl.booklayer.friendbook.inviteTab"));
         this.tabThreLabel.text = ResourceManager.getInstance().getString(String("rcl.booklayer.friendbook"),String("rcl.booklayer.friendbook.friendMessageTab"));
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._dirty)
         {
            if(this._menueTab == 1)
            {
               this.tabBar.dynaBmpSourceName = "layerbase_top_tab_friends";
            }
            else if(this._menueTab == 2)
            {
               this.tabBar.dynaBmpSourceName = "layerbase_top_tab_addfriends";
            }
            else
            {
               this.tabBar.dynaBmpSourceName = "layerbase_top_tab_messages";
            }
         }
      }
      
      public function resetToFriend_TAB() : void
      {
         this._menueTab = 1;
         this._dirty = true;
         invalidateProperties();
      }
      
      public function clickAction1(param1:Event = null) : void
      {
         this._menueTab = 1;
         this._dirty = true;
         invalidateProperties();
      }
      
      public function clickAction2(param1:Event = null) : void
      {
         dispatchEvent(new Event("callMessaging",true,true));
      }
      
      public function clickAction(param1:Event = null) : void
      {
         this._menueTab = 2;
         this._dirty = true;
         invalidateProperties();
      }
      
      private function _FriendBookPaperPopupSkin_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 765;
         _loc1_.width = 80;
         _loc1_.top = 30;
         _loc1_.bottom = 18;
         _loc1_.id = "sideMenu";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.sideMenu = _loc1_;
         BindingManager.executeBindings(this,"sideMenu",this.sideMenu);
         return _loc1_;
      }
      
      private function _FriendBookPaperPopupSkin_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._FriendBookPaperPopupSkin_Group3_c(),this._FriendBookPaperPopupSkin_Group6_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendBookPaperPopupSkin_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 785;
         _loc1_.height = 437;
         _loc1_.bottom = 0;
         _loc1_.mxmlContent = [this._FriendBookPaperPopupSkin_VGroup1_c(),this._FriendBookPaperPopupSkin_Group5_i(),this._FriendBookPaperPopupSkin_DynamicImageButton1_i(),this._FriendBookPaperPopupSkin_DynamicImageButton2_i(),this._FriendBookPaperPopupSkin_Button1_i(),this._FriendBookPaperPopupSkin_Button2_i(),this._FriendBookPaperPopupSkin_Button3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendBookPaperPopupSkin_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._FriendBookPaperPopupSkin_Group4_c(),this._FriendBookPaperPopupSkin_BriskImageDynaLib5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendBookPaperPopupSkin_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._FriendBookPaperPopupSkin_BriskImageDynaLib1_i(),this._FriendBookPaperPopupSkin_HGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendBookPaperPopupSkin_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_FriendBook";
         _loc1_.dynaBmpSourceName = "layerbase_top_tab_friends";
         _loc1_.width = 785;
         _loc1_.height = 41;
         _loc1_.id = "tabBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.tabBar = _loc1_;
         BindingManager.executeBindings(this,"tabBar",this.tabBar);
         return _loc1_;
      }
      
      private function _FriendBookPaperPopupSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.paddingLeft = 20;
         _loc1_.paddingTop = 2;
         _loc1_.mxmlContent = [this._FriendBookPaperPopupSkin_HGroup2_i(),this._FriendBookPaperPopupSkin_HGroup3_i(),this._FriendBookPaperPopupSkin_HGroup4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendBookPaperPopupSkin_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.paddingLeft = 10;
         _loc1_.paddingTop = 4;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "left";
         _loc1_.mxmlContent = [this._FriendBookPaperPopupSkin_BriskImageDynaLib2_i(),this._FriendBookPaperPopupSkin_LocaLabel1_i()];
         _loc1_.id = "tabOneGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.tabOneGroup = _loc1_;
         BindingManager.executeBindings(this,"tabOneGroup",this.tabOneGroup);
         return _loc1_;
      }
      
      private function _FriendBookPaperPopupSkin_BriskImageDynaLib2_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_FriendBook";
         _loc1_.dynaBmpSourceName = "tabicon_friendsglobal";
         _loc1_.id = "tabOneIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.tabOneIcon = _loc1_;
         BindingManager.executeBindings(this,"tabOneIcon",this.tabOneIcon);
         return _loc1_;
      }
      
      private function _FriendBookPaperPopupSkin_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.text = "FREUNDE";
         _loc1_.width = 150;
         _loc1_.maxHeight = 13;
         _loc1_.styleName = "friendbookMenue";
         _loc1_.setStyle("verticalAlign","bottom");
         _loc1_.id = "tabOneLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.tabOneLabel = _loc1_;
         BindingManager.executeBindings(this,"tabOneLabel",this.tabOneLabel);
         return _loc1_;
      }
      
      private function _FriendBookPaperPopupSkin_HGroup3_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.paddingLeft = -1;
         _loc1_.paddingTop = 4;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "left";
         _loc1_.mxmlContent = [this._FriendBookPaperPopupSkin_BriskImageDynaLib3_i(),this._FriendBookPaperPopupSkin_LocaLabel2_i()];
         _loc1_.id = "tabTwoGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.tabTwoGroup = _loc1_;
         BindingManager.executeBindings(this,"tabTwoGroup",this.tabTwoGroup);
         return _loc1_;
      }
      
      private function _FriendBookPaperPopupSkin_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_FriendBook";
         _loc1_.dynaBmpSourceName = "tabicon_friendsadd";
         _loc1_.id = "tabTwoIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.tabTwoIcon = _loc1_;
         BindingManager.executeBindings(this,"tabTwoIcon",this.tabTwoIcon);
         return _loc1_;
      }
      
      private function _FriendBookPaperPopupSkin_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.text = "EINLADEN";
         _loc1_.width = 150;
         _loc1_.maxHeight = 13;
         _loc1_.styleName = "friendbookMenue";
         _loc1_.setStyle("verticalAlign","bottom");
         _loc1_.id = "tabTwoLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.tabTwoLabel = _loc1_;
         BindingManager.executeBindings(this,"tabTwoLabel",this.tabTwoLabel);
         return _loc1_;
      }
      
      private function _FriendBookPaperPopupSkin_HGroup4_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.paddingLeft = -1;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalAlign = "left";
         _loc1_.paddingTop = 10;
         _loc1_.mxmlContent = [this._FriendBookPaperPopupSkin_BriskImageDynaLib4_i(),this._FriendBookPaperPopupSkin_LocaLabel3_i()];
         _loc1_.id = "tabThreGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.tabThreGroup = _loc1_;
         BindingManager.executeBindings(this,"tabThreGroup",this.tabThreGroup);
         return _loc1_;
      }
      
      private function _FriendBookPaperPopupSkin_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_FriendBook";
         _loc1_.dynaBmpSourceName = "icon_tab_letter";
         _loc1_.id = "tabThreIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.tabThreIcon = _loc1_;
         BindingManager.executeBindings(this,"tabThreIcon",this.tabThreIcon);
         return _loc1_;
      }
      
      private function _FriendBookPaperPopupSkin_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.text = "MESSAGES";
         _loc1_.width = 150;
         _loc1_.maxHeight = 13;
         _loc1_.styleName = "friendbookMenue";
         _loc1_.setStyle("verticalAlign","bottom");
         _loc1_.id = "tabThreLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.tabThreLabel = _loc1_;
         BindingManager.executeBindings(this,"tabThreLabel",this.tabThreLabel);
         return _loc1_;
      }
      
      private function _FriendBookPaperPopupSkin_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_FriendBook";
         _loc1_.dynaBmpSourceName = "layerbase_bottom";
         _loc1_.width = 785;
         _loc1_.height = 396;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendBookPaperPopupSkin_Group5_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 25;
         _loc1_.right = 25;
         _loc1_.top = 20;
         _loc1_.bottom = 18;
         _loc1_.id = "contentGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.contentGroup = _loc1_;
         BindingManager.executeBindings(this,"contentGroup",this.contentGroup);
         return _loc1_;
      }
      
      private function _FriendBookPaperPopupSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "back";
         _loc1_.top = 39;
         _loc1_.left = 20;
         _loc1_.visible = false;
         _loc1_.id = "backButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.backButton = _loc1_;
         BindingManager.executeBindings(this,"backButton",this.backButton);
         return _loc1_;
      }
      
      private function _FriendBookPaperPopupSkin_DynamicImageButton2_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.styleName = "close";
         _loc1_.top = 34;
         _loc1_.right = 20;
         _loc1_.id = "closeButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.closeButton = _loc1_;
         BindingManager.executeBindings(this,"closeButton",this.closeButton);
         return _loc1_;
      }
      
      private function _FriendBookPaperPopupSkin_Button1_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.top = 0;
         _loc1_.left = 15;
         _loc1_.alpha = 0;
         _loc1_.height = 32;
         _loc1_.width = 178;
         _loc1_.addEventListener("click",this.__actionButton1_click);
         _loc1_.id = "actionButton1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.actionButton1 = _loc1_;
         BindingManager.executeBindings(this,"actionButton1",this.actionButton1);
         return _loc1_;
      }
      
      public function __actionButton1_click(param1:MouseEvent) : void
      {
         this.clickAction1(param1);
      }
      
      private function _FriendBookPaperPopupSkin_Button2_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.top = 0;
         _loc1_.left = 200;
         _loc1_.alpha = 0;
         _loc1_.height = 32;
         _loc1_.width = 178;
         _loc1_.addEventListener("click",this.__actionButton_click);
         _loc1_.id = "actionButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.actionButton = _loc1_;
         BindingManager.executeBindings(this,"actionButton",this.actionButton);
         return _loc1_;
      }
      
      public function __actionButton_click(param1:MouseEvent) : void
      {
         this.clickAction(param1);
      }
      
      private function _FriendBookPaperPopupSkin_Button3_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.top = 0;
         _loc1_.left = 370;
         _loc1_.alpha = 0;
         _loc1_.height = 32;
         _loc1_.width = 178;
         _loc1_.addEventListener("click",this.__actionButton2_click);
         _loc1_.id = "actionButton2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.actionButton2 = _loc1_;
         BindingManager.executeBindings(this,"actionButton2",this.actionButton2);
         return _loc1_;
      }
      
      public function __actionButton2_click(param1:MouseEvent) : void
      {
         this.clickAction2(param1);
      }
      
      private function _FriendBookPaperPopupSkin_Group6_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.top = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "moveArea";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.moveArea = _loc1_;
         BindingManager.executeBindings(this,"moveArea",this.moveArea);
         return _loc1_;
      }
      
      public function ___FriendBookPaperPopupSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         this.init();
      }
      
      [Bindable(event="propertyChange")]
      public function get actionButton() : Button
      {
         return this._1022398728actionButton;
      }
      
      public function set actionButton(param1:Button) : void
      {
         var _loc2_:Object = this._1022398728actionButton;
         if(_loc2_ !== param1)
         {
            this._1022398728actionButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actionButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get actionButton1() : Button
      {
         return this._1629589545actionButton1;
      }
      
      public function set actionButton1(param1:Button) : void
      {
         var _loc2_:Object = this._1629589545actionButton1;
         if(_loc2_ !== param1)
         {
            this._1629589545actionButton1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actionButton1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get actionButton2() : Button
      {
         return this._1629589546actionButton2;
      }
      
      public function set actionButton2(param1:Button) : void
      {
         var _loc2_:Object = this._1629589546actionButton2;
         if(_loc2_ !== param1)
         {
            this._1629589546actionButton2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actionButton2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get backButton() : DynamicImageButton
      {
         return this._1906413305backButton;
      }
      
      public function set backButton(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._1906413305backButton;
         if(_loc2_ !== param1)
         {
            this._1906413305backButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get closeButton() : DynamicImageButton
      {
         return this._312699062closeButton;
      }
      
      public function set closeButton(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._312699062closeButton;
         if(_loc2_ !== param1)
         {
            this._312699062closeButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"closeButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get contentGroup() : Group
      {
         return this._809612678contentGroup;
      }
      
      public function set contentGroup(param1:Group) : void
      {
         var _loc2_:Object = this._809612678contentGroup;
         if(_loc2_ !== param1)
         {
            this._809612678contentGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get moveArea() : Group
      {
         return this._104976386moveArea;
      }
      
      public function set moveArea(param1:Group) : void
      {
         var _loc2_:Object = this._104976386moveArea;
         if(_loc2_ !== param1)
         {
            this._104976386moveArea = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moveArea",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sideMenu() : Group
      {
         return this._216916822sideMenu;
      }
      
      public function set sideMenu(param1:Group) : void
      {
         var _loc2_:Object = this._216916822sideMenu;
         if(_loc2_ !== param1)
         {
            this._216916822sideMenu = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sideMenu",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBar() : BriskImageDynaLib
      {
         return this._881418178tabBar;
      }
      
      public function set tabBar(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._881418178tabBar;
         if(_loc2_ !== param1)
         {
            this._881418178tabBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabOneGroup() : HGroup
      {
         return this._1133061742tabOneGroup;
      }
      
      public function set tabOneGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._1133061742tabOneGroup;
         if(_loc2_ !== param1)
         {
            this._1133061742tabOneGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabOneGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabOneIcon() : BriskImageDynaLib
      {
         return this._1210330454tabOneIcon;
      }
      
      public function set tabOneIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1210330454tabOneIcon;
         if(_loc2_ !== param1)
         {
            this._1210330454tabOneIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabOneIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabOneLabel() : LocaLabel
      {
         return this._1137159907tabOneLabel;
      }
      
      public function set tabOneLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1137159907tabOneLabel;
         if(_loc2_ !== param1)
         {
            this._1137159907tabOneLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabOneLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabThreGroup() : HGroup
      {
         return this._2077196541tabThreGroup;
      }
      
      public function set tabThreGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._2077196541tabThreGroup;
         if(_loc2_ !== param1)
         {
            this._2077196541tabThreGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabThreGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabThreIcon() : BriskImageDynaLib
      {
         return this._625775477tabThreIcon;
      }
      
      public function set tabThreIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._625775477tabThreIcon;
         if(_loc2_ !== param1)
         {
            this._625775477tabThreIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabThreIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabThreLabel() : LocaLabel
      {
         return this._2073098376tabThreLabel;
      }
      
      public function set tabThreLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._2073098376tabThreLabel;
         if(_loc2_ !== param1)
         {
            this._2073098376tabThreLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabThreLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabTwoGroup() : HGroup
      {
         return this._941068872tabTwoGroup;
      }
      
      public function set tabTwoGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._941068872tabTwoGroup;
         if(_loc2_ !== param1)
         {
            this._941068872tabTwoGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabTwoGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabTwoIcon() : BriskImageDynaLib
      {
         return this._800881776tabTwoIcon;
      }
      
      public function set tabTwoIcon(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._800881776tabTwoIcon;
         if(_loc2_ !== param1)
         {
            this._800881776tabTwoIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabTwoIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabTwoLabel() : LocaLabel
      {
         return this._945167037tabTwoLabel;
      }
      
      public function set tabTwoLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._945167037tabTwoLabel;
         if(_loc2_ !== param1)
         {
            this._945167037tabTwoLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabTwoLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : FriendBookPaperPopupWindow
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:FriendBookPaperPopupWindow) : void
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

