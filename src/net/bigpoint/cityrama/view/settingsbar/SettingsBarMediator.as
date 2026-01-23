package net.bigpoint.cityrama.view.settingsbar
{
   import com.greensock.TweenMax;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.constants.quest.QuestGFXIDLayerConstants;
   import net.bigpoint.cityrama.constants.quest.QuestSystemTypeConstants;
   import net.bigpoint.cityrama.model.CityProxy;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.ground.vo.PlaneObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.professionals.ProfessionalProxy;
   import net.bigpoint.cityrama.model.quest.QuestProxy;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemPermissionDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigTagDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayfieldLightVo;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalAttributeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   import net.bigpoint.cityrama.model.urbies.PathWalkProxy;
   import net.bigpoint.cityrama.model.urbies.SpawnProxy;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IFloaterObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import net.bigpoint.cityrama.view.settingsbar.ui.components.SettingsBarView;
   import net.bigpoint.field3d.interfaces.IObject3D;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.events.IndexChangeEvent;
   
   public class SettingsBarMediator extends Mediator
   {
      
      public static const NAME:String = "SettingsBarMediator";
      
      private var _playfieldObjects:PlayfieldObjectsProxy;
      
      private var _socketProxy:ServerCommunicationProxy;
      
      private var _playfieldProxy:PlayfieldProxy;
      
      private var _cityProxy:CityProxy;
      
      private var packIndex:int = 0;
      
      public function SettingsBarMediator(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      private function configureMessageSpool() : void
      {
         this.settingsBar.toggleSpool.selected = this._socketProxy.clientSpool;
         this.settingsBar.toggleSpool.addEventListener(MouseEvent.CLICK,this.handleSpoolClick);
      }
      
      private function handleSpoolClick(param1:MouseEvent) : void
      {
         if(this.settingsBar.toggleSpool.selected)
         {
            this.settingsBar.toggleSpool.label = "stop and send spool";
            this._socketProxy.startClientSpool();
         }
         else
         {
            this.settingsBar.toggleSpool.label = "start spool";
            this._socketProxy.stopClientSpool();
         }
      }
      
      private function initGoodList() : void
      {
         var _loc3_:ConfigGoodDTO = null;
         var _loc4_:String = null;
         var _loc5_:EventProxy = null;
         var _loc1_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc2_:ArrayList = new ArrayList();
         for each(_loc3_ in _loc1_.config.goods)
         {
            _loc4_ = ResourceManager.getInstance().getString(String("rcl.goods.goodname"),String("rcl.goods.goodname." + _loc3_.localeId));
            if(_loc4_ == "")
            {
               _loc5_ = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
               _loc4_ = LocaUtils.getString("rcl.citysquarequests." + _loc5_.currentRunningEventQuestLocaleId,"rcl.citysquarequests." + _loc5_.currentRunningEventQuestLocaleId + ".goods.goodname." + _loc3_.localeId);
            }
            if(_loc4_ == "")
            {
               _loc4_ = "zZz Unkown maybe nonrunning Event";
            }
            _loc2_.addItem({
               "name":_loc4_,
               "cGood":_loc3_
            });
         }
         _loc2_.source.sortOn(["name"]);
         this.settingsBar.goodsList.dataProvider = _loc2_;
         if(_loc2_.length > 0)
         {
            this.settingsBar.goodsList.selectedItem = _loc2_.getItemAt(0);
         }
      }
      
      private function initPlayfieldList() : void
      {
         var _loc3_:ConfigPlayfieldDTO = null;
         var _loc4_:String = null;
         var _loc1_:ArrayCollection = new ArrayCollection();
         var _loc2_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         for each(_loc3_ in _loc2_.config.playfields)
         {
            switch(_loc3_.id)
            {
               default:
                  _loc4_ = "unknown playfield";
                  break;
               case 1:
                  _loc4_ = "Standard";
                  break;
               case 2:
                  _loc4_ = "Coastal";
                  break;
               case 3:
                  _loc4_ = "Suburban";
                  break;
               case 4:
                  _loc4_ = "Mountain";
            }
            _loc1_.addItem(_loc4_);
         }
         this.settingsBar.playfieldBar.dataProvider = _loc1_;
      }
      
      private function configureCheatListener() : void
      {
         this.settingsBar.vcCheatButton.addEventListener(MouseEvent.CLICK,this.cheatClicked);
         this.settingsBar.rcCheatButton.addEventListener(MouseEvent.CLICK,this.cheatClicked);
         this.settingsBar.ppCheatButton.addEventListener(MouseEvent.CLICK,this.cheatClicked);
         this.settingsBar.epCheatButton.addEventListener(MouseEvent.CLICK,this.cheatClicked);
         this.settingsBar.xpCheatButton.addEventListener(MouseEvent.CLICK,this.cheatClicked);
         this.settingsBar.lvlCheatButton.addEventListener(MouseEvent.CLICK,this.cheatClicked);
         this.settingsBar.pwrCheatButton.addEventListener(MouseEvent.CLICK,this.cheatClicked);
         this.settingsBar.moodCheatButton.addEventListener(MouseEvent.CLICK,this.cheatClicked);
         this.settingsBar.worCheatButton.addEventListener(MouseEvent.CLICK,this.cheatClicked);
         this.settingsBar.ricCheatButton.addEventListener(MouseEvent.CLICK,this.cheatClicked);
         this.settingsBar.academicsCheatButton.addEventListener(MouseEvent.CLICK,this.cheatClicked);
         this.settingsBar.grantPermissionButton.addEventListener(MouseEvent.CLICK,this.cheatClicked);
         this.settingsBar.grantgoodsnButton.addEventListener(MouseEvent.CLICK,this.cheatClicked);
         this.settingsBar.playfieldBar.addEventListener(IndexChangeEvent.CHANGING,this.playfieldChangeRequestHandler);
      }
      
      private function cheatClicked(param1:MouseEvent) : void
      {
         var _loc2_:String = null;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         facade.sendNotification(ApplicationNotificationConstants.EVENTS_CHANGED);
         switch(param1.target.id)
         {
            case "vcCheatButton":
               _loc3_ = this.settingsBar.vcCheatInput.text;
               _loc2_ = "vc";
               break;
            case "rcCheatButton":
               _loc3_ = this.settingsBar.rcCheatInput.text;
               _loc2_ = "rc";
               break;
            case "ppCheatButton":
               _loc3_ = this.settingsBar.ppCheatInput.text;
               _loc2_ = "pp";
               break;
            case "epCheatButton":
               _loc3_ = this.settingsBar.epCheatInput.text;
               _loc2_ = "ep";
               break;
            case "xpCheatButton":
               _loc3_ = this.settingsBar.xpCheatInput.text;
               _loc2_ = "xp";
               break;
            case "lvlCheatButton":
               _loc3_ = this.settingsBar.lvlCheatInput.text;
               _loc2_ = "lvl";
               break;
            case "pwrCheatButton":
               _loc3_ = this.settingsBar.pwrCheatInput.text;
               _loc2_ = "pwr";
               break;
            case "moodCheatButton":
               _loc3_ = this.settingsBar.moodCheatInput.text;
               _loc2_ = "moo";
               break;
            case "worCheatButton":
               _loc3_ = this.settingsBar.worCheatInput.text;
               _loc2_ = "wor";
               break;
            case "ricCheatButton":
               _loc3_ = this.settingsBar.ricCheatInput.text;
               _loc2_ = "ric";
               break;
            case "academicsCheatButton":
               _loc3_ = this.settingsBar.academicsCheatInput.text;
               _loc2_ = "tea";
               break;
            case "grantgoodsnButton":
               if(this.settingsBar.goodsCountInput.text == null || this.settingsBar.goodsCountInput.text == "" || this.settingsBar.goodsList.selectedItem == null)
               {
                  return;
               }
               _loc4_ = parseInt(this.settingsBar.goodsCountInput.text);
               _loc2_ = "good";
               _loc3_ = (this.settingsBar.goodsList.selectedItem.cGood as ConfigGoodDTO).id + "";
               break;
            case "grantPermissionButton":
               if(this.settingsBar.permissionsCountInput.text == null || this.settingsBar.permissionsCountInput.text == "" || this.settingsBar.permissionsList.selectedItem == null)
               {
                  return;
               }
               _loc5_ = parseInt(this.settingsBar.permissionsCountInput.text);
               _loc2_ = "PER";
               _loc3_ = (this.settingsBar.permissionsList.selectedItem.perm as ConfigPlayfieldItemPermissionDTO).id + "";
               facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_TEST,[_loc2_,_loc3_,_loc5_]);
               return;
         }
         facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_TEST,[_loc2_,_loc3_,_loc4_]);
      }
      
      private function configureListener() : void
      {
      }
      
      private function handleShowWorldMap(param1:MouseEvent) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.OPEN_WORLD_MAP,false);
      }
      
      private function fakeFeatureUpdateClickedHandler(param1:MouseEvent) : void
      {
         var _loc7_:String = null;
         var _loc2_:String = this.settingsBar.featureTextInput.text;
         var _loc3_:PlayerProxy = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
         var _loc4_:MessageVo = new MessageVo();
         var _loc5_:Object = new Object();
         _loc5_.up = new Object();
         var _loc6_:Array = [];
         for each(_loc7_ in _loc3_.player.enabledFeatures)
         {
            _loc6_.push(_loc7_);
         }
         _loc6_.push(_loc2_);
         _loc5_.ef = _loc6_;
         _loc4_.json = _loc5_;
         sendNotification(ServerNotificationConstants.SERVER_MESSAGE_PLAYER_FEATURE_UPDATE,_loc4_);
      }
      
      private function fakeUpsellUpdateClickedHandler(param1:MouseEvent) : void
      {
         var _loc2_:TimerProxy = facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
         ++this.packIndex;
         this.packIndex %= 6;
         var _loc3_:MessageVo = new MessageVo();
         var _loc4_:Object = new Object();
         _loc4_.up = new Object();
         _loc4_.up.id = 164 + this.packIndex;
         _loc4_.up.c = ServerTagConstants.PAYMENT_UPSELL;
         _loc4_.up.st = _loc2_.currentTimeStamp - 1000;
         _loc4_.up.d = 1000 * 60 * 60 * 24 * 3;
         _loc3_.json = _loc4_;
         sendNotification(ServerNotificationConstants.SERVER_MESSAGE_PLAYER_PAYMENT_UPSELL_UPDATE,_loc3_);
      }
      
      private function handleSwitchPlayfield(param1:MouseEvent) : void
      {
         var _loc2_:PlayfieldLightVo = null;
         for each(_loc2_ in this._cityProxy.city.playfields)
         {
            if(_loc2_.configId != this._playfieldProxy.config.id)
            {
               sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_TEST,["switchPlayfield",_loc2_.id]);
               return;
            }
         }
      }
      
      private function fillWithStreets(param1:MouseEvent) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Cuboid = null;
         var _loc2_:int = 0;
         while(_loc2_ < this._playfieldProxy.aquiredPlayFieldSize.width)
         {
            _loc3_ = 0;
            while(_loc3_ < this._playfieldProxy.aquiredPlayFieldSize.height)
            {
               _loc4_ = new Cuboid(_loc2_,_loc3_,1,1,1);
               if(this._playfieldObjects.isFree(_loc4_))
               {
                  sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_CREATE_GROUND,{
                     "id":49,
                     "x":_loc2_,
                     "y":_loc3_
                  });
               }
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function handlePermissionCategoryChange(param1:IndexChangeEvent) : void
      {
         this.setPermissionCategory(param1.newIndex);
      }
      
      private function initializePermissionCategories() : void
      {
         this.settingsBar.categoryList.dataProvider = new ArrayList(["ALL",ServerTagConstants.RESIDENTIAL,ServerTagConstants.SHOP,ServerTagConstants.POWERPLANT,ServerTagConstants.PRODUCTION,ServerTagConstants.DECORATION,ServerTagConstants.STREET,ServerTagConstants.SPECIAL]);
         this.settingsBar.categoryList.selectedIndex = 1;
         this.settingsBar.permissionsCountInput.text = "1";
      }
      
      private function setPermissionCategory(param1:int) : void
      {
         var _loc5_:ConfigTagDTO = null;
         var _loc6_:ArrayList = null;
         var _loc7_:ConfigPlayfieldItemPermissionDTO = null;
         var _loc8_:Vector.<ConfigPlayfieldItemDTO> = null;
         var _loc9_:ConfigPlayfieldItemDTO = null;
         var _loc2_:String = this.settingsBar.categoryList.dataProvider.getItemAt(param1) as String;
         var _loc3_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc4_:int = -1;
         for each(_loc5_ in _loc3_.config.tags)
         {
            if(_loc5_.tagName == _loc2_)
            {
               _loc4_ = _loc5_.tagId;
               break;
            }
         }
         _loc6_ = new ArrayList();
         for each(_loc7_ in _loc3_.config.permissions)
         {
            _loc8_ = _loc3_.getConfigPlayfieldItemsByPermissionId(_loc7_.id);
            if(_loc8_.length > 0)
            {
               _loc9_ = _loc8_[0];
               if(!(_loc4_ != -1 && _loc9_.tagIds.indexOf(_loc4_) == -1))
               {
                  _loc6_.addItem({
                     "name":ResourceManager.getInstance().getString(String("rcl.playfielditems.name"),String("rcl.playfielditems.name." + _loc9_.localeId)),
                     "perm":_loc7_
                  });
               }
            }
            else if(_loc4_ == -1)
            {
               _loc6_.addItem({
                  "name":_loc7_.id + "_NO_CONFIG_PLAYFIELDITEMDTO",
                  "perm":_loc7_
               });
            }
         }
         _loc6_.source.sortOn(["name"]);
         this.settingsBar.permissionsList.dataProvider = _loc6_;
         if(_loc6_.length > 0)
         {
            this.settingsBar.permissionsList.selectedItem = _loc6_.getItemAt(0);
         }
      }
      
      private function handleShowUpsellMediumLayer(param1:MouseEvent) : void
      {
         sendNotification(MiniLayerConstants.OPEN_MINI_CINEMA_REWARDS_LAYER);
      }
      
      private function handleTownhallHarvest(param1:MouseEvent) : void
      {
         sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_TEST,["townhall"]);
      }
      
      private function handleIfiScreen(param1:MouseEvent) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = new Object();
         _loc3_.quest = false;
         switch(param1.currentTarget)
         {
            case this.settingsBar.screen1:
               _loc2_ = ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN;
               _loc3_.screen = QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION;
               break;
            case this.settingsBar.screen2:
               _loc2_ = ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN;
               _loc3_.screen = QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION_KAIDEN;
               break;
            case this.settingsBar.screen3:
               _loc2_ = ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN;
               _loc3_.screen = QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION_KAIDEN_FRIENDS;
               break;
            case this.settingsBar.screen4:
               _loc2_ = ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN;
               _loc3_.screen = QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION_EDUCATION;
               break;
            case this.settingsBar.screen5:
               _loc2_ = ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN;
               _loc3_.feature = QuestGFXIDLayerConstants.INFRASTRUCTURE_FEATURE_SECURITY_GRADES;
               break;
            case this.settingsBar.screen6:
               _loc2_ = ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN;
               _loc3_.feature = QuestGFXIDLayerConstants.INFRASTRUCTURE_FEATURE_SUCCESS_CHANCE;
               break;
            case this.settingsBar.screen7:
               _loc2_ = ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN;
               _loc3_.feature = QuestGFXIDLayerConstants.INFRASTRUCTURE_FEATURE_SECURITY_DEVICES;
               break;
            case this.settingsBar.screen8:
               _loc2_ = ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN;
               _loc3_.screen = QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION_POLICE;
               break;
            case this.settingsBar.screen9:
               _loc2_ = ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN;
               _loc3_.screen = QuestGFXIDLayerConstants.INFRASTRUCTURE_INTRODUCTION_POLICECHIEF;
               break;
            case this.settingsBar.screen10:
               _loc2_ = ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN;
               _loc3_.screen = QuestGFXIDLayerConstants.CHARACTER_SARIKA_INTRODUCTION;
               break;
            case this.settingsBar.screen11:
               _loc2_ = ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN;
               _loc3_.feature = QuestGFXIDLayerConstants.BIG_FEATURE_PRODUCTION_POINTS;
               break;
            case this.settingsBar.screen12:
               _loc2_ = ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN;
               _loc3_.feature = QuestGFXIDLayerConstants.BIG_FEATURE_SUBLEVEL;
         }
         sendNotification(_loc2_,_loc3_);
      }
      
      private function handleShutdown(param1:MouseEvent) : void
      {
         sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_TEST,["shutdown"]);
      }
      
      private function handleTraceProfButton(param1:MouseEvent) : void
      {
         var _loc3_:ProfessionalDTO = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:ProfessionalAttributeDTO = null;
         var _loc2_:ProfessionalProxy = facade.retrieveProxy(ProfessionalProxy.NAME) as ProfessionalProxy;
         for each(_loc3_ in _loc2_.allAvailableProfessionals)
         {
            _loc4_ = _loc3_.gender ? "male" : "female";
            _loc5_ = ResourceManager.getInstance().getString("rcl.professions.nameconvention" + "","rcl.professions.nameconvention.fistnamelastname" + "");
            _loc6_ = ResourceManager.getInstance().getString("rcl.professions.firstnames." + _loc4_,"rcl.professions.firstnames." + _loc4_ + "." + _loc3_.name);
            _loc7_ = ResourceManager.getInstance().getString("rcl.professions.surnames." + _loc4_,"rcl.professions.surnames." + _loc4_ + "." + _loc3_.surname);
            for each(_loc8_ in _loc3_.attributes)
            {
            }
         }
      }
      
      private function handleUpdateData(param1:MouseEvent) : void
      {
         facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_TEST,["login"]);
      }
      
      private function handleGetEmergency(param1:MouseEvent) : void
      {
         facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_TEST,["emergency",this.settingsBar.emergencyInput.text]);
      }
      
      private function kaxtest(param1:MouseEvent) : void
      {
         sendNotification(ApplicationNotificationConstants.KAX_TEST,true);
      }
      
      private function handleRemoveStreets(param1:MouseEvent) : void
      {
         var _loc4_:IObject3D = null;
         var _loc5_:IPlaneObject = null;
         var _loc2_:int = 0;
         this.enableSpawnProxy(false);
         sendNotification(ApplicationNotificationConstants.REMOVE_ALL_URBIES);
         var _loc3_:PathWalkProxy = facade.retrieveProxy(PathWalkProxy.NAME) as PathWalkProxy;
         _loc3_.pathwalkManager.terrain.map.setAllTilesUnusable();
         for each(_loc4_ in this._playfieldObjects.objectList)
         {
            if(_loc4_ is IPlaneObject)
            {
               _loc5_ = _loc4_ as IPlaneObject;
               if((Boolean(_loc5_)) && Boolean(_loc5_.objectVo.configPlayfieldItemVo.destroyable))
               {
                  (_loc5_.objectVo as IFloaterObjectVo).informationFloaterPhase = (_loc5_.objectVo as PlaneObjectVo).getDestructionPhase();
                  _loc2_++;
                  TweenMax.delayedCall(_loc2_ / 10,sendNotification,[ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_DESTROY_GROUND,_loc5_]);
               }
            }
         }
         TweenMax.delayedCall(_loc2_ / 10,this.enableSpawnProxy,[true]);
      }
      
      private function enableSpawnProxy(param1:Boolean) : void
      {
         var _loc2_:SpawnProxy = facade.retrieveProxy(SpawnProxy.NAME) as SpawnProxy;
         _loc2_.enabled = param1;
      }
      
      private function handleShowID(param1:MouseEvent) : void
      {
      }
      
      private function handleTutTest(param1:MouseEvent) : void
      {
         (facade.retrieveProxy(QuestProxy.NAME) as QuestProxy).reset(QuestSystemTypeConstants.TUTORIAL);
         facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_TEST,["tutorial",this.settingsBar.textinput.text]);
      }
      
      private function handleEventTest(param1:MouseEvent) : void
      {
         (facade.retrieveProxy(QuestProxy.NAME) as QuestProxy).reset(QuestSystemTypeConstants.EVENT);
         facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_TEST,["event",this.settingsBar.textinput.text]);
      }
      
      private function handleKeyboardDown(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = param1.keyCode;
         if(param1.ctrlKey && _loc2_ == 77)
         {
            this.settingsBar.visible = !this.settingsBar.visible;
         }
         else if(param1.ctrlKey && param1.altKey && _loc2_ == 70)
         {
            facade.sendNotification(ApplicationNotificationConstants.FLYTO_POPUP_TOGGLE_COMMAND);
         }
      }
      
      private function enableFullLog(param1:MouseEvent) : void
      {
         var _loc2_:ServerCommunicationProxy = facade.retrieveProxy(ServerCommunicationProxy.NAME) as ServerCommunicationProxy;
         _loc2_.fulllog = true;
      }
      
      public function get settingsBar() : SettingsBarView
      {
         return viewComponent as SettingsBarView;
      }
      
      public function kill() : void
      {
         this.settingsBar.visible = false;
      }
      
      private function getBoulder(param1:MouseEvent) : void
      {
         facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_TEST,["boulders"]);
      }
      
      private function playfieldChangeRequestHandler(param1:IndexChangeEvent) : void
      {
         var _loc5_:PlayfieldLightVo = null;
         var _loc6_:PlayfieldProxy = null;
         var _loc2_:Boolean = false;
         var _loc3_:Number = param1.newIndex + 1;
         var _loc4_:CityProxy = facade.retrieveProxy(CityProxy.NAME) as CityProxy;
         for each(_loc5_ in _loc4_.city.playfields)
         {
            if(_loc5_.configId == _loc3_)
            {
               _loc2_ = true;
               break;
            }
         }
         if(_loc2_)
         {
            _loc6_ = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
            if(_loc6_ == null || _loc6_.playfieldDTO == null)
            {
               facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_LOAD,_loc3_);
            }
            else
            {
               facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_SWITCH_PLAYFIELD,_loc3_);
            }
         }
         else
         {
            sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_TEST,["createNewPlayfield",_loc3_]);
            param1.stopPropagation();
         }
      }
   }
}

