package net.bigpoint.cityrama.view.mainMenu
{
   import flash.display.Sprite;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.ServerFeatureConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.friends.FriendsProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.horizon.vo.HorizionSettingsVo;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.cityTreasury.CityTreasuryMediator;
   import net.bigpoint.cityrama.view.friendBook.FriendPopupMediator;
   import net.bigpoint.cityrama.view.ingameStore.IngameStoreBookMediator;
   import net.bigpoint.cityrama.view.mainMenu.ui.components.MainMenuComponent;
   import net.bigpoint.cityrama.view.mainMenu.ui.components.QuadToggleButton;
   import net.bigpoint.cityrama.view.mainMenu.ui.events.QuadButtonEvent;
   import net.bigpoint.cityrama.view.storageBook.StoragePopupMediator;
   import net.bigpoint.cityrama.view.worldmap.WorldMapLayerMediator;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class MainMenuMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "MainMenuMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         NAME = "MainMenuMediator";
      }
      
      private var _gameConfigProxy:GameConfigProxy;
      
      private var _flashvarsProxy:FlashVarsProxy;
      
      private var _friendProxy:FriendsProxy;
      
      private var _soundProxy:SoundProxy;
      
      private var _cookieProxy:LocalStorageProxy;
      
      private var _featureProxy:FeatureProxy;
      
      private var _dead:Boolean;
      
      public function MainMenuMediator(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super(NAME,param1);
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super.onRegister();
            if(_loc1_ || _loc1_)
            {
               this.prepareProxies();
               if(!_loc2_)
               {
                  addr004e:
                  this.setupListeners();
                  if(!_loc2_)
                  {
                     §§goto(addr0059);
                  }
                  §§goto(addr006c);
               }
               addr0059:
               this.setupInitialProperties();
               if(!(_loc2_ && _loc2_))
               {
                  addr006c:
                  this.setToolTip();
               }
               return;
            }
            §§goto(addr004e);
         }
         §§goto(addr006c);
      }
      
      private function setupInitialProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.component);
            if(!_loc2_)
            {
               §§push(§§pop().market);
               if(_loc1_)
               {
                  §§push(this._featureProxy.marketplaceFeatureUnlocked);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§push(!§§pop());
                     if(_loc1_)
                     {
                        var _temp_2:* = §§pop();
                        §§push(_temp_2);
                        if(!_temp_2)
                        {
                           if(!_loc2_)
                           {
                              §§pop();
                              if(_loc1_ || Boolean(this))
                              {
                                 addr0057:
                                 §§push(this._gameConfigProxy.marketPlaceMaintenance);
                                 if(_loc1_ || _loc1_)
                                 {
                                    §§push(§§pop());
                                    if(_loc1_ || _loc2_)
                                    {
                                       addr0079:
                                       §§pop().inactive = §§pop();
                                       if(_loc1_ || _loc2_)
                                       {
                                          §§push(this.component);
                                          if(!(_loc2_ && Boolean(this)))
                                          {
                                             §§push(§§pop().friends);
                                             if(_loc1_)
                                             {
                                                §§push(this._friendProxy);
                                                if(_loc1_)
                                                {
                                                   §§push(§§pop().newFriends);
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc1_)
                                                      {
                                                         var _temp_9:* = §§pop();
                                                         §§push(_temp_9);
                                                         if(!_temp_9)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               §§pop();
                                                               §§goto(addr00e2);
                                                            }
                                                            §§goto(addr00e1);
                                                         }
                                                      }
                                                   }
                                                   addr00e2:
                                                   §§goto(addr00d9);
                                                }
                                                addr00d9:
                                                §§goto(addr00d5);
                                             }
                                             addr00d5:
                                             §§push(this._friendProxy.newMessages);
                                             if(_loc1_)
                                             {
                                                addr00e1:
                                                §§push(§§pop());
                                             }
                                             §§pop().showBadge = §§pop();
                                             if(_loc1_)
                                             {
                                                §§push(this.component);
                                                if(_loc1_)
                                                {
                                                   addr00fe:
                                                   §§pop().market.showBadge = this._flashvarsProxy.offerSold;
                                                   addr00f2:
                                                   addr00f5:
                                                   if(!(_loc2_ && _loc1_))
                                                   {
                                                      §§goto(addr011b);
                                                   }
                                                   §§goto(addr0138);
                                                }
                                                addr011b:
                                                this.component.cursorGroup.hipButton.enabled = this._featureProxy.improvementFeatureUnlocked;
                                                addr0118:
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   addr0138:
                                                   this.setButtonStates();
                                                }
                                                §§goto(addr013d);
                                             }
                                             addr013d:
                                             return;
                                          }
                                          §§goto(addr00f2);
                                       }
                                       §§goto(addr0138);
                                    }
                                 }
                                 §§goto(addr00fe);
                              }
                              §§goto(addr00f5);
                           }
                        }
                        §§goto(addr0079);
                     }
                  }
                  §§goto(addr00fe);
               }
               §§goto(addr0057);
            }
            §§goto(addr011b);
         }
         §§goto(addr0118);
      }
      
      private function setButtonStates() : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc1_:* = true;
         var _loc2_:PlayfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         if(!_loc3_)
         {
            §§push(Boolean(_loc2_));
            if(!_loc3_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(_temp_2)
               {
                  if(_loc4_ || Boolean(this))
                  {
                     addr0049:
                     §§pop();
                     if(!_loc3_)
                     {
                        addr004f:
                        §§push(_loc2_.config);
                        if(_loc4_)
                        {
                           §§push(§§pop());
                           if(_loc4_ || Boolean(_loc2_))
                           {
                              addr0067:
                              if(§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    addr007c:
                                    _loc1_ = _loc2_.config.id == HorizionSettingsVo.CITY_PLAYFIELD_ID;
                                    addr0073:
                                    if(!_loc3_)
                                    {
                                       addr0082:
                                       §§push(this.component);
                                       if(_loc4_ || Boolean(this))
                                       {
                                          §§push(§§pop().viewmodes);
                                          if(!_loc3_)
                                          {
                                             §§push(this._featureProxy.isFeatureEnabled(ServerFeatureConstants.EMERGENCY));
                                             if(_loc4_)
                                             {
                                                §§push(§§pop());
                                                if(_loc4_)
                                                {
                                                   var _temp_6:* = §§pop();
                                                   §§push(_temp_6);
                                                   if(_temp_6)
                                                   {
                                                      if(!(_loc3_ && _loc1_))
                                                      {
                                                         §§pop();
                                                         §§goto(addr00eb);
                                                      }
                                                   }
                                                   §§goto(addr00ea);
                                                }
                                                §§goto(addr00cf);
                                             }
                                             addr00eb:
                                             §§goto(addr00c9);
                                          }
                                          addr00c9:
                                          §§push(_loc1_);
                                          if(!_loc3_)
                                          {
                                             addr00cf:
                                             §§push(§§pop());
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                addr00ea:
                                                §§push(!§§pop());
                                             }
                                          }
                                          §§pop().inactive = §§pop();
                                          if(_loc4_)
                                          {
                                             addr00f7:
                                             §§push(this.component.playfieldSwitch);
                                             if(!(_loc3_ && _loc1_))
                                             {
                                                §§push(this._featureProxy);
                                                if(!(_loc3_ && Boolean(_loc2_)))
                                                {
                                                   §§push(ServerFeatureConstants.COASTAL_PLAYFIELD_SWITCH);
                                                   if(!(_loc3_ && _loc1_))
                                                   {
                                                      §§push(§§pop().isFeatureEnabled(§§pop()));
                                                      if(!_loc3_)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc4_)
                                                         {
                                                            var _temp_12:* = §§pop();
                                                            §§push(_temp_12);
                                                            §§push(_temp_12);
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  if(_loc4_ || Boolean(this))
                                                                  {
                                                                     §§pop();
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(this._featureProxy);
                                                                        if(_loc4_ || Boolean(_loc2_))
                                                                        {
                                                                           addr0175:
                                                                           §§push(ServerFeatureConstants.SUBURBAN_PLAYFIELD_SWITCH);
                                                                           if(_loc4_)
                                                                           {
                                                                              addr0181:
                                                                              §§push(§§pop().isFeatureEnabled(§§pop()));
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc4_ || Boolean(this))
                                                                                 {
                                                                                    addr019a:
                                                                                    var _temp_17:* = §§pop();
                                                                                    addr019b:
                                                                                    §§push(_temp_17);
                                                                                    if(!_temp_17)
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§pop();
                                                                                          addr01bb:
                                                                                          addr01a9:
                                                                                          addr01a5:
                                                                                          §§push(this._featureProxy.isFeatureEnabled(ServerFeatureConstants.MOUNTAIN_PLAYFIELD_SWITCH));
                                                                                          if(!(_loc3_ && Boolean(_loc2_)))
                                                                                          {
                                                                                             addr01cc:
                                                                                             §§push(§§pop());
                                                                                             if(_loc4_ || Boolean(_loc2_))
                                                                                             {
                                                                                                addr01db:
                                                                                                §§push(!§§pop());
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§pop().inactive = §§pop();
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          this.setToolTip();
                                                                                       }
                                                                                       §§goto(addr01e9);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr01db);
                                                                           }
                                                                           §§goto(addr01bb);
                                                                        }
                                                                        §§goto(addr01a9);
                                                                     }
                                                                     §§goto(addr01a5);
                                                                  }
                                                                  §§goto(addr01db);
                                                               }
                                                               §§goto(addr019a);
                                                            }
                                                            §§goto(addr019b);
                                                         }
                                                         §§goto(addr01db);
                                                      }
                                                      §§goto(addr01cc);
                                                   }
                                                   §§goto(addr0181);
                                                }
                                                §§goto(addr0175);
                                             }
                                             §§goto(addr01a5);
                                          }
                                          §§goto(addr01e9);
                                       }
                                       §§goto(addr00f7);
                                    }
                                 }
                                 addr01e9:
                                 return;
                              }
                              §§goto(addr0082);
                           }
                           §§goto(addr007c);
                        }
                        §§goto(addr0073);
                     }
                     §§goto(addr0082);
                  }
               }
               §§goto(addr0067);
            }
            §§goto(addr0049);
         }
         §§goto(addr004f);
      }
      
      private function prepareProxies() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this._gameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
            if(!(_loc2_ && Boolean(this)))
            {
               this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
               if(_loc1_)
               {
                  this._cookieProxy = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
                  if(!_loc2_)
                  {
                     this._flashvarsProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
                     if(!(_loc2_ && _loc1_))
                     {
                        this._friendProxy = facade.retrieveProxy(FriendsProxy.NAME) as FriendsProxy;
                        if(_loc1_)
                        {
                           addr00ab:
                           this._featureProxy = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
                        }
                        §§goto(addr00bd);
                     }
                  }
               }
            }
            §§goto(addr00ab);
         }
         addr00bd:
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super.onRemove();
            if(_loc2_ || _loc1_)
            {
               this.removeListeners();
            }
         }
      }
      
      override public function getMediatorName() : String
      {
         return MainMenuMediator.NAME;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.POPUP_REMOVE,ApplicationNotificationConstants.POPUP_REMOVE_ALL,ApplicationNotificationConstants.APPLICATION_MODE_BUILD_DEINITIALIZE,ApplicationNotificationConstants.MARKETPLACE_MAINTENANCE_CHANGED,ApplicationNotificationConstants.USERLEVEL_CHANGED,ApplicationNotificationConstants.NEW_MESSAGES,ApplicationNotificationConstants.ALL_MESSAGES_READ,ApplicationNotificationConstants.APPLICATION_MODE_BUILD_INITIALIZE,ApplicationNotificationConstants.FRIENDS_UPDATE,ApplicationNotificationConstants.MARKET_OFFER_SOLD,ApplicationNotificationConstants.POPUP_CREATE,ApplicationNotificationConstants.INFRASTRUCTURE_FEATURE_STATUS_CHANGED,ApplicationNotificationConstants.PLAYER_UNLOCKED_FEATURES_CHANGED,ApplicationNotificationConstants.SHOW_GUI,ApplicationNotificationConstants.SHOW_GUI_MAIN_MENU,ApplicationNotificationConstants.OPEN_GOOD_PURCHASE,ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ApplicationNotificationConstants.QUEST_LAYER_OPENED,ApplicationNotificationConstants
         .OPEN_NEWSSCREEN_POPUP,ApplicationNotificationConstants.HIDE_PLAYFIELD_LOADING_ANIMATION,ApplicationNotificationConstants.MAINMENUE_RESETBUTTONS];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:PopupSettingsVo = null;
         var _loc3_:* = param1.getName();
         if(_loc5_)
         {
            §§push(ApplicationNotificationConstants.INFRASTRUCTURE_FEATURE_STATUS_CHANGED);
            if(_loc5_ || Boolean(_loc3_))
            {
               §§push(_loc3_);
               if(!(_loc4_ && Boolean(_loc3_)))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc5_ || Boolean(_loc2_))
                     {
                        §§push(0);
                        if(_loc5_)
                        {
                        }
                     }
                     else
                     {
                        addr0e1e:
                        §§push(19);
                        if(_loc4_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(ApplicationNotificationConstants.HIDE_PLAYFIELD_LOADING_ANIMATION);
                     if(!_loc4_)
                     {
                        §§push(_loc3_);
                        if(!(_loc4_ && Boolean(_loc3_)))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc5_)
                              {
                                 §§push(1);
                                 if(_loc4_ && Boolean(param1))
                                 {
                                 }
                              }
                              else
                              {
                                 addr0a95:
                                 §§push(3);
                                 if(_loc4_)
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(ApplicationNotificationConstants.SHOW_GUI);
                              if(_loc5_)
                              {
                                 §§push(_loc3_);
                                 if(_loc5_ || Boolean(_loc3_))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc5_ || Boolean(param1))
                                       {
                                          §§push(2);
                                          if(_loc4_ && Boolean(param1))
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr0d71:
                                          §§push(16);
                                          if(_loc5_)
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(ApplicationNotificationConstants.SHOW_GUI_MAIN_MENU);
                                       if(!_loc4_)
                                       {
                                          §§push(_loc3_);
                                          if(_loc5_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc5_)
                                                {
                                                   §§goto(addr0a95);
                                                }
                                                else
                                                {
                                                   §§goto(addr0d71);
                                                }
                                             }
                                             else
                                             {
                                                §§push(ApplicationNotificationConstants.PLAYER_UNLOCKED_FEATURES_CHANGED);
                                                if(_loc5_)
                                                {
                                                   §§push(_loc3_);
                                                   if(!(_loc4_ && Boolean(_loc2_)))
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            §§push(4);
                                                            if(_loc4_ && Boolean(param1))
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr0b65:
                                                            §§push(7);
                                                            if(_loc4_ && Boolean(param1))
                                                            {
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(ApplicationNotificationConstants.APPLICATION_MODE_BUILD_INITIALIZE);
                                                         if(_loc5_)
                                                         {
                                                            §§push(_loc3_);
                                                            if(!(_loc4_ && Boolean(this)))
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(!(_loc4_ && Boolean(this)))
                                                                  {
                                                                     §§push(5);
                                                                     if(_loc4_)
                                                                     {
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr0b65);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(ApplicationNotificationConstants.POPUP_REMOVE);
                                                                  if(_loc5_ || Boolean(_loc2_))
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(_loc5_)
                                                                     {
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              §§push(6);
                                                                              if(_loc4_)
                                                                              {
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr0dd1:
                                                                              §§push(18);
                                                                              if(_loc5_ || Boolean(_loc3_))
                                                                              {
                                                                              }
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(ApplicationNotificationConstants.POPUP_CREATE);
                                                                           if(!(_loc4_ && Boolean(param1)))
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(_loc5_)
                                                                              {
                                                                                 addr0b5b:
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§goto(addr0b65);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr0c07:
                                                                                       §§push(10);
                                                                                       if(_loc5_)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(ApplicationNotificationConstants.APPLICATION_MODE_BUILD_DEINITIALIZE);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       addr0b85:
                                                                                       §§push(_loc3_);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          addr0b8c:
                                                                                          if(§§pop() === §§pop())
                                                                                          {
                                                                                             if(_loc5_ || Boolean(_loc3_))
                                                                                             {
                                                                                                §§push(8);
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr0e34:
                                                                                                §§push(20);
                                                                                                if(_loc4_ && Boolean(_loc3_))
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr0e54);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(ApplicationNotificationConstants.MARKETPLACE_MAINTENANCE_CHANGED);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr0bb6:
                                                                                                §§push(_loc3_);
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   if(§§pop() === §§pop())
                                                                                                   {
                                                                                                      if(_loc5_ || Boolean(this))
                                                                                                      {
                                                                                                         §§push(9);
                                                                                                         if(_loc4_ && Boolean(param1))
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr0e1e);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(ApplicationNotificationConstants.USERLEVEL_CHANGED);
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§push(_loc3_);
                                                                                                         if(_loc5_ || Boolean(param1))
                                                                                                         {
                                                                                                            if(§§pop() === §§pop())
                                                                                                            {
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  §§goto(addr0c07);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr0cb1:
                                                                                                                  §§push(13);
                                                                                                                  if(_loc5_ || Boolean(this))
                                                                                                                  {
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(ApplicationNotificationConstants.NEW_MESSAGES);
                                                                                                               if(_loc5_ || Boolean(param1))
                                                                                                               {
                                                                                                                  §§push(_loc3_);
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     if(§§pop() === §§pop())
                                                                                                                     {
                                                                                                                        if(_loc5_ || Boolean(param1))
                                                                                                                        {
                                                                                                                           §§push(11);
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr0e34);
                                                                                                                        }
                                                                                                                        §§goto(addr0e54);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(ApplicationNotificationConstants.ALL_MESSAGES_READ);
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           addr0c58:
                                                                                                                           §§push(_loc3_);
                                                                                                                           if(!(_loc4_ && Boolean(param1)))
                                                                                                                           {
                                                                                                                              addr0c67:
                                                                                                                              if(§§pop() === §§pop())
                                                                                                                              {
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    §§push(12);
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr0dd1);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(ApplicationNotificationConstants.FRIENDS_UPDATE);
                                                                                                                                 if(!(_loc4_ && Boolean(_loc3_)))
                                                                                                                                 {
                                                                                                                                    addr0c90:
                                                                                                                                    §§push(_loc3_);
                                                                                                                                    if(_loc5_ || Boolean(_loc2_))
                                                                                                                                    {
                                                                                                                                       addr0c9f:
                                                                                                                                       if(§§pop() === §§pop())
                                                                                                                                       {
                                                                                                                                          if(!(_loc4_ && Boolean(param1)))
                                                                                                                                          {
                                                                                                                                             §§goto(addr0cb1);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr0e1e);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push(ApplicationNotificationConstants.MARKET_OFFER_SOLD);
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             addr0cd0:
                                                                                                                                             §§push(_loc3_);
                                                                                                                                             if(_loc5_ || Boolean(_loc3_))
                                                                                                                                             {
                                                                                                                                                if(§§pop() === §§pop())
                                                                                                                                                {
                                                                                                                                                   if(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      §§push(14);
                                                                                                                                                      if(_loc4_ && Boolean(_loc3_))
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr0d71);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§push(ApplicationNotificationConstants.POPUP_REMOVE_ALL);
                                                                                                                                                   if(!(_loc4_ && Boolean(param1)))
                                                                                                                                                   {
                                                                                                                                                      addr0d10:
                                                                                                                                                      §§push(_loc3_);
                                                                                                                                                      if(!(_loc4_ && Boolean(_loc3_)))
                                                                                                                                                      {
                                                                                                                                                         addr0d1f:
                                                                                                                                                         if(§§pop() === §§pop())
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc4_ && Boolean(_loc2_)))
                                                                                                                                                            {
                                                                                                                                                               §§push(15);
                                                                                                                                                               if(_loc5_)
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr0e34);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0e54);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§push(ApplicationNotificationConstants.MAINMENUE_RESETBUTTONS);
                                                                                                                                                            if(!(_loc4_ && Boolean(this)))
                                                                                                                                                            {
                                                                                                                                                               addr0d50:
                                                                                                                                                               §§push(_loc3_);
                                                                                                                                                               if(!(_loc4_ && Boolean(_loc3_)))
                                                                                                                                                               {
                                                                                                                                                                  addr0d5f:
                                                                                                                                                                  if(§§pop() === §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc5_ || Boolean(param1))
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr0d71);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr0e1e);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§push(ApplicationNotificationConstants.OPEN_GOOD_PURCHASE);
                                                                                                                                                                     if(_loc5_ || Boolean(this))
                                                                                                                                                                     {
                                                                                                                                                                        addr0d90:
                                                                                                                                                                        §§push(_loc3_);
                                                                                                                                                                        if(!(_loc4_ && Boolean(_loc2_)))
                                                                                                                                                                        {
                                                                                                                                                                           addr0d9f:
                                                                                                                                                                           if(§§pop() === §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(17);
                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr0e34);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0e54);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§push(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE);
                                                                                                                                                                              if(!_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr0dc0:
                                                                                                                                                                                 §§push(_loc3_);
                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr0dc7:
                                                                                                                                                                                    if(§§pop() === §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr0dd1);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr0e34);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(ApplicationNotificationConstants.QUEST_LAYER_OPENED);
                                                                                                                                                                                       if(!(_loc4_ && Boolean(_loc2_)))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr0df8:
                                                                                                                                                                                          §§push(_loc3_);
                                                                                                                                                                                          if(!(_loc4_ && Boolean(_loc2_)))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr0e07:
                                                                                                                                                                                             if(§§pop() === §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr0e1e);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr0e34);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr0e30);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr0e34);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr0e30:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0e2f);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr0e34);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0e30);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0e2f);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0dc7);
                                                                                                                                                                     }
                                                                                                                                                                     addr0e2f:
                                                                                                                                                                     if(ApplicationNotificationConstants.OPEN_NEWSSCREEN_POPUP === _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr0e34);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§push(21);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0e54);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0e54);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0e07);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0e2f);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0d9f);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0df8);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0e54);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0d5f);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0df8);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0e54);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0e30);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0e2f);
                                                                                                                              }
                                                                                                                              §§goto(addr0e54);
                                                                                                                           }
                                                                                                                           §§goto(addr0e30);
                                                                                                                        }
                                                                                                                        §§goto(addr0d50);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr0d1f);
                                                                                                               }
                                                                                                               §§goto(addr0d50);
                                                                                                            }
                                                                                                            §§goto(addr0e54);
                                                                                                         }
                                                                                                         §§goto(addr0e07);
                                                                                                      }
                                                                                                      §§goto(addr0d10);
                                                                                                   }
                                                                                                   §§goto(addr0e54);
                                                                                                }
                                                                                                §§goto(addr0c9f);
                                                                                             }
                                                                                             §§goto(addr0c90);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr0c67);
                                                                                    }
                                                                                    §§goto(addr0dc0);
                                                                                 }
                                                                                 §§goto(addr0e54);
                                                                              }
                                                                              §§goto(addr0d5f);
                                                                           }
                                                                           §§goto(addr0c90);
                                                                        }
                                                                        §§goto(addr0e54);
                                                                     }
                                                                     §§goto(addr0d9f);
                                                                  }
                                                                  §§goto(addr0b85);
                                                               }
                                                               §§goto(addr0e54);
                                                            }
                                                            §§goto(addr0dc7);
                                                         }
                                                         §§goto(addr0d90);
                                                      }
                                                      §§goto(addr0e54);
                                                   }
                                                   §§goto(addr0e07);
                                                }
                                                §§goto(addr0c58);
                                             }
                                             §§goto(addr0e54);
                                          }
                                          §§goto(addr0e30);
                                       }
                                       §§goto(addr0d10);
                                    }
                                    §§goto(addr0e54);
                                 }
                                 §§goto(addr0b8c);
                              }
                              §§goto(addr0bb6);
                           }
                           §§goto(addr0e54);
                        }
                        §§goto(addr0d9f);
                     }
                     §§goto(addr0cd0);
                  }
                  addr0e54:
                  loop0:
                  while(true)
                  {
                     switch(§§pop())
                     {
                        case 0:
                           §§push(this.component);
                           if(_loc5_ || Boolean(param1))
                           {
                              §§push(§§pop().viewmodes);
                              if(!_loc5_)
                              {
                                 addr00e9:
                                 §§pop().dispatchChangeFlag = param1.getBody();
                                 if(_loc4_)
                                 {
                                 }
                                 break loop0;
                              }
                              §§push(this._featureProxy.isFeatureEnabled(ServerFeatureConstants.EMERGENCY));
                              if(_loc5_ || Boolean(param1))
                              {
                                 §§push(!§§pop());
                              }
                              §§pop().inactive = §§pop();
                              if(!_loc4_)
                              {
                                 this.setToolTip();
                                 if(!_loc4_)
                                 {
                                    break loop0;
                                 }
                                 addr0129:
                                 §§push(this.component);
                                 if(!_loc4_)
                                 {
                                    addr0132:
                                    §§push(§§pop().cursorGroup);
                                    if(_loc5_)
                                    {
                                       §§push(false);
                                       if(_loc5_)
                                       {
                                          §§pop().visible = §§pop();
                                          if(_loc5_)
                                          {
                                             §§push(this.component);
                                             if(_loc5_ || Boolean(_loc3_))
                                             {
                                                addr015f:
                                                §§pop().cursorGroup.includeInLayout = false;
                                                addr015e:
                                                if(!_loc4_)
                                                {
                                                   break loop0;
                                                }
                                                addr0249:
                                                §§push(this.component);
                                                if(_loc5_)
                                                {
                                                   addr0252:
                                                   §§push(§§pop().options);
                                                   if(!(_loc4_ && Boolean(param1)))
                                                   {
                                                      §§push(false);
                                                      if(!_loc4_)
                                                      {
                                                         addr026a:
                                                         §§pop().selected = §§pop();
                                                         if(_loc4_)
                                                         {
                                                         }
                                                         break loop0;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr029a:
                                                      §§push(false);
                                                   }
                                                   addr029b:
                                                   §§pop().selected = §§pop();
                                                   if(_loc4_ && Boolean(param1))
                                                   {
                                                   }
                                                   break loop0;
                                                }
                                             }
                                             addr02b4:
                                             §§pop().playfieldSwitch.selected = false;
                                             if(_loc5_ || Boolean(param1))
                                             {
                                             }
                                          }
                                          break loop0;
                                       }
                                       §§goto(addr015f);
                                    }
                                    §§goto(addr015e);
                                 }
                                 else
                                 {
                                    addr01a8:
                                    §§push(§§pop().options);
                                    if(!_loc4_)
                                    {
                                       §§push(false);
                                       if(!_loc4_)
                                       {
                                          §§pop().selected = §§pop();
                                          if(_loc5_ || Boolean(param1))
                                          {
                                          }
                                          break loop0;
                                       }
                                       §§goto(addr026a);
                                    }
                                    else
                                    {
                                       addr020e:
                                       §§push(false);
                                       if(!_loc4_)
                                       {
                                          §§pop().selected = §§pop();
                                          if(_loc5_ || Boolean(param1))
                                          {
                                          }
                                          break loop0;
                                       }
                                    }
                                 }
                                 §§goto(addr029b);
                              }
                              §§goto(addr0249);
                           }
                           else
                           {
                              addr01fd:
                              §§push(§§pop().options);
                              if(_loc5_ || Boolean(_loc3_))
                              {
                                 §§goto(addr020e);
                              }
                              else
                              {
                                 §§goto(addr029a);
                              }
                           }
                           §§goto(addr029a);
                        case 1:
                           this.setButtonStates();
                           if(!(_loc4_ && Boolean(this)))
                           {
                              break loop0;
                           }
                           addr0197:
                           §§push(this.component);
                           if(!(_loc4_ && Boolean(_loc3_)))
                           {
                              §§goto(addr01a8);
                           }
                           else
                           {
                              §§goto(addr0252);
                           }
                           break;
                        case 2:
                        case 3:
                           §§push(this.component);
                           if(_loc5_)
                           {
                              §§pop().visible = param1.getBody();
                              if(_loc4_)
                              {
                                 break loop0;
                              }
                              §§push(this.component);
                              if(_loc5_ || Boolean(this))
                              {
                                 §§push(§§pop().cursor);
                                 if(_loc5_ || Boolean(_loc3_))
                                 {
                                    §§push(false);
                                    if(!(_loc4_ && Boolean(this)))
                                    {
                                       §§pop().selected = §§pop();
                                       if(_loc4_)
                                       {
                                          break loop0;
                                       }
                                       §§push(this.component);
                                       if(!(_loc4_ && Boolean(_loc2_)))
                                       {
                                          §§goto(addr00e9);
                                          §§push(§§pop().viewmodes);
                                       }
                                       else
                                       {
                                          §§goto(addr0132);
                                       }
                                    }
                                    else
                                    {
                                       addr0120:
                                       §§pop().selected = §§pop();
                                       if(_loc5_)
                                       {
                                          §§goto(addr0129);
                                       }
                                       else
                                       {
                                          addr028e:
                                          §§push(this.component);
                                          if(_loc5_)
                                          {
                                             addr0297:
                                             §§goto(addr029a);
                                             §§push(§§pop().options);
                                          }
                                       }
                                    }
                                    §§goto(addr02b4);
                                 }
                                 else
                                 {
                                    addr011f:
                                    §§push(true);
                                 }
                                 §§goto(addr0120);
                              }
                              §§goto(addr01a8);
                           }
                           §§goto(addr0252);
                        case 4:
                           this.setButtonStates();
                           if(_loc5_ || Boolean(_loc2_))
                           {
                              break loop0;
                           }
                           §§goto(addr0129);
                           break;
                        case 5:
                           §§push(this.component);
                           if(_loc5_)
                           {
                              §§goto(addr011f);
                              §§push(§§pop().cursor);
                           }
                           else
                           {
                              §§goto(addr01fd);
                           }
                           §§goto(addr029a);
                        case 6:
                           _loc3_ = param1.getBody() as String;
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              §§push(IngameStoreBookMediator.NAME);
                              if(_loc5_)
                              {
                                 if(§§pop() === _loc3_)
                                 {
                                    if(!(_loc4_ && Boolean(_loc3_)))
                                    {
                                       §§push(0);
                                       if(_loc5_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr0330:
                                       §§push(1);
                                       if(_loc5_ || Boolean(_loc2_))
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(StoragePopupMediator.NAME);
                                    if(!(_loc4_ && Boolean(_loc2_)))
                                    {
                                       if(§§pop() === _loc3_)
                                       {
                                          if(!_loc4_)
                                          {
                                             §§goto(addr0330);
                                          }
                                          else
                                          {
                                             addr0394:
                                             §§push(3);
                                             if(_loc5_)
                                             {
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(FriendPopupMediator.NAME);
                                          if(!(_loc4_ && Boolean(param1)))
                                          {
                                             addr0357:
                                             if(§§pop() === _loc3_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§push(2);
                                                   if(_loc5_ || Boolean(_loc3_))
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   addr03aa:
                                                   §§push(4);
                                                   if(_loc5_)
                                                   {
                                                   }
                                                }
                                                addr03c2:
                                                if(_loc4_ && Boolean(param1))
                                                {
                                                   continue;
                                                }
                                                switch(§§pop())
                                                {
                                                   case 0:
                                                      §§push(this.component);
                                                      if(_loc5_ || Boolean(_loc2_))
                                                      {
                                                         §§pop().ingameStore.selected = false;
                                                         if(!(_loc5_ || Boolean(_loc2_)))
                                                         {
                                                            break loop0;
                                                         }
                                                         §§goto(addr0197);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr01fd);
                                                      }
                                                   case 1:
                                                      §§push(this.component);
                                                      if(!(_loc5_ || Boolean(param1)))
                                                      {
                                                         break;
                                                      }
                                                      §§pop().inventory.selected = false;
                                                      if(_loc4_)
                                                      {
                                                         break loop0;
                                                      }
                                                      §§push(this.component);
                                                      if(_loc5_ || Boolean(_loc3_))
                                                      {
                                                         §§goto(addr01fd);
                                                      }
                                                      else
                                                      {
                                                         addr0281:
                                                         §§pop().majorvilla.selected = false;
                                                         if(_loc4_)
                                                         {
                                                            break loop0;
                                                         }
                                                         §§goto(addr028e);
                                                      }
                                                      break;
                                                   case 2:
                                                      §§push(this.component);
                                                      if(_loc5_)
                                                      {
                                                         §§pop().friends.selected = false;
                                                         if(!(_loc4_ && Boolean(_loc2_)))
                                                         {
                                                            §§goto(addr0249);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr028e);
                                                         }
                                                      }
                                                      §§goto(addr0297);
                                                   case 3:
                                                      §§push(this.component);
                                                      if(!_loc4_)
                                                      {
                                                         §§goto(addr0281);
                                                      }
                                                      §§goto(addr0297);
                                                   case 4:
                                                      §§push(this.component);
                                                      break;
                                                   default:
                                                      break loop0;
                                                }
                                                §§goto(addr02b4);
                                             }
                                             else
                                             {
                                                §§push(CityTreasuryMediator.NAME);
                                                if(!(_loc4_ && Boolean(param1)))
                                                {
                                                   if(§§pop() === _loc3_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         §§goto(addr0394);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr03aa);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr03a5:
                                                      if(WorldMapLayerMediator.NAME === _loc3_)
                                                      {
                                                         §§goto(addr03aa);
                                                      }
                                                      else
                                                      {
                                                         §§push(5);
                                                      }
                                                      §§goto(addr03c2);
                                                   }
                                                   §§goto(addr03aa);
                                                }
                                                §§goto(addr03a5);
                                             }
                                          }
                                          §§goto(addr03a5);
                                       }
                                       §§goto(addr03c2);
                                    }
                                    §§goto(addr0357);
                                 }
                                 §§goto(addr03c2);
                              }
                              §§goto(addr03a5);
                           }
                           §§goto(addr0330);
                        case 7:
                           _loc2_ = param1.getBody() as PopupSettingsVo;
                           if(!_loc4_)
                           {
                              §§push(this.component);
                              if(_loc5_)
                              {
                                 §§push(§§pop().options);
                                 if(_loc5_)
                                 {
                                    if(§§pop().selected)
                                    {
                                       if(!_loc4_)
                                       {
                                          §§push(this.component);
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop().options);
                                             if(!_loc4_)
                                             {
                                                §§push(false);
                                                if(_loc5_ || Boolean(_loc3_))
                                                {
                                                   §§pop().selected = §§pop();
                                                   if(!(_loc5_ || Boolean(_loc2_)))
                                                   {
                                                      break loop0;
                                                   }
                                                   addr045d:
                                                   §§push(this.component);
                                                   if(_loc5_ || Boolean(_loc3_))
                                                   {
                                                      §§push(§§pop().cursor);
                                                      if(_loc5_ || Boolean(param1))
                                                      {
                                                         if(§§pop().selected)
                                                         {
                                                            if(!(_loc4_ && Boolean(this)))
                                                            {
                                                               §§push(_loc2_.noModeReset);
                                                               if(!_loc4_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(!(_loc4_ && Boolean(param1)))
                                                                     {
                                                                        addr04b0:
                                                                        §§push(this.component);
                                                                        if(_loc5_ || Boolean(_loc3_))
                                                                        {
                                                                           §§push(§§pop().cursor);
                                                                           if(_loc5_ || Boolean(_loc2_))
                                                                           {
                                                                              §§push(false);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§pop().selected = §§pop();
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr0626:
                                                                                    this.setToolTip();
                                                                                    if(_loc4_ && Boolean(_loc3_))
                                                                                    {
                                                                                    }
                                                                                    break loop0;
                                                                                 }
                                                                                 addr04e2:
                                                                                 §§push(this.component);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§push(§§pop().viewmodes);
                                                                                    if(_loc5_ || Boolean(this))
                                                                                    {
                                                                                       if(!§§pop().selected)
                                                                                       {
                                                                                          break loop0;
                                                                                       }
                                                                                       if(!(_loc4_ && Boolean(param1)))
                                                                                       {
                                                                                          addr0511:
                                                                                          §§push(this.component);
                                                                                          if(_loc5_ || Boolean(param1))
                                                                                          {
                                                                                             addr0525:
                                                                                             §§pop().viewmodes.selected = false;
                                                                                             addr0522:
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                break loop0;
                                                                                             }
                                                                                             addr0891:
                                                                                             §§push(this.component);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                addr089e:
                                                                                                §§pop().cursor.selected = false;
                                                                                                addr089a:
                                                                                                addr089d:
                                                                                                if(!(_loc4_ && Boolean(param1)))
                                                                                                {
                                                                                                   addr08af:
                                                                                                   §§push(this.component);
                                                                                                   if(!(_loc4_ && Boolean(_loc3_)))
                                                                                                   {
                                                                                                      addr08c0:
                                                                                                      §§pop().ingameStore.selected = false;
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         addr08cd:
                                                                                                         §§push(this.component);
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            §§push(§§pop().majorvilla);
                                                                                                            if(!(_loc4_ && Boolean(this)))
                                                                                                            {
                                                                                                               §§push(false);
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§pop().selected = §§pop();
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     break loop0;
                                                                                                                  }
                                                                                                                  addr08f7:
                                                                                                                  §§push(this.component);
                                                                                                                  if(_loc5_ || Boolean(_loc3_))
                                                                                                                  {
                                                                                                                     addr0908:
                                                                                                                     §§pop().inventory.selected = false;
                                                                                                                     if(_loc4_ && Boolean(param1))
                                                                                                                     {
                                                                                                                        break loop0;
                                                                                                                     }
                                                                                                                     §§push(this.component);
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        addr092a:
                                                                                                                        §§pop().friends.selected = false;
                                                                                                                        addr0929:
                                                                                                                        if(_loc4_ && Boolean(_loc2_))
                                                                                                                        {
                                                                                                                           break loop0;
                                                                                                                        }
                                                                                                                        addr093b:
                                                                                                                        §§push(this.component);
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           addr0948:
                                                                                                                           §§pop().market.selected = false;
                                                                                                                           addr0947:
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           break loop0;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr0967:
                                                                                                                  §§push(§§pop().majorvilla);
                                                                                                                  if(!(_loc5_ || Boolean(_loc2_)))
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(true);
                                                                                                                  if(!(_loc4_ && Boolean(_loc2_)))
                                                                                                                  {
                                                                                                                     §§pop().selected = §§pop();
                                                                                                                     if(_loc4_ && Boolean(param1))
                                                                                                                     {
                                                                                                                     }
                                                                                                                     break loop0;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr09a4:
                                                                                                               §§pop().selected = §§pop();
                                                                                                               break loop0;
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr0908);
                                                                                                      }
                                                                                                      §§goto(addr093b);
                                                                                                   }
                                                                                                   §§goto(addr0908);
                                                                                                }
                                                                                                §§goto(addr08f7);
                                                                                             }
                                                                                             §§goto(addr08c0);
                                                                                          }
                                                                                          §§goto(addr089a);
                                                                                       }
                                                                                       §§goto(addr093b);
                                                                                    }
                                                                                    §§goto(addr0525);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr0647:
                                                                                    §§push(§§pop().friends);
                                                                                    if(_loc5_ || Boolean(this))
                                                                                    {
                                                                                       §§push(this._friendProxy);
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§push(§§pop().newMessages);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§pop().showBadge = §§pop();
                                                                                             if(_loc5_ || Boolean(_loc2_))
                                                                                             {
                                                                                             }
                                                                                             break loop0;
                                                                                          }
                                                                                          addr079d:
                                                                                          §§push(§§pop());
                                                                                          if(_loc5_ || Boolean(_loc3_))
                                                                                          {
                                                                                             addr07ac:
                                                                                             §§pop().showBadge = §§pop();
                                                                                             if(!(_loc4_ && Boolean(this)))
                                                                                             {
                                                                                                break loop0;
                                                                                             }
                                                                                             §§goto(addr08af);
                                                                                          }
                                                                                          §§goto(addr092a);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr06ff:
                                                                                          §§push(§§pop().newFriends);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(_loc5_ || Boolean(this))
                                                                                             {
                                                                                                addr0724:
                                                                                                §§pop().showBadge = §§pop();
                                                                                                if(_loc5_ || Boolean(this))
                                                                                                {
                                                                                                   break loop0;
                                                                                                }
                                                                                                addr0820:
                                                                                                §§push(this.component);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   addr082d:
                                                                                                   §§pop().options.selected = false;
                                                                                                   addr082c:
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      addr0836:
                                                                                                      §§push(this.component);
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         addr083f:
                                                                                                         §§push(§§pop().cursor);
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            addr0848:
                                                                                                            §§push(Boolean(§§pop().selected));
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               var _temp_88:* = §§pop();
                                                                                                               §§push(_temp_88);
                                                                                                               if(_temp_88)
                                                                                                               {
                                                                                                                  if(_loc5_ || Boolean(_loc2_))
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     if(_loc5_ || Boolean(_loc3_))
                                                                                                                     {
                                                                                                                        addr087f:
                                                                                                                        if(param1.getName() == ApplicationNotificationConstants.MAINMENUE_RESETBUTTONS)
                                                                                                                        {
                                                                                                                           if(_loc5_ || Boolean(_loc3_))
                                                                                                                           {
                                                                                                                              §§goto(addr0891);
                                                                                                                           }
                                                                                                                           §§goto(addr08cd);
                                                                                                                        }
                                                                                                                        §§goto(addr08af);
                                                                                                                     }
                                                                                                                     §§goto(addr093b);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr087f);
                                                                                                         }
                                                                                                         §§goto(addr089d);
                                                                                                      }
                                                                                                      §§goto(addr089a);
                                                                                                   }
                                                                                                   §§goto(addr093b);
                                                                                                }
                                                                                                §§goto(addr08c0);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr07ac);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr0724);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr069b:
                                                                                       §§push(this._friendProxy);
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§push(§§pop().newMessages);
                                                                                          if(!(_loc4_ && Boolean(_loc3_)))
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(!(_loc4_ && Boolean(_loc3_)))
                                                                                             {
                                                                                                addr06c5:
                                                                                                var _temp_94:* = §§pop();
                                                                                                §§push(_temp_94);
                                                                                                §§push(_temp_94);
                                                                                                if(_loc5_ || Boolean(this))
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      if(!(_loc4_ && Boolean(param1)))
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            §§push(this._friendProxy);
                                                                                                            if(_loc5_ || Boolean(_loc2_))
                                                                                                            {
                                                                                                               §§goto(addr06ff);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr075e:
                                                                                                               §§push(§§pop().newMessages);
                                                                                                               if(!(_loc4_ && Boolean(_loc2_)))
                                                                                                               {
                                                                                                                  addr076f:
                                                                                                                  §§push(§§pop());
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     var _temp_99:* = §§pop();
                                                                                                                     addr0777:
                                                                                                                     §§push(_temp_99);
                                                                                                                     if(!_temp_99)
                                                                                                                     {
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           addr0781:
                                                                                                                           §§pop();
                                                                                                                           if(_loc5_ || Boolean(param1))
                                                                                                                           {
                                                                                                                              addr0794:
                                                                                                                              §§push(this._friendProxy.newFriends);
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 §§goto(addr079d);
                                                                                                                              }
                                                                                                                              §§goto(addr092a);
                                                                                                                           }
                                                                                                                           §§goto(addr0929);
                                                                                                                        }
                                                                                                                        §§goto(addr092a);
                                                                                                                     }
                                                                                                                     §§goto(addr07ac);
                                                                                                                  }
                                                                                                                  §§goto(addr092a);
                                                                                                               }
                                                                                                               §§goto(addr0781);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr0754:
                                                                                                            §§push(this._friendProxy);
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               §§goto(addr075e);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr0794);
                                                                                                      }
                                                                                                      §§goto(addr079d);
                                                                                                   }
                                                                                                   §§goto(addr0724);
                                                                                                }
                                                                                                §§goto(addr0777);
                                                                                             }
                                                                                             §§goto(addr076f);
                                                                                          }
                                                                                          §§goto(addr06c5);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr06ff);
                                                                                 }
                                                                              }
                                                                              §§goto(addr089e);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr054e:
                                                                              if(!§§pop().selected)
                                                                              {
                                                                                 break loop0;
                                                                              }
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§push(this.component);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§push(§§pop().cursor);
                                                                                    if(_loc5_ || Boolean(_loc3_))
                                                                                    {
                                                                                       §§push(false);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§pop().selected = §§pop();
                                                                                          if(_loc5_)
                                                                                          {
                                                                                          }
                                                                                          break loop0;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr089d);
                                                                                    }
                                                                                    §§goto(addr089e);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr080a:
                                                                                    §§push(§§pop().options);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       addr0813:
                                                                                       if(§§pop().selected)
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§goto(addr0820);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr0836);
                                                                                    }
                                                                                    §§goto(addr082c);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr08af);
                                                                        }
                                                                        §§goto(addr083f);
                                                                     }
                                                                     §§goto(addr0511);
                                                                  }
                                                                  §§goto(addr04e2);
                                                               }
                                                               §§goto(addr087f);
                                                            }
                                                            §§goto(addr0891);
                                                         }
                                                         §§goto(addr04e2);
                                                      }
                                                      §§goto(addr054e);
                                                   }
                                                   §§goto(addr0522);
                                                }
                                                §§goto(addr082d);
                                             }
                                             §§goto(addr0813);
                                          }
                                          §§goto(addr08c0);
                                       }
                                       §§goto(addr0511);
                                    }
                                    §§goto(addr045d);
                                 }
                                 §§goto(addr082c);
                              }
                              §§goto(addr0647);
                           }
                           §§goto(addr04b0);
                        case 8:
                           §§push(this.component);
                           if(_loc4_)
                           {
                              addr09a0:
                              §§push(§§pop().majorvilla);
                              break;
                           }
                           §§push(§§pop().cursor);
                           if(_loc5_ || Boolean(this))
                           {
                              §§goto(addr054e);
                           }
                           §§goto(addr0848);
                           break;
                        case 9:
                        case 10:
                           §§push(this.component);
                           if(!_loc4_)
                           {
                              §§push(§§pop().market);
                              if(_loc5_)
                              {
                                 §§push(this._featureProxy.marketplaceFeatureUnlocked);
                                 if(_loc5_ || Boolean(_loc3_))
                                 {
                                    §§push(!§§pop());
                                    if(_loc5_)
                                    {
                                       var _temp_105:* = §§pop();
                                       §§push(_temp_105);
                                       if(!_temp_105)
                                       {
                                          if(_loc5_)
                                          {
                                             addr05c3:
                                             §§pop();
                                             if(!(_loc4_ && Boolean(_loc2_)))
                                             {
                                                §§push(this._gameConfigProxy.marketPlaceMaintenance);
                                                if(_loc5_ || Boolean(param1))
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc4_)
                                                   {
                                                      addr05ee:
                                                      §§pop().inactive = §§pop();
                                                      if(_loc5_ || Boolean(_loc2_))
                                                      {
                                                         §§push(this.component);
                                                         if(!(_loc4_ && Boolean(_loc2_)))
                                                         {
                                                            §§pop().cursorGroup.hipButton.enabled = this._featureProxy.improvementFeatureUnlocked;
                                                            if(!_loc5_)
                                                            {
                                                               break loop0;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr074b:
                                                            §§push(§§pop().friends);
                                                            if(_loc5_)
                                                            {
                                                               §§goto(addr0754);
                                                            }
                                                            §§goto(addr0929);
                                                         }
                                                      }
                                                      §§goto(addr0626);
                                                   }
                                                   else
                                                   {
                                                      addr07e3:
                                                      §§pop().showBadge = §§pop();
                                                      if(_loc5_ || Boolean(_loc2_))
                                                      {
                                                         break loop0;
                                                      }
                                                   }
                                                   §§goto(addr093b);
                                                }
                                                §§goto(addr0948);
                                             }
                                             §§goto(addr0947);
                                          }
                                          §§goto(addr07e3);
                                       }
                                       §§goto(addr05ee);
                                    }
                                    §§goto(addr05c3);
                                 }
                                 §§goto(addr07e3);
                              }
                              else
                              {
                                 addr07dc:
                                 §§push(true);
                                 if(_loc5_)
                                 {
                                    §§goto(addr07e3);
                                 }
                              }
                              §§goto(addr0948);
                           }
                           §§goto(addr0967);
                        case 11:
                           §§push(this.component);
                           if(_loc5_)
                           {
                              §§goto(addr0647);
                           }
                           §§goto(addr0908);
                        case 12:
                           §§push(this.component);
                           if(_loc5_ || Boolean(this))
                           {
                              §§push(§§pop().friends);
                              if(!_loc4_)
                              {
                                 §§goto(addr069b);
                              }
                              §§goto(addr0754);
                           }
                           §§goto(addr083f);
                        case 13:
                           §§push(this.component);
                           if(_loc5_ || Boolean(param1))
                           {
                              §§goto(addr074b);
                           }
                           else
                           {
                              §§goto(addr083f);
                           }
                        case 14:
                           §§push(this.component);
                           if(_loc5_)
                           {
                              §§push(§§pop().market);
                              if(!(_loc4_ && Boolean(param1)))
                              {
                                 §§goto(addr07dc);
                              }
                              §§goto(addr0947);
                           }
                           else
                           {
                              §§goto(addr08c0);
                           }
                        case 15:
                        case 16:
                           §§push(this.component);
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              §§goto(addr080a);
                           }
                           §§goto(addr08c0);
                        case 17:
                        case 18:
                           §§push(this.component);
                           if(_loc5_ || Boolean(_loc2_))
                           {
                              §§goto(addr0967);
                           }
                           else
                           {
                              §§goto(addr09a0);
                           }
                        case 19:
                        case 20:
                           §§goto(addr09a0);
                           §§push(this.component);
                        default:
                           break loop0;
                     }
                     §§goto(addr09a4);
                  }
                  return;
               }
               §§goto(addr0b5b);
            }
            §§goto(addr0d10);
         }
         §§goto(addr0d71);
      }
      
      public function get component() : MainMenuComponent
      {
         return super.viewComponent as MainMenuComponent;
      }
      
      private function setupListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this.component);
            if(_loc2_ || _loc1_)
            {
               §§pop().cursor.addEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handleCursorSelectionChanged);
               if(!(_loc1_ && _loc2_))
               {
                  §§push(this.component);
                  if(!_loc1_)
                  {
                     §§pop().ingameStore.addEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handleIngameStoreSelectionChanged);
                     if(_loc2_ || _loc2_)
                     {
                        addr0069:
                        §§push(this.component);
                        if(!_loc1_)
                        {
                           §§pop().inventory.addEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handleInventorySelectionChanged);
                           if(_loc2_)
                           {
                              §§push(this.component);
                              if(_loc2_)
                              {
                                 §§pop().market.addEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handleMarketSelectionChanged);
                                 addr008f:
                                 if(_loc2_)
                                 {
                                    addr00ae:
                                    §§push(this.component);
                                    if(_loc2_ || _loc1_)
                                    {
                                       §§goto(addr00be);
                                    }
                                    §§goto(addr0137);
                                 }
                                 §§goto(addr014d);
                              }
                              §§goto(addr0137);
                           }
                           §§goto(addr00db);
                        }
                        §§goto(addr0150);
                     }
                     §§goto(addr0100);
                  }
                  addr00be:
                  §§pop().friends.addEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handleFriendsSelectionChanged);
                  if(!(_loc1_ && Boolean(this)))
                  {
                     addr00db:
                     §§push(this.component);
                     if(_loc2_)
                     {
                        §§pop().majorvilla.addEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handleMajorVillaSelectionChanged);
                        if(_loc2_ || _loc1_)
                        {
                           addr0100:
                           §§push(this.component);
                           if(_loc2_)
                           {
                              §§pop().options.addEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handleOptionsSelectionChanged);
                              if(_loc2_ || _loc1_)
                              {
                                 §§push(this.component);
                                 if(_loc2_)
                                 {
                                    §§goto(addr0137);
                                 }
                                 §§goto(addr0150);
                              }
                              §§goto(addr014d);
                           }
                           addr0137:
                           §§pop().viewmodes.addEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handleViewModeSelectionChanged);
                           if(_loc2_)
                           {
                              addr0150:
                              this.component.playfieldSwitch.addEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handlePlayfieldSwitchSelectionChanged);
                              addr014d:
                           }
                        }
                        §§goto(addr0161);
                     }
                     §§goto(addr0150);
                  }
                  addr0161:
                  return;
               }
               §§goto(addr00ae);
            }
            §§goto(addr008f);
         }
         §§goto(addr0069);
      }
      
      private function removeListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.component);
            if(_loc2_ || _loc1_)
            {
               §§pop().cursor.removeEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handleCursorSelectionChanged);
               if(_loc2_)
               {
                  §§push(this.component);
                  if(!_loc1_)
                  {
                     §§pop().ingameStore.removeEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handleIngameStoreSelectionChanged);
                     if(_loc2_ || _loc2_)
                     {
                        §§push(this.component);
                        if(!_loc1_)
                        {
                           §§pop().inventory.removeEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handleInventorySelectionChanged);
                           if(!(_loc1_ && _loc1_))
                           {
                              §§push(this.component);
                              if(_loc2_ || _loc2_)
                              {
                                 §§pop().market.removeEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handleMarketSelectionChanged);
                                 addr0097:
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    addr00be:
                                    §§push(this.component);
                                    if(_loc2_ || _loc2_)
                                    {
                                       §§pop().friends.removeEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handleFriendsSelectionChanged);
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          §§push(this.component);
                                          if(_loc2_)
                                          {
                                             addr00f3:
                                             §§pop().majorvilla.removeEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handleMajorVillaSelectionChanged);
                                             if(!_loc1_)
                                             {
                                                addr0108:
                                                §§push(this.component);
                                                if(!_loc1_)
                                                {
                                                   §§goto(addr0110);
                                                }
                                                §§goto(addr0158);
                                             }
                                             §§goto(addr0125);
                                          }
                                          §§goto(addr0110);
                                       }
                                       §§goto(addr0108);
                                    }
                                    §§goto(addr00f3);
                                 }
                                 §§goto(addr0155);
                              }
                              §§goto(addr013f);
                           }
                           §§goto(addr0155);
                        }
                        addr0110:
                        §§pop().options.removeEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handleOptionsSelectionChanged);
                        if(_loc2_)
                        {
                           addr0125:
                           §§push(this.component);
                           if(_loc2_ || Boolean(this))
                           {
                              addr013f:
                              §§pop().viewmodes.removeEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handleViewModeSelectionChanged);
                              if(!_loc1_)
                              {
                                 addr0158:
                                 this.component.playfieldSwitch.removeEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handlePlayfieldSwitchSelectionChanged);
                                 addr0155:
                              }
                              §§goto(addr0169);
                           }
                           §§goto(addr0158);
                        }
                        addr0169:
                        return;
                     }
                     §§goto(addr00be);
                  }
                  §§goto(addr0097);
               }
               §§goto(addr00be);
            }
            §§goto(addr013f);
         }
         §§goto(addr0155);
      }
      
      private function handleIngameStoreSelectionChanged(param1:QuadButtonEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:QuadToggleButton = param1.target as QuadToggleButton;
         if(_loc4_)
         {
            if(_loc2_.selected)
            {
               if(_loc4_ || Boolean(this))
               {
                  addr003b:
                  facade.sendNotification(ApplicationNotificationConstants.OPEN_INGAME_STORE_POPUP);
                  if(_loc4_ || _loc3_)
                  {
                     addr007e:
                     §§push(this.component);
                     if(!_loc3_)
                     {
                        §§push(§§pop().majorvilla);
                        if(!(_loc3_ && _loc3_))
                        {
                           if(§§pop().selected)
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr00be:
                                 this.component.majorvilla.selected = false;
                                 addr00bb:
                                 addr00b8:
                              }
                           }
                           return;
                        }
                        §§goto(addr00be);
                     }
                     §§goto(addr00bb);
                  }
               }
            }
            else
            {
               facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,IngameStoreBookMediator.NAME);
               if(!(_loc3_ && Boolean(param1)))
               {
                  §§goto(addr007e);
               }
            }
            §§goto(addr00b8);
         }
         §§goto(addr003b);
      }
      
      private function handleInventorySelectionChanged(param1:QuadButtonEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:QuadToggleButton = param1.target as QuadToggleButton;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_.selected)
            {
               if(!_loc4_)
               {
                  facade.sendNotification(ApplicationNotificationConstants.OPEN_STORAGE_POPUP);
                  if(!_loc4_)
                  {
                     addr0079:
                     §§push(this.component);
                     if(_loc3_)
                     {
                        §§push(§§pop().majorvilla);
                        if(!_loc4_)
                        {
                           if(§§pop().selected)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 addr00a4:
                                 this.component.majorvilla.selected = false;
                                 addr00a1:
                                 addr009e:
                              }
                           }
                           §§goto(addr00a8);
                        }
                        §§goto(addr00a4);
                     }
                     §§goto(addr00a1);
                  }
               }
               addr00a8:
               return;
            }
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,StoragePopupMediator.NAME);
            if(_loc3_)
            {
               §§goto(addr0079);
            }
         }
         §§goto(addr009e);
      }
      
      private function handleMarketSelectionChanged(param1:QuadButtonEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:QuadToggleButton = param1.target as QuadToggleButton;
         if(_loc4_)
         {
            §§push(this._gameConfigProxy);
            if(!(_loc3_ && Boolean(_loc2_)))
            {
               §§push(§§pop().marketPlaceMaintenance);
               if(!(_loc3_ && Boolean(this)))
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        _loc2_.selected = false;
                        if(!_loc3_)
                        {
                           facade.sendNotification(MiniLayerConstants.OPEN_MINI_MARKET_MAINTANCE);
                           if(!(_loc3_ && Boolean(_loc2_)))
                           {
                              addr00b0:
                              if(_loc2_.selected)
                              {
                                 if(!_loc3_)
                                 {
                                    addr00c1:
                                    §§push(this._gameConfigProxy.marketPlaceMaintenance);
                                    if(_loc4_)
                                    {
                                       addr00ca:
                                       if(§§pop())
                                       {
                                          if(_loc4_ || Boolean(_loc2_))
                                          {
                                             addr00dc:
                                             _loc2_.selected = false;
                                             if(!(_loc3_ && Boolean(param1)))
                                             {
                                                facade.sendNotification(MiniLayerConstants.OPEN_MINI_MARKET_MAINTANCE);
                                                if(_loc3_)
                                                {
                                                   addr01cc:
                                                   §§push(this.component);
                                                   if(!_loc3_)
                                                   {
                                                      addr01d4:
                                                      §§push(§§pop().majorvilla);
                                                      if(_loc4_)
                                                      {
                                                         §§push(false);
                                                         if(_loc4_)
                                                         {
                                                            §§pop().selected = §§pop();
                                                            if(_loc4_ || Boolean(param1))
                                                            {
                                                               addr01f5:
                                                               §§push(this.component);
                                                               if(_loc4_ || Boolean(param1))
                                                               {
                                                                  §§pop().options.selected = false;
                                                                  if(_loc4_)
                                                                  {
                                                                     addr0213:
                                                                     facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE_ALL);
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr022e:
                                                                        §§push(this.component);
                                                                        if(!(_loc3_ && Boolean(param1)))
                                                                        {
                                                                           addr023e:
                                                                           §§push(§§pop().majorvilla);
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(§§pop().selected)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr025a:
                                                                                    this.component.majorvilla.selected = false;
                                                                                    addr0259:
                                                                                    addr0256:
                                                                                    addr0253:
                                                                                 }
                                                                              }
                                                                              §§goto(addr025d);
                                                                           }
                                                                           §§goto(addr0259);
                                                                        }
                                                                        §§goto(addr0256);
                                                                     }
                                                                     §§goto(addr0253);
                                                                  }
                                                                  §§goto(addr025d);
                                                               }
                                                               §§goto(addr023e);
                                                            }
                                                            §§goto(addr0253);
                                                         }
                                                         §§goto(addr025a);
                                                      }
                                                      §§goto(addr0259);
                                                   }
                                                   §§goto(addr0256);
                                                }
                                                §§goto(addr022e);
                                             }
                                             else
                                             {
                                                addr0199:
                                                §§push(this.component);
                                                if(_loc4_ || _loc3_)
                                                {
                                                   §§pop().market.selected = false;
                                                   if(!_loc3_)
                                                   {
                                                      addr01b6:
                                                      §§push(this.component);
                                                      if(_loc4_)
                                                      {
                                                         addr01bf:
                                                         §§pop().friends.selected = false;
                                                         if(_loc4_)
                                                         {
                                                            §§goto(addr01cc);
                                                         }
                                                         §§goto(addr01f5);
                                                      }
                                                      §§goto(addr023e);
                                                   }
                                                   §§goto(addr01cc);
                                                }
                                             }
                                             §§goto(addr01d4);
                                          }
                                          §§goto(addr0253);
                                       }
                                       else
                                       {
                                          addr0109:
                                          addr0106:
                                          if(!this._featureProxy.marketplaceFeatureUnlocked)
                                          {
                                             if(_loc4_)
                                             {
                                                _loc2_.selected = false;
                                                if(_loc4_)
                                                {
                                                   §§goto(addr012a);
                                                }
                                             }
                                             else
                                             {
                                                addr0170:
                                                §§push(this.component);
                                                if(_loc4_)
                                                {
                                                   §§pop().ingameStore.selected = false;
                                                   if(!_loc3_)
                                                   {
                                                      addr0185:
                                                      §§push(this.component);
                                                      if(!_loc3_)
                                                      {
                                                         §§pop().inventory.selected = false;
                                                         if(!_loc3_)
                                                         {
                                                            §§goto(addr0199);
                                                         }
                                                         §§goto(addr01f5);
                                                      }
                                                      §§goto(addr0256);
                                                   }
                                                   §§goto(addr01b6);
                                                }
                                                §§goto(addr01bf);
                                             }
                                             §§goto(addr025d);
                                          }
                                          else
                                          {
                                             addr0130:
                                             facade.sendNotification(ApplicationNotificationConstants.OPEN_MARKETPLACE_PHP);
                                             if(!_loc3_)
                                             {
                                                _loc2_.showBadge = false;
                                                if(_loc4_ || _loc3_)
                                                {
                                                   §§push(this.component);
                                                   if(!(_loc3_ && Boolean(param1)))
                                                   {
                                                      §§pop().cursor.selected = false;
                                                      if(_loc4_)
                                                      {
                                                         §§goto(addr0170);
                                                      }
                                                      §§goto(addr0185);
                                                   }
                                                   §§goto(addr01d4);
                                                }
                                                addr025d:
                                                return;
                                             }
                                          }
                                       }
                                       §§goto(addr022e);
                                    }
                                    §§goto(addr0109);
                                 }
                                 §§goto(addr0130);
                              }
                              §§goto(addr022e);
                           }
                           §§goto(addr0130);
                        }
                        addr012a:
                        return;
                     }
                     §§goto(addr022e);
                  }
                  else
                  {
                     §§push(this._featureProxy);
                     if(!_loc3_)
                     {
                        §§push(§§pop().marketplaceFeatureUnlocked);
                        if(!(_loc3_ && Boolean(_loc2_)))
                        {
                           if(!§§pop())
                           {
                              if(_loc4_ || Boolean(_loc2_))
                              {
                                 return;
                              }
                              §§goto(addr0213);
                           }
                           else
                           {
                              §§goto(addr00b0);
                           }
                           §§goto(addr022e);
                        }
                        §§goto(addr00ca);
                     }
                  }
                  §§goto(addr0106);
               }
               §§goto(addr0109);
            }
            §§goto(addr00c1);
         }
         §§goto(addr00dc);
      }
      
      private function handleFriendsSelectionChanged(param1:QuadButtonEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:QuadToggleButton = param1.target as QuadToggleButton;
         if(_loc3_ || Boolean(param1))
         {
            if(_loc2_.selected)
            {
               if(!_loc4_)
               {
                  facade.sendNotification(ApplicationNotificationConstants.OPEN_FRIENDBOOK_POPUP);
                  if(_loc4_)
                  {
                  }
               }
               addr0071:
               §§push(this.component);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(§§pop().majorvilla);
                  if(_loc3_)
                  {
                     if(§§pop().selected)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr00b2:
                           this.component.majorvilla.selected = false;
                           addr00af:
                           addr00ac:
                        }
                     }
                     return;
                  }
                  §§goto(addr00b2);
               }
               §§goto(addr00af);
            }
            else
            {
               facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,FriendPopupMediator.NAME);
               if(!_loc4_)
               {
                  §§goto(addr0071);
               }
            }
         }
         §§goto(addr00ac);
      }
      
      private function handleMajorVillaSelectionChanged(param1:QuadButtonEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:QuadToggleButton = param1.target as QuadToggleButton;
         if(!_loc4_)
         {
            if(_loc2_.selected)
            {
               if(!(_loc4_ && _loc3_))
               {
                  addr0045:
                  if(!facade.hasMediator(CityTreasuryMediator.NAME))
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        facade.sendNotification(ApplicationNotificationConstants.OPEN_CITY_TREASURY);
                        if(_loc4_ && Boolean(_loc2_))
                        {
                        }
                     }
                  }
               }
            }
            else
            {
               facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,CityTreasuryMediator.NAME);
            }
            return;
         }
         §§goto(addr0045);
      }
      
      private function handleCursorSelectionChanged(param1:QuadButtonEvent) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:ApplicationModeProxy = null;
         if(!_loc4_)
         {
            this._soundProxy.playButtonClick();
         }
         var _loc2_:QuadToggleButton = param1.target as QuadToggleButton;
         if(_loc5_ || Boolean(_loc3_))
         {
            if(!_loc2_.selected)
            {
               if(!_loc4_)
               {
                  sendNotification(VirtualTaskNotificationInterest.MAINMENUE_CURSORSUBMENUE_CLOSED);
                  addr005e:
                  if(_loc5_)
                  {
                     _loc3_ = facade.retrieveProxy(ApplicationModeProxy.NAME) as ApplicationModeProxy;
                     if(!_loc4_)
                     {
                        _loc3_.mode = ApplicationModeProxy.MODE_NORMAL;
                     }
                  }
               }
            }
            else
            {
               sendNotification(VirtualTaskNotificationInterest.MAINMENUE_CURSORSUBMENUE_OPENED);
            }
            return;
         }
         §§goto(addr005e);
      }
      
      private function handleOptionsSelectionChanged(param1:QuadButtonEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._soundProxy.playButtonClick();
            if(!_loc3_)
            {
               addr002e:
               §§push(this.component);
               if(!_loc3_)
               {
                  if(§§pop().options.selected)
                  {
                     if(_loc2_)
                     {
                        sendNotification(VirtualTaskNotificationInterest.OPTIONS_MENU_EXPANDED);
                        if(!_loc3_)
                        {
                           §§push(this.component);
                           if(!_loc3_)
                           {
                              addr0067:
                              §§push(§§pop().viewmodes);
                              if(!(_loc3_ && _loc2_))
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr009a:
                                       this.component.viewmodes.selected = false;
                                       addr0097:
                                       addr0094:
                                       if(_loc2_ || _loc2_)
                                       {
                                       }
                                    }
                                 }
                                 §§goto(addr00ba);
                              }
                              §§goto(addr009a);
                           }
                           §§goto(addr0097);
                        }
                        §§goto(addr00ba);
                     }
                     §§goto(addr0094);
                  }
                  else
                  {
                     sendNotification(VirtualTaskNotificationInterest.OPTIONS_MENU_COLLAPSED);
                  }
                  §§goto(addr00ba);
               }
               §§goto(addr0067);
            }
            addr00ba:
            return;
         }
         §§goto(addr002e);
      }
      
      private function handleViewModeSelectionChanged(param1:QuadButtonEvent) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:* = null;
         if(!_loc5_)
         {
            §§push(this.component);
            if(!_loc5_)
            {
               §§push(§§pop().viewmodes);
               if(_loc4_)
               {
                  if(!§§pop().inactive)
                  {
                     if(!(_loc5_ && Boolean(this)))
                     {
                        this._soundProxy.playButtonClick();
                        if(_loc4_ || Boolean(this))
                        {
                           §§push(this.component);
                           if(_loc4_)
                           {
                              addr0061:
                              §§pop().determineShowViewModeGroup();
                              if(!(_loc5_ && Boolean(_loc2_)))
                              {
                                 §§goto(addr0077);
                              }
                              §§goto(addr00f7);
                           }
                           addr0077:
                           §§goto(addr0074);
                        }
                        addr0074:
                        addr007a:
                        if(this.component.viewmodes.selected == true)
                        {
                           if(!(_loc5_ && Boolean(this)))
                           {
                              addr0090:
                              §§push(this._cookieProxy.userdata.lastViewedHeatMap);
                              if(!_loc5_)
                              {
                                 §§push(§§pop());
                              }
                              _loc2_ = §§pop();
                           }
                           addr00f7:
                           var _loc3_:* = _loc2_;
                           if(!(_loc5_ && Boolean(this)))
                           {
                              §§push(ServerTagConstants.POLICE_DEPARTMENT);
                              if(_loc4_)
                              {
                                 §§push(_loc3_);
                                 if(_loc4_ || Boolean(_loc3_))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          §§push(0);
                                          if(_loc5_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr0163:
                                          §§push(1);
                                          if(_loc4_ || Boolean(this))
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(ServerTagConstants.HOSPITAL);
                                       if(_loc4_ || Boolean(param1))
                                       {
                                          addr014a:
                                          §§push(_loc3_);
                                          if(_loc4_ || Boolean(_loc3_))
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc4_)
                                                {
                                                   §§goto(addr0163);
                                                }
                                                else
                                                {
                                                   addr0181:
                                                   §§push(2);
                                                   if(_loc4_)
                                                   {
                                                   }
                                                }
                                                §§goto(addr0199);
                                             }
                                             else
                                             {
                                                §§goto(addr017d);
                                             }
                                          }
                                          addr017d:
                                          §§goto(addr017c);
                                       }
                                       addr017c:
                                       if(ServerTagConstants.FIRE_DEPARTMENT === _loc3_)
                                       {
                                          §§goto(addr0181);
                                       }
                                       else
                                       {
                                          §§push(3);
                                       }
                                       §§goto(addr0199);
                                    }
                                    addr0199:
                                    switch(§§pop())
                                    {
                                       case 0:
                                       case 1:
                                       case 2:
                                          sendNotification(ApplicationNotificationConstants.SHOW_DEPARTMENT_HEATMAP,_loc2_);
                                          if(!(_loc4_ || Boolean(param1)))
                                          {
                                             break;
                                          }
                                          addr01b2:
                                          §§push(this.component);
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop().options);
                                             if(!(_loc5_ && Boolean(this)))
                                             {
                                                if(!§§pop())
                                                {
                                                   break;
                                                }
                                                if(_loc5_)
                                                {
                                                   break;
                                                }
                                                addr01e4:
                                                §§push(this.component.options);
                                             }
                                             §§pop().selected = false;
                                             if(_loc4_)
                                             {
                                             }
                                             break;
                                          }
                                          §§goto(addr01e4);
                                          break;
                                       default:
                                          sendNotification(ApplicationNotificationConstants.SHOW_DEPARTMENT_HEATMAP,ServerTagConstants.FIRE_DEPARTMENT);
                                          if(!(_loc4_ || Boolean(_loc3_)))
                                          {
                                             break;
                                          }
                                          §§goto(addr01b2);
                                    }
                                    §§goto(addr01ff);
                                 }
                                 §§goto(addr017d);
                              }
                              §§goto(addr014a);
                           }
                           §§goto(addr0181);
                        }
                        else
                        {
                           sendNotification(ApplicationNotificationConstants.HIDE_HEATMAP);
                        }
                        §§goto(addr01ff);
                     }
                     §§goto(addr0090);
                  }
                  addr01ff:
                  return;
               }
               §§goto(addr007a);
            }
            §§goto(addr0061);
         }
         §§goto(addr0090);
      }
      
      private function handlePlayfieldSwitchSelectionChanged(param1:QuadButtonEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:PlayfieldProxy = null;
         if(!(_loc3_ && Boolean(param1)))
         {
            §§push(this.component);
            if(!(_loc3_ && Boolean(param1)))
            {
               §§push(§§pop().playfieldSwitch);
               if(!_loc3_)
               {
                  if(!§§pop().inactive)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        addr0067:
                        addr0056:
                        if(this.component.playfieldSwitch.selected)
                        {
                           if(!_loc3_)
                           {
                              addr0073:
                              this._soundProxy.playButtonClick();
                              if(!_loc3_)
                              {
                                 addr0080:
                                 facade.sendNotification(ApplicationNotificationConstants.OPEN_WORLD_MAP,true);
                                 if(!_loc4_)
                                 {
                                    addr00a4:
                                    _loc2_ = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
                                    if(!_loc3_)
                                    {
                                       §§push(Boolean(_loc2_));
                                       if(_loc4_)
                                       {
                                          var _temp_5:* = §§pop();
                                          §§push(_temp_5);
                                          if(_temp_5)
                                          {
                                             if(!_loc3_)
                                             {
                                                addr00d9:
                                                §§pop();
                                                if(!_loc3_)
                                                {
                                                   §§goto(addr00e4);
                                                }
                                                §§goto(addr00ed);
                                             }
                                          }
                                          addr00e4:
                                          if(Boolean(_loc2_.playfieldDTO))
                                          {
                                             if(!_loc3_)
                                             {
                                                addr00ed:
                                                facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,WorldMapLayerMediator.NAME);
                                             }
                                          }
                                          §§goto(addr00fc);
                                       }
                                       §§goto(addr00d9);
                                    }
                                 }
                              }
                              §§goto(addr00fc);
                           }
                           §§goto(addr0080);
                        }
                        else if(facade.hasMediator(WorldMapLayerMediator.NAME))
                        {
                           §§goto(addr00a4);
                        }
                        §§goto(addr00fc);
                     }
                     §§goto(addr0073);
                  }
                  addr00fc:
                  return;
               }
               §§goto(addr0067);
            }
            §§goto(addr0056);
         }
         §§goto(addr0073);
      }
      
      public function get inventoryElement() : Sprite
      {
         return this.component.inventorySparkleSprite;
      }
      
      private function setToolTip() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            §§push(this.component);
            if(!(_loc1_ && _loc1_))
            {
               §§pop().ingameStore.toolTip = LocaUtils.getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.ingameStore"));
               if(_loc2_ || _loc2_)
               {
                  §§push(this.component);
                  if(!_loc1_)
                  {
                     §§pop().friends.toolTip = LocaUtils.getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.friends"));
                     if(!_loc1_)
                     {
                        §§push(this.component);
                        if(_loc2_)
                        {
                           §§pop().inventory.toolTip = LocaUtils.getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.storage"));
                           if(!_loc1_)
                           {
                              §§push(this.component);
                              if(_loc2_ || Boolean(this))
                              {
                                 §§pop().majorvilla.toolTip = LocaUtils.getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.payment"));
                                 if(!_loc1_)
                                 {
                                    addr00ce:
                                    §§push(this.component);
                                    if(!_loc1_)
                                    {
                                       addr00d6:
                                       §§push(§§pop().viewmodes);
                                       if(!_loc1_)
                                       {
                                          §§push(§§pop().inactive);
                                          if(_loc2_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc1_ && _loc2_))
                                                {
                                                   addr00f7:
                                                   §§push(this.component);
                                                   if(!_loc1_)
                                                   {
                                                      §§push(§§pop().viewmodes);
                                                      if(!_loc1_)
                                                      {
                                                         §§push(LocaUtils.getString("rcl.tooltips.menubar","rcl.tooltips.menubar.viewmodes.inactive"));
                                                         if(!_loc1_)
                                                         {
                                                            §§pop().toolTip = §§pop();
                                                            if(_loc2_ || _loc1_)
                                                            {
                                                            }
                                                            addr0151:
                                                            §§push(this._featureProxy.marketplaceFeatureUnlocked);
                                                            if(!(_loc1_ && _loc1_))
                                                            {
                                                               addr016f:
                                                               if(!§§pop())
                                                               {
                                                                  if(!(_loc1_ && _loc2_))
                                                                  {
                                                                     §§push(this.component);
                                                                     if(_loc2_ || Boolean(this))
                                                                     {
                                                                        addr0190:
                                                                        §§push(§§pop().market);
                                                                        if(_loc2_)
                                                                        {
                                                                           §§push(LocaUtils.getString("rcl.tooltips.menubar","rcl.tooltips.menubar.marketPlaceLevelLock",[this._featureProxy.marketplaceFeatureUnlockLevel]));
                                                                           if(_loc2_ || Boolean(this))
                                                                           {
                                                                              §§pop().toolTip = §§pop();
                                                                              if(_loc1_)
                                                                              {
                                                                              }
                                                                              addr01f3:
                                                                              §§push(this.component);
                                                                              if(_loc2_)
                                                                              {
                                                                                 §§goto(addr01fb);
                                                                              }
                                                                              §§goto(addr026b);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr01e4:
                                                                              §§pop().toolTip = §§pop();
                                                                              if(!(_loc1_ && _loc2_))
                                                                              {
                                                                                 §§goto(addr01f3);
                                                                              }
                                                                           }
                                                                           §§goto(addr021f);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr01d8:
                                                                           §§push(LocaUtils.getString("rcl.tooltips.menubar","rcl.tooltips.menubar.marketPlace"));
                                                                        }
                                                                        §§goto(addr01e4);
                                                                     }
                                                                     §§goto(addr02b4);
                                                                  }
                                                                  §§goto(addr021f);
                                                               }
                                                               else
                                                               {
                                                                  §§push(this.component);
                                                                  if(_loc2_ || _loc1_)
                                                                  {
                                                                     §§goto(addr01d8);
                                                                     §§push(§§pop().market);
                                                                  }
                                                               }
                                                               §§goto(addr029b);
                                                            }
                                                            §§goto(addr020e);
                                                         }
                                                         else
                                                         {
                                                            addr0142:
                                                            §§pop().toolTip = §§pop();
                                                            if(!(_loc1_ && Boolean(this)))
                                                            {
                                                               §§goto(addr0151);
                                                            }
                                                         }
                                                         §§goto(addr0293);
                                                      }
                                                      else
                                                      {
                                                         addr0136:
                                                         §§push(LocaUtils.getString("rcl.tooltips.menubar","rcl.tooltips.menubar.viewmodes"));
                                                      }
                                                      §§goto(addr0142);
                                                   }
                                                   §§goto(addr026b);
                                                }
                                                §§goto(addr0293);
                                             }
                                             else
                                             {
                                                §§push(this.component);
                                                if(!_loc1_)
                                                {
                                                   §§goto(addr0136);
                                                   §§push(§§pop().viewmodes);
                                                }
                                             }
                                             §§goto(addr01fb);
                                          }
                                          §§goto(addr016f);
                                       }
                                       §§goto(addr0136);
                                    }
                                    addr01fb:
                                    §§push(§§pop().playfieldSwitch);
                                    if(!(_loc1_ && Boolean(this)))
                                    {
                                       addr020e:
                                       if(§§pop().inactive)
                                       {
                                          if(!(_loc1_ && _loc1_))
                                          {
                                             addr021f:
                                             §§push(this.component);
                                             if(!_loc1_)
                                             {
                                                addr0227:
                                                §§push(§§pop().playfieldSwitch);
                                                if(_loc2_)
                                                {
                                                   §§goto(addr022f);
                                                }
                                                else
                                                {
                                                   addr026e:
                                                   §§push(LocaUtils.getString("rcl.tooltips.menubar","rcl.tooltips.menubar.playfieldSwitch"));
                                                }
                                                §§goto(addr027a);
                                             }
                                             §§goto(addr029b);
                                          }
                                          §§goto(addr0293);
                                       }
                                       else
                                       {
                                          §§push(this.component);
                                          if(_loc2_ || _loc2_)
                                          {
                                             addr026b:
                                             §§goto(addr026e);
                                             §§push(§§pop().playfieldSwitch);
                                          }
                                       }
                                       §§goto(addr02b4);
                                    }
                                    addr022f:
                                    §§push(LocaUtils.getString("rcl.tooltips.menubar","rcl.tooltips.menubar.playfieldSwitch.inactive"));
                                    if(_loc2_ || Boolean(this))
                                    {
                                       §§pop().toolTip = §§pop();
                                       if(_loc2_ || _loc2_)
                                       {
                                       }
                                       addr0293:
                                       §§push(this.component);
                                       if(!_loc1_)
                                       {
                                          addr029b:
                                          §§pop().cursor.toolTip = LocaUtils.getString("rcl.tooltips.menubar","rcl.tooltips.menubar.cursor");
                                          if(_loc2_)
                                          {
                                             addr02b4:
                                             this.component.options.toolTip = LocaUtils.getString("rcl.tooltips.menubar","rcl.tooltips.menubar.options");
                                          }
                                          §§goto(addr02c5);
                                       }
                                       §§goto(addr02b4);
                                    }
                                    else
                                    {
                                       addr027a:
                                       §§pop().toolTip = §§pop();
                                       if(_loc2_ || Boolean(this))
                                       {
                                          §§goto(addr0293);
                                       }
                                    }
                                 }
                                 §§goto(addr02c5);
                              }
                              §§goto(addr0190);
                           }
                           §§goto(addr00ce);
                        }
                        §§goto(addr0227);
                     }
                     §§goto(addr00f7);
                  }
                  §§goto(addr00d6);
               }
               §§goto(addr02c5);
            }
            §§goto(addr00d6);
         }
         addr02c5:
      }
      
      public function kill() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            this.component.visible = false;
            if(!_loc2_)
            {
               this._dead = true;
            }
         }
      }
      
      public function visible(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            if(!this._dead)
            {
               if(_loc3_)
               {
                  addr002e:
                  this.component.visible = param1;
               }
            }
            return;
         }
         §§goto(addr002e);
      }
   }
}

