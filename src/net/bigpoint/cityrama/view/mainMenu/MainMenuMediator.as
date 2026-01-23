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
      
      private var _gameConfigProxy:GameConfigProxy;
      
      private var _flashvarsProxy:FlashVarsProxy;
      
      private var _friendProxy:FriendsProxy;
      
      private var _soundProxy:SoundProxy;
      
      private var _cookieProxy:LocalStorageProxy;
      
      private var _featureProxy:FeatureProxy;
      
      private var _dead:Boolean;
      
      public function MainMenuMediator(param1:Object)
      {
         super(NAME,param1);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this.prepareProxies();
         this.setupListeners();
         this.setupInitialProperties();
         this.setToolTip();
      }
      
      private function setupInitialProperties() : void
      {
         this.component.market.inactive = !this._featureProxy.marketplaceFeatureUnlocked || this._gameConfigProxy.marketPlaceMaintenance;
         this.component.friends.showBadge = this._friendProxy.newFriends || this._friendProxy.newMessages;
         this.component.market.showBadge = this._flashvarsProxy.offerSold;
         this.component.cursorGroup.hipButton.enabled = this._featureProxy.improvementFeatureUnlocked;
         this.setButtonStates();
      }
      
      private function setButtonStates() : void
      {
         var _loc1_:* = true;
         var _loc2_:PlayfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         if(Boolean(_loc2_) && Boolean(_loc2_.config))
         {
            _loc1_ = _loc2_.config.id == HorizionSettingsVo.CITY_PLAYFIELD_ID;
         }
         this.component.viewmodes.inactive = !(this._featureProxy.isFeatureEnabled(ServerFeatureConstants.EMERGENCY) && _loc1_);
         this.component.playfieldSwitch.inactive = !(this._featureProxy.isFeatureEnabled(ServerFeatureConstants.COASTAL_PLAYFIELD_SWITCH) || this._featureProxy.isFeatureEnabled(ServerFeatureConstants.SUBURBAN_PLAYFIELD_SWITCH) || this._featureProxy.isFeatureEnabled(ServerFeatureConstants.MOUNTAIN_PLAYFIELD_SWITCH));
         this.setToolTip();
      }
      
      private function prepareProxies() : void
      {
         this._gameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         this._cookieProxy = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
         this._flashvarsProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
         this._friendProxy = facade.retrieveProxy(FriendsProxy.NAME) as FriendsProxy;
         this._featureProxy = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.removeListeners();
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
         var _loc2_:PopupSettingsVo = null;
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.INFRASTRUCTURE_FEATURE_STATUS_CHANGED:
               this.component.viewmodes.inactive = !this._featureProxy.isFeatureEnabled(ServerFeatureConstants.EMERGENCY);
               this.setToolTip();
               break;
            case ApplicationNotificationConstants.HIDE_PLAYFIELD_LOADING_ANIMATION:
               this.setButtonStates();
               break;
            case ApplicationNotificationConstants.SHOW_GUI:
            case ApplicationNotificationConstants.SHOW_GUI_MAIN_MENU:
               this.component.visible = param1.getBody();
               this.component.cursor.selected = false;
               this.component.viewmodes.dispatchChangeFlag = param1.getBody();
               break;
            case ApplicationNotificationConstants.PLAYER_UNLOCKED_FEATURES_CHANGED:
               this.setButtonStates();
               break;
            case ApplicationNotificationConstants.APPLICATION_MODE_BUILD_INITIALIZE:
               this.component.cursor.selected = true;
               this.component.cursorGroup.visible = false;
               this.component.cursorGroup.includeInLayout = false;
               break;
            case ApplicationNotificationConstants.POPUP_REMOVE:
               switch(param1.getBody() as String)
               {
                  case IngameStoreBookMediator.NAME:
                     this.component.ingameStore.selected = false;
                     this.component.options.selected = false;
                     break;
                  case StoragePopupMediator.NAME:
                     this.component.inventory.selected = false;
                     this.component.options.selected = false;
                     break;
                  case FriendPopupMediator.NAME:
                     this.component.friends.selected = false;
                     this.component.options.selected = false;
                     break;
                  case CityTreasuryMediator.NAME:
                     this.component.majorvilla.selected = false;
                     this.component.options.selected = false;
                     break;
                  case WorldMapLayerMediator.NAME:
                     this.component.playfieldSwitch.selected = false;
               }
               break;
            case ApplicationNotificationConstants.POPUP_CREATE:
               _loc2_ = param1.getBody() as PopupSettingsVo;
               if(this.component.options.selected)
               {
                  this.component.options.selected = false;
               }
               if(this.component.cursor.selected)
               {
                  if(!_loc2_.noModeReset)
                  {
                     this.component.cursor.selected = false;
                  }
               }
               if(this.component.viewmodes.selected)
               {
                  this.component.viewmodes.selected = false;
               }
               break;
            case ApplicationNotificationConstants.APPLICATION_MODE_BUILD_DEINITIALIZE:
               if(this.component.cursor.selected)
               {
                  this.component.cursor.selected = false;
               }
               break;
            case ApplicationNotificationConstants.MARKETPLACE_MAINTENANCE_CHANGED:
            case ApplicationNotificationConstants.USERLEVEL_CHANGED:
               this.component.market.inactive = !this._featureProxy.marketplaceFeatureUnlocked || this._gameConfigProxy.marketPlaceMaintenance;
               this.component.cursorGroup.hipButton.enabled = this._featureProxy.improvementFeatureUnlocked;
               this.setToolTip();
               break;
            case ApplicationNotificationConstants.NEW_MESSAGES:
               this.component.friends.showBadge = this._friendProxy.newMessages;
               break;
            case ApplicationNotificationConstants.ALL_MESSAGES_READ:
               this.component.friends.showBadge = this._friendProxy.newMessages || this._friendProxy.newFriends;
               break;
            case ApplicationNotificationConstants.FRIENDS_UPDATE:
               this.component.friends.showBadge = this._friendProxy.newMessages || this._friendProxy.newFriends;
               break;
            case ApplicationNotificationConstants.MARKET_OFFER_SOLD:
               this.component.market.showBadge = true;
               break;
            case ApplicationNotificationConstants.POPUP_REMOVE_ALL:
            case ApplicationNotificationConstants.MAINMENUE_RESETBUTTONS:
               if(this.component.options.selected)
               {
                  this.component.options.selected = false;
               }
               if(this.component.cursor.selected && param1.getName() == ApplicationNotificationConstants.MAINMENUE_RESETBUTTONS)
               {
                  this.component.cursor.selected = false;
               }
               this.component.ingameStore.selected = false;
               this.component.majorvilla.selected = false;
               this.component.inventory.selected = false;
               this.component.friends.selected = false;
               this.component.market.selected = false;
               break;
            case ApplicationNotificationConstants.OPEN_GOOD_PURCHASE:
            case ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE:
               this.component.majorvilla.selected = true;
               break;
            case ApplicationNotificationConstants.QUEST_LAYER_OPENED:
            case ApplicationNotificationConstants.OPEN_NEWSSCREEN_POPUP:
               this.component.majorvilla.selected = false;
         }
      }
      
      public function get component() : MainMenuComponent
      {
         return super.viewComponent as MainMenuComponent;
      }
      
      private function setupListeners() : void
      {
         this.component.cursor.addEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handleCursorSelectionChanged);
         this.component.ingameStore.addEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handleIngameStoreSelectionChanged);
         this.component.inventory.addEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handleInventorySelectionChanged);
         this.component.market.addEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handleMarketSelectionChanged);
         this.component.friends.addEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handleFriendsSelectionChanged);
         this.component.majorvilla.addEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handleMajorVillaSelectionChanged);
         this.component.options.addEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handleOptionsSelectionChanged);
         this.component.viewmodes.addEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handleViewModeSelectionChanged);
         this.component.playfieldSwitch.addEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handlePlayfieldSwitchSelectionChanged);
      }
      
      private function removeListeners() : void
      {
         this.component.cursor.removeEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handleCursorSelectionChanged);
         this.component.ingameStore.removeEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handleIngameStoreSelectionChanged);
         this.component.inventory.removeEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handleInventorySelectionChanged);
         this.component.market.removeEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handleMarketSelectionChanged);
         this.component.friends.removeEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handleFriendsSelectionChanged);
         this.component.majorvilla.removeEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handleMajorVillaSelectionChanged);
         this.component.options.removeEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handleOptionsSelectionChanged);
         this.component.viewmodes.removeEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handleViewModeSelectionChanged);
         this.component.playfieldSwitch.removeEventListener(QuadButtonEvent.SELECTION_CHANGED,this.handlePlayfieldSwitchSelectionChanged);
      }
      
      private function handleIngameStoreSelectionChanged(param1:QuadButtonEvent) : void
      {
         var _loc2_:QuadToggleButton = param1.target as QuadToggleButton;
         if(_loc2_.selected)
         {
            facade.sendNotification(ApplicationNotificationConstants.OPEN_INGAME_STORE_POPUP);
         }
         else
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,IngameStoreBookMediator.NAME);
         }
         if(this.component.majorvilla.selected)
         {
            this.component.majorvilla.selected = false;
         }
      }
      
      private function handleInventorySelectionChanged(param1:QuadButtonEvent) : void
      {
         var _loc2_:QuadToggleButton = param1.target as QuadToggleButton;
         if(_loc2_.selected)
         {
            facade.sendNotification(ApplicationNotificationConstants.OPEN_STORAGE_POPUP);
         }
         else
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,StoragePopupMediator.NAME);
         }
         if(this.component.majorvilla.selected)
         {
            this.component.majorvilla.selected = false;
         }
      }
      
      private function handleMarketSelectionChanged(param1:QuadButtonEvent) : void
      {
         var _loc2_:QuadToggleButton = param1.target as QuadToggleButton;
         if(this._gameConfigProxy.marketPlaceMaintenance)
         {
            _loc2_.selected = false;
            facade.sendNotification(MiniLayerConstants.OPEN_MINI_MARKET_MAINTANCE);
         }
         else if(!this._featureProxy.marketplaceFeatureUnlocked)
         {
            return;
         }
         if(_loc2_.selected)
         {
            if(this._gameConfigProxy.marketPlaceMaintenance)
            {
               _loc2_.selected = false;
               facade.sendNotification(MiniLayerConstants.OPEN_MINI_MARKET_MAINTANCE);
            }
            else
            {
               if(!this._featureProxy.marketplaceFeatureUnlocked)
               {
                  _loc2_.selected = false;
                  return;
               }
               facade.sendNotification(ApplicationNotificationConstants.OPEN_MARKETPLACE_PHP);
               _loc2_.showBadge = false;
               this.component.cursor.selected = false;
               this.component.ingameStore.selected = false;
               this.component.inventory.selected = false;
               this.component.market.selected = false;
               this.component.friends.selected = false;
               this.component.majorvilla.selected = false;
               this.component.options.selected = false;
               facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE_ALL);
            }
         }
         if(this.component.majorvilla.selected)
         {
            this.component.majorvilla.selected = false;
         }
      }
      
      private function handleFriendsSelectionChanged(param1:QuadButtonEvent) : void
      {
         var _loc2_:QuadToggleButton = param1.target as QuadToggleButton;
         if(_loc2_.selected)
         {
            facade.sendNotification(ApplicationNotificationConstants.OPEN_FRIENDBOOK_POPUP);
         }
         else
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,FriendPopupMediator.NAME);
         }
         if(this.component.majorvilla.selected)
         {
            this.component.majorvilla.selected = false;
         }
      }
      
      private function handleMajorVillaSelectionChanged(param1:QuadButtonEvent) : void
      {
         var _loc2_:QuadToggleButton = param1.target as QuadToggleButton;
         if(_loc2_.selected)
         {
            if(!facade.hasMediator(CityTreasuryMediator.NAME))
            {
               facade.sendNotification(ApplicationNotificationConstants.OPEN_CITY_TREASURY);
            }
         }
         else
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,CityTreasuryMediator.NAME);
         }
      }
      
      private function handleCursorSelectionChanged(param1:QuadButtonEvent) : void
      {
         var _loc3_:ApplicationModeProxy = null;
         this._soundProxy.playButtonClick();
         var _loc2_:QuadToggleButton = param1.target as QuadToggleButton;
         if(!_loc2_.selected)
         {
            sendNotification(VirtualTaskNotificationInterest.MAINMENUE_CURSORSUBMENUE_CLOSED);
            _loc3_ = facade.retrieveProxy(ApplicationModeProxy.NAME) as ApplicationModeProxy;
            _loc3_.mode = ApplicationModeProxy.MODE_NORMAL;
         }
         else
         {
            sendNotification(VirtualTaskNotificationInterest.MAINMENUE_CURSORSUBMENUE_OPENED);
         }
      }
      
      private function handleOptionsSelectionChanged(param1:QuadButtonEvent) : void
      {
         this._soundProxy.playButtonClick();
         if(this.component.options.selected)
         {
            sendNotification(VirtualTaskNotificationInterest.OPTIONS_MENU_EXPANDED);
            if(this.component.viewmodes)
            {
               this.component.viewmodes.selected = false;
            }
         }
         else
         {
            sendNotification(VirtualTaskNotificationInterest.OPTIONS_MENU_COLLAPSED);
         }
      }
      
      private function handleViewModeSelectionChanged(param1:QuadButtonEvent) : void
      {
         var _loc2_:String = null;
         if(!this.component.viewmodes.inactive)
         {
            this._soundProxy.playButtonClick();
            this.component.determineShowViewModeGroup();
            if(this.component.viewmodes.selected == true)
            {
               _loc2_ = this._cookieProxy.userdata.lastViewedHeatMap;
               switch(_loc2_)
               {
                  case ServerTagConstants.POLICE_DEPARTMENT:
                  case ServerTagConstants.HOSPITAL:
                  case ServerTagConstants.FIRE_DEPARTMENT:
                     sendNotification(ApplicationNotificationConstants.SHOW_DEPARTMENT_HEATMAP,_loc2_);
                     break;
                  default:
                     sendNotification(ApplicationNotificationConstants.SHOW_DEPARTMENT_HEATMAP,ServerTagConstants.FIRE_DEPARTMENT);
               }
               if(this.component.options)
               {
                  this.component.options.selected = false;
               }
            }
            else
            {
               sendNotification(ApplicationNotificationConstants.HIDE_HEATMAP);
            }
         }
      }
      
      private function handlePlayfieldSwitchSelectionChanged(param1:QuadButtonEvent) : void
      {
         var _loc2_:PlayfieldProxy = null;
         if(!this.component.playfieldSwitch.inactive)
         {
            if(this.component.playfieldSwitch.selected)
            {
               this._soundProxy.playButtonClick();
               facade.sendNotification(ApplicationNotificationConstants.OPEN_WORLD_MAP,true);
            }
            else if(facade.hasMediator(WorldMapLayerMediator.NAME))
            {
               _loc2_ = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
               if(Boolean(_loc2_) && Boolean(_loc2_.playfieldDTO))
               {
                  facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,WorldMapLayerMediator.NAME);
               }
            }
         }
      }
      
      public function get inventoryElement() : Sprite
      {
         return this.component.inventorySparkleSprite;
      }
      
      private function setToolTip() : void
      {
         this.component.ingameStore.toolTip = LocaUtils.getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.ingameStore"));
         this.component.friends.toolTip = LocaUtils.getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.friends"));
         this.component.inventory.toolTip = LocaUtils.getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.storage"));
         this.component.majorvilla.toolTip = LocaUtils.getString(String("rcl.tooltips.menubar"),String("rcl.tooltips.menubar.payment"));
         if(this.component.viewmodes.inactive)
         {
            this.component.viewmodes.toolTip = LocaUtils.getString("rcl.tooltips.menubar","rcl.tooltips.menubar.viewmodes.inactive");
         }
         else
         {
            this.component.viewmodes.toolTip = LocaUtils.getString("rcl.tooltips.menubar","rcl.tooltips.menubar.viewmodes");
         }
         if(!this._featureProxy.marketplaceFeatureUnlocked)
         {
            this.component.market.toolTip = LocaUtils.getString("rcl.tooltips.menubar","rcl.tooltips.menubar.marketPlaceLevelLock",[this._featureProxy.marketplaceFeatureUnlockLevel]);
         }
         else
         {
            this.component.market.toolTip = LocaUtils.getString("rcl.tooltips.menubar","rcl.tooltips.menubar.marketPlace");
         }
         if(this.component.playfieldSwitch.inactive)
         {
            this.component.playfieldSwitch.toolTip = LocaUtils.getString("rcl.tooltips.menubar","rcl.tooltips.menubar.playfieldSwitch.inactive");
         }
         else
         {
            this.component.playfieldSwitch.toolTip = LocaUtils.getString("rcl.tooltips.menubar","rcl.tooltips.menubar.playfieldSwitch");
         }
         this.component.cursor.toolTip = LocaUtils.getString("rcl.tooltips.menubar","rcl.tooltips.menubar.cursor");
         this.component.options.toolTip = LocaUtils.getString("rcl.tooltips.menubar","rcl.tooltips.menubar.options");
      }
      
      public function kill() : void
      {
         this.component.visible = false;
         this._dead = true;
      }
      
      public function visible(param1:Boolean) : void
      {
         if(!this._dead)
         {
            this.component.visible = param1;
         }
      }
   }
}

