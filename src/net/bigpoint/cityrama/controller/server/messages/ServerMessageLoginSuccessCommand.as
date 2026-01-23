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
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc10_:KeyboardInputActionProxy = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         if(_loc12_ || Boolean(param1))
         {
            facade.registerProxy(new CityAssistProxy(CityAssistProxy.NAME));
            if(_loc12_)
            {
               PreloaderProgressSingleton.instance.setProgress(PreloaderProgressSingleton.STATE_POINTER_SERVER_LOGIN_SUCESS);
            }
         }
         var _loc3_:PlayfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
         var _loc4_:CityProxy = CityProxy(facade.retrieveProxy(CityProxy.NAME));
         var _loc5_:PlayerProxy = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
         var _loc6_:PlayerResourceProxy = PlayerResourceProxy(facade.retrieveProxy(PlayerResourceProxy.NAME));
         var _loc7_:GameConfigProxy = GameConfigProxy(facade.retrieveProxy(GameConfigProxy.NAME));
         var _loc8_:ServerConfigProxy = facade.retrieveProxy(ServerConfigProxy.NAME) as ServerConfigProxy;
         var _loc9_:CityAssistProxy = facade.retrieveProxy(CityAssistProxy.NAME) as CityAssistProxy;
         if(!_loc11_)
         {
            _loc7_.config = new ConfigDTO(_loc2_.json.config);
            if(!_loc11_)
            {
               _loc5_.player = new PlayerDTO(_loc2_.json.player);
               if(!(_loc11_ && Boolean(_loc2_)))
               {
                  _loc6_.worker = ResourceDTO(_loc4_.city.resources[_loc7_.resourcesIds[ServerResConst.RESOURCE_WORKERS]]).amount;
                  if(_loc12_ || Boolean(_loc3_))
                  {
                     if(ResourceDTO(_loc4_.city.resources[_loc7_.resourcesIds[ServerResConst.RESOURCE_RICHMEN]]))
                     {
                        if(_loc12_)
                        {
                           _loc6_.richMen = ResourceDTO(_loc4_.city.resources[_loc7_.resourcesIds[ServerResConst.RESOURCE_RICHMEN]]).amount;
                           addr018c:
                           if(!_loc11_)
                           {
                              addr01c3:
                              if(ResourceDTO(_loc4_.city.resources[_loc7_.resourcesIds[ServerResConst.RESOURCE_ACADEMICS]]))
                              {
                                 if(!(_loc11_ && Boolean(_loc2_)))
                                 {
                                    _loc6_.academics = ResourceDTO(_loc4_.city.resources[_loc7_.resourcesIds[ServerResConst.RESOURCE_ACADEMICS]]).amount;
                                    if(_loc12_ || Boolean(_loc2_))
                                    {
                                       addr0229:
                                       _loc3_.happynessConsumed = ResourceDTO(_loc4_.city.resources[_loc7_.resourcesIds[ServerResConst.RESOURCE_HAPPINESS_NEGATIVE]]).amount;
                                       if(_loc12_ || Boolean(param1))
                                       {
                                          addr025d:
                                          _loc3_.happynessProduced = ResourceDTO(_loc4_.city.resources[_loc7_.resourcesIds[ServerResConst.RESOURCE_HAPPINESS_POSITIVE]]).amount;
                                          if(!(_loc11_ && Boolean(param1)))
                                          {
                                             _loc3_.energyConsumed = ResourceDTO(_loc4_.city.resources[_loc7_.resourcesIds[ServerResConst.RESOURCE_ENERGY_NEGATIVE]]).amount;
                                             if(!_loc11_)
                                             {
                                                addr02bd:
                                                _loc3_.energyProduced = ResourceDTO(_loc4_.city.resources[_loc7_.resourcesIds[ServerResConst.RESOURCE_ENERGY_POSITIVE]]).amount;
                                                if(!_loc11_)
                                                {
                                                   _loc9_.init();
                                                   if(!(_loc11_ && Boolean(_loc3_)))
                                                   {
                                                      addr02fd:
                                                      if(_loc8_.connectionCounter > 1)
                                                      {
                                                         if(_loc12_ || Boolean(this))
                                                         {
                                                            _loc10_ = facade.retrieveProxy(KeyboardInputActionProxy.NAME) as KeyboardInputActionProxy;
                                                            _loc10_.resetView();
                                                            if(_loc12_ || Boolean(_loc3_))
                                                            {
                                                               _loc8_.connectionCounter = 0;
                                                            }
                                                            §§goto(addr0350);
                                                         }
                                                         §§goto(addr0376);
                                                      }
                                                      addr0350:
                                                      facade.removeCommand(ServerNotificationConstants.SERVER_MESSAGE_INITIAL_LOGIN_SUCCESS);
                                                      if(!_loc11_)
                                                      {
                                                         addr0362:
                                                         facade.registerCommand(ServerNotificationConstants.SERVER_MESSAGE_MIDSESSION_LOGIN_SUCCESS,ServerMidSessionLoginSuccessCommand);
                                                         if(_loc12_)
                                                         {
                                                            addr0376:
                                                            this.restoreAdditionalUIOptionsAndUIAttentionMarks();
                                                         }
                                                      }
                                                      §§goto(addr037c);
                                                   }
                                                   addr037c:
                                                   return;
                                                }
                                                §§goto(addr0376);
                                             }
                                             §§goto(addr02fd);
                                          }
                                          §§goto(addr0376);
                                       }
                                       §§goto(addr02bd);
                                    }
                                    §§goto(addr025d);
                                 }
                              }
                              §§goto(addr0229);
                           }
                           §§goto(addr0376);
                        }
                        §§goto(addr02bd);
                     }
                     §§goto(addr01c3);
                  }
                  §§goto(addr02bd);
               }
               §§goto(addr0362);
            }
            §§goto(addr018c);
         }
         §§goto(addr02bd);
      }
      
      private function restoreAdditionalUIOptionsAndUIAttentionMarks() : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc5_:ClientUIDataDTO = null;
         var _loc6_:Object = null;
         var _loc1_:PlayerProxy = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
         var _loc2_:ServerStorageProxy = facade.retrieveProxy(ServerStorageProxy.NAME) as ServerStorageProxy;
         var _loc3_:LocalStorageProxy = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
         var _loc4_:* = false;
         if(!(_loc8_ && Boolean(this)))
         {
            §§push(_loc1_.player);
            if(!_loc8_)
            {
               §§push(§§pop().ui);
               if(_loc7_)
               {
                  if(§§pop())
                  {
                     if(_loc7_)
                     {
                        §§push(_loc1_.player);
                        if(!(_loc8_ && Boolean(this)))
                        {
                           §§push(§§pop().ui);
                           if(!(_loc8_ && Boolean(this)))
                           {
                              if(§§pop().viewedPlayfieldItemConfigIds == null)
                              {
                                 if(!(_loc8_ && Boolean(_loc3_)))
                                 {
                                    §§push(_loc1_.player);
                                    if(!(_loc8_ && Boolean(_loc3_)))
                                    {
                                       §§push(§§pop().ui);
                                       if(_loc7_)
                                       {
                                          §§goto(addr00da);
                                       }
                                       §§goto(addr0136);
                                    }
                                    §§goto(addr0133);
                                 }
                                 §§goto(addr02cd);
                              }
                              §§goto(addr00fe);
                           }
                           addr00da:
                           §§pop().viewedPlayfieldItemConfigIds = _loc3_.viewedPlayfieldItems;
                           if(!_loc8_)
                           {
                              §§push(true);
                              if(!_loc8_)
                              {
                                 _loc4_ = §§pop();
                                 if(_loc7_ || Boolean(this))
                                 {
                                    addr00fe:
                                    §§push(_loc1_.player);
                                    if(_loc7_ || Boolean(this))
                                    {
                                       addr0110:
                                       §§push(§§pop().ui);
                                       if(!(_loc8_ && Boolean(this)))
                                       {
                                          if(§§pop().viewedQuest == null)
                                          {
                                             if(_loc7_)
                                             {
                                                §§goto(addr0136);
                                             }
                                             §§goto(addr0150);
                                          }
                                          §§goto(addr0167);
                                       }
                                       addr0136:
                                       _loc1_.player.ui.viewedQuest = _loc3_.viewedQuest;
                                       §§goto(addr0133);
                                    }
                                    addr0133:
                                    §§goto(addr012f);
                                 }
                                 §§goto(addr02cd);
                              }
                              §§goto(addr015f);
                           }
                           §§goto(addr012f);
                        }
                        §§goto(addr0110);
                     }
                     addr012f:
                     if(_loc7_)
                     {
                        addr0150:
                        §§push(true);
                        if(_loc7_ || Boolean(_loc2_))
                        {
                           addr015f:
                           _loc4_ = §§pop();
                           if(!_loc8_)
                           {
                              addr0167:
                              _loc2_.uiDataDTO = _loc1_.player.ui as ClientUIDataDTO;
                              if(_loc7_ || Boolean(_loc3_))
                              {
                                 §§goto(addr02c3);
                              }
                           }
                           §§goto(addr02cd);
                        }
                        addr02c3:
                        addr02c1:
                        if(_loc4_)
                        {
                           if(!_loc8_)
                           {
                              addr02cd:
                              facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_UPDATE_CLIENT_UI_DATA);
                           }
                        }
                        §§goto(addr02d8);
                     }
                     addr02d8:
                     return;
                  }
                  _loc6_ = new Object();
                  _loc6_.lowTrf = _loc3_.isAdditionalOptionSelected(OptionsMenuNavigationConstants.OPTIONS_LIST_SPARSE_TRAFFIC);
                  if(_loc7_)
                  {
                     _loc6_.lowGq = _loc3_.isAdditionalOptionSelected(OptionsMenuNavigationConstants.OPTIONS_LIST_LOW_QUALITY_GRAPHICS);
                     if(_loc7_)
                     {
                        _loc6_.hTips = _loc3_.isAdditionalOptionSelected(OptionsMenuNavigationConstants.OPTIONS_LIST_INCREASING_TIPS);
                        if(_loc7_ || Boolean(this))
                        {
                           addr01dd:
                           _loc6_.hFloater = _loc3_.isAdditionalOptionSelected(OptionsMenuNavigationConstants.OPTIONS_LIST_INCREASING_SIMBOLS);
                           if(_loc7_ || Boolean(_loc1_))
                           {
                              _loc6_.rc = _loc3_.isAdditionalOptionSelected(OptionsMenuNavigationConstants.OPTIONS_LIST_RC_VERIFICATION);
                              if(!_loc8_)
                              {
                                 addr0213:
                                 _loc6_.fastIlayer = _loc3_.isAdditionalOptionSelected(OptionsMenuNavigationConstants.OPTIONS_LIST_DELAY_NOTIFICATION);
                                 if(_loc7_)
                                 {
                                    _loc6_.fsOn = _loc3_.isAdditionalOptionSelected(OptionsMenuNavigationConstants.OPTIONS_LIST_FULLSCREEN_ACTIVE);
                                    if(_loc7_ || Boolean(_loc2_))
                                    {
                                       addr0249:
                                       _loc6_.soundOn = _loc3_.isMainOptionSelected(OptionsMenuNavigationConstants.TOGGLE_SOUND);
                                       if(!_loc8_)
                                       {
                                          _loc6_.viewedPlayfieldItemConfigIds = _loc3_.viewedPlayfieldItems;
                                          if(_loc7_ || Boolean(_loc2_))
                                          {
                                             addr0278:
                                             _loc6_.viewedQuest = _loc3_.viewedQuest;
                                          }
                                          addr0282:
                                          _loc5_ = new ClientUIDataDTO(_loc6_);
                                          if(_loc7_)
                                          {
                                             _loc2_.uiDataDTO = _loc5_;
                                             if(!_loc8_)
                                             {
                                                addr02af:
                                                _loc1_.player.ui = _loc5_;
                                                if(_loc7_)
                                                {
                                                   _loc4_ = true;
                                                }
                                             }
                                             §§goto(addr02c1);
                                          }
                                          §§goto(addr02af);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr0278);
                           }
                           §§goto(addr0213);
                        }
                        §§goto(addr0282);
                     }
                     §§goto(addr01dd);
                  }
                  §§goto(addr0249);
                  §§goto(addr02c1);
               }
               §§goto(addr00da);
            }
            §§goto(addr0133);
         }
         §§goto(addr02cd);
      }
   }
}

