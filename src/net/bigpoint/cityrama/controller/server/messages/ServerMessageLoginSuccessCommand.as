package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.controller.server.ServerMidSessionLoginSuccessCommand;
   import net.bigpoint.cityrama.init.preloader.PreloaderProgressSingleton;
   import net.bigpoint.cityrama.model.CityProxy;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.assistants.CityAssistProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.KeyboardInputActionProxy;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuNavigationConstants;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.server.ServerConfigProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ClientUIDataDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayerDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ResourceDTO;
   import net.bigpoint.cityrama.model.serverStorage.ServerStorageProxy;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageLoginSuccessCommand extends SimpleCommand
   {
      
      public function ServerMessageLoginSuccessCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc10_:KeyboardInputActionProxy = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         facade.registerProxy(new CityAssistProxy(CityAssistProxy.NAME));
         PreloaderProgressSingleton.instance.setProgress(PreloaderProgressSingleton.STATE_POINTER_SERVER_LOGIN_SUCESS);
         var _loc3_:PlayfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
         var _loc4_:CityProxy = CityProxy(facade.retrieveProxy(CityProxy.NAME));
         var _loc5_:PlayerProxy = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
         var _loc6_:PlayerResourceProxy = PlayerResourceProxy(facade.retrieveProxy(PlayerResourceProxy.NAME));
         var _loc7_:GameConfigProxy = GameConfigProxy(facade.retrieveProxy(GameConfigProxy.NAME));
         var _loc8_:ServerConfigProxy = facade.retrieveProxy(ServerConfigProxy.NAME) as ServerConfigProxy;
         var _loc9_:CityAssistProxy = facade.retrieveProxy(CityAssistProxy.NAME) as CityAssistProxy;
         _loc7_.config = new ConfigDTO(_loc2_.json.config);
         _loc5_.player = new PlayerDTO(_loc2_.json.player);
         _loc6_.worker = ResourceDTO(_loc4_.city.resources[_loc7_.resourcesIds[ServerResConst.RESOURCE_WORKERS]]).amount;
         if(ResourceDTO(_loc4_.city.resources[_loc7_.resourcesIds[ServerResConst.RESOURCE_RICHMEN]]))
         {
            _loc6_.richMen = ResourceDTO(_loc4_.city.resources[_loc7_.resourcesIds[ServerResConst.RESOURCE_RICHMEN]]).amount;
         }
         if(ResourceDTO(_loc4_.city.resources[_loc7_.resourcesIds[ServerResConst.RESOURCE_ACADEMICS]]))
         {
            _loc6_.academics = ResourceDTO(_loc4_.city.resources[_loc7_.resourcesIds[ServerResConst.RESOURCE_ACADEMICS]]).amount;
         }
         _loc3_.happynessConsumed = ResourceDTO(_loc4_.city.resources[_loc7_.resourcesIds[ServerResConst.RESOURCE_HAPPINESS_NEGATIVE]]).amount;
         _loc3_.happynessProduced = ResourceDTO(_loc4_.city.resources[_loc7_.resourcesIds[ServerResConst.RESOURCE_HAPPINESS_POSITIVE]]).amount;
         _loc3_.energyConsumed = ResourceDTO(_loc4_.city.resources[_loc7_.resourcesIds[ServerResConst.RESOURCE_ENERGY_NEGATIVE]]).amount;
         _loc3_.energyProduced = ResourceDTO(_loc4_.city.resources[_loc7_.resourcesIds[ServerResConst.RESOURCE_ENERGY_POSITIVE]]).amount;
         _loc9_.init();
         if(_loc8_.connectionCounter > 1)
         {
            _loc10_ = facade.retrieveProxy(KeyboardInputActionProxy.NAME) as KeyboardInputActionProxy;
            _loc10_.resetView();
            _loc8_.connectionCounter = 0;
         }
         facade.removeCommand(ServerNotificationConstants.SERVER_MESSAGE_INITIAL_LOGIN_SUCCESS);
         facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_MIDSESSION_LOGIN_SUCCESS,ServerMidSessionLoginSuccessCommand);
         this.restoreAdditionalUIOptionsAndUIAttentionMarks();
      }
      
      private function restoreAdditionalUIOptionsAndUIAttentionMarks() : void
      {
         var _loc5_:ClientUIDataDTO = null;
         var _loc6_:Object = null;
         var _loc1_:PlayerProxy = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
         var _loc2_:ServerStorageProxy = facade.retrieveProxy(ServerStorageProxy.NAME) as ServerStorageProxy;
         var _loc3_:LocalStorageProxy = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
         var _loc4_:Boolean = false;
         if(_loc1_.player.ui)
         {
            if(_loc1_.player.ui.viewedPlayfieldItemConfigIds == null)
            {
               _loc1_.player.ui.viewedPlayfieldItemConfigIds = _loc3_.viewedPlayfieldItems;
               _loc4_ = true;
            }
            if(_loc1_.player.ui.viewedQuest == null)
            {
               _loc1_.player.ui.viewedQuest = _loc3_.viewedQuest;
               _loc4_ = true;
            }
            _loc2_.uiDataDTO = _loc1_.player.ui as ClientUIDataDTO;
         }
         else
         {
            _loc6_ = new Object();
            _loc6_.lowTrf = _loc3_.isAdditionalOptionSelected(OptionsMenuNavigationConstants.OPTIONS_LIST_SPARSE_TRAFFIC);
            _loc6_.lowGq = _loc3_.isAdditionalOptionSelected(OptionsMenuNavigationConstants.OPTIONS_LIST_LOW_QUALITY_GRAPHICS);
            _loc6_.hTips = _loc3_.isAdditionalOptionSelected(OptionsMenuNavigationConstants.OPTIONS_LIST_INCREASING_TIPS);
            _loc6_.hFloater = _loc3_.isAdditionalOptionSelected(OptionsMenuNavigationConstants.OPTIONS_LIST_INCREASING_SIMBOLS);
            _loc6_.rc = _loc3_.isAdditionalOptionSelected(OptionsMenuNavigationConstants.OPTIONS_LIST_RC_VERIFICATION);
            _loc6_.fastIlayer = _loc3_.isAdditionalOptionSelected(OptionsMenuNavigationConstants.OPTIONS_LIST_DELAY_NOTIFICATION);
            _loc6_.fsOn = _loc3_.isAdditionalOptionSelected(OptionsMenuNavigationConstants.OPTIONS_LIST_FULLSCREEN_ACTIVE);
            _loc6_.soundOn = _loc3_.isMainOptionSelected(OptionsMenuNavigationConstants.TOGGLE_SOUND);
            _loc6_.viewedPlayfieldItemConfigIds = _loc3_.viewedPlayfieldItems;
            _loc6_.viewedQuest = _loc3_.viewedQuest;
            _loc5_ = new ClientUIDataDTO(_loc6_);
            _loc2_.uiDataDTO = _loc5_;
            _loc1_.player.ui = _loc5_;
            _loc4_ = true;
         }
         if(_loc4_)
         {
            facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_UPDATE_CLIENT_UI_DATA);
         }
      }
   }
}

