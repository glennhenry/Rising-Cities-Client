package net.bigpoint.cityrama.controller.applicationStartup.prepCommands.controller
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.controller.KaTestCommand;
   import net.bigpoint.cityrama.controller.applicationModes.build.BuildGameObjectCommand;
   import net.bigpoint.cityrama.controller.dropIcons.DropIconSetTargetsCommand;
   import net.bigpoint.cityrama.controller.dropIcons.EvaluateFieldDropsCommand;
   import net.bigpoint.cityrama.controller.external.CheckPlayerVersionCommand;
   import net.bigpoint.cityrama.controller.external.OpenExternaLForumCommand;
   import net.bigpoint.cityrama.controller.external.OpenExternalLinkCommand;
   import net.bigpoint.cityrama.controller.field.EndMysteryBuildingUnwrapCommand;
   import net.bigpoint.cityrama.controller.field.LockPlayfieldForSwitch;
   import net.bigpoint.cityrama.controller.field.StartMysteryBuildingUnwrapCommand;
   import net.bigpoint.cityrama.controller.field.UnlockPlayfieldForSwitch;
   import net.bigpoint.cityrama.controller.floater.PrepareBillboardObjectFloaterManagerCommand;
   import net.bigpoint.cityrama.controller.infrastructure.heatmap.ChangeHeatmapViewStateCommand;
   import net.bigpoint.cityrama.controller.levelUp.SubLevelReachedCommand;
   import net.bigpoint.cityrama.controller.logout.ApplicationLogoutCommand;
   import net.bigpoint.cityrama.controller.newsscreen.NewsscreenCheckStartupCommand;
   import net.bigpoint.cityrama.controller.payment.PlayerPaymentPackStartupCommand;
   import net.bigpoint.cityrama.controller.residentSelection.CheckResidentSelectionCommand;
   import net.bigpoint.cityrama.controller.server.ServerConnectionClosed;
   import net.bigpoint.cityrama.controller.urbies.PauseAllWalkersCommand;
   import net.bigpoint.cityrama.controller.urbies.ResumeAllWalkersCommand;
   import net.bigpoint.cityrama.view.cursor.AttachImprovementToCursorCommand;
   import net.bigpoint.cityrama.view.cursor.DetachImprovementFromCursorCommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ControllerPrepCommandMisc extends SimpleCommand
   {
      
      public function ControllerPrepCommandMisc()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         facade.registerCommand(ApplicationNotificationConstants.CHECK_PLAYER_VERSION,CheckPlayerVersionCommand);
         facade.registerCommand(ApplicationNotificationConstants.APPLICATION_LOGOUT,ApplicationLogoutCommand);
         facade.registerCommand(ApplicationNotificationConstants.CONNECTION_LOST,ServerConnectionClosed);
         facade.registerCommand(ApplicationNotificationConstants.PAUSE_ALL_WALKERS,PauseAllWalkersCommand);
         facade.registerCommand(ApplicationNotificationConstants.RESUME_ALL_WALKERS,ResumeAllWalkersCommand);
         facade.registerCommand(ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,DropIconSetTargetsCommand);
         facade.registerCommand(ApplicationNotificationConstants.EVALUATE_DROPS,EvaluateFieldDropsCommand);
         facade.registerCommand(ApplicationNotificationConstants.CHECK_DAILY_NEWSSCREEN,NewsscreenCheckStartupCommand);
         facade.registerCommand(ApplicationNotificationConstants.CHECK_PLAYER_PAYMENTPACKS,PlayerPaymentPackStartupCommand);
         facade.registerCommand(ApplicationNotificationConstants.CHECK_RESIDENT_SELECTION,CheckResidentSelectionCommand);
         facade.registerCommand(ApplicationNotificationConstants.OPEN_EXTERNAL_FORUM,OpenExternaLForumCommand);
         facade.registerCommand(ApplicationNotificationConstants.KAX_TEST,KaTestCommand);
         facade.registerCommand(ApplicationNotificationConstants.HIDE_HEATMAP,ChangeHeatmapViewStateCommand);
         facade.registerCommand(ApplicationNotificationConstants.SHOW_BLINDSPOT_HEATMAP,ChangeHeatmapViewStateCommand);
         facade.registerCommand(ApplicationNotificationConstants.SHOW_DEPARTMENT_HEATMAP,ChangeHeatmapViewStateCommand);
         facade.registerCommand(ApplicationNotificationConstants.START_MYSTERYBUILDING_UNWRAP,StartMysteryBuildingUnwrapCommand);
         facade.registerCommand(ApplicationNotificationConstants.END_MYSTERYBUILDING_UNWRAP,EndMysteryBuildingUnwrapCommand);
         facade.registerCommand(ApplicationNotificationConstants.OPEN_EXTERNAL_LINK,OpenExternalLinkCommand);
         facade.registerCommand(ApplicationNotificationConstants.ATTACH_IMPROVEMENT_TO_CURSOR,AttachImprovementToCursorCommand);
         facade.registerCommand(ApplicationNotificationConstants.DETACH_IMPROVEMENT_FROM_CURSOR,DetachImprovementFromCursorCommand);
         facade.registerCommand(ApplicationNotificationConstants.START_PLAYFIELD_LOADING_ANIMATION,LockPlayfieldForSwitch);
         facade.registerCommand(ApplicationNotificationConstants.STOP_PLAYFIELD_LOADING_ANIMATION,UnlockPlayfieldForSwitch);
         facade.registerCommand(ApplicationNotificationConstants.SUBLEVEL_REACHED,SubLevelReachedCommand);
         facade.registerCommand(ApplicationNotificationConstants.PREPARE_BILLBOARDOBJECT_FLOATERMANAGER,PrepareBillboardObjectFloaterManagerCommand);
         facade.registerCommand(ApplicationNotificationConstants.BUILD_GAMEOBJECT,BuildGameObjectCommand);
      }
   }
}

