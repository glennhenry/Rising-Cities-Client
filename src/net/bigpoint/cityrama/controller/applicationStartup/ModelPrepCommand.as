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
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         facade.registerProxy(new CityWheelProxy());
         facade.registerProxy(new FriendsProxy(FriendsProxy.NAME));
         facade.registerProxy(new SecurityMatrixProxy(SecurityMatrixProxy.NAME));
         facade.registerProxy(new ApplicationModeProxy(ApplicationModeProxy.NAME));
         facade.registerProxy(new LayoutProxy(LayoutProxy.NAME));
         facade.registerProxy(new FieldCursorProxy(FieldCursorProxy.NAME));
         facade.registerProxy(new MainMenuPositionProxy(MainMenuPositionProxy.NAME));
         facade.registerProxy(new PlayfieldInteractiveProxy(PlayfieldInteractiveProxy.NAME));
         facade.registerProxy(new PlayfieldObjectsProxy(PlayfieldObjectsProxy.NAME));
         facade.registerProxy(new MainMenuPopedUpProxy(MainMenuPopedUpProxy.NAME));
         facade.registerProxy(new ProfessionalProxy(ProfessionalProxy.NAME));
         facade.registerProxy(new ImprovementProxy(ImprovementProxy.NAME));
         facade.registerProxy(new BuildingMasteryProxy(BuildingMasteryProxy.NAME));
         facade.registerProxy(new BoosterpackBookProxy(BoosterpackBookProxy.NAME));
         facade.registerProxy(new ImprovementStoreProxy(ImprovementStoreProxy.NAME));
         facade.registerProxy(new FeatureScreenProxy(FeatureScreenProxy.NAME));
         facade.registerProxy(new ArchitecturalBookProxy(ArchitecturalBookProxy.NAME));
         facade.registerProxy(new SideMenuProxy());
         facade.registerProxy(new StorageSideMenuProxy());
         facade.registerProxy(new SideMenuFriendBookProxy());
         facade.registerProxy(new GridProxy(GridProxy.NAME));
         facade.registerProxy(new PopupProxy(PopupProxy.NAME));
         facade.registerProxy(new PreSpawnProxy());
         facade.registerProxy(new SoundProxy());
         facade.registerProxy(new BasementViewProxy());
         facade.registerProxy(new QuestGUIProxy(QuestGUIProxy.NAME));
         facade.registerProxy(new MainLayerProxy(MainLayerProxy.NAME));
         facade.registerProxy(new EventLayerProxy(EventLayerProxy.NAME));
         facade.registerProxy(new EmergencyLayerProxy(EmergencyLayerProxy.NAME));
         facade.registerProxy(new EmergencyProxy(EmergencyProxy.NAME));
         facade.registerProxy(new EmergencyTVProxy(EmergencyTVProxy.NAME));
         facade.registerProxy(new RewardLayerProxy(RewardLayerProxy.NAME));
         facade.registerProxy(new FieldInfoLayerProxy(FieldInfoLayerProxy.NAME));
         facade.registerProxy(new StorageProxy(StorageProxy.NAME));
         facade.registerProxy(new MiniLayerProxy(MiniLayerProxy.NAME));
         facade.registerProxy(new EmergencyMiniLayerProxy(EmergencyMiniLayerProxy.NAME));
         facade.registerProxy(new RestrictionProxy(RestrictionProxy.NAME));
         facade.registerProxy(new KeyboardInputActionProxy(KeyboardInputActionProxy.NAME));
         facade.registerProxy(new ExternalInterfaceProxy());
         facade.registerProxy(new CityTreasuryProxy());
         facade.registerProxy(new FriendTabProxy());
         facade.registerProxy(new FeaturedLayerTabProxy());
         facade.registerProxy(new DepartmentTabProxy());
         facade.registerProxy(new DepartmentSideMenuProxy());
         facade.registerProxy(new SchoolBookProxy());
         facade.registerProxy(new FeaturedEventProxy());
         facade.registerProxy(new NewsscreenLayerProxy());
         facade.registerProxy(new ResidentialTabProxy());
         facade.registerProxy(new QuestTabProxy());
         facade.registerProxy(new IngameStoreTabProxy());
         facade.registerProxy(new CityTreasuryTabProxy());
         facade.registerProxy(new ImprovementCursorProxy());
         facade.registerProxy(new ImprovementLayerProxy());
         facade.registerProxy(new PlayfieldItemInventoryViewProxy());
         facade.registerProxy(new CinemaProxy());
         facade.registerProxy(new CityImprovementProxy());
         facade.registerProxy(new ConstructionLayerDataProxy(ConstructionLayerDataProxy.NAME));
         facade.registerProxy(new FormulaProxy(FormulaProxy.NAME));
      }
   }
}

