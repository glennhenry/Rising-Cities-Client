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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            facade.registerProxy(new FlashVarsProxy(FlashVarsProxy.NAME));
            if(_loc3_)
            {
               facade.registerProxy(new EventStreamProxy(EventStreamProxy.NAME));
               if(!_loc2_)
               {
                  facade.registerProxy(new ApplicationSettingsProxy(ApplicationSettingsProxy.NAME));
                  if(!_loc2_)
                  {
                     facade.registerProxy(new FilePreloadServiceProxy(FilePreloadServiceProxy.NAME));
                     if(_loc3_)
                     {
                        facade.registerProxy(new FileRuntimeLoadServiceProxy(FileRuntimeLoadServiceProxy.NAME));
                        if(_loc3_)
                        {
                           facade.registerProxy(new FileRuntimeLoadDynamicServiceProxy(FileRuntimeLoadDynamicServiceProxy.NAME));
                           if(!_loc2_)
                           {
                              facade.registerProxy(new ServerStorageProxy(ServerStorageProxy.NAME));
                              if(!_loc2_)
                              {
                                 facade.registerProxy(new TimerProxy(TimerProxy.NAME));
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    facade.registerProxy(new ServerConfigProxy(ServerConfigProxy.NAME));
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       addr0101:
                                       facade.registerProxy(new ServerCommunicationProxy(ServerCommunicationProxy.NAME));
                                       if(_loc3_)
                                       {
                                          facade.registerProxy(new PlayerProxy(PlayerProxy.NAME));
                                          if(_loc3_)
                                          {
                                             facade.registerProxy(new LocalStorageProxy(LocalStorageProxy.NAME));
                                             if(!_loc2_)
                                             {
                                                facade.registerProxy(new OptionsMenuProxy());
                                                if(_loc3_)
                                                {
                                                   facade.registerProxy(new QuestProxy(QuestProxy.NAME));
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      addr0181:
                                                      facade.registerProxy(new EventProxy(EventProxy.NAME));
                                                      if(!_loc2_)
                                                      {
                                                         facade.registerProxy(new GameConfigProxy(GameConfigProxy.NAME));
                                                         if(_loc3_)
                                                         {
                                                            addr01ac:
                                                            facade.registerProxy(new CityProxy(CityProxy.NAME));
                                                            if(!(_loc2_ && Boolean(param1)))
                                                            {
                                                               addr01cb:
                                                               facade.registerProxy(new PlayerGoodsStockProxy(PlayerGoodsStockProxy.NAME));
                                                               if(!_loc2_)
                                                               {
                                                                  facade.registerProxy(new InventoryProxy());
                                                                  if(_loc3_)
                                                                  {
                                                                     addr01f4:
                                                                     facade.registerProxy(new GlobalBalanceProxy(GlobalBalanceProxy.NAME));
                                                                     if(!(_loc2_ && _loc3_))
                                                                     {
                                                                        addr0213:
                                                                        facade.registerProxy(new PlayerResourceProxy(PlayerResourceProxy.NAME));
                                                                        if(!_loc2_)
                                                                        {
                                                                           addr022a:
                                                                           facade.registerProxy(new PlayfieldProxy(PlayfieldProxy.NAME));
                                                                           if(_loc3_)
                                                                           {
                                                                              addr0241:
                                                                              facade.registerProxy(new PlayfieldExpansionsProxy(PlayfieldExpansionsProxy.NAME));
                                                                              if(_loc3_ || _loc2_)
                                                                              {
                                                                                 addr0260:
                                                                                 facade.registerProxy(new ExpansionSaleEventProxy(ExpansionSaleEventProxy.NAME));
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    addr0277:
                                                                                    facade.registerProxy(new UserLevelProxy(UserLevelProxy.NAME));
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       addr0298:
                                                                                       facade.registerProxy(new PlayFieldHighlightedObjectsProxy(PlayFieldHighlightedObjectsProxy.NAME));
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§goto(addr02af);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr02c6);
                                                                                 }
                                                                              }
                                                                              §§goto(addr0298);
                                                                           }
                                                                           addr02af:
                                                                           facade.registerProxy(new HUDProxy(HUDProxy.NAME));
                                                                           if(!_loc2_)
                                                                           {
                                                                              addr02c6:
                                                                              facade.registerProxy(new FeatureProxy(FeatureProxy.NAME));
                                                                           }
                                                                           §§goto(addr02d8);
                                                                        }
                                                                        §§goto(addr02c6);
                                                                     }
                                                                     §§goto(addr0241);
                                                                  }
                                                                  §§goto(addr0277);
                                                               }
                                                               §§goto(addr0241);
                                                            }
                                                            §§goto(addr0260);
                                                         }
                                                         addr02d8:
                                                         return;
                                                      }
                                                      §§goto(addr02af);
                                                   }
                                                   §§goto(addr01f4);
                                                }
                                                §§goto(addr02c6);
                                             }
                                             §§goto(addr0213);
                                          }
                                          §§goto(addr01cb);
                                       }
                                       §§goto(addr02c6);
                                    }
                                    §§goto(addr022a);
                                 }
                                 §§goto(addr0277);
                              }
                              §§goto(addr022a);
                           }
                           §§goto(addr0213);
                        }
                        §§goto(addr01ac);
                     }
                  }
                  §§goto(addr0101);
               }
               §§goto(addr0181);
            }
            §§goto(addr02af);
         }
         §§goto(addr0213);
      }
   }
}

