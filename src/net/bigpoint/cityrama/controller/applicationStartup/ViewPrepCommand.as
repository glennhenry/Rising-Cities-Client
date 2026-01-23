package net.bigpoint.cityrama.controller.applicationStartup
{
   import net.bigpoint.cityrama.MainApplication;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.view.assistants.PatrolSideMenuMediator;
   import net.bigpoint.cityrama.view.assistants.RentCollectorSideMenuMediator;
   import net.bigpoint.cityrama.view.bonusDay.BonusDaySideMenuMediator;
   import net.bigpoint.cityrama.view.citysquare.CitySquareSideMenuMediator;
   import net.bigpoint.cityrama.view.cursor.CursorMediator;
   import net.bigpoint.cityrama.view.dropIcons.DropIconsMediator;
   import net.bigpoint.cityrama.view.emergencyTV.EmergencyTVMediator;
   import net.bigpoint.cityrama.view.featuredEvent.FeaturedEventSideMenuMediator;
   import net.bigpoint.cityrama.view.field.FieldViewPortMediator;
   import net.bigpoint.cityrama.view.fieldInfoLayer.FieldInfoLayerMediator;
   import net.bigpoint.cityrama.view.hud.HUDMediator;
   import net.bigpoint.cityrama.view.mainMenu.CursorMenuMediator;
   import net.bigpoint.cityrama.view.mainMenu.MainMenuMediator;
   import net.bigpoint.cityrama.view.mainMenu.OptionsMenuMediator;
   import net.bigpoint.cityrama.view.mainMenu.ViewModeMenuMediator;
   import net.bigpoint.cityrama.view.popupContainer.PopupContainerMediator;
   import net.bigpoint.cityrama.view.quest.QuestSideMenuMediator;
   import net.bigpoint.cityrama.view.settingsbar.SettingsBarMediator;
   import net.bigpoint.cityrama.view.settingsbar.ui.dev.QMConsoleMediator;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ViewPrepCommand extends SimpleCommand implements ICommand
   {
      
      public function ViewPrepCommand()
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
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:MainApplication = MainApplication(param1.getBody());
         if(_loc3_ || Boolean(this))
         {
            facade.registerMediator(new SettingsBarMediator(SettingsBarMediator.NAME,_loc2_.mainView.settingBar));
            if(_loc3_ || Boolean(param1))
            {
               facade.registerMediator(new QMConsoleMediator(QMConsoleMediator.NAME,_loc2_.mainView.qmConsole));
               if(_loc3_)
               {
                  facade.registerMediator(new MainMenuMediator(_loc2_.mainView.mainMenuComponent));
                  if(_loc3_)
                  {
                     addr008c:
                     facade.registerMediator(new OptionsMenuMediator(_loc2_.mainView.mainMenuComponent.optionsGroup));
                     if(_loc3_ || Boolean(_loc2_))
                     {
                        facade.registerMediator(new CursorMenuMediator(_loc2_.mainView.mainMenuComponent.cursorGroup));
                        if(!(_loc4_ && Boolean(this)))
                        {
                           facade.registerMediator(new ViewModeMenuMediator(_loc2_.mainView.mainMenuComponent.viewmodeGroup));
                           if(!_loc4_)
                           {
                              §§goto(addr00f2);
                           }
                           §§goto(addr0138);
                        }
                        §§goto(addr0154);
                     }
                     addr00f2:
                     facade.registerMediator(new CursorMediator(CursorMediator.NAME,_loc2_.mainView));
                     if(!_loc4_)
                     {
                        facade.registerMediator(new HUDMediator(HUDMediator.NAME,_loc2_.mainView.hudBar));
                        if(_loc3_)
                        {
                           addr0138:
                           facade.registerMediator(new FieldViewPortMediator(FieldViewPortMediator.NAME,_loc2_.mainView));
                           if(!_loc4_)
                           {
                              addr0154:
                              facade.registerMediator(new FieldInfoLayerMediator(_loc2_.mainView.infoandIconLayer));
                              if(_loc3_ || Boolean(this))
                              {
                                 facade.registerMediator(new DropIconsMediator(DropIconsMediator.NAME,_loc2_.mainView.dropIconsAnimation));
                                 if(!_loc4_)
                                 {
                                    facade.registerMediator(new PopupContainerMediator());
                                    if(!_loc4_)
                                    {
                                       facade.registerMediator(new QuestSideMenuMediator(_loc2_.mainView.questSideInfoView));
                                       if(!_loc4_)
                                       {
                                          facade.registerMediator(new RentCollectorSideMenuMediator(_loc2_.mainView.rentCollectorSideView));
                                          if(_loc3_ || Boolean(param1))
                                          {
                                             addr01e2:
                                             facade.registerMediator(new CitySquareSideMenuMediator(_loc2_.mainView.citySquareSideMenu));
                                             if(!(_loc4_ && Boolean(_loc2_)))
                                             {
                                                addr0204:
                                                facade.registerMediator(new PatrolSideMenuMediator(_loc2_.mainView.patrolSideMenu));
                                                if(!_loc4_)
                                                {
                                                   §§goto(addr021e);
                                                }
                                                §§goto(addr0264);
                                             }
                                             §§goto(addr021e);
                                          }
                                          §§goto(addr0237);
                                       }
                                       §§goto(addr0264);
                                    }
                                    §§goto(addr021e);
                                 }
                              }
                              §§goto(addr01e2);
                           }
                           §§goto(addr021e);
                        }
                        §§goto(addr01e2);
                     }
                     §§goto(addr021e);
                  }
                  §§goto(addr0204);
               }
               addr021e:
               facade.registerMediator(new FeaturedEventSideMenuMediator(_loc2_.mainView.featuredEventSideMenu));
               if(_loc3_)
               {
                  addr0237:
                  facade.registerMediator(new BonusDaySideMenuMediator(_loc2_.mainView.bonusDaySideMenu));
                  if(_loc3_ || Boolean(param1))
                  {
                     addr0264:
                     facade.registerMediator(new EmergencyTVMediator(EmergencyTVMediator.NAME,_loc2_.mainView.emergencyTV));
                     if(_loc3_ || Boolean(_loc2_))
                     {
                        addr028a:
                        facade.sendNotification(ApplicationNotificationConstants.OPEN_WORLD_MAP_OR_LOAD_PLAYFIELD);
                     }
                     §§goto(addr0295);
                  }
                  §§goto(addr028a);
               }
               addr0295:
               return;
            }
            §§goto(addr008c);
         }
         §§goto(addr00f2);
      }
   }
}

