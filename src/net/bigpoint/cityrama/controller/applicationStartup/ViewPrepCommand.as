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
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:MainApplication = MainApplication(param1.getBody());
         facade.registerMediator(new SettingsBarMediator(SettingsBarMediator.NAME,_loc2_.mainView.settingBar));
         facade.registerMediator(new QMConsoleMediator(QMConsoleMediator.NAME,_loc2_.mainView.qmConsole));
         facade.registerMediator(new MainMenuMediator(_loc2_.mainView.mainMenuComponent));
         facade.registerMediator(new OptionsMenuMediator(_loc2_.mainView.mainMenuComponent.optionsGroup));
         facade.registerMediator(new CursorMenuMediator(_loc2_.mainView.mainMenuComponent.cursorGroup));
         facade.registerMediator(new ViewModeMenuMediator(_loc2_.mainView.mainMenuComponent.viewmodeGroup));
         facade.registerMediator(new CursorMediator(CursorMediator.NAME,_loc2_.mainView));
         facade.registerMediator(new HUDMediator(HUDMediator.NAME,_loc2_.mainView.hudBar));
         facade.registerMediator(new FieldViewPortMediator(FieldViewPortMediator.NAME,_loc2_.mainView));
         facade.registerMediator(new FieldInfoLayerMediator(_loc2_.mainView.infoandIconLayer));
         facade.registerMediator(new DropIconsMediator(DropIconsMediator.NAME,_loc2_.mainView.dropIconsAnimation));
         facade.registerMediator(new PopupContainerMediator());
         facade.registerMediator(new QuestSideMenuMediator(_loc2_.mainView.questSideInfoView));
         facade.registerMediator(new RentCollectorSideMenuMediator(_loc2_.mainView.rentCollectorSideView));
         facade.registerMediator(new CitySquareSideMenuMediator(_loc2_.mainView.citySquareSideMenu));
         facade.registerMediator(new PatrolSideMenuMediator(_loc2_.mainView.patrolSideMenu));
         facade.registerMediator(new FeaturedEventSideMenuMediator(_loc2_.mainView.featuredEventSideMenu));
         facade.registerMediator(new BonusDaySideMenuMediator(_loc2_.mainView.bonusDaySideMenu));
         facade.registerMediator(new EmergencyTVMediator(EmergencyTVMediator.NAME,_loc2_.mainView.emergencyTV));
         facade.sendNotification(ApplicationNotificationConstants.OPEN_WORLD_MAP_OR_LOAD_PLAYFIELD);
      }
   }
}

