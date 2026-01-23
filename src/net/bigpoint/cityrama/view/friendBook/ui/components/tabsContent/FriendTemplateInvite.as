package net.bigpoint.cityrama.view.friendBook.ui.components.tabsContent
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.cityrama.model.friends.FriendBookConstants;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.cityrama.view.common.components.StepMarkerBarComponent;
   import net.bigpoint.cityrama.view.friendBook.ui.components.FriendBonusLocked;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public class FriendTemplateInvite extends Group
   {
      
      private var _1333138097addFriendButton:MultistateButton;
      
      private var _2070966051addTeaserLabel:LocaLabel;
      
      private var _729754967emailInviteButton:MultistateButton;
      
      private var _1684755691flavorText:LocaLabel;
      
      private var _1115058732headline:LocaLabel;
      
      private var _1507772584headlineRight:LocaLabel;
      
      private var _1397419052incentiveGroup:VGroup;
      
      private var _2139048973stepMarkerBar:StepMarkerBarComponent;
      
      private var _1449803396teaserLabel:LocaLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _currentProggress:int = -3;
      
      public function FriendTemplateInvite()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mxmlContent = [this._FriendTemplateInvite_VGroup1_c()];
         this.addEventListener("creationComplete",this.___FriendTemplateInvite_Group1_creationComplete);
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
         this.flavorText.text = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.invite_flavor");
         this.headline.text = LocaUtils.getString("rcl.booklayer.treasury","rcl.booklayer.treasury.comingsoon").toUpperCase();
         this.headlineRight.text = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.inviteAddHeadline").toUpperCase();
         this.addTeaserLabel.text = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.inviteAddDescription");
         this.addFriendButton.label = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.inviteAddFriendButton").toUpperCase();
         this.teaserLabel.text = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.inviteMailToDescription");
         this.emailInviteButton.label = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.inviteMailToFriendButton").toUpperCase();
         this.addFriendButton.toolTip = LocaUtils.getString("rcl.tooltips.friendlist","rcl.tooltips.friendlist.invite.inviteingame.button");
         this.emailInviteButton.toolTip = LocaUtils.getString("rcl.tooltips.friendlist","rcl.tooltips.friendlist.invite.inviteemail.button");
      }
      
      private function onInviteTrigger(param1:Event = null) : void
      {
         var _loc2_:Event = new Event(FriendBookConstants.EVENT_FRIEND_BUTTON_INGAME_INVITE,true,false);
         dispatchEvent(_loc2_);
      }
      
      private function onEmailTrigger(param1:Event = null) : void
      {
         var _loc2_:Event = new Event(FriendBookConstants.EVENT_FRIEND_BUTTON_SLAYER_EMAIL,true,false);
         dispatchEvent(_loc2_);
      }
      
      private function handleIncentiveRewardClick() : void
      {
      }
      
      private function _FriendTemplateInvite_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._FriendTemplateInvite_Group2_c(),this._FriendTemplateInvite_HGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._FriendTemplateInvite_LocaLabel1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_LocaLabel1_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.width = 700;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.horizontalCenter = 0;
         _loc1_.styleName = "flavorText";
         _loc1_.id = "flavorText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.flavorText = _loc1_;
         BindingManager.executeBindings(this,"flavorText",this.flavorText);
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._FriendTemplateInvite_Group3_c(),this._FriendTemplateInvite_Group7_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._FriendTemplateInvite_BriskImageDynaLib1_c(),this._FriendTemplateInvite_VGroup2_i(),this._FriendTemplateInvite_BriskMCDynaLib1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_FriendBook";
         _loc1_.dynaBmpSourceName = "quadrillepaper_medium";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_VGroup2_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.top = 0;
         _loc1_.bottom = 0;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._FriendTemplateInvite_Group4_c(),this._FriendTemplateInvite_Group5_c(),this._FriendTemplateInvite_HGroup3_c(),this._FriendTemplateInvite_StepMarkerBarComponent1_i(),this._FriendTemplateInvite_Group6_c(),this._FriendTemplateInvite_LocaLabel3_i(),this._FriendTemplateInvite_MultistateButton1_i()];
         _loc1_.id = "incentiveGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.incentiveGroup = _loc1_;
         BindingManager.executeBindings(this,"incentiveGroup",this.incentiveGroup);
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 28;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 400;
         _loc1_.mxmlContent = [this._FriendTemplateInvite_HGroup2_c(),this._FriendTemplateInvite_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.width = 400;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._FriendTemplateInvite_BriskImageDynaLib2_c(),this._FriendTemplateInvite_BriskImageDynaLib3_c(),this._FriendTemplateInvite_BriskImageDynaLib4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_blueheadline_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_blueheadline_middle";
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_blueheadline_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_LocaLabel2_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.bottom = 6;
         _loc1_.horizontalCenter = 0;
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "friendPaperHeadlineWhite";
         _loc1_.id = "headline";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.headline = _loc1_;
         BindingManager.executeBindings(this,"headline",this.headline);
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 8;
         _loc1_.mxmlContent = [this._FriendTemplateInvite_FriendBonusLocked1_c(),this._FriendTemplateInvite_FriendBonusLocked2_c(),this._FriendTemplateInvite_FriendBonusLocked3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_FriendBonusLocked1_c() : FriendBonusLocked
      {
         var _loc1_:FriendBonusLocked = new FriendBonusLocked();
         _loc1_.addEventListener("click",this.___FriendTemplateInvite_FriendBonusLocked1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___FriendTemplateInvite_FriendBonusLocked1_click(param1:MouseEvent) : void
      {
         this.handleIncentiveRewardClick();
      }
      
      private function _FriendTemplateInvite_FriendBonusLocked2_c() : FriendBonusLocked
      {
         var _loc1_:FriendBonusLocked = new FriendBonusLocked();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_FriendBonusLocked3_c() : FriendBonusLocked
      {
         var _loc1_:FriendBonusLocked = new FriendBonusLocked();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_StepMarkerBarComponent1_i() : StepMarkerBarComponent
      {
         var _loc1_:StepMarkerBarComponent = new StepMarkerBarComponent();
         _loc1_.width = 400;
         _loc1_.id = "stepMarkerBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.stepMarkerBar = _loc1_;
         BindingManager.executeBindings(this,"stepMarkerBar",this.stepMarkerBar);
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 6;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_LocaLabel3_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.horizontalCenter = 0;
         _loc1_.width = 320;
         _loc1_.maxDisplayedLines = 2;
         _loc1_.styleName = "friendNameOwnLabel";
         _loc1_.id = "teaserLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.teaserLabel = _loc1_;
         BindingManager.executeBindings(this,"teaserLabel",this.teaserLabel);
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 204;
         _loc1_.imageNameLeft = "button_icon_friend";
         _loc1_.libNameLeft = "gui_popups_FriendBook";
         _loc1_.addEventListener("click",this.__emailInviteButton_click);
         _loc1_.id = "emailInviteButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.emailInviteButton = _loc1_;
         BindingManager.executeBindings(this,"emailInviteButton",this.emailInviteButton);
         return _loc1_;
      }
      
      public function __emailInviteButton_click(param1:MouseEvent) : void
      {
         this.onEmailTrigger(param1);
      }
      
      private function _FriendTemplateInvite_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.top = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaMCSourceName = "stickytape_top";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_Group7_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._FriendTemplateInvite_VGroup3_c(),this._FriendTemplateInvite_VGroup4_c(),this._FriendTemplateInvite_BriskMCDynaLib2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._FriendTemplateInvite_Group8_c(),this._FriendTemplateInvite_BriskImageDynaLib5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_Group8_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 3;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_residentialPopup";
         _loc1_.dynaBmpSourceName = "quadrillepaper_bg";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_VGroup4_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.top = 0;
         _loc1_.bottom = 0;
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._FriendTemplateInvite_Group9_c(),this._FriendTemplateInvite_Group10_c(),this._FriendTemplateInvite_Group11_c(),this._FriendTemplateInvite_LocaLabel5_i(),this._FriendTemplateInvite_Group12_c(),this._FriendTemplateInvite_MultistateButton2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_Group9_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 28;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_Group10_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 200;
         _loc1_.mxmlContent = [this._FriendTemplateInvite_HGroup4_c(),this._FriendTemplateInvite_LocaLabel4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.width = 200;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._FriendTemplateInvite_BriskImageDynaLib6_c(),this._FriendTemplateInvite_BriskImageDynaLib7_c(),this._FriendTemplateInvite_BriskImageDynaLib8_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_blueheadline_left";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_blueheadline_middle";
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_questPopup";
         _loc1_.dynaBmpSourceName = "quest_blueheadline_right";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_LocaLabel4_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.bottom = 6;
         _loc1_.horizontalCenter = 0;
         _loc1_.maxDisplayedLines = 1;
         _loc1_.styleName = "friendPaperHeadlineWhite";
         _loc1_.id = "headlineRight";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.headlineRight = _loc1_;
         BindingManager.executeBindings(this,"headlineRight",this.headlineRight);
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_Group11_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 6;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_LocaLabel5_i() : LocaLabel
      {
         var _loc1_:LocaLabel = new LocaLabel();
         _loc1_.width = 200;
         _loc1_.horizontalCenter = 0;
         _loc1_.maxDisplayedLines = 3;
         _loc1_.styleName = "optionsLabel";
         _loc1_.id = "addTeaserLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.addTeaserLabel = _loc1_;
         BindingManager.executeBindings(this,"addTeaserLabel",this.addTeaserLabel);
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_Group12_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 20;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_MultistateButton2_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.width = 204;
         _loc1_.imageNameLeft = "button_icon_addfriend";
         _loc1_.libNameLeft = "gui_popups_FriendBook";
         _loc1_.addEventListener("click",this.__addFriendButton_click);
         _loc1_.id = "addFriendButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.addFriendButton = _loc1_;
         BindingManager.executeBindings(this,"addFriendButton",this.addFriendButton);
         return _loc1_;
      }
      
      public function __addFriendButton_click(param1:MouseEvent) : void
      {
         this.onInviteTrigger(param1);
      }
      
      private function _FriendTemplateInvite_BriskMCDynaLib2_c() : BriskMCDynaLib
      {
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.top = 0;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaMCSourceName = "stickytape_top";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___FriendTemplateInvite_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.handleCreationComplete(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get addFriendButton() : MultistateButton
      {
         return this._1333138097addFriendButton;
      }
      
      public function set addFriendButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._1333138097addFriendButton;
         if(_loc2_ !== param1)
         {
            this._1333138097addFriendButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addFriendButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get addTeaserLabel() : LocaLabel
      {
         return this._2070966051addTeaserLabel;
      }
      
      public function set addTeaserLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._2070966051addTeaserLabel;
         if(_loc2_ !== param1)
         {
            this._2070966051addTeaserLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addTeaserLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get emailInviteButton() : MultistateButton
      {
         return this._729754967emailInviteButton;
      }
      
      public function set emailInviteButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._729754967emailInviteButton;
         if(_loc2_ !== param1)
         {
            this._729754967emailInviteButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"emailInviteButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get flavorText() : LocaLabel
      {
         return this._1684755691flavorText;
      }
      
      public function set flavorText(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1684755691flavorText;
         if(_loc2_ !== param1)
         {
            this._1684755691flavorText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavorText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get headline() : LocaLabel
      {
         return this._1115058732headline;
      }
      
      public function set headline(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1115058732headline;
         if(_loc2_ !== param1)
         {
            this._1115058732headline = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headline",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get headlineRight() : LocaLabel
      {
         return this._1507772584headlineRight;
      }
      
      public function set headlineRight(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1507772584headlineRight;
         if(_loc2_ !== param1)
         {
            this._1507772584headlineRight = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headlineRight",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get incentiveGroup() : VGroup
      {
         return this._1397419052incentiveGroup;
      }
      
      public function set incentiveGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._1397419052incentiveGroup;
         if(_loc2_ !== param1)
         {
            this._1397419052incentiveGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"incentiveGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stepMarkerBar() : StepMarkerBarComponent
      {
         return this._2139048973stepMarkerBar;
      }
      
      public function set stepMarkerBar(param1:StepMarkerBarComponent) : void
      {
         var _loc2_:Object = this._2139048973stepMarkerBar;
         if(_loc2_ !== param1)
         {
            this._2139048973stepMarkerBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stepMarkerBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get teaserLabel() : LocaLabel
      {
         return this._1449803396teaserLabel;
      }
      
      public function set teaserLabel(param1:LocaLabel) : void
      {
         var _loc2_:Object = this._1449803396teaserLabel;
         if(_loc2_ !== param1)
         {
            this._1449803396teaserLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"teaserLabel",_loc2_,param1));
            }
         }
      }
   }
}

