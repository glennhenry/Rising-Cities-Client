package net.bigpoint.cityrama.view.friendBook
{
   import flash.events.Event;
   import mx.collections.ArrayCollection;
   import mx.events.ItemClickEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.friends.FriendBookConstants;
   import net.bigpoint.cityrama.model.friends.FriendsProxy;
   import net.bigpoint.cityrama.model.friends.SideMenuFriendBookProxy;
   import net.bigpoint.cityrama.model.friends.vo.FriendVo;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.common.components.PaperPopupWindow;
   import net.bigpoint.cityrama.view.friendBook.ui.components.FriendBook;
   import net.bigpoint.cityrama.view.friendBook.ui.components.GroupList;
   import net.bigpoint.cityrama.view.friendBook.ui.components.SideMenuFriendBook;
   import net.bigpoint.cityrama.view.friendBook.ui.components.tabsContent.FriendTemplateDataGrid;
   import net.bigpoint.cityrama.view.friendBook.ui.components.tabsContent.FriendTemplateDataGridPending;
   import net.bigpoint.cityrama.view.friendBook.ui.components.tabsContent.FriendTemplateDetailview;
   import net.bigpoint.cityrama.view.friendBook.ui.event.Friend_Action_Event;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.events.IndexChangeEvent;
   
   public class FriendsTabMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "FriendsTabMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && FriendsTabMediator))
      {
         NAME = "FriendsTabMediator";
      }
      
      private var _sideMenuProxy:SideMenuFriendBookProxy;
      
      private var _sideMenu:SideMenuFriendBook;
      
      private var _friendsProxy:FriendsProxy;
      
      private var _component:GroupList;
      
      private var _localStorageProxy:LocalStorageProxy;
      
      private var _friendDetailView:FriendTemplateDetailview;
      
      private var _friendsListPending:FriendTemplateDataGridPending;
      
      private var _friendsList:FriendTemplateDataGrid;
      
      private var _soundProxy:SoundProxy;
      
      public function FriendsTabMediator(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super(NAME,param1);
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super.onRegister();
            if(_loc1_)
            {
               addr0027:
               this.prepareProxies();
            }
            return;
         }
         §§goto(addr0027);
      }
      
      private function setupListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.container);
            if(_loc2_ || _loc1_)
            {
               §§push(PaperPopupWindow.BACK);
               if(!(_loc1_ && _loc2_))
               {
                  §§pop().addEventListener(§§pop(),this.handleBack);
                  if(_loc2_)
                  {
                     §§push(this.container);
                     if(_loc2_ || _loc2_)
                     {
                        §§push(Friend_Action_Event.ACCEPT_FRIEND_EVENT);
                        if(!_loc1_)
                        {
                           §§pop().addEventListener(§§pop(),this.doSendAcceptToServer);
                           if(!_loc1_)
                           {
                              addr007a:
                              §§push(this.container);
                              if(_loc2_ || _loc1_)
                              {
                                 §§push(Friend_Action_Event.REJECT_FRIEND_EVENT);
                                 if(_loc2_)
                                 {
                                    §§pop().addEventListener(§§pop(),this.doSendRejectToServer);
                                    if(_loc2_)
                                    {
                                       §§push(this.container);
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          addr00b4:
                                          §§push(Friend_Action_Event.CANCEL_FRIEND_EVENT);
                                          if(_loc2_ || _loc1_)
                                          {
                                             §§pop().addEventListener(§§pop(),this.doSendCancelToServer);
                                             §§goto(addr00c7);
                                          }
                                          §§goto(addr00f2);
                                       }
                                       §§goto(addr0103);
                                    }
                                    §§goto(addr00de);
                                 }
                                 §§goto(addr0109);
                              }
                              §§goto(addr00e7);
                           }
                           §§goto(addr00ff);
                        }
                        §§goto(addr0109);
                     }
                     §§goto(addr00b4);
                  }
                  §§goto(addr007a);
               }
               addr00c7:
               if(!_loc1_)
               {
                  addr00de:
                  §§push(this.container);
                  if(!_loc1_)
                  {
                     addr00e7:
                     §§push(FriendBookConstants.EVENT_FRIEND_BUTTON_INGAME_INVITE);
                     if(!_loc1_)
                     {
                        addr00f2:
                        §§pop().addEventListener(§§pop(),this.openInviteMiniLayer);
                        if(_loc2_)
                        {
                           addr0109:
                           this.container.addEventListener(FriendBookConstants.EVENT_FRIEND_BUTTON_SLAYER_EMAIL,this.openInviteSlayerInvite);
                           addr0103:
                           addr00ff:
                        }
                        §§goto(addr0111);
                     }
                     §§goto(addr0109);
                  }
                  §§goto(addr0103);
               }
               addr0111:
               return;
            }
            §§goto(addr00e7);
         }
         §§goto(addr007a);
      }
      
      private function prepareProxies() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this._sideMenuProxy = facade.retrieveProxy(SideMenuFriendBookProxy.NAME) as SideMenuFriendBookProxy;
            if(!(_loc1_ && Boolean(this)))
            {
               addr003f:
               this._friendsProxy = facade.retrieveProxy(FriendsProxy.NAME) as FriendsProxy;
               if(!_loc1_)
               {
                  §§goto(addr0060);
               }
               §§goto(addr007f);
            }
            addr0060:
            this._localStorageProxy = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
            if(!(_loc1_ && Boolean(this)))
            {
               addr007f:
               this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
            }
            return;
         }
         §§goto(addr003f);
      }
      
      private function setInitialValues() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.setupSideMenu();
         }
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super.onRemove();
            if(_loc1_ || _loc1_)
            {
               addr0027:
               this.removeListeners();
            }
            return;
         }
         §§goto(addr0027);
      }
      
      private function removeListeners() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            §§push(this.container);
            if(_loc1_ || _loc2_)
            {
               §§push(PaperPopupWindow.BACK);
               if(!_loc2_)
               {
                  §§pop().removeEventListener(§§pop(),this.handleBack);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(this.container);
                     if(!(_loc2_ && Boolean(this)))
                     {
                        §§push(Friend_Action_Event.ACCEPT_FRIEND_EVENT);
                        if(!(_loc2_ && Boolean(this)))
                        {
                           §§pop().removeEventListener(§§pop(),this.doSendAcceptToServer);
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr0087:
                              §§push(this.container);
                              if(_loc1_)
                              {
                                 §§push(Friend_Action_Event.REJECT_FRIEND_EVENT);
                                 if(_loc1_)
                                 {
                                    addr00a5:
                                    §§pop().removeEventListener(§§pop(),this.doSendRejectToServer);
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§push(this.container);
                                       if(!_loc2_)
                                       {
                                          §§push(Friend_Action_Event.CANCEL_FRIEND_EVENT);
                                          if(_loc1_ || _loc2_)
                                          {
                                             addr00d6:
                                             §§pop().removeEventListener(§§pop(),this.doSendCancelToServer);
                                             if(_loc1_ || _loc1_)
                                             {
                                                addr00eb:
                                                §§push(this.container);
                                                if(_loc1_ || _loc1_)
                                                {
                                                   addr00fc:
                                                   §§push(FriendBookConstants.EVENT_FRIEND_BUTTON_INGAME_INVITE);
                                                   if(_loc1_ || _loc2_)
                                                   {
                                                      §§pop().removeEventListener(§§pop(),this.openInviteMiniLayer);
                                                      if(!(_loc2_ && Boolean(this)))
                                                      {
                                                         addr0138:
                                                         this.container.removeEventListener(FriendBookConstants.EVENT_FRIEND_BUTTON_SLAYER_EMAIL,this.openInviteSlayerInvite);
                                                         addr0132:
                                                         addr012e:
                                                         if(_loc1_ || _loc1_)
                                                         {
                                                            this.removeComponentListeners();
                                                         }
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr0138);
                                                }
                                                §§goto(addr0132);
                                             }
                                             §§goto(addr012e);
                                          }
                                          §§goto(addr0138);
                                       }
                                       §§goto(addr0132);
                                    }
                                    §§goto(addr00eb);
                                 }
                                 §§goto(addr00d6);
                              }
                              §§goto(addr00fc);
                           }
                           §§goto(addr012e);
                        }
                        §§goto(addr00a5);
                     }
                     §§goto(addr00fc);
                  }
                  §§goto(addr0087);
               }
               §§goto(addr00d6);
            }
            §§goto(addr00fc);
         }
         §§goto(addr00eb);
      }
      
      override public function getMediatorName() : String
      {
         return FriendsTabMediator.NAME;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.FRIENDBOOK_SIDE_ENTRIES_AVAILABLE,ApplicationNotificationConstants.FRIENDS_UPDATE];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = param1.getName();
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            §§push(ApplicationNotificationConstants.FRIENDBOOK_SIDE_ENTRIES_AVAILABLE);
            if(_loc4_)
            {
               §§push(_loc2_);
               if(!_loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc3_ && Boolean(param1)))
                     {
                        addr00dd:
                        §§push(0);
                        if(_loc3_ && _loc3_)
                        {
                        }
                     }
                     else
                     {
                        addr00fa:
                        §§push(1);
                        if(_loc3_)
                        {
                        }
                     }
                     §§goto(addr0111);
                  }
                  else
                  {
                     §§goto(addr00f6);
                  }
               }
               addr00f6:
               §§goto(addr00f5);
            }
            addr00f5:
            if(ApplicationNotificationConstants.FRIENDS_UPDATE === _loc2_)
            {
               §§goto(addr00fa);
            }
            else
            {
               §§push(2);
            }
            addr0111:
            switch(§§pop())
            {
               case 0:
                  break;
               case 1:
                  §§push(this._friendsList);
                  if(_loc4_ || Boolean(param1))
                  {
                     if(§§pop())
                     {
                        if(_loc3_ && Boolean(_loc2_))
                        {
                           break;
                        }
                        addr0048:
                        this._friendsList.data = this._friendsProxy.friendsActive;
                        if(_loc3_ && Boolean(_loc2_))
                        {
                           break;
                        }
                     }
                     §§push(this._friendsListPending);
                     if(!_loc3_)
                     {
                        if(!§§pop())
                        {
                           break;
                        }
                        if(_loc3_)
                        {
                           break;
                        }
                        §§push(this._friendsListPending);
                     }
                     §§pop().data = this._friendsProxy.friendsPending;
                     if(_loc4_)
                     {
                     }
                     break;
                  }
                  §§goto(addr0048);
            }
            return;
         }
         §§goto(addr00dd);
      }
      
      public function init() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            this.setInitialValues();
            if(_loc1_)
            {
               addr0028:
               this.setupListeners();
            }
            return;
         }
         §§goto(addr0028);
      }
      
      public function get container() : FriendBook
      {
         return super.viewComponent as FriendBook;
      }
      
      public function get component() : GroupList
      {
         return this._component;
      }
      
      private function setupSideMenu() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         if(!(_loc4_ && _loc3_))
         {
            if(this._friendsProxy.newFriends)
            {
               if(_loc3_ || Boolean(this))
               {
                  _loc1_.push(FriendBookConstants.PENDING_FRIENDS_OVERVIEW);
                  if(_loc3_ || Boolean(this))
                  {
                     _loc2_ = 1;
                     if(!_loc4_)
                     {
                        addr005f:
                        this._sideMenuProxy.addNewIconAt(_loc1_);
                        if(_loc3_ || Boolean(_loc2_))
                        {
                           addr0075:
                           §§push(this._sideMenu);
                           if(_loc3_ || Boolean(_loc2_))
                           {
                              if(!§§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    addr0090:
                                    this._sideMenu = new SideMenuFriendBook();
                                    if(!_loc4_)
                                    {
                                       §§push(this._sideMenu);
                                       if(!(_loc4_ && Boolean(_loc2_)))
                                       {
                                          §§push(100);
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             §§pop().percentWidth = §§pop();
                                             if(_loc3_)
                                             {
                                                addr00d5:
                                                §§push(this._sideMenu);
                                                if(_loc3_)
                                                {
                                                   §§push(100);
                                                   if(_loc3_)
                                                   {
                                                      addr00e5:
                                                      §§pop().percentHeight = §§pop();
                                                      if(_loc3_ || Boolean(this))
                                                      {
                                                         §§push(this._sideMenu);
                                                         if(!_loc4_)
                                                         {
                                                            §§goto(addr00fe);
                                                         }
                                                         §§goto(addr0165);
                                                      }
                                                      §§goto(addr0161);
                                                   }
                                                   §§goto(addr0166);
                                                }
                                                addr00fe:
                                                §§pop().dataProvider = this._sideMenuProxy.entries;
                                                if(_loc3_ || Boolean(_loc1_))
                                                {
                                                   addr0115:
                                                   §§push(this._sideMenu);
                                                   if(_loc3_ || Boolean(_loc2_))
                                                   {
                                                      §§pop().addEventListener(IndexChangeEvent.CHANGE,this.handleSideMenuIndexChange);
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         addr014c:
                                                         this.container.sideMenu.addElement(this._sideMenu);
                                                         if(!_loc4_)
                                                         {
                                                            addr0166:
                                                            this._sideMenu.selectedIndex = _loc2_;
                                                            §§goto(addr0161);
                                                         }
                                                         §§goto(addr0177);
                                                      }
                                                      addr0161:
                                                      §§goto(addr0165);
                                                   }
                                                   addr0165:
                                                   if(!(_loc4_ && Boolean(_loc1_)))
                                                   {
                                                      addr0177:
                                                      this.handleSideMenuIndexChange(null);
                                                   }
                                                }
                                                §§goto(addr017d);
                                             }
                                             addr017d:
                                             return;
                                          }
                                          §§goto(addr00e5);
                                       }
                                       §§goto(addr0165);
                                    }
                                    §§goto(addr0177);
                                 }
                                 §§goto(addr0161);
                              }
                              §§goto(addr014c);
                           }
                           §§goto(addr0165);
                        }
                        §§goto(addr0090);
                     }
                     §§goto(addr0115);
                  }
                  §§goto(addr0075);
               }
               §§goto(addr00d5);
            }
            §§goto(addr005f);
         }
         §§goto(addr0177);
      }
      
      private function handleSideMenuIndexChange(param1:IndexChangeEvent = null) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:int = int(this._sideMenu.selectedIndex);
         if(_loc4_ || Boolean(_loc2_))
         {
            this.container.showBackButton = false;
            if(!(_loc5_ && Boolean(this)))
            {
               addr0044:
               this.removeComponentListeners();
            }
            §§push(_loc2_);
            if(_loc4_)
            {
               var _loc3_:* = §§pop();
               if(_loc4_)
               {
                  §§push(1);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(_loc3_);
                     if(!(_loc5_ && Boolean(_loc2_)))
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc4_ || _loc3_)
                           {
                              §§push(0);
                              if(_loc5_)
                              {
                              }
                           }
                           else
                           {
                              addr0117:
                              §§push(1);
                              if(_loc4_ || Boolean(this))
                              {
                              }
                           }
                        }
                        else
                        {
                           §§push(0);
                           if(_loc4_ || Boolean(_loc2_))
                           {
                              addr0113:
                              if(§§pop() === _loc3_)
                              {
                                 §§goto(addr0117);
                              }
                              else
                              {
                                 §§push(2);
                              }
                           }
                        }
                        addr0139:
                        switch(§§pop())
                        {
                           case 0:
                              this.setupPendingFriendsList();
                              if(_loc4_ || Boolean(this))
                              {
                                 this.setupComponentListeners();
                                 if(_loc4_ || _loc3_)
                                 {
                                 }
                              }
                              break;
                           case 1:
                              this.setupFriendsList();
                              if(_loc4_)
                              {
                                 this.setupComponentListeners();
                                 if(_loc4_)
                                 {
                                 }
                              }
                        }
                        return;
                        addr0137:
                     }
                     §§goto(addr0113);
                  }
                  §§goto(addr0137);
               }
               §§goto(addr0117);
            }
            §§goto(addr0139);
         }
         §§goto(addr0044);
      }
      
      private function removeComponentListeners() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.component);
            if(_loc1_ || Boolean(this))
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     addr0043:
                     this.component.removeEventListener(ItemClickEvent.ITEM_CLICK,this.handleFriendClick);
                  }
               }
               §§goto(addr0051);
            }
            §§goto(addr0043);
         }
         addr0051:
      }
      
      private function setupComponentListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.component.addEventListener(ItemClickEvent.ITEM_CLICK,this.handleFriendClick);
         }
      }
      
      private function setupFriendsList() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            §§push(this.container);
            if(_loc1_)
            {
               break;
            }
            if(!§§pop().content.numElements)
            {
               if(_loc2_)
               {
                  if(!this._friendsList)
                  {
                     if(!_loc1_)
                     {
                        §§goto(addr0064);
                     }
                  }
                  §§goto(addr007c);
               }
            }
            else
            {
               §§push(this.container);
               if(_loc1_)
               {
                  break;
               }
               §§pop().content.removeElementAt(0);
               if(_loc2_ || _loc1_)
               {
                  continue;
               }
            }
            addr0064:
            this._friendsList = new FriendTemplateDataGrid();
            if(!(_loc1_ && _loc1_))
            {
               this._component = this._friendsList;
               addr007c:
               if(_loc2_)
               {
                  this._component.data = this._friendsProxy.friendsActive;
                  §§goto(addr00bc);
               }
               §§goto(addr00ad);
            }
            §§goto(addr00bc);
         }
         §§pop().content.addElement(this._component);
         addr00bc:
         if(!(_loc1_ && _loc2_))
         {
            addr00ad:
            §§push(this.container);
            break loop0;
         }
      }
      
      private function setupPendingFriendsList() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         while(true)
         {
            §§push(this.container);
            if(!_loc2_)
            {
               break;
            }
            if(!§§pop().content.numElements)
            {
               if(!_loc1_)
               {
                  if(!this._friendsListPending)
                  {
                     if(_loc2_)
                     {
                        addr0064:
                        this._friendsListPending = new FriendTemplateDataGridPending();
                        if(_loc2_ || _loc2_)
                        {
                           addr007c:
                           this._component = this._friendsListPending;
                           if(_loc2_ || _loc1_)
                           {
                              §§goto(addr009b);
                           }
                        }
                        §§goto(addr00b5);
                     }
                     addr009b:
                     this._component.data = this._friendsProxy.friendsPending;
                     §§goto(addr00c4);
                  }
                  §§goto(addr007c);
               }
               §§goto(addr00b5);
            }
            else
            {
               §§push(this.container);
               if(_loc1_ && _loc1_)
               {
                  break;
               }
               §§pop().content.removeElementAt(0);
               if(!_loc1_)
               {
                  continue;
               }
            }
            §§goto(addr0064);
         }
         §§pop().content.addElement(this._component);
         addr00c4:
         if(_loc2_ || _loc1_)
         {
            addr00b5:
            §§push(this.container);
            break loop0;
         }
      }
      
      private function handleFriendClick(param1:ItemClickEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.updateFriendDetails(param1.item as FriendVo);
         }
      }
      
      public function updateFriendDetails(param1:FriendVo) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            if(param1)
            {
               if(!_loc2_)
               {
                  §§push(this._localStorageProxy);
                  if(_loc3_)
                  {
                     §§push(§§pop().userdata);
                     if(_loc3_)
                     {
                        if(§§pop().viewedFriendListUserIDs.indexOf(param1.fId) == -1)
                        {
                           if(_loc3_)
                           {
                              addr0053:
                              §§push(this._localStorageProxy);
                              if(_loc3_)
                              {
                                 addr005f:
                                 §§pop().userdata.viewedFriendListUserIDs.push(param1.fId);
                                 if(!_loc2_)
                                 {
                                    addr0072:
                                    this._localStorageProxy.flush();
                                    addr006e:
                                    if(!(_loc2_ && Boolean(param1)))
                                    {
                                       this._friendsProxy.getFriendById(param1.fId).isItemNew = false;
                                       if(_loc3_)
                                       {
                                          §§push(this._friendsList);
                                          if(!_loc2_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc2_ && Boolean(param1)))
                                                {
                                                   addr00b7:
                                                   this._friendsList.data = this._friendsProxy.friendsActive;
                                                   addr00b3:
                                                   if(!_loc2_)
                                                   {
                                                      addr00c5:
                                                      §§push(this._friendsListPending);
                                                      if(_loc3_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               this._friendsListPending.data = this._friendsProxy.friendsPending;
                                                               addr00e3:
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  addr0105:
                                                                  §§push(this._friendDetailView);
                                                                  if(_loc3_)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        if(_loc3_ || Boolean(this))
                                                                        {
                                                                           addr011f:
                                                                           this._friendDetailView = new FriendTemplateDetailview();
                                                                           if(_loc3_ || Boolean(param1))
                                                                           {
                                                                              addr0137:
                                                                              §§push(this._friendDetailView);
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§push("left");
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    §§pop().addEventListener(§§pop(),this.handleDetailLeft);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       addr0155:
                                                                                       §§push(this._friendDetailView);
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          addr0161:
                                                                                          §§pop().addEventListener("right",this.handleDetailRight);
                                                                                          if(_loc3_ || Boolean(this))
                                                                                          {
                                                                                             addr0176:
                                                                                             §§push(this._friendDetailView);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                addr017f:
                                                                                                §§pop().setData(param1);
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   addr018d:
                                                                                                   addr0189:
                                                                                                   if(!this._friendDetailView.parent)
                                                                                                   {
                                                                                                      loop0:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.container);
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            do
                                                                                                            {
                                                                                                               if(§§pop().content.numElements)
                                                                                                               {
                                                                                                                  §§push(this.container);
                                                                                                                  if(_loc3_ || Boolean(this))
                                                                                                                  {
                                                                                                                     §§pop().content.removeElementAt(0);
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                                  continue;
                                                                                                               }
                                                                                                            }
                                                                                                            while(!(_loc3_ || _loc2_));
                                                                                                            
                                                                                                            §§push(this.container);
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr0203);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      §§pop().content.addElement(this._friendDetailView);
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         addr01ff:
                                                                                                         addr0203:
                                                                                                         §§pop().showBackButton = true;
                                                                                                         addr0207:
                                                                                                         return;
                                                                                                         §§push(this.container);
                                                                                                      }
                                                                                                      §§goto(addr0207);
                                                                                                      addr01b8:
                                                                                                   }
                                                                                                   §§goto(addr01ff);
                                                                                                }
                                                                                                §§goto(addr01b8);
                                                                                             }
                                                                                             §§goto(addr018d);
                                                                                          }
                                                                                          §§goto(addr0189);
                                                                                       }
                                                                                       §§goto(addr018d);
                                                                                    }
                                                                                    §§goto(addr0176);
                                                                                 }
                                                                                 §§goto(addr0161);
                                                                              }
                                                                              §§goto(addr017f);
                                                                           }
                                                                           §§goto(addr0155);
                                                                        }
                                                                        §§goto(addr0137);
                                                                     }
                                                                     §§goto(addr0176);
                                                                  }
                                                                  §§goto(addr018d);
                                                               }
                                                               §§goto(addr01b8);
                                                            }
                                                            §§goto(addr0189);
                                                         }
                                                         §§goto(addr0105);
                                                      }
                                                      §§goto(addr00e3);
                                                   }
                                                   §§goto(addr0105);
                                                }
                                                §§goto(addr011f);
                                             }
                                             §§goto(addr00c5);
                                          }
                                          §§goto(addr00b7);
                                       }
                                       §§goto(addr0105);
                                    }
                                 }
                                 §§goto(addr0176);
                              }
                              §§goto(addr0072);
                           }
                           §§goto(addr00b3);
                        }
                        §§goto(addr0105);
                     }
                     §§goto(addr005f);
                  }
                  §§goto(addr0072);
               }
               §§goto(addr006e);
            }
            §§goto(addr0207);
         }
         §§goto(addr0053);
      }
      
      private function handleDetailLeft(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_ || _loc3_)
         {
            if(this._friendDetailView.data.status == FriendVo.PENDING)
            {
               §§push(this._friendsProxy);
               var _loc2_:ArrayCollection = _loc5_ ? §§pop().friendsPending : §§pop().friendsActive;
               var _loc3_:int = int(_loc2_.getItemIndex(this._friendDetailView.data));
               §§goto(addr0037);
            }
            else
            {
               §§push(this._friendsProxy);
            }
            §§goto(addr0058);
         }
         addr0037:
         if(_loc5_ || Boolean(_loc2_))
         {
            if(_loc3_ > 0)
            {
               if(_loc5_)
               {
                  this.updateFriendDetails(_loc2_.getItemAt(_loc3_ - 1) as FriendVo);
               }
            }
         }
      }
      
      private function handleDetailRight(param1:Event) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!_loc5_)
         {
            if(this._friendDetailView.data.status == FriendVo.PENDING)
            {
               §§push(this._friendsProxy);
               var _loc2_:ArrayCollection = !_loc5_ ? §§pop().friendsPending : §§pop().friendsActive;
               var _loc3_:int = int(_loc2_.getItemIndex(this._friendDetailView.data));
               §§goto(addr0031);
            }
            else
            {
               §§push(this._friendsProxy);
            }
            §§goto(addr0053);
         }
         addr0031:
         if(!_loc5_)
         {
            if(_loc3_ < _loc2_.length - 1)
            {
               if(!_loc5_)
               {
                  this.updateFriendDetails(_loc2_.getItemAt(_loc3_ + 1) as FriendVo);
               }
            }
         }
      }
      
      private function handleBack(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         loop0:
         do
         {
            §§push(this.container);
            while(true)
            {
               if(!§§pop().content.numElements)
               {
                  if(!_loc3_)
                  {
                     this.handleSideMenuIndexChange(null);
                  }
                  break;
               }
               §§push(this.container);
               if(!_loc3_)
               {
                  continue loop0;
               }
            }
            break;
         }
         while(§§pop().content.removeElementAt(0), _loc2_);
         
      }
      
      private function doSendAcceptToServer(param1:Friend_Action_Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            param1.stopImmediatePropagation();
            if(!_loc3_)
            {
               this._soundProxy.playButtonClick();
               if(!_loc3_)
               {
                  addr0041:
                  facade.sendNotification(ServerNotificationConstants.CLIENT_PLAYER_ACCEPT_FRIEND,param1.friendVo.fId);
               }
               return;
            }
         }
         §§goto(addr0041);
      }
      
      private function doSendRejectToServer(param1:Friend_Action_Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            param1.stopImmediatePropagation();
            if(_loc3_)
            {
               this._soundProxy.playButtonClick();
               if(!_loc2_)
               {
                  addr003d:
                  facade.sendNotification(ServerNotificationConstants.CLIENT_PLAYER_DECLINE_FRIEND,param1.friendVo.fId);
               }
               return;
            }
         }
         §§goto(addr003d);
      }
      
      private function doSendCancelToServer(param1:Friend_Action_Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            param1.stopImmediatePropagation();
            if(_loc3_ || _loc2_)
            {
               §§goto(addr004d);
            }
            §§goto(addr0062);
         }
         addr004d:
         this._soundProxy.playButtonClick();
         if(!(_loc2_ && _loc2_))
         {
            addr0062:
            facade.sendNotification(ServerNotificationConstants.CLIENT_PLAYER_CANCEL_FRIEND,param1.friendVo.fId);
         }
      }
      
      private function openInviteMiniLayer(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            param1.stopImmediatePropagation();
            if(_loc3_)
            {
               this._soundProxy.playButtonClick();
               if(_loc3_)
               {
                  facade.sendNotification(MiniLayerConstants.OPEN_MINI_FRIENDINVITE);
               }
            }
         }
      }
      
      private function openInviteSlayerInvite(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            param1.stopImmediatePropagation();
            if(!(_loc2_ && Boolean(this)))
            {
               this._soundProxy.playButtonClick();
               if(!_loc2_)
               {
                  sendNotification(ApplicationNotificationConstants.OPEN_SLAYER_EMAIL_DIALOG);
               }
            }
         }
      }
   }
}

