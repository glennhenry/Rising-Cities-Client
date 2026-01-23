package net.bigpoint.cityrama.view.friendBook.ui.components
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
   import net.bigpoint.cityrama.view.common.components.MultistateButton;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   
   public class FriendADDComponent extends Group
   {
      
      private var _177606215infoIcon:BriskImageDynaLib;
      
      private var _198043749inviteButton:MultistateButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function FriendADDComponent()
      {
         super();
         mx_internal::_document = this;
         this.width = 134;
         this.height = 163;
         this.mxmlContent = [this._FriendADDComponent_Group2_c()];
         this.addEventListener("creationComplete",this.___FriendADDComponent_Group1_creationComplete);
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
      
      private function onInviteTrigger(param1:Event = null) : void
      {
         var _loc2_:Event = new Event(FriendBookConstants.EVENT_FRIEND_BUTTON_INGAME_INVITE,true,false);
         dispatchEvent(_loc2_);
      }
      
      private function onCreationComplete(param1:FlexEvent) : void
      {
         this.inviteButton.toolTip = LocaUtils.getString("rcl.tooltips.friendlist","rcl.tooltips.friendlist.overview.add");
      }
      
      private function _FriendADDComponent_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._FriendADDComponent_BriskImageDynaLib1_c(),this._FriendADDComponent_BriskImageDynaLib2_c(),this._FriendADDComponent_BriskImageDynaLib3_i(),this._FriendADDComponent_BriskMCDynaLib1_c(),this._FriendADDComponent_MultistateButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendADDComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_FriendBook";
         _loc1_.dynaBmpSourceName = "postit_bg_blue";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _FriendADDComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "gui_popups_FriendBook";
         _loc1_.top = 6;
         _loc1_.horizontalCenter = 0;
         _loc1_.dynaBmpSourceName = "polaroid_addfriend";
         _loc1_.addEventListener("click",this.___FriendADDComponent_BriskImageDynaLib2_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___FriendADDComponent_BriskImageDynaLib2_click(param1:MouseEvent) : void
      {
         this.onInviteTrigger();
      }
      
      private function _FriendADDComponent_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.mouseEnabled = false;
         _loc1_.dynaLibName = "gui_popups_paperPopup";
         _loc1_.bottom = 56;
         _loc1_.right = 21;
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
      
      private function _FriendADDComponent_BriskMCDynaLib1_c() : BriskMCDynaLib
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
      
      private function _FriendADDComponent_MultistateButton1_i() : MultistateButton
      {
         var _loc1_:MultistateButton = new MultistateButton();
         _loc1_.useSmallSkin = true;
         _loc1_.horizontalCenter = 0;
         _loc1_.bottom = 6;
         _loc1_.width = 82;
         _loc1_.imageNameLeft = "button_icon_positive";
         _loc1_.libNameLeft = "gui_popups_shopBook";
         _loc1_.addEventListener("click",this.__inviteButton_click);
         _loc1_.id = "inviteButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.inviteButton = _loc1_;
         BindingManager.executeBindings(this,"inviteButton",this.inviteButton);
         return _loc1_;
      }
      
      public function __inviteButton_click(param1:MouseEvent) : void
      {
         this.onInviteTrigger();
      }
      
      public function ___FriendADDComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.onCreationComplete(param1);
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
      public function get inviteButton() : MultistateButton
      {
         return this._198043749inviteButton;
      }
      
      public function set inviteButton(param1:MultistateButton) : void
      {
         var _loc2_:Object = this._198043749inviteButton;
         if(_loc2_ !== param1)
         {
            this._198043749inviteButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inviteButton",_loc2_,param1));
            }
         }
      }
   }
}

