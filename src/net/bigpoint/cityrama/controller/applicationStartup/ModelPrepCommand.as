package net.bigpoint.cityrama.controller.applicationStartup
{
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.FormulaProxy;
   import net.bigpoint.cityrama.model.LayoutProxy;
   import net.bigpoint.cityrama.model.architecturalBook.ArchitecturalBookProxy;
   import net.bigpoint.cityrama.model.architecturalBook.SideMenuProxy;
   import net.bigpoint.cityrama.model.baseView.BasementViewProxy;
   import net.bigpoint.cityrama.model.baseView.emergency.EmergencyProxy;
   import net.bigpoint.cityrama.model.boosterpack.BoosterpackBookProxy;
   import net.bigpoint.cityrama.model.cinema.CinemaProxy;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryProxy;
   import net.bigpoint.cityrama.model.cityTreasury.CityTreasuryTabProxy;
   import net.bigpoint.cityrama.model.cityWheel.CityWheelProxy;
   import net.bigpoint.cityrama.model.construction.ConstructionLayerDataProxy;
   import net.bigpoint.cityrama.model.departmentBook.DepartmentSideMenuProxy;
   import net.bigpoint.cityrama.model.departmentBook.DepartmentTabProxy;
   import net.bigpoint.cityrama.model.detailViews.EventLayerProxy;
   import net.bigpoint.cityrama.model.detailViews.MainLayerProxy;
   import net.bigpoint.cityrama.model.detailViews.QuestGUIProxy;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.model.emergencyTV.EmergencyTVProxy;
   import net.bigpoint.cityrama.model.externalInterface.ExternalInterfaceProxy;
   import net.bigpoint.cityrama.model.featureScreens.FeatureScreenProxy;
   import net.bigpoint.cityrama.model.featuredEvent.FeaturedEventProxy;
   import net.bigpoint.cityrama.model.featuredEvent.FeaturedLayerTabProxy;
   import net.bigpoint.cityrama.model.field.FieldCursorProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldInteractiveProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.FieldInfoLayerProxy;
   import net.bigpoint.cityrama.model.field.ground.GridProxy;
   import net.bigpoint.cityrama.model.field.ground.RestrictionProxy;
   import net.bigpoint.cityrama.model.friends.FriendTabProxy;
   import net.bigpoint.cityrama.model.friends.FriendsProxy;
   import net.bigpoint.cityrama.model.friends.SideMenuFriendBookProxy;
   import net.bigpoint.cityrama.model.game.KeyboardInputActionProxy;
   import net.bigpoint.cityrama.model.improvement.CityImprovementProxy;
   import net.bigpoint.cityrama.model.improvement.ImprovementCursorProxy;
   import net.bigpoint.cityrama.model.improvement.ImprovementLayerProxy;
   import net.bigpoint.cityrama.model.improvement.ImprovementProxy;
   import net.bigpoint.cityrama.model.improvement.ImprovementStoreProxy;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.ingameStore.IngameStoreTabProxy;
   import net.bigpoint.cityrama.model.inventory.PlayfieldItemInventoryViewProxy;
   import net.bigpoint.cityrama.model.mastery.BuildingMasteryProxy;
   import net.bigpoint.cityrama.model.menu.MainMenuPopedUpProxy;
   import net.bigpoint.cityrama.model.menu.MainMenuPositionProxy;
   import net.bigpoint.cityrama.model.miniLayer.EmergencyMiniLayerProxy;
   import net.bigpoint.cityrama.model.miniLayer.MiniLayerProxy;
   import net.bigpoint.cityrama.model.newsscreen.NewsscreenLayerProxy;
   import net.bigpoint.cityrama.model.popup.PopupProxy;
   import net.bigpoint.cityrama.model.professionals.ProfessionalProxy;
   import net.bigpoint.cityrama.model.quest.QuestTabProxy;
   import net.bigpoint.cityrama.model.residentialBook.ResidentialTabProxy;
   import net.bigpoint.cityrama.model.rewards.RewardLayerProxy;
   import net.bigpoint.cityrama.model.schoolBook.SchoolBookProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.model.storage.StorageProxy;
   import net.bigpoint.cityrama.model.storage.StorageSideMenuProxy;
   import net.bigpoint.cityrama.model.urbies.PreSpawnProxy;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ModelPrepCommand extends SimpleCommand implements ICommand
   {
      
      public function ModelPrepCommand()
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
         if(_loc3_)
         {
            facade.registerProxy(new CityWheelProxy());
            if(_loc3_)
            {
               facade.registerProxy(new FriendsProxy(FriendsProxy.NAME));
               if(!_loc2_)
               {
                  facade.registerProxy(new SecurityMatrixProxy(SecurityMatrixProxy.NAME));
                  if(!(_loc2_ && _loc3_))
                  {
                     facade.registerProxy(new ApplicationModeProxy(ApplicationModeProxy.NAME));
                     if(_loc3_)
                     {
                        facade.registerProxy(new LayoutProxy(LayoutProxy.NAME));
                        if(_loc3_)
                        {
                           facade.registerProxy(new FieldCursorProxy(FieldCursorProxy.NAME));
                           if(_loc3_)
                           {
                              facade.registerProxy(new MainMenuPositionProxy(MainMenuPositionProxy.NAME));
                              if(!(_loc2_ && _loc3_))
                              {
                                 facade.registerProxy(new PlayfieldInteractiveProxy(PlayfieldInteractiveProxy.NAME));
                                 if(!_loc2_)
                                 {
                                    facade.registerProxy(new PlayfieldObjectsProxy(PlayfieldObjectsProxy.NAME));
                                    if(_loc3_)
                                    {
                                       facade.registerProxy(new MainMenuPopedUpProxy(MainMenuPopedUpProxy.NAME));
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr010e:
                                          facade.registerProxy(new ProfessionalProxy(ProfessionalProxy.NAME));
                                          if(!(_loc2_ && Boolean(param1)))
                                          {
                                             facade.registerProxy(new ImprovementProxy(ImprovementProxy.NAME));
                                             if(_loc3_)
                                             {
                                                facade.registerProxy(new BuildingMasteryProxy(BuildingMasteryProxy.NAME));
                                                if(_loc3_)
                                                {
                                                   facade.registerProxy(new BoosterpackBookProxy(BoosterpackBookProxy.NAME));
                                                   if(!_loc2_)
                                                   {
                                                      addr0172:
                                                      facade.registerProxy(new ImprovementStoreProxy(ImprovementStoreProxy.NAME));
                                                      if(_loc3_)
                                                      {
                                                         addr0189:
                                                         facade.registerProxy(new FeatureScreenProxy(FeatureScreenProxy.NAME));
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            facade.registerProxy(new ArchitecturalBookProxy(ArchitecturalBookProxy.NAME));
                                                            if(!(_loc2_ && _loc3_))
                                                            {
                                                               addr01c7:
                                                               facade.registerProxy(new SideMenuProxy());
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  facade.registerProxy(new StorageSideMenuProxy());
                                                                  if(_loc3_)
                                                                  {
                                                                     addr01f3:
                                                                     facade.registerProxy(new SideMenuFriendBookProxy());
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        addr020d:
                                                                        facade.registerProxy(new GridProxy(GridProxy.NAME));
                                                                        if(!(_loc2_ && Boolean(this)))
                                                                        {
                                                                           addr022c:
                                                                           facade.registerProxy(new PopupProxy(PopupProxy.NAME));
                                                                           if(_loc3_)
                                                                           {
                                                                              addr0243:
                                                                              facade.registerProxy(new PreSpawnProxy());
                                                                              if(_loc3_)
                                                                              {
                                                                                 facade.registerProxy(new SoundProxy());
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    facade.registerProxy(new BasementViewProxy());
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       addr0279:
                                                                                       facade.registerProxy(new QuestGUIProxy(QuestGUIProxy.NAME));
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          facade.registerProxy(new MainLayerProxy(MainLayerProxy.NAME));
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             facade.registerProxy(new EventLayerProxy(EventLayerProxy.NAME));
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                facade.registerProxy(new EmergencyLayerProxy(EmergencyLayerProxy.NAME));
                                                                                                if(_loc3_ || _loc3_)
                                                                                                {
                                                                                                   facade.registerProxy(new EmergencyProxy(EmergencyProxy.NAME));
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      addr0300:
                                                                                                      facade.registerProxy(new EmergencyTVProxy(EmergencyTVProxy.NAME));
                                                                                                      if(!(_loc2_ && _loc2_))
                                                                                                      {
                                                                                                         facade.registerProxy(new RewardLayerProxy(RewardLayerProxy.NAME));
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            facade.registerProxy(new FieldInfoLayerProxy(FieldInfoLayerProxy.NAME));
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               facade.registerProxy(new StorageProxy(StorageProxy.NAME));
                                                                                                               if(!(_loc2_ && Boolean(this)))
                                                                                                               {
                                                                                                                  addr036c:
                                                                                                                  facade.registerProxy(new MiniLayerProxy(MiniLayerProxy.NAME));
                                                                                                                  if(!(_loc2_ && _loc3_))
                                                                                                                  {
                                                                                                                     addr038b:
                                                                                                                     facade.registerProxy(new EmergencyMiniLayerProxy(EmergencyMiniLayerProxy.NAME));
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        addr03a2:
                                                                                                                        facade.registerProxy(new RestrictionProxy(RestrictionProxy.NAME));
                                                                                                                        if(!(_loc2_ && _loc2_))
                                                                                                                        {
                                                                                                                           addr03c1:
                                                                                                                           facade.registerProxy(new KeyboardInputActionProxy(KeyboardInputActionProxy.NAME));
                                                                                                                           if(!(_loc2_ && _loc3_))
                                                                                                                           {
                                                                                                                              facade.registerProxy(new ExternalInterfaceProxy());
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 addr03f2:
                                                                                                                                 facade.registerProxy(new CityTreasuryProxy());
                                                                                                                                 if(!_loc2_)
                                                                                                                                 {
                                                                                                                                    addr0404:
                                                                                                                                    facade.registerProxy(new FriendTabProxy());
                                                                                                                                    if(_loc3_)
                                                                                                                                    {
                                                                                                                                       facade.registerProxy(new FeaturedLayerTabProxy());
                                                                                                                                       if(_loc3_)
                                                                                                                                       {
                                                                                                                                          addr0428:
                                                                                                                                          facade.registerProxy(new DepartmentTabProxy());
                                                                                                                                          if(!(_loc2_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             facade.registerProxy(new DepartmentSideMenuProxy());
                                                                                                                                             if(_loc3_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                addr045c:
                                                                                                                                                facade.registerProxy(new SchoolBookProxy());
                                                                                                                                                if(!(_loc2_ && Boolean(this)))
                                                                                                                                                {
                                                                                                                                                   addr0476:
                                                                                                                                                   facade.registerProxy(new FeaturedEventProxy());
                                                                                                                                                   if(!_loc2_)
                                                                                                                                                   {
                                                                                                                                                      addr0488:
                                                                                                                                                      facade.registerProxy(new NewsscreenLayerProxy());
                                                                                                                                                      if(!_loc2_)
                                                                                                                                                      {
                                                                                                                                                         addr049a:
                                                                                                                                                         facade.registerProxy(new ResidentialTabProxy());
                                                                                                                                                         if(_loc3_)
                                                                                                                                                         {
                                                                                                                                                            addr04ac:
                                                                                                                                                            facade.registerProxy(new QuestTabProxy());
                                                                                                                                                            if(_loc3_)
                                                                                                                                                            {
                                                                                                                                                               facade.registerProxy(new IngameStoreTabProxy());
                                                                                                                                                               if(!(_loc2_ && Boolean(this)))
                                                                                                                                                               {
                                                                                                                                                                  facade.registerProxy(new CityTreasuryTabProxy());
                                                                                                                                                                  if(_loc3_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     addr04f2:
                                                                                                                                                                     facade.registerProxy(new ImprovementCursorProxy());
                                                                                                                                                                     if(!(_loc2_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        addr050c:
                                                                                                                                                                        facade.registerProxy(new ImprovementLayerProxy());
                                                                                                                                                                        if(!_loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           addr051e:
                                                                                                                                                                           facade.registerProxy(new PlayfieldItemInventoryViewProxy());
                                                                                                                                                                           if(!(_loc2_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              addr0538:
                                                                                                                                                                              facade.registerProxy(new CinemaProxy());
                                                                                                                                                                              if(!(_loc2_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 facade.registerProxy(new CityImprovementProxy());
                                                                                                                                                                                 addr0552:
                                                                                                                                                                                 if(!_loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr0570:
                                                                                                                                                                                    facade.registerProxy(new ConstructionLayerDataProxy(ConstructionLayerDataProxy.NAME));
                                                                                                                                                                                    if(_loc3_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr058f:
                                                                                                                                                                                       facade.registerProxy(new FormulaProxy(FormulaProxy.NAME));
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr05a1);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr058f);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr05a1);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0570);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr058f);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr05a1);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr04f2);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr058f);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0538);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr04ac);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr050c);
                                                                                                                                                }
                                                                                                                                                §§goto(addr049a);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0476);
                                                                                                                                          }
                                                                                                                                          §§goto(addr045c);
                                                                                                                                       }
                                                                                                                                       §§goto(addr04f2);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0570);
                                                                                                                                 }
                                                                                                                                 §§goto(addr045c);
                                                                                                                              }
                                                                                                                              §§goto(addr051e);
                                                                                                                           }
                                                                                                                           §§goto(addr0570);
                                                                                                                        }
                                                                                                                        §§goto(addr0488);
                                                                                                                     }
                                                                                                                     §§goto(addr0538);
                                                                                                                  }
                                                                                                                  §§goto(addr0404);
                                                                                                               }
                                                                                                               §§goto(addr04ac);
                                                                                                            }
                                                                                                            §§goto(addr036c);
                                                                                                         }
                                                                                                         §§goto(addr049a);
                                                                                                      }
                                                                                                      §§goto(addr03a2);
                                                                                                   }
                                                                                                   §§goto(addr049a);
                                                                                                }
                                                                                                §§goto(addr036c);
                                                                                             }
                                                                                             §§goto(addr0300);
                                                                                          }
                                                                                          §§goto(addr03f2);
                                                                                       }
                                                                                       §§goto(addr049a);
                                                                                    }
                                                                                    §§goto(addr0552);
                                                                                 }
                                                                                 §§goto(addr051e);
                                                                              }
                                                                              §§goto(addr0476);
                                                                           }
                                                                           §§goto(addr03c1);
                                                                        }
                                                                        §§goto(addr04ac);
                                                                     }
                                                                     §§goto(addr05a1);
                                                                  }
                                                                  §§goto(addr03f2);
                                                               }
                                                               §§goto(addr038b);
                                                            }
                                                            §§goto(addr03a2);
                                                         }
                                                         §§goto(addr0279);
                                                      }
                                                      §§goto(addr050c);
                                                   }
                                                   §§goto(addr01c7);
                                                }
                                                §§goto(addr0404);
                                             }
                                             addr05a1:
                                             return;
                                          }
                                          §§goto(addr0404);
                                       }
                                       §§goto(addr0243);
                                    }
                                    §§goto(addr0172);
                                 }
                                 §§goto(addr010e);
                              }
                              §§goto(addr020d);
                           }
                           §§goto(addr022c);
                        }
                        §§goto(addr01f3);
                     }
                     §§goto(addr0189);
                  }
                  §§goto(addr045c);
               }
               §§goto(addr0428);
            }
            §§goto(addr010e);
         }
         §§goto(addr049a);
      }
   }
}

