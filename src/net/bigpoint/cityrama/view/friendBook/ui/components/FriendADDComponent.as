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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
            if(_loc2_ || _loc1_)
            {
               mx_internal::_document = this;
               if(!_loc1_)
               {
                  addr0042:
                  this.width = 134;
                  if(!(_loc1_ && _loc2_))
                  {
                     addr005f:
                     this.height = 163;
                     if(_loc2_)
                     {
                        §§goto(addr006a);
                     }
                     §§goto(addr0082);
                  }
               }
               addr006a:
               this.mxmlContent = [this._FriendADDComponent_Group2_c()];
               if(_loc2_ || Boolean(this))
               {
                  addr0082:
                  this.addEventListener("creationComplete",this.___FriendADDComponent_Group1_creationComplete);
               }
               return;
            }
            §§goto(addr005f);
         }
         §§goto(addr0042);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            super.moduleFactory = param1;
            if(_loc3_ || Boolean(this))
            {
               §§goto(addr0047);
            }
            §§goto(addr005d);
         }
         addr0047:
         if(this.__moduleFactoryInitialized)
         {
            if(_loc3_ || _loc2_)
            {
               addr005d:
               return;
            }
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super.initialize();
         }
      }
      
      private function onInviteTrigger(param1:Event = null) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Event = new Event(FriendBookConstants.EVENT_FRIEND_BUTTON_INGAME_INVITE,true,false);
         if(!_loc4_)
         {
            dispatchEvent(_loc2_);
         }
      }
      
      private function onCreationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this.inviteButton.toolTip = LocaUtils.getString("rcl.tooltips.friendlist","rcl.tooltips.friendlist.overview.add");
         }
      }
      
      private function _FriendADDComponent_Group2_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.mxmlContent = [this._FriendADDComponent_BriskImageDynaLib1_c(),this._FriendADDComponent_BriskImageDynaLib2_c(),this._FriendADDComponent_BriskImageDynaLib3_i(),this._FriendADDComponent_BriskMCDynaLib1_c(),this._FriendADDComponent_MultistateButton1_i()];
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(this))
                  {
                     addr0075:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0079);
            }
            §§goto(addr0075);
         }
         addr0079:
         return _loc1_;
      }
      
      private function _FriendADDComponent_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_FriendBook";
            if(_loc3_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "postit_bg_blue";
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  addr0069:
                  if(!_loc1_.document)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr0081);
            }
            §§goto(addr0069);
         }
         addr0081:
         return _loc1_;
      }
      
      private function _FriendADDComponent_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_FriendBook";
            if(_loc2_ || Boolean(_loc1_))
            {
               _loc1_.top = 6;
               if(!_loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0064:
                     _loc1_.dynaBmpSourceName = "polaroid_addfriend";
                     if(!_loc3_)
                     {
                        addr0070:
                        _loc1_.addEventListener("click",this.___FriendADDComponent_BriskImageDynaLib2_click);
                        if(!_loc3_)
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 addr008d:
                                 _loc1_.document = this;
                              }
                           }
                           §§goto(addr0091);
                        }
                     }
                     §§goto(addr008d);
                  }
               }
               §§goto(addr0070);
            }
            addr0091:
            return _loc1_;
         }
         §§goto(addr0064);
      }
      
      public function ___FriendADDComponent_BriskImageDynaLib2_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.onInviteTrigger();
         }
      }
      
      private function _FriendADDComponent_BriskImageDynaLib3_i() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_)
         {
            _loc1_.mouseEnabled = false;
            if(_loc3_)
            {
               _loc1_.dynaLibName = "gui_popups_paperPopup";
               if(_loc3_ || _loc2_)
               {
                  _loc1_.bottom = 56;
                  if(_loc3_ || _loc2_)
                  {
                     _loc1_.right = 21;
                     if(_loc3_ || Boolean(_loc1_))
                     {
                        addr006e:
                        _loc1_.dynaBmpSourceName = "architect_icon_detailinfo";
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           §§goto(addr0081);
                        }
                        §§goto(addr0094);
                     }
                     §§goto(addr00c6);
                  }
                  §§goto(addr006e);
               }
               §§goto(addr0094);
            }
            §§goto(addr00c6);
         }
         addr0081:
         _loc1_.id = "infoIcon";
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            addr0094:
            if(!_loc1_.document)
            {
               if(!_loc2_)
               {
                  _loc1_.document = this;
                  if(_loc3_ || Boolean(this))
                  {
                     addr00bc:
                     this.infoIcon = _loc1_;
                     if(_loc3_)
                     {
                        addr00c6:
                        BindingManager.executeBindings(this,"infoIcon",this.infoIcon);
                     }
                  }
                  §§goto(addr00d3);
               }
            }
            §§goto(addr00bc);
         }
         addr00d3:
         return _loc1_;
      }
      
      private function _FriendADDComponent_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.top = 0;
               if(!(_loc2_ && Boolean(_loc1_)))
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc2_)
                  {
                     addr0072:
                     _loc1_.dynaMCSourceName = "stickytape_top";
                     if(_loc3_)
                     {
                        §§goto(addr007e);
                     }
                     §§goto(addr008a);
                  }
                  addr007e:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr008a:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr008e);
               }
               addr008e:
               return _loc1_;
            }
            §§goto(addr0072);
         }
         §§goto(addr007e);
      }
      
      private function _FriendADDComponent_MultistateButton1_i() : MultistateButton
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:MultistateButton = new MultistateButton();
         if(!_loc3_)
         {
            _loc1_.useSmallSkin = true;
            if(_loc2_ || _loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(_loc2_)
               {
                  _loc1_.bottom = 6;
                  if(!_loc3_)
                  {
                     _loc1_.width = 82;
                     if(!_loc3_)
                     {
                        _loc1_.imageNameLeft = "button_icon_positive";
                        if(_loc2_ || _loc2_)
                        {
                           _loc1_.libNameLeft = "gui_popups_shopBook";
                           if(_loc2_)
                           {
                              addr007a:
                              _loc1_.addEventListener("click",this.__inviteButton_click);
                              if(_loc2_ || _loc2_)
                              {
                                 §§goto(addr0093);
                              }
                              §§goto(addr00bf);
                           }
                           §§goto(addr00d1);
                        }
                        §§goto(addr00bf);
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr009e);
               }
               §§goto(addr007a);
            }
            addr0093:
            _loc1_.id = "inviteButton";
            if(!_loc3_)
            {
               addr009e:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     _loc1_.document = this;
                     if(_loc2_)
                     {
                        §§goto(addr00bf);
                     }
                  }
                  §§goto(addr00d1);
               }
               addr00bf:
               this.inviteButton = _loc1_;
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr00d1:
                  BindingManager.executeBindings(this,"inviteButton",this.inviteButton);
               }
               §§goto(addr00de);
            }
            addr00de:
            return _loc1_;
         }
         §§goto(addr009e);
      }
      
      public function __inviteButton_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            this.onInviteTrigger();
         }
      }
      
      public function ___FriendADDComponent_Group1_creationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            this.onCreationComplete(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get infoIcon() : BriskImageDynaLib
      {
         return this._177606215infoIcon;
      }
      
      public function set infoIcon(param1:BriskImageDynaLib) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._177606215infoIcon;
         if(!(_loc4_ && _loc3_))
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._177606215infoIcon = param1;
                  if(_loc3_)
                  {
                     addr0055:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoIcon",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0074);
               }
               §§goto(addr0055);
            }
         }
         addr0074:
      }
      
      [Bindable(event="propertyChange")]
      public function get inviteButton() : MultistateButton
      {
         return this._198043749inviteButton;
      }
      
      public function set inviteButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._198043749inviteButton;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._198043749inviteButton = param1;
                  if(_loc4_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr006e:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inviteButton",_loc2_,param1));
                        }
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr006e);
               }
            }
         }
         addr007d:
      }
   }
}

