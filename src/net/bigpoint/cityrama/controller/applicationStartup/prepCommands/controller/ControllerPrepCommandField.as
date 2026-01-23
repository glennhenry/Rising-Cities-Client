package net.bigpoint.cityrama.controller.applicationStartup.prepCommands.controller
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.controller.applicationModes.destroy.ShowFloaterOnDestroyCommand;
   import net.bigpoint.cityrama.controller.field.BoulderClickedCommand;
   import net.bigpoint.cityrama.controller.field.CitySquareInfieldOperationCommand;
   import net.bigpoint.cityrama.controller.field.CreateClientFieldObjectsCommand;
   import net.bigpoint.cityrama.controller.field.DecoPlacedAnimationCommand;
   import net.bigpoint.cityrama.controller.field.EmergencyAnimationCommand;
   import net.bigpoint.cityrama.controller.field.FieldPanToEmergencyCommand;
   import net.bigpoint.cityrama.controller.field.GroundGeneratStreetsTexturesCommand;
   import net.bigpoint.cityrama.controller.field.GroundGenerateTexturesCommand;
   import net.bigpoint.cityrama.controller.field.MoveInAnimationCommand;
   import net.bigpoint.cityrama.controller.field.OnResidentSelected;
   import net.bigpoint.cityrama.controller.field.PlayfieldCleanCommand;
   import net.bigpoint.cityrama.controller.field.PlayfieldExpandCommand;
   import net.bigpoint.cityrama.controller.field.PlayfieldRedrawCommand;
   import net.bigpoint.cityrama.controller.field.PlayfieldSwitchFieldObjectClickedCommand;
   import net.bigpoint.cityrama.controller.field.ShowBoulderFloaterAndRemoveCommand;
   import net.bigpoint.cityrama.controller.field.ShowFloaterCommand;
   import net.bigpoint.cityrama.controller.field.ShowProductionAnimation;
   import net.bigpoint.cityrama.controller.field.ShowProductionStartedFloater;
   import net.bigpoint.cityrama.controller.field.ShowScheduledDropAnimationCommand;
   import net.bigpoint.cityrama.controller.infrastructure.emergency.CollectEmergencyRewardCommand;
   import net.bigpoint.cityrama.controller.mastery.CheckMasteryTraitSelectionCommand;
   import net.bigpoint.cityrama.controller.quest.CitySquareClickedCommand;
   import net.bigpoint.cityrama.controller.urbies.CelebratingCitizensCommand;
   import net.bigpoint.cityrama.controller.urbies.CitizenRebuildStreetmapCommand;
   import net.bigpoint.cityrama.controller.urbies.HandleEnterFrameCommand;
   import net.bigpoint.cityrama.controller.urbies.HandleTimerTickCommand;
   import net.bigpoint.cityrama.controller.urbies.RemoveAllUrbiesCommand;
   import net.bigpoint.cityrama.controller.urbies.TerrainChangedCommand;
   import net.bigpoint.cityrama.controller.urbies.walker.WalkerCellChangedCommand;
   import net.bigpoint.cityrama.controller.urbies.walker.WalkerDirectionChangedCommand;
   import net.bigpoint.cityrama.controller.urbies.walker.WalkerFriendFoundCommand;
   import net.bigpoint.cityrama.controller.urbies.walker.WalkerPathCompleteCommand;
   import net.bigpoint.cityrama.controller.urbies.walker.WalkerPathFoundCommand;
   import net.bigpoint.cityrama.controller.urbies.walker.WalkerPathNotPossibleCommand;
   import net.bigpoint.cityrama.controller.urbies.walker.WalkerPathPausedCommand;
   import net.bigpoint.cityrama.controller.urbies.walker.WalkerPathResumedCommand;
   import net.bigpoint.cityrama.model.urbies.CitizenConstants;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ControllerPrepCommandField extends SimpleCommand
   {
      
      public function ControllerPrepCommandField()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         facade.registerCommand(ApplicationNotificationConstants.EVENTS_CHANGED,CitySquareInfieldOperationCommand);
         facade.registerCommand(ApplicationNotificationConstants.BUY_PLAYFIELD_EXTENSION,PlayfieldExpandCommand);
         facade.registerCommand(ApplicationNotificationConstants.GROUND_GENERATE_STREETS_TEXTURES_COMMAND,GroundGeneratStreetsTexturesCommand);
         facade.registerCommand(ApplicationNotificationConstants.GROUND_GENERATE_TEXTURES_COMMAND,GroundGenerateTexturesCommand);
         facade.registerCommand(ApplicationNotificationConstants.FIELD_DATA_CHANGED,PlayfieldCleanCommand);
         facade.registerCommand(ApplicationNotificationConstants.FIELD_REDRAW,PlayfieldRedrawCommand);
         facade.registerCommand(ApplicationNotificationConstants.CREATE_CLIENT_FIELD_OBJECTS,CreateClientFieldObjectsCommand);
         facade.registerCommand(ApplicationNotificationConstants.TIMER_TICK,HandleTimerTickCommand);
         facade.registerCommand(ApplicationNotificationConstants.RENDER_TICK,HandleEnterFrameCommand);
         facade.registerCommand(ApplicationNotificationConstants.GROUND_ITEM_STATE_CHANGED,TerrainChangedCommand);
         facade.registerCommand(ApplicationNotificationConstants.REMOVE_ALL_URBIES,RemoveAllUrbiesCommand);
         facade.registerCommand(CitizenConstants.WALKER_DIRECTION_CHANGED,WalkerDirectionChangedCommand);
         facade.registerCommand(CitizenConstants.WALKER_FRIEND_FOUND,WalkerFriendFoundCommand);
         facade.registerCommand(CitizenConstants.WALKER_PATH_COMPLETE,WalkerPathCompleteCommand);
         facade.registerCommand(CitizenConstants.WALKER_PATH_FOUND,WalkerPathFoundCommand);
         facade.registerCommand(CitizenConstants.WALKER_PATH_NOT_POSSIBLE,WalkerPathNotPossibleCommand);
         facade.registerCommand(CitizenConstants.WALKER_PATH_PAUSED,WalkerPathPausedCommand);
         facade.registerCommand(CitizenConstants.WALKER_PATH_RESUMED,WalkerPathResumedCommand);
         facade.registerCommand(CitizenConstants.WALKER_CELL_CHANGED,WalkerCellChangedCommand);
         facade.registerCommand(ApplicationNotificationConstants.SPAWN_INAUGURATE_CITIZEN,MoveInAnimationCommand);
         facade.registerCommand(ApplicationNotificationConstants.CELEBRATING_CITIZEN,CelebratingCitizensCommand);
         facade.registerCommand(ApplicationNotificationConstants.SPAWN_EMERGENCY_CITIZEN,EmergencyAnimationCommand);
         facade.registerCommand(ApplicationNotificationConstants.DECO_PLACED_INAUGURATE,DecoPlacedAnimationCommand);
         facade.registerCommand(ApplicationNotificationConstants.SHOW_FLOATER_ON_DESTROY,ShowFloaterOnDestroyCommand);
         facade.registerCommand(ApplicationNotificationConstants.SHOW_BOULDER_FLOATER_AND_REMOVE,ShowBoulderFloaterAndRemoveCommand);
         facade.registerCommand(ApplicationNotificationConstants.SHOW_PRODUCTION_FLOATER,ShowProductionStartedFloater);
         facade.registerCommand(ApplicationNotificationConstants.CITYSQUARE_CLICKED,CitySquareClickedCommand);
         facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_SWITCH_FIELD_OBJECT_CLICKED,PlayfieldSwitchFieldObjectClickedCommand);
         facade.registerCommand(ApplicationNotificationConstants.BOULDER_CLICKED,BoulderClickedCommand);
         facade.registerCommand(ApplicationNotificationConstants.RESIDENT_SELECTED,OnResidentSelected);
         facade.registerCommand(ApplicationNotificationConstants.SHOW_PRODUCTION_ANIMATION,ShowProductionAnimation);
         facade.registerCommand(ApplicationNotificationConstants.SHOW_INFO_FLOATER,ShowFloaterCommand);
         facade.registerCommand(ApplicationNotificationConstants.CITIZEN_REBUILD_STREETMAP,CitizenRebuildStreetmapCommand);
         facade.registerCommand(ApplicationNotificationConstants.COLLECT_EMERGENCY_REWARD,CollectEmergencyRewardCommand);
         facade.registerCommand(ApplicationNotificationConstants.FIELD_PANTO_EMERGENCY,FieldPanToEmergencyCommand);
         facade.registerCommand(ApplicationNotificationConstants.CHECK_MASTERY_TRAIT_SELECTION,CheckMasteryTraitSelectionCommand);
         facade.registerCommand(ApplicationNotificationConstants.SHOW_SCHEDULED_DROP_ANIMATION,ShowScheduledDropAnimationCommand);
      }
   }
}

