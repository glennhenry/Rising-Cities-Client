package net.bigpoint.cityrama.view.friendBook
{
   import mx.events.CloseEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.cityrama.model.externalInterface.ExternalInterfaceProxy;
   import net.bigpoint.cityrama.model.friends.FriendTabProxy;
   import net.bigpoint.cityrama.model.friends.FriendsProxy;
   import net.bigpoint.cityrama.view.friendBook.ui.components.FriendBook;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.components.TabBar;
   import spark.events.IndexChangeEvent;
   
   public class FriendPopupMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "FriendPopupMediator";
      
      public static const FRIENDS:String = "FRIENDS";
      
      public static const INVITE:String = "INVITE";
      
      public static const MESSAGES:String = "MESSAGES";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "FriendPopupMediator";
         if(!(_loc1_ && _loc1_))
         {
            FRIENDS = "FRIENDS";
            if(_loc2_)
            {
               §§goto(addr0042);
            }
            §§goto(addr0058);
         }
         addr0042:
         INVITE = "INVITE";
         if(_loc2_ || _loc1_)
         {
            addr0058:
            MESSAGES = "MESSAGES";
         }
         return;
      }
      §§goto(addr0058);
      
      private var _currentIndex:int = -1;
      
      private var _friendTabProxy:FriendTabProxy;
      
      private var _friendsProxy:FriendsProxy;
      
      private var _flashVarsProxy:FlashVarsProxy;
      
      public function FriendPopupMediator(param1:String, param2:Object)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(this)))
         {
            super(param1,param2);
            if(_loc3_)
            {
               addr002a:
               this.prepareProxies();
            }
            return;
         }
         §§goto(addr002a);
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.onRegister();
            if(!_loc2_)
            {
               addr001f:
               this.setupListeners();
               if(!_loc2_)
               {
                  this.setInitialValues();
               }
            }
            return;
         }
         §§goto(addr001f);
      }
      
      private function setInitialValues() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            this.component.tabs = this._friendTabProxy.tabs;
            if(_loc1_ || _loc1_)
            {
               if(this._friendsProxy.newFriends)
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     this._friendTabProxy.updateTabInfo(0,"","",true,true);
                  }
               }
            }
         }
      }
      
      private function prepareProxies() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this._friendTabProxy = facade.retrieveProxy(FriendTabProxy.NAME) as FriendTabProxy;
            if(!_loc2_)
            {
               this._friendsProxy = facade.retrieveProxy(FriendsProxy.NAME) as FriendsProxy;
               if(!(_loc2_ && _loc2_))
               {
                  addr005f:
                  this._flashVarsProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
               }
            }
            return;
         }
         §§goto(addr005f);
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            facade.removeMediator(FriendsTabMediator.NAME);
            if(_loc2_)
            {
               §§goto(addr0038);
            }
            §§goto(addr0048);
         }
         addr0038:
         facade.removeMediator(InviteTabMediator.NAME);
         if(_loc2_)
         {
            addr0048:
            super.onRemove();
            if(!(_loc1_ && _loc1_))
            {
               this.removeListeners();
            }
         }
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.FRIEND_TAB_UPDATE,ApplicationNotificationConstants.FRIENDS_UPDATE];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = param1.getName();
         if(!(_loc3_ && Boolean(this)))
         {
            §§push(ApplicationNotificationConstants.FRIEND_TAB_UPDATE);
            if(!_loc3_)
            {
               §§push(_loc2_);
               if(_loc4_ || Boolean(_loc2_))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc3_)
                     {
                        §§push(0);
                        if(_loc4_)
                        {
                        }
                     }
                     else
                     {
                        addr01a9:
                        §§push(1);
                        if(_loc4_ || Boolean(this))
                        {
                        }
                     }
                     §§goto(addr01c9);
                  }
                  else
                  {
                     §§goto(addr01a5);
                  }
               }
               addr01a5:
               §§goto(addr01a4);
            }
            addr01a4:
            if(ApplicationNotificationConstants.FRIENDS_UPDATE === _loc2_)
            {
               §§goto(addr01a9);
            }
            else
            {
               §§push(2);
            }
            addr01c9:
            switch(§§pop())
            {
               case 0:
                  §§push(this.component);
                  if(_loc4_)
                  {
                     §§push(false);
                     if(!_loc3_)
                     {
                        §§pop().tabEventEnabled = §§pop();
                        if(_loc4_ || Boolean(this))
                        {
                           §§push(this.component);
                           if(!_loc3_)
                           {
                              §§pop().tabs = this._friendTabProxy.tabs;
                              if(_loc3_)
                              {
                                 break;
                              }
                              §§push(this.component);
                              if(!_loc3_)
                              {
                                 addr005a:
                                 §§pop().tabBar.selectedIndex = this._friendTabProxy.selectedIndex;
                                 if(!(_loc3_ && Boolean(param1)))
                                 {
                                    addr0074:
                                    §§push(this.component);
                                    if(!_loc3_)
                                    {
                                       addr007d:
                                       §§pop().tabEventEnabled = true;
                                       addr007c:
                                       if(_loc4_ || _loc3_)
                                       {
                                          break;
                                       }
                                       addr0129:
                                       §§push(this.component);
                                    }
                                    addr012c:
                                    §§pop().tabBar.selectedIndex = this._friendTabProxy.selectedIndex;
                                    if(_loc4_ || _loc3_)
                                    {
                                    }
                                    break;
                                 }
                                 addr00a3:
                                 §§push(this._friendTabProxy);
                                 if(_loc4_ || Boolean(_loc2_))
                                 {
                                    §§push(0);
                                    if(_loc4_ || Boolean(param1))
                                    {
                                       §§push("");
                                       if(!(_loc3_ && Boolean(param1)))
                                       {
                                          §§push("");
                                          if(_loc4_ || Boolean(_loc2_))
                                          {
                                             §§push(true);
                                             if(_loc4_)
                                             {
                                                §§push(true);
                                                if(_loc4_)
                                                {
                                                   §§pop().updateTabInfo(§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                   if(_loc3_ && Boolean(_loc2_))
                                                   {
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   addr011f:
                                                   §§pop().updateTabInfo(§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                   if(!_loc4_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                §§goto(addr0129);
                                             }
                                             else
                                             {
                                                addr011e:
                                                §§push(false);
                                             }
                                             §§goto(addr011f);
                                          }
                                          else
                                          {
                                             addr011d:
                                             §§push(true);
                                          }
                                          §§goto(addr011e);
                                       }
                                       else
                                       {
                                          addr011b:
                                          §§push("");
                                       }
                                       §§goto(addr011d);
                                    }
                                    else
                                    {
                                       addr0119:
                                       §§push("");
                                    }
                                    §§goto(addr011b);
                                 }
                                 else
                                 {
                                    addr0117:
                                    §§push(0);
                                 }
                                 §§goto(addr0119);
                                 §§goto(addr0129);
                              }
                              §§goto(addr012c);
                           }
                           §§goto(addr007c);
                        }
                        §§goto(addr0074);
                     }
                     §§goto(addr007d);
                  }
                  §§goto(addr005a);
               case 1:
                  if(this._friendsProxy.newFriends)
                  {
                     if(_loc3_)
                     {
                        break;
                     }
                     §§goto(addr00a3);
                  }
                  else
                  {
                     §§push(this._friendTabProxy);
                  }
                  §§goto(addr0117);
            }
            return;
         }
         §§goto(addr01a9);
      }
      
      public function get component() : FriendBook
      {
         return super.viewComponent as FriendBook;
      }
      
      public function setData(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            if(param1 is String)
            {
               addr00ff:
               var _loc2_:* = param1 as String;
               if(_loc4_ || Boolean(param1))
               {
                  §§push("invite");
                  if(_loc4_)
                  {
                     if(§§pop() === _loc2_)
                     {
                        if(!_loc3_)
                        {
                           addr0132:
                           §§push(0);
                           if(_loc4_)
                           {
                           }
                        }
                        else
                        {
                           addr0146:
                           §§push(1);
                           if(_loc4_ || Boolean(_loc2_))
                           {
                           }
                        }
                        §§goto(addr0166);
                     }
                     else
                     {
                        §§goto(addr0141);
                     }
                  }
                  addr0141:
                  if("messages" === _loc2_)
                  {
                     §§goto(addr0146);
                  }
                  else
                  {
                     §§push(2);
                  }
                  addr0166:
                  switch(§§pop())
                  {
                     case 0:
                        if(!this._flashVarsProxy.friendInviteDisabled)
                        {
                           if(!(_loc3_ && Boolean(_loc2_)))
                           {
                              §§push(this.component);
                              if(!_loc3_)
                              {
                                 §§pop().tabBar.selectedIndex = 2;
                                 if(_loc4_ || Boolean(this))
                                 {
                                    addr007e:
                                    this.handleIndexChange();
                                    if(_loc3_ && _loc3_)
                                    {
                                    }
                                    break;
                                 }
                              }
                              else
                              {
                                 addr00b1:
                                 §§pop().tabBar.selectedIndex = 2;
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                              }
                           }
                           this.handleIndexChange();
                           if(_loc3_ && _loc3_)
                           {
                           }
                           break;
                        }
                        §§push(this.component);
                        if(!_loc3_)
                        {
                           §§pop().tabBar.selectedIndex = 0;
                           if(!(_loc4_ || _loc3_))
                           {
                              addr00ed:
                              this.handleIndexChange();
                              if(_loc3_)
                              {
                              }
                              break;
                           }
                           §§goto(addr007e);
                        }
                        §§goto(addr00b1);
                     case 1:
                        §§push(this.component);
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           §§goto(addr00b1);
                        }
                        else
                        {
                           addr00d8:
                           §§pop().tabBar.selectedIndex = 2;
                           if(_loc3_ && Boolean(this))
                           {
                              break;
                           }
                           §§goto(addr00ed);
                        }
                        break;
                     default:
                        §§goto(addr00d8);
                        §§push(this.component);
                  }
                  §§goto(addr0176);
               }
               §§goto(addr0132);
            }
            addr0176:
            return;
         }
         §§goto(addr00ff);
      }
      
      private function setupListeners() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.component);
            if(!(_loc2_ && _loc1_))
            {
               §§pop().addEventListener(CloseEvent.CLOSE,this.handleClose);
               if(!_loc2_)
               {
                  addr0045:
                  this.component.addEventListener(IndexChangeEvent.CHANGE,this.handleIndexChange);
               }
               §§goto(addr0052);
            }
            §§goto(addr0045);
         }
         addr0052:
      }
      
      private function removeListeners() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.component);
            if(_loc1_ || _loc1_)
            {
               §§pop().removeEventListener(CloseEvent.CLOSE,this.handleClose);
               if(!(_loc2_ && _loc1_))
               {
                  addr004d:
                  this.component.removeEventListener(IndexChangeEvent.CHANGE,this.handleIndexChange);
               }
               §§goto(addr005a);
            }
            §§goto(addr004d);
         }
         addr005a:
      }
      
      private function handleClose(param1:CloseEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.getMediatorName());
         }
      }
      
      private function handleIndexChange(param1:IndexChangeEvent = null) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:TabBar = this.component.tabBar;
         if(!_loc5_)
         {
            if(_loc2_.selectedIndex == -1)
            {
               addr0033:
               §§push(0);
               if(_loc6_ || Boolean(param1))
               {
               }
               addr005a:
               §§push(§§pop());
            }
            else
            {
               §§push(int(_loc2_.selectedIndex));
               if(_loc6_ || Boolean(param1))
               {
                  §§goto(addr005a);
               }
            }
            var _loc3_:* = §§pop();
            if(_loc6_)
            {
               this._friendTabProxy.selectedIndex = _loc3_;
               if(_loc6_)
               {
                  this.component.showBackButton = false;
                  if(_loc6_ || _loc3_)
                  {
                     if(this._currentIndex != _loc3_)
                     {
                        if(_loc6_ || _loc3_)
                        {
                           addr009c:
                           this._currentIndex = _loc3_;
                           if(_loc6_ || Boolean(_loc2_))
                           {
                              this.cleanContainers();
                           }
                        }
                        §§push(this._currentIndex);
                        if(_loc6_)
                        {
                           var _loc4_:* = §§pop();
                           if(!(_loc5_ && Boolean(param1)))
                           {
                              §§push(0);
                              if(!(_loc5_ && Boolean(this)))
                              {
                                 §§push(_loc4_);
                                 if(!(_loc5_ && Boolean(_loc2_)))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc5_)
                                       {
                                          §§push(0);
                                          if(_loc5_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr01c1:
                                          §§push(1);
                                          if(_loc5_)
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(1);
                                       if(!(_loc5_ && Boolean(this)))
                                       {
                                          addr01a3:
                                          §§push(_loc4_);
                                          if(!_loc5_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc6_)
                                                {
                                                   §§goto(addr01c1);
                                                }
                                                else
                                                {
                                                   addr01db:
                                                   §§push(2);
                                                   if(_loc6_)
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(2);
                                                if(!_loc5_)
                                                {
                                                   addr01d7:
                                                   if(§§pop() === _loc4_)
                                                   {
                                                      §§goto(addr01db);
                                                   }
                                                   else
                                                   {
                                                      §§push(3);
                                                   }
                                                }
                                             }
                                             addr01f5:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   facade.sendNotification(ApplicationNotificationConstants.FRIENDBOOK_TAB_CHANGE,{
                                                      "container":this.component,
                                                      "content":FRIENDS
                                                   });
                                                   if(!_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   addr00fb:
                                                   this.handleCallMessaging();
                                                   if(_loc5_)
                                                   {
                                                   }
                                                   break;
                                                case 1:
                                                   if(!this._flashVarsProxy.friendInviteDisabled)
                                                   {
                                                      facade.sendNotification(ApplicationNotificationConstants.FRIENDBOOK_TAB_CHANGE,{
                                                         "container":this.component,
                                                         "content":INVITE
                                                      });
                                                      if(_loc5_)
                                                      {
                                                      }
                                                      break;
                                                   }
                                                   if(!_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr00fb);
                                                   break;
                                                case 2:
                                                   this.handleCallMessaging();
                                                   if(_loc5_)
                                                   {
                                                   }
                                             }
                                             addr0206:
                                             return;
                                             addr01f3:
                                          }
                                          §§goto(addr01d7);
                                       }
                                    }
                                    §§goto(addr01f3);
                                 }
                                 §§goto(addr01d7);
                              }
                              §§goto(addr01a3);
                           }
                           §§goto(addr01c1);
                        }
                        §§goto(addr01f5);
                     }
                     §§goto(addr0206);
                  }
               }
            }
            §§goto(addr009c);
         }
         §§goto(addr0033);
      }
      
      private function handleCallMessaging() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         var _loc1_:ExternalInterfaceProxy = facade.retrieveProxy(ExternalInterfaceProxy.NAME) as ExternalInterfaceProxy;
         if(!_loc3_)
         {
            _loc1_.openMessagingPHP();
         }
      }
      
      private function cleanContainers() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            if(this.component.content)
            {
               loop2:
               while(true)
               {
                  §§push(this.component);
                  if(_loc2_)
                  {
                     break;
                  }
                  do
                  {
                     if(§§pop().content.numElements)
                     {
                        §§push(this.component);
                        if(!(_loc2_ && _loc1_))
                        {
                           §§pop().content.removeElementAt(0);
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                        continue;
                     }
                  }
                  while(!_loc2_);
                  
                  while(true)
                  {
                     §§push(this.component);
                     addr00b7:
                     while(§§pop().sideMenu.numElements)
                     {
                        §§push(this.component);
                        if(_loc1_)
                        {
                           break loop2;
                        }
                     }
                     §§goto(addr00c1);
                  }
               }
               while(true)
               {
                  §§pop().sideMenu.removeElementAt(0);
                  if(!_loc1_)
                  {
                     break;
                  }
                  §§goto(addr00b4);
               }
               addr00c1:
               return;
               addr0054:
            }
            §§push(this.component);
            if(_loc1_ || Boolean(this))
            {
               if(§§pop().sideMenu)
               {
                  if(_loc1_ || Boolean(this))
                  {
                  }
                  §§goto(addr00b4);
               }
               §§goto(addr00c1);
            }
            §§goto(addr00b7);
         }
         §§goto(addr0054);
      }
   }
}

