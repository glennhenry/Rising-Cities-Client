package net.bigpoint.cityrama.model.externalInterface
{
   import flash.display.StageDisplayState;
   import flash.external.ExternalInterface;
   import flash.system.Security;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.LayoutProxy;
   import net.bigpoint.cityrama.model.friends.FriendsProxy;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuNavigationConstants;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.mainMenu.MainMenuMediator;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class ExternalInterfaceProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "ExternalInterfaceProxy";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "ExternalInterfaceProxy";
      }
      
      private var _friendProxy:FriendsProxy;
      
      public function ExternalInterfaceProxy(param1:Object = null)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            super(NAME,param1);
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            Security.allowDomain("*");
            if(_loc2_ || Boolean(this))
            {
               if(ExternalInterface.available)
               {
                  if(_loc2_ || Boolean(this))
                  {
                     ExternalInterface.addCallback("jsCallbackPlaySound",this.playSound);
                     if(!(_loc1_ && Boolean(this)))
                     {
                        ExternalInterface.addCallback("jsCallbackOpenTab",this.openTab);
                        if(!_loc1_)
                        {
                           ExternalInterface.addCallback("jsCallbackPmsRead",this.allMessagesRead);
                           if(_loc2_)
                           {
                              ExternalInterface.addCallback("jsCallbackOpenTreasury",this.openTreasury);
                              §§goto(addr009c);
                           }
                        }
                        §§goto(addr00d8);
                     }
                     addr009c:
                     if(!(_loc1_ && Boolean(this)))
                     {
                        addr00c3:
                        ExternalInterface.addCallback("jsCallbackMouseWheel",this.mouseWheel);
                        if(!_loc1_)
                        {
                           addr00d8:
                           this._friendProxy = FriendsProxy(facade.retrieveProxy(FriendsProxy.NAME));
                        }
                     }
                     return;
                  }
                  §§goto(addr00c3);
               }
               §§goto(addr00d8);
            }
            §§goto(addr00c3);
         }
         §§goto(addr00d8);
      }
      
      private function mouseWheel(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            if(param1 > 0)
            {
               if(!_loc3_)
               {
                  sendNotification(OptionsMenuNavigationConstants.TOGGLE_ZOOM_IN);
                  if(_loc3_ && Boolean(param1))
                  {
                  }
               }
            }
            else
            {
               sendNotification(OptionsMenuNavigationConstants.TOGGLE_ZOOM_OUT);
            }
         }
      }
      
      private function openTreasury() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            sendNotification(ApplicationNotificationConstants.OPEN_CITY_TREASURY);
         }
      }
      
      public function playSound(param1:String) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:SoundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         var _loc3_:* = param1;
         if(_loc4_ || Boolean(param1))
         {
            if("buttonClick" === _loc3_)
            {
               addr0077:
               §§push(0);
               if(_loc4_ || Boolean(_loc2_))
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  _loc2_.playButtonClick();
                  if(_loc5_ && Boolean(this))
                  {
                  }
            }
            return;
         }
         §§goto(addr0077);
      }
      
      public function openTab(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:LayoutProxy = null;
         var _loc3_:MainMenuMediator = null;
         var _loc4_:* = param1;
         if(_loc6_)
         {
            §§push("friends");
            if(_loc6_)
            {
               §§push(_loc4_);
               if(_loc6_)
               {
                  if(§§pop() !== §§pop())
                  {
                     §§push("invite");
                     if(_loc6_ || Boolean(_loc3_))
                     {
                        addr013d:
                        §§push(_loc4_);
                        if(_loc6_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc5_ && Boolean(param1)))
                              {
                                 §§push(1);
                                 if(_loc5_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr0179);
                              }
                              §§goto(addr0199);
                           }
                           else
                           {
                              §§goto(addr0175);
                           }
                        }
                        addr0175:
                        §§goto(addr0173);
                     }
                     addr0173:
                     if("close" === _loc4_)
                     {
                        §§goto(addr0179);
                     }
                     else
                     {
                        §§push(3);
                     }
                     addr0199:
                     switch(§§pop())
                     {
                        case 0:
                        case 1:
                           facade.sendNotification(ApplicationNotificationConstants.OPEN_FRIENDBOOK_POPUP,param1);
                           if(_loc5_ && Boolean(_loc3_))
                           {
                           }
                           break;
                        case 2:
                           _loc2_ = facade.retrieveProxy(LayoutProxy.NAME) as LayoutProxy;
                           if(!(_loc5_ && Boolean(param1)))
                           {
                              if(_loc2_.inFullScreenBeforeOpenFriendBook)
                              {
                                 if(_loc6_ || Boolean(_loc3_))
                                 {
                                    if(_loc2_.displayState != StageDisplayState.FULL_SCREEN)
                                    {
                                       if(_loc6_)
                                       {
                                          addr008e:
                                          _loc2_.changeDisplayState();
                                       }
                                    }
                                    addr0093:
                                    _loc3_ = facade.retrieveMediator(MainMenuMediator.NAME) as MainMenuMediator;
                                    if(_loc6_ || Boolean(_loc2_))
                                    {
                                       §§push(_loc3_.component);
                                       if(!(_loc5_ && Boolean(_loc3_)))
                                       {
                                          §§push(§§pop().friends);
                                          if(!_loc5_)
                                          {
                                             if(!§§pop().selected)
                                             {
                                                break;
                                             }
                                             if(_loc5_)
                                             {
                                                break;
                                             }
                                             addr00ec:
                                             addr00e9:
                                             §§push(_loc3_.component.friends);
                                          }
                                          §§pop().selected = false;
                                          break;
                                       }
                                       §§goto(addr00ec);
                                    }
                                    §§goto(addr00e9);
                                 }
                                 §§goto(addr008e);
                              }
                           }
                           §§goto(addr0093);
                     }
                     return;
                  }
                  if(!_loc5_)
                  {
                     §§push(0);
                     if(_loc5_)
                     {
                     }
                  }
                  else
                  {
                     addr0179:
                     §§push(2);
                     if(_loc5_ && Boolean(_loc2_))
                     {
                     }
                  }
                  §§goto(addr0199);
                  §§goto(addr0179);
               }
               §§goto(addr0175);
            }
            §§goto(addr013d);
         }
         §§goto(addr0179);
      }
      
      public function openMessagingPHP() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(ExternalInterface.available)
            {
               if(_loc2_)
               {
                  ExternalInterface.call("showPms");
               }
            }
         }
      }
      
      public function updateInbox() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            if(ExternalInterface.available)
            {
               if(!_loc1_)
               {
                  addr002d:
                  ExternalInterface.call("updateInbox");
               }
            }
            return;
         }
         §§goto(addr002d);
      }
      
      public function updateMarket() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            if(ExternalInterface.available)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  ExternalInterface.call("updateShop");
               }
            }
         }
      }
      
      private function allMessagesRead() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            this._friendProxy.newMessages = false;
            if(_loc1_ || _loc1_)
            {
               addr003d:
               sendNotification(ApplicationNotificationConstants.ALL_MESSAGES_READ);
            }
            return;
         }
         §§goto(addr003d);
      }
      
      public function cinemaVideoAvailable() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            if(ExternalInterface.available)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  return ExternalInterface.call("cinemaCheck");
               }
            }
         }
         return false;
      }
      
      public function openExternalCinema() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            if(ExternalInterface.available)
            {
               if(_loc1_ || _loc2_)
               {
                  addr002c:
                  ExternalInterface.call("cinemaShow");
               }
            }
            return;
         }
         §§goto(addr002c);
      }
      
      public function closeExternalCinema() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(ExternalInterface.available)
            {
               if(!_loc1_)
               {
                  ExternalInterface.call("cinemaHide");
               }
            }
         }
      }
   }
}

