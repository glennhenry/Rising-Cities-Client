package net.bigpoint.cityrama.controller.preloaderStartup
{
   import net.bigpoint.cityrama.model.CityProxy;
   import net.bigpoint.cityrama.model.EventStreamProxy;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.UserLevelProxy;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.events.ExpansionSaleEventProxy;
   import net.bigpoint.cityrama.model.field.PlayFieldHighlightedObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldExpansionsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.globalbalance.GlobalBalanceProxy;
   import net.bigpoint.cityrama.model.inventory.InventoryProxy;
   import net.bigpoint.cityrama.model.menu.HUDProxy;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuProxy;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.preloader.ApplicationSettingsProxy;
   import net.bigpoint.cityrama.model.preloader.FilePreloadServiceProxy;
   import net.bigpoint.cityrama.model.preloader.FileRuntimeLoadDynamicServiceProxy;
   import net.bigpoint.cityrama.model.preloader.FileRuntimeLoadServiceProxy;
   import net.bigpoint.cityrama.model.quest.QuestProxy;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.ServerConfigProxy;
   import net.bigpoint.cityrama.model.serverStorage.ServerStorageProxy;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PreloaderModelPrepCommand extends SimpleCommand
   {
      
      public function PreloaderModelPrepCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         facade.registerProxy(new FlashVarsProxy(FlashVarsProxy.NAME));
         facade.registerProxy(new EventStreamProxy(EventStreamProxy.NAME));
         facade.registerProxy(new ApplicationSettingsProxy(ApplicationSettingsProxy.NAME));
         facade.registerProxy(new FilePreloadServiceProxy(FilePreloadServiceProxy.NAME));
         facade.registerProxy(new FileRuntimeLoadServiceProxy(FileRuntimeLoadServiceProxy.NAME));
         facade.registerProxy(new FileRuntimeLoadDynamicServiceProxy(FileRuntimeLoadDynamicServiceProxy.NAME));
         facade.registerProxy(new ServerStorageProxy(ServerStorageProxy.NAME));
         facade.registerProxy(new TimerProxy(TimerProxy.NAME));
         facade.registerProxy(new ServerConfigProxy(ServerConfigProxy.NAME));
         facade.registerProxy(new ServerCommunicationProxy(ServerCommunicationProxy.NAME));
         facade.registerProxy(new PlayerProxy(PlayerProxy.NAME));
         facade.registerProxy(new LocalStorageProxy(LocalStorageProxy.NAME));
         facade.registerProxy(new OptionsMenuProxy());
         facade.registerProxy(new QuestProxy(QuestProxy.NAME));
         facade.registerProxy(new EventProxy(EventProxy.NAME));
         facade.registerProxy(new GameConfigProxy(GameConfigProxy.NAME));
         facade.registerProxy(new CityProxy(CityProxy.NAME));
         facade.registerProxy(new PlayerGoodsStockProxy(PlayerGoodsStockProxy.NAME));
         facade.registerProxy(new InventoryProxy());
         facade.registerProxy(new GlobalBalanceProxy(GlobalBalanceProxy.NAME));
         facade.registerProxy(new PlayerResourceProxy(PlayerResourceProxy.NAME));
         facade.registerProxy(new PlayfieldProxy(PlayfieldProxy.NAME));
         facade.registerProxy(new PlayfieldExpansionsProxy(PlayfieldExpansionsProxy.NAME));
         facade.registerProxy(new ExpansionSaleEventProxy(ExpansionSaleEventProxy.NAME));
         facade.registerProxy(new UserLevelProxy(UserLevelProxy.NAME));
         facade.registerProxy(new PlayFieldHighlightedObjectsProxy(PlayFieldHighlightedObjectsProxy.NAME));
         facade.registerProxy(new HUDProxy(HUDProxy.NAME));
         facade.registerProxy(new FeatureProxy(FeatureProxy.NAME));
      }
   }
}

