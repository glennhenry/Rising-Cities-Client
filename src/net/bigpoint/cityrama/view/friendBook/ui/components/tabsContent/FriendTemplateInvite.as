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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
            if(_loc2_ || _loc1_)
            {
               mx_internal::_document = this;
               if(_loc2_)
               {
                  §§goto(addr004c);
               }
               §§goto(addr0070);
            }
            §§goto(addr0060);
         }
         addr004c:
         this.percentWidth = 100;
         if(!_loc1_)
         {
            this.percentHeight = 100;
            if(_loc2_)
            {
               addr0060:
               this.mxmlContent = [this._FriendTemplateInvite_VGroup1_c()];
               if(_loc2_)
               {
                  addr0070:
                  this.addEventListener("creationComplete",this.___FriendTemplateInvite_Group1_creationComplete);
               }
               §§goto(addr007c);
            }
            §§goto(addr0070);
         }
         addr007c:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            super.moduleFactory = param1;
            if(!_loc3_)
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr004a);
                  }
               }
               else
               {
                  this.__moduleFactoryInitialized = true;
               }
               §§goto(addr005e);
            }
            addr004a:
            return;
         }
         addr005e:
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super.initialize();
         }
      }
      
      protected function handleCreationComplete(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this.flavorText.text = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.invite_flavor");
            if(!_loc3_)
            {
               this.headline.text = LocaUtils.getString("rcl.booklayer.treasury","rcl.booklayer.treasury.comingsoon").toUpperCase();
               if(!(_loc3_ && _loc2_))
               {
                  this.headlineRight.text = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.inviteAddHeadline").toUpperCase();
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     this.addTeaserLabel.text = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.inviteAddDescription");
                     if(_loc2_)
                     {
                        addr009b:
                        §§push(this.addFriendButton);
                        if(!_loc3_)
                        {
                           §§push(LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.inviteAddFriendButton"));
                           if(!(_loc3_ && _loc3_))
                           {
                              §§pop().label = §§pop().toUpperCase();
                              if(_loc2_ || _loc3_)
                              {
                                 addr00d1:
                                 this.teaserLabel.text = LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.inviteMailToDescription");
                                 if(_loc2_)
                                 {
                                    §§push(this.emailInviteButton);
                                    if(_loc2_)
                                    {
                                       §§push(LocaUtils.getString("rcl.booklayer.friendbook","rcl.booklayer.friendbook.inviteMailToFriendButton"));
                                       if(_loc2_)
                                       {
                                          §§pop().label = §§pop().toUpperCase();
                                          if(_loc2_)
                                          {
                                             addr012c:
                                             this.addFriendButton.toolTip = LocaUtils.getString("rcl.tooltips.friendlist","rcl.tooltips.friendlist.invite.inviteingame.button");
                                             addr011c:
                                             addr0120:
                                             if(_loc2_ || _loc3_)
                                             {
                                                addr014b:
                                                this.emailInviteButton.toolTip = LocaUtils.getString("rcl.tooltips.friendlist","rcl.tooltips.friendlist.invite.inviteemail.button");
                                                addr013f:
                                                addr013b:
                                             }
                                          }
                                          return;
                                       }
                                       §§goto(addr014b);
                                    }
                                    §§goto(addr013f);
                                 }
                                 §§goto(addr013b);
                              }
                              §§goto(addr011c);
                           }
                           §§goto(addr012c);
                        }
                        §§goto(addr0120);
                     }
                     §§goto(addr00d1);
                  }
                  §§goto(addr011c);
               }
               §§goto(addr013b);
            }
            §§goto(addr009b);
         }
         §§goto(addr00d1);
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
      
      private function onEmailTrigger(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Event = new Event(FriendBookConstants.EVENT_FRIEND_BUTTON_SLAYER_EMAIL,true,false);
         if(_loc4_ || Boolean(param1))
         {
            dispatchEvent(_loc2_);
         }
      }
      
      private function handleIncentiveRewardClick() : void
      {
      }
      
      private function _FriendTemplateInvite_VGroup1_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!_loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || Boolean(_loc1_))
            {
               §§goto(addr003d);
            }
            §§goto(addr0047);
         }
         addr003d:
         _loc1_.percentHeight = 100;
         if(!_loc3_)
         {
            _loc1_.mxmlContent = [this._FriendTemplateInvite_Group2_c(),this._FriendTemplateInvite_HGroup1_c()];
            addr0047:
            if(!(_loc3_ && Boolean(this)))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0086:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr008a);
            }
            §§goto(addr0086);
         }
         addr008a:
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_Group2_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc3_)
         {
            _loc1_.percentWidth = 100;
            if(_loc2_ || _loc3_)
            {
               _loc1_.mxmlContent = [this._FriendTemplateInvite_LocaLabel1_i()];
               if(!_loc3_)
               {
                  §§goto(addr0063);
               }
               §§goto(addr0077);
            }
            addr0063:
            if(!_loc1_.document)
            {
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  addr0077:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0077);
      }
      
      private function _FriendTemplateInvite_LocaLabel1_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_ || _loc2_)
         {
            _loc1_.width = 700;
            if(!_loc2_)
            {
               _loc1_.maxDisplayedLines = 2;
               if(_loc3_ || _loc3_)
               {
                  _loc1_.horizontalCenter = 0;
                  if(!_loc2_)
                  {
                     _loc1_.styleName = "flavorText";
                     if(!_loc2_)
                     {
                        _loc1_.id = "flavorText";
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_)
                              {
                                 addr0090:
                                 _loc1_.document = this;
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    §§goto(addr00a1);
                                 }
                              }
                              §§goto(addr00ab);
                           }
                           §§goto(addr00a1);
                        }
                        §§goto(addr0090);
                     }
                     addr00a1:
                     this.flavorText = _loc1_;
                     if(!_loc2_)
                     {
                        addr00ab:
                        BindingManager.executeBindings(this,"flavorText",this.flavorText);
                     }
                     §§goto(addr00b8);
                  }
               }
               §§goto(addr00ab);
            }
         }
         addr00b8:
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_HGroup1_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.mxmlContent = [this._FriendTemplateInvite_Group3_c(),this._FriendTemplateInvite_Group7_c()];
            if(_loc3_ || _loc2_)
            {
               §§goto(addr0049);
            }
            §§goto(addr0055);
         }
         addr0049:
         if(!_loc1_.document)
         {
            if(_loc3_)
            {
               addr0055:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_Group3_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.mxmlContent = [this._FriendTemplateInvite_BriskImageDynaLib1_c(),this._FriendTemplateInvite_VGroup2_i(),this._FriendTemplateInvite_BriskMCDynaLib1_c()];
            if(_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     _loc1_.document = this;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!_loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_FriendBook";
            if(_loc2_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "quadrillepaper_medium";
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        addr0058:
                        _loc1_.document = this;
                     }
                  }
               }
               §§goto(addr005c);
            }
            §§goto(addr0058);
         }
         addr005c:
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_VGroup2_i() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(_loc2_)
         {
            _loc1_.left = 0;
            if(!_loc3_)
            {
               _loc1_.right = 0;
               if(!_loc3_)
               {
                  addr0033:
                  _loc1_.top = 0;
                  if(!(_loc3_ && Boolean(this)))
                  {
                     _loc1_.bottom = 0;
                     if(!(_loc3_ && Boolean(_loc1_)))
                     {
                        _loc1_.horizontalAlign = "center";
                        if(!_loc3_)
                        {
                           addr006e:
                           _loc1_.mxmlContent = [this._FriendTemplateInvite_Group4_c(),this._FriendTemplateInvite_Group5_c(),this._FriendTemplateInvite_HGroup3_c(),this._FriendTemplateInvite_StepMarkerBarComponent1_i(),this._FriendTemplateInvite_Group6_c(),this._FriendTemplateInvite_LocaLabel3_i(),this._FriendTemplateInvite_MultistateButton1_i()];
                           if(_loc2_ || Boolean(_loc1_))
                           {
                              addr00aa:
                              _loc1_.id = "incentiveGroup";
                              if(_loc2_)
                              {
                                 addr00b5:
                                 if(!_loc1_.document)
                                 {
                                    if(_loc2_)
                                    {
                                       _loc1_.document = this;
                                       if(!(_loc3_ && Boolean(this)))
                                       {
                                          addr00dc:
                                          this.incentiveGroup = _loc1_;
                                          if(!_loc3_)
                                          {
                                             addr00e6:
                                             BindingManager.executeBindings(this,"incentiveGroup",this.incentiveGroup);
                                          }
                                       }
                                    }
                                    return _loc1_;
                                 }
                                 §§goto(addr00dc);
                              }
                              §§goto(addr00e6);
                           }
                        }
                        §§goto(addr00b5);
                     }
                     §§goto(addr00aa);
                  }
                  §§goto(addr00dc);
               }
               §§goto(addr00e6);
            }
            §§goto(addr0033);
         }
         §§goto(addr006e);
      }
      
      private function _FriendTemplateInvite_Group4_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_ || _loc2_)
         {
            _loc1_.height = 28;
            if(!_loc2_)
            {
               addr003f:
               if(!_loc1_.document)
               {
                  if(_loc3_ || _loc3_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr003f);
      }
      
      private function _FriendTemplateInvite_Group5_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.width = 400;
            if(_loc3_ || Boolean(_loc1_))
            {
               §§goto(addr0054);
            }
            §§goto(addr007e);
         }
         addr0054:
         _loc1_.mxmlContent = [this._FriendTemplateInvite_HGroup2_c(),this._FriendTemplateInvite_LocaLabel2_i()];
         if(_loc3_ || Boolean(_loc1_))
         {
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  addr007e:
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_HGroup2_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || Boolean(this))
         {
            _loc1_.width = 400;
            if(!(_loc3_ && Boolean(this)))
            {
               _loc1_.gap = 0;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.mxmlContent = [this._FriendTemplateInvite_BriskImageDynaLib2_c(),this._FriendTemplateInvite_BriskImageDynaLib3_c(),this._FriendTemplateInvite_BriskImageDynaLib4_c()];
                  §§goto(addr0059);
               }
               §§goto(addr0088);
            }
            addr0059:
            if(!(_loc3_ && Boolean(this)))
            {
               addr0088:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0088);
      }
      
      private function _FriendTemplateInvite_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc2_)
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_left";
               if(_loc2_ || _loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        addr006f:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0073);
               }
            }
            §§goto(addr006f);
         }
         addr0073:
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || _loc3_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_middle";
               if(!_loc2_)
               {
                  addr005e:
                  _loc1_.percentWidth = 100;
                  if(!_loc2_)
                  {
                     if(!_loc1_.document)
                     {
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr007c:
                           _loc1_.document = this;
                        }
                     }
                     return _loc1_;
                  }
               }
               §§goto(addr007c);
            }
         }
         §§goto(addr005e);
      }
      
      private function _FriendTemplateInvite_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_right";
               if(!(_loc2_ && Boolean(this)))
               {
                  addr005b:
                  if(!_loc1_.document)
                  {
                     if(!_loc2_)
                     {
                        addr0067:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0067);
         }
         §§goto(addr005b);
      }
      
      private function _FriendTemplateInvite_LocaLabel2_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.bottom = 6;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.horizontalCenter = 0;
               if(!_loc2_)
               {
                  _loc1_.maxDisplayedLines = 1;
                  if(_loc3_ || _loc2_)
                  {
                     addr005e:
                     _loc1_.styleName = "friendPaperHeadlineWhite";
                     if(_loc3_)
                     {
                        _loc1_.id = "headline";
                        if(_loc3_ || _loc3_)
                        {
                           addr007c:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 _loc1_.document = this;
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§goto(addr00a4);
                                 }
                                 §§goto(addr00b6);
                              }
                           }
                           §§goto(addr00a4);
                        }
                     }
                     §§goto(addr00b6);
                  }
                  addr00a4:
                  this.headline = _loc1_;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr00b6:
                     BindingManager.executeBindings(this,"headline",this.headline);
                  }
                  return _loc1_;
               }
               §§goto(addr007c);
            }
            §§goto(addr005e);
         }
         §§goto(addr00b6);
      }
      
      private function _FriendTemplateInvite_HGroup3_c() : HGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:HGroup = new HGroup();
         if(_loc3_)
         {
            _loc1_.gap = 8;
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.mxmlContent = [this._FriendTemplateInvite_FriendBonusLocked1_c(),this._FriendTemplateInvite_FriendBonusLocked2_c(),this._FriendTemplateInvite_FriendBonusLocked3_c()];
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr0072:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr0076);
               }
            }
            §§goto(addr0072);
         }
         addr0076:
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_FriendBonusLocked1_c() : FriendBonusLocked
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:FriendBonusLocked = new FriendBonusLocked();
         if(!(_loc3_ && Boolean(_loc1_)))
         {
            _loc1_.addEventListener("click",this.___FriendTemplateInvite_FriendBonusLocked1_click);
            if(_loc2_)
            {
               addr0046:
               if(!_loc1_.document)
               {
                  if(!_loc3_)
                  {
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0046);
      }
      
      public function ___FriendTemplateInvite_FriendBonusLocked1_click(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this.handleIncentiveRewardClick();
         }
      }
      
      private function _FriendTemplateInvite_FriendBonusLocked2_c() : FriendBonusLocked
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:FriendBonusLocked = new FriendBonusLocked();
         if(!(_loc3_ && _loc2_))
         {
            if(!_loc1_.document)
            {
               if(_loc2_)
               {
                  addr0044:
                  _loc1_.document = this;
               }
            }
            return _loc1_;
         }
         §§goto(addr0044);
      }
      
      private function _FriendTemplateInvite_FriendBonusLocked3_c() : FriendBonusLocked
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:FriendBonusLocked = new FriendBonusLocked();
         if(!(_loc2_ && Boolean(this)))
         {
            if(!_loc1_.document)
            {
               if(_loc3_)
               {
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_StepMarkerBarComponent1_i() : StepMarkerBarComponent
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:StepMarkerBarComponent = new StepMarkerBarComponent();
         if(!_loc3_)
         {
            _loc1_.width = 400;
            if(!_loc3_)
            {
               _loc1_.id = "stepMarkerBar";
               if(_loc2_ || Boolean(_loc1_))
               {
                  addr0058:
                  if(!_loc1_.document)
                  {
                     if(_loc2_)
                     {
                        _loc1_.document = this;
                        if(!_loc3_)
                        {
                           §§goto(addr006d);
                        }
                        §§goto(addr0077);
                     }
                  }
                  addr006d:
                  this.stepMarkerBar = _loc1_;
                  if(_loc2_)
                  {
                     addr0077:
                     BindingManager.executeBindings(this,"stepMarkerBar",this.stepMarkerBar);
                  }
                  §§goto(addr0084);
               }
               addr0084:
               return _loc1_;
            }
            §§goto(addr0058);
         }
         §§goto(addr0077);
      }
      
      private function _FriendTemplateInvite_Group6_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.height = 6;
            if(_loc3_ || _loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0053:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0053);
      }
      
      private function _FriendTemplateInvite_LocaLabel3_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(!_loc2_)
         {
            _loc1_.horizontalCenter = 0;
            if(!_loc2_)
            {
               _loc1_.width = 320;
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.maxDisplayedLines = 2;
                  if(_loc3_)
                  {
                     §§goto(addr0049);
                  }
                  §§goto(addr00a4);
               }
               §§goto(addr0088);
            }
            addr0049:
            _loc1_.styleName = "friendNameOwnLabel";
            if(_loc3_)
            {
               _loc1_.id = "teaserLabel";
               if(_loc3_ || Boolean(this))
               {
                  addr0074:
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || _loc2_)
                     {
                        addr0088:
                        _loc1_.document = this;
                        if(!(_loc2_ && Boolean(_loc1_)))
                        {
                           addr00a4:
                           this.teaserLabel = _loc1_;
                           if(_loc3_ || _loc3_)
                           {
                              addr00b6:
                              BindingManager.executeBindings(this,"teaserLabel",this.teaserLabel);
                           }
                        }
                        §§goto(addr00c3);
                     }
                  }
                  §§goto(addr00a4);
               }
               §§goto(addr00b6);
            }
            addr00c3:
            return _loc1_;
         }
         §§goto(addr0074);
      }
      
      private function _FriendTemplateInvite_MultistateButton1_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_ || _loc3_)
         {
            _loc1_.width = 204;
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.imageNameLeft = "button_icon_friend";
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.libNameLeft = "gui_popups_FriendBook";
                  if(!_loc2_)
                  {
                     addr0068:
                     _loc1_.addEventListener("click",this.__emailInviteButton_click);
                     if(_loc3_)
                     {
                        _loc1_.id = "emailInviteButton";
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           if(!_loc1_.document)
                           {
                              if(_loc3_ || Boolean(this))
                              {
                                 §§goto(addr00ac);
                              }
                           }
                           §§goto(addr00b5);
                        }
                        §§goto(addr00bf);
                     }
                     §§goto(addr00b5);
                  }
                  §§goto(addr00bf);
               }
               §§goto(addr0068);
            }
         }
         addr00ac:
         _loc1_.document = this;
         if(!_loc2_)
         {
            addr00b5:
            this.emailInviteButton = _loc1_;
            if(_loc3_)
            {
               addr00bf:
               BindingManager.executeBindings(this,"emailInviteButton",this.emailInviteButton);
            }
         }
         return _loc1_;
      }
      
      public function __emailInviteButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.onEmailTrigger(param1);
         }
      }
      
      private function _FriendTemplateInvite_BriskMCDynaLib1_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc3_ || Boolean(_loc1_))
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(_loc3_ || Boolean(this))
            {
               _loc1_.top = 0;
               if(!(_loc2_ && _loc3_))
               {
                  addr0064:
                  _loc1_.horizontalCenter = 0;
                  if(!_loc2_)
                  {
                     _loc1_.dynaMCSourceName = "stickytape_top";
                     if(_loc3_)
                     {
                        addr007a:
                        if(!_loc1_.document)
                        {
                           if(!_loc2_)
                           {
                              addr0086:
                              _loc1_.document = this;
                           }
                        }
                     }
                     return _loc1_;
                  }
                  §§goto(addr0086);
               }
               §§goto(addr007a);
            }
         }
         §§goto(addr0064);
      }
      
      private function _FriendTemplateInvite_Group7_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(_loc3_)
         {
            _loc1_.mxmlContent = [this._FriendTemplateInvite_VGroup3_c(),this._FriendTemplateInvite_VGroup4_c(),this._FriendTemplateInvite_BriskMCDynaLib2_c()];
            if(_loc3_ || Boolean(this))
            {
               §§goto(addr0051);
            }
            §§goto(addr005d);
         }
         addr0051:
         if(!_loc1_.document)
         {
            if(!_loc2_)
            {
               addr005d:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_VGroup3_c() : VGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:VGroup = new VGroup();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.gap = 0;
            if(_loc2_ || _loc3_)
            {
               _loc1_.mxmlContent = [this._FriendTemplateInvite_Group8_c(),this._FriendTemplateInvite_BriskImageDynaLib5_c()];
               if(_loc2_)
               {
                  if(!_loc1_.document)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        addr007b:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr007b);
            }
         }
         addr007f:
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_Group8_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.height = 3;
            if(!(_loc2_ && Boolean(this)))
            {
               if(!_loc1_.document)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0065:
                     _loc1_.document = this;
                  }
               }
               §§goto(addr0069);
            }
            §§goto(addr0065);
         }
         addr0069:
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc3_ || Boolean(this))
         {
            _loc1_.dynaLibName = "gui_popups_residentialPopup";
            if(!_loc2_)
            {
               _loc1_.dynaBmpSourceName = "quadrillepaper_bg";
               if(_loc3_)
               {
                  if(!_loc1_.document)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        addr006b:
                        _loc1_.document = this;
                     }
                  }
                  §§goto(addr006f);
               }
               §§goto(addr006b);
            }
         }
         addr006f:
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_VGroup4_c() : VGroup
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:VGroup = new VGroup();
         if(_loc3_)
         {
            _loc1_.left = 0;
            if(_loc3_ || Boolean(_loc1_))
            {
               _loc1_.right = 0;
               if(!_loc2_)
               {
                  addr003b:
                  _loc1_.top = 0;
                  if(!_loc2_)
                  {
                     _loc1_.bottom = 0;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        _loc1_.horizontalAlign = "center";
                        if(!_loc2_)
                        {
                           _loc1_.mxmlContent = [this._FriendTemplateInvite_Group9_c(),this._FriendTemplateInvite_Group10_c(),this._FriendTemplateInvite_Group11_c(),this._FriendTemplateInvite_LocaLabel5_i(),this._FriendTemplateInvite_Group12_c(),this._FriendTemplateInvite_MultistateButton2_i()];
                           if(_loc3_ || _loc2_)
                           {
                              addr00b1:
                              if(!_loc1_.document)
                              {
                                 if(_loc3_ || Boolean(_loc1_))
                                 {
                                    addr00c5:
                                    _loc1_.document = this;
                                 }
                              }
                           }
                           return _loc1_;
                        }
                        §§goto(addr00b1);
                     }
                     §§goto(addr00c5);
                  }
                  §§goto(addr00b1);
               }
               §§goto(addr00c5);
            }
            §§goto(addr00b1);
         }
         §§goto(addr003b);
      }
      
      private function _FriendTemplateInvite_Group9_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.height = 28;
            if(!(_loc2_ && _loc3_))
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr004e:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr004e);
      }
      
      private function _FriendTemplateInvite_Group10_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.width = 200;
            if(_loc3_)
            {
               _loc1_.mxmlContent = [this._FriendTemplateInvite_HGroup4_c(),this._FriendTemplateInvite_LocaLabel4_i()];
               if(_loc3_)
               {
                  addr005f:
                  if(!_loc1_.document)
                  {
                     if(_loc3_)
                     {
                        addr006b:
                        _loc1_.document = this;
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr006b);
         }
         §§goto(addr005f);
      }
      
      private function _FriendTemplateInvite_HGroup4_c() : HGroup
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:HGroup = new HGroup();
         if(_loc2_ || _loc2_)
         {
            _loc1_.width = 200;
            if(!(_loc3_ && _loc2_))
            {
               _loc1_.gap = 0;
               if(_loc2_ || Boolean(this))
               {
                  _loc1_.mxmlContent = [this._FriendTemplateInvite_BriskImageDynaLib6_c(),this._FriendTemplateInvite_BriskImageDynaLib7_c(),this._FriendTemplateInvite_BriskImageDynaLib8_c()];
                  addr0059:
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0089:
                     if(!_loc1_.document)
                     {
                        if(!_loc3_)
                        {
                           _loc1_.document = this;
                        }
                     }
                  }
               }
               return _loc1_;
            }
            §§goto(addr0089);
         }
         §§goto(addr0059);
      }
      
      private function _FriendTemplateInvite_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(!(_loc2_ && Boolean(_loc1_)))
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc3_)
            {
               §§goto(addr004c);
            }
            §§goto(addr0057);
         }
         addr004c:
         _loc1_.dynaBmpSourceName = "quest_blueheadline_left";
         if(_loc3_)
         {
            addr0057:
            if(!_loc1_.document)
            {
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.document = this;
               }
            }
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_BriskImageDynaLib7_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(!(_loc3_ && _loc3_))
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_middle";
               if(!(_loc3_ && _loc2_))
               {
                  _loc1_.percentWidth = 100;
                  addr0050:
                  if(!(_loc3_ && Boolean(this)))
                  {
                     §§goto(addr006e);
                  }
               }
               §§goto(addr0082);
            }
            §§goto(addr0050);
         }
         addr006e:
         if(!_loc1_.document)
         {
            if(_loc2_ || Boolean(this))
            {
               addr0082:
               _loc1_.document = this;
            }
         }
         return _loc1_;
      }
      
      private function _FriendTemplateInvite_BriskImageDynaLib8_c() : BriskImageDynaLib
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         if(_loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_questPopup";
            if(_loc2_ || _loc3_)
            {
               _loc1_.dynaBmpSourceName = "quest_blueheadline_right";
               if(!(_loc3_ && Boolean(_loc1_)))
               {
                  if(!_loc1_.document)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        addr0071:
                        _loc1_.document = this;
                     }
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr0071);
      }
      
      private function _FriendTemplateInvite_LocaLabel4_i() : LocaLabel
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc2_ || Boolean(_loc1_))
         {
            _loc1_.bottom = 6;
            if(_loc2_ || Boolean(_loc1_))
            {
               addr003a:
               _loc1_.horizontalCenter = 0;
               if(_loc2_)
               {
                  _loc1_.maxDisplayedLines = 1;
                  addr0044:
                  if(!_loc3_)
                  {
                     _loc1_.styleName = "friendPaperHeadlineWhite";
                     if(!(_loc3_ && _loc2_))
                     {
                        _loc1_.id = "headlineRight";
                        if(_loc2_ || _loc3_)
                        {
                           addr008b:
                           if(!_loc1_.document)
                           {
                              if(!_loc3_)
                              {
                                 _loc1_.document = this;
                                 if(_loc2_)
                                 {
                                    §§goto(addr00a0);
                                 }
                                 §§goto(addr00aa);
                              }
                           }
                        }
                        addr00a0:
                        this.headlineRight = _loc1_;
                        if(_loc2_)
                        {
                           addr00aa:
                           BindingManager.executeBindings(this,"headlineRight",this.headlineRight);
                        }
                        §§goto(addr00b7);
                     }
                     addr00b7:
                     return _loc1_;
                  }
                  §§goto(addr00aa);
               }
               §§goto(addr008b);
            }
            §§goto(addr0044);
         }
         §§goto(addr003a);
      }
      
      private function _FriendTemplateInvite_Group11_c() : Group
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:Group = new Group();
         if(_loc2_ || _loc3_)
         {
            _loc1_.height = 6;
            if(!_loc3_)
            {
               if(!_loc1_.document)
               {
                  if(!(_loc3_ && Boolean(this)))
                  {
                     addr0051:
                     _loc1_.document = this;
                  }
               }
            }
            return _loc1_;
         }
         §§goto(addr0051);
      }
      
      private function _FriendTemplateInvite_LocaLabel5_i() : LocaLabel
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:LocaLabel = new LocaLabel();
         if(_loc3_)
         {
            _loc1_.width = 200;
            if(!_loc2_)
            {
               _loc1_.horizontalCenter = 0;
               if(!(_loc2_ && _loc2_))
               {
                  addr003c:
                  _loc1_.maxDisplayedLines = 3;
                  if(!_loc2_)
                  {
                     addr0052:
                     _loc1_.styleName = "optionsLabel";
                     if(!_loc2_)
                     {
                        addr005d:
                        _loc1_.id = "addTeaserLabel";
                        if(_loc3_ || Boolean(this))
                        {
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr007c:
                                 _loc1_.document = this;
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§goto(addr009b);
                                 }
                              }
                              §§goto(addr00ad);
                           }
                           addr009b:
                           this.addTeaserLabel = _loc1_;
                           if(_loc3_ || Boolean(_loc1_))
                           {
                              addr00ad:
                              BindingManager.executeBindings(this,"addTeaserLabel",this.addTeaserLabel);
                           }
                           return _loc1_;
                        }
                     }
                     §§goto(addr007c);
                  }
                  §§goto(addr00ad);
               }
               §§goto(addr0052);
            }
            §§goto(addr005d);
         }
         §§goto(addr003c);
      }
      
      private function _FriendTemplateInvite_Group12_c() : Group
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Group = new Group();
         if(!_loc2_)
         {
            _loc1_.height = 20;
            if(!_loc2_)
            {
               if(!_loc1_.document)
               {
                  if(!_loc2_)
                  {
                     addr0041:
                     _loc1_.document = this;
                  }
               }
               return _loc1_;
            }
         }
         §§goto(addr0041);
      }
      
      private function _FriendTemplateInvite_MultistateButton2_i() : MultistateButton
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:MultistateButton = new MultistateButton();
         if(_loc3_)
         {
            _loc1_.width = 204;
            if(!_loc2_)
            {
               _loc1_.imageNameLeft = "button_icon_addfriend";
               if(_loc3_ || Boolean(_loc1_))
               {
                  _loc1_.libNameLeft = "gui_popups_FriendBook";
                  if(!(_loc2_ && Boolean(this)))
                  {
                     _loc1_.addEventListener("click",this.__addFriendButton_click);
                     if(!(_loc2_ && Boolean(_loc1_)))
                     {
                        _loc1_.id = "addFriendButton";
                        if(!(_loc2_ && _loc3_))
                        {
                           addr0097:
                           if(!_loc1_.document)
                           {
                              if(!_loc2_)
                              {
                                 addr00a3:
                                 _loc1_.document = this;
                                 if(!_loc2_)
                                 {
                                    §§goto(addr00ac);
                                 }
                                 §§goto(addr00b6);
                              }
                           }
                           addr00ac:
                           this.addFriendButton = _loc1_;
                           if(!_loc2_)
                           {
                              addr00b6:
                              BindingManager.executeBindings(this,"addFriendButton",this.addFriendButton);
                           }
                           §§goto(addr00c3);
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr00c3);
                  }
                  §§goto(addr0097);
               }
            }
            addr00c3:
            return _loc1_;
         }
         §§goto(addr00a3);
      }
      
      public function __addFriendButton_click(param1:MouseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.onInviteTrigger(param1);
         }
      }
      
      private function _FriendTemplateInvite_BriskMCDynaLib2_c() : BriskMCDynaLib
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BriskMCDynaLib = new BriskMCDynaLib();
         if(_loc3_ || _loc2_)
         {
            _loc1_.dynaLibName = "gui_popups_paperPopup";
            if(!_loc2_)
            {
               _loc1_.top = 0;
               if(!(_loc2_ && _loc2_))
               {
                  _loc1_.horizontalCenter = 0;
                  if(_loc3_ || _loc2_)
                  {
                     addr0072:
                     _loc1_.dynaMCSourceName = "stickytape_top";
                     if(!_loc2_)
                     {
                        addr007e:
                        if(!_loc1_.document)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              addr0092:
                              _loc1_.document = this;
                           }
                        }
                        §§goto(addr0096);
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr0096);
               }
               §§goto(addr007e);
            }
            §§goto(addr0072);
         }
         addr0096:
         return _loc1_;
      }
      
      public function ___FriendTemplateInvite_Group1_creationComplete(param1:FlexEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this.handleCreationComplete(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get addFriendButton() : MultistateButton
      {
         return this._1333138097addFriendButton;
      }
      
      public function set addFriendButton(param1:MultistateButton) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1333138097addFriendButton;
         if(!(_loc3_ && Boolean(this)))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(this))
               {
                  this._1333138097addFriendButton = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           addr007d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addFriendButton",_loc2_,param1));
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr007d);
      }
      
      [Bindable(event="propertyChange")]
      public function get addTeaserLabel() : LocaLabel
      {
         return this._2070966051addTeaserLabel;
      }
      
      public function set addTeaserLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2070966051addTeaserLabel;
         if(_loc4_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._2070966051addTeaserLabel = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     addr0065:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addTeaserLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0083);
               }
               §§goto(addr0065);
            }
            addr0083:
            return;
         }
         §§goto(addr0065);
      }
      
      [Bindable(event="propertyChange")]
      public function get emailInviteButton() : MultistateButton
      {
         return this._729754967emailInviteButton;
      }
      
      public function set emailInviteButton(param1:MultistateButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._729754967emailInviteButton;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr0038:
                  this._729754967emailInviteButton = param1;
                  if(!_loc4_)
                  {
                     addr0043:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"emailInviteButton",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0061);
               }
               §§goto(addr0043);
            }
            addr0061:
            return;
         }
         §§goto(addr0038);
      }
      
      [Bindable(event="propertyChange")]
      public function get flavorText() : LocaLabel
      {
         return this._1684755691flavorText;
      }
      
      public function set flavorText(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1684755691flavorText;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  this._1684755691flavorText = param1;
                  if(_loc4_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0068:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flavorText",_loc2_,param1));
                        }
                     }
                     §§goto(addr0077);
                  }
                  §§goto(addr0068);
               }
            }
            addr0077:
            return;
         }
         §§goto(addr0068);
      }
      
      [Bindable(event="propertyChange")]
      public function get headline() : LocaLabel
      {
         return this._1115058732headline;
      }
      
      public function set headline(param1:LocaLabel) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._1115058732headline;
         if(_loc3_ || Boolean(this))
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  this._1115058732headline = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           addr0078:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headline",_loc2_,param1));
                        }
                     }
                     §§goto(addr0087);
                  }
                  §§goto(addr0078);
               }
            }
            addr0087:
            return;
         }
         §§goto(addr0078);
      }
      
      [Bindable(event="propertyChange")]
      public function get headlineRight() : LocaLabel
      {
         return this._1507772584headlineRight;
      }
      
      public function set headlineRight(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1507772584headlineRight;
         if(_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(_loc2_)))
               {
                  this._1507772584headlineRight = param1;
                  if(_loc4_ || Boolean(this))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr006d:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headlineRight",_loc2_,param1));
                        }
                     }
                     §§goto(addr007c);
                  }
               }
               §§goto(addr006d);
            }
            addr007c:
            return;
         }
         §§goto(addr006d);
      }
      
      [Bindable(event="propertyChange")]
      public function get incentiveGroup() : VGroup
      {
         return this._1397419052incentiveGroup;
      }
      
      public function set incentiveGroup(param1:VGroup) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1397419052incentiveGroup;
         if(_loc4_ || Boolean(param1))
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_)
               {
                  addr004f:
                  this._1397419052incentiveGroup = param1;
                  if(!_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_)
                        {
                           addr0069:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"incentiveGroup",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0078);
               }
               §§goto(addr0069);
            }
            addr0078:
            return;
         }
         §§goto(addr004f);
      }
      
      [Bindable(event="propertyChange")]
      public function get stepMarkerBar() : StepMarkerBarComponent
      {
         return this._2139048973stepMarkerBar;
      }
      
      public function set stepMarkerBar(param1:StepMarkerBarComponent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._2139048973stepMarkerBar;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  addr003f:
                  this._2139048973stepMarkerBar = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr0073:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stepMarkerBar",_loc2_,param1));
                        }
                     }
                     §§goto(addr0082);
                  }
                  §§goto(addr0073);
               }
            }
            addr0082:
            return;
         }
         §§goto(addr003f);
      }
      
      [Bindable(event="propertyChange")]
      public function get teaserLabel() : LocaLabel
      {
         return this._1449803396teaserLabel;
      }
      
      public function set teaserLabel(param1:LocaLabel) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._1449803396teaserLabel;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || Boolean(param1))
               {
                  this._1449803396teaserLabel = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr005d:
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc4_ || Boolean(param1))
                        {
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"teaserLabel",_loc2_,param1));
                        }
                     }
                  }
                  §§goto(addr0084);
               }
               §§goto(addr005d);
            }
         }
         addr0084:
      }
   }
}

