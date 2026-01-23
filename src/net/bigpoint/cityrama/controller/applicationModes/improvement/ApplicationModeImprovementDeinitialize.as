package net.bigpoint.cityrama.controller.applicationModes.improvement
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ImprovementInventoryMediator;
   import net.bigpoint.cityrama.view.hud.HUDMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ApplicationModeImprovementDeinitialize extends SimpleCommand
   {
      
      public function ApplicationModeImprovementDeinitialize()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK);
         facade.removeCommand(ApplicationNotificationConstants.FIELD_MOUSE_MOVE);
         facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OVER);
         facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OUT);
         facade.removeMediator(ImprovementInventoryMediator.NAME);
         (facade.retrieveMediator(HUDMediator.NAME) as HUDMediator).visible(true);
         facade.sendNotification(ApplicationNotificationConstants.HIDE_IMPROVEMENT_ICONS);
         facade.sendNotification(ApplicationNotificationConstants.SHOW_ALL_ICONS);
         facade.sendNotification(ApplicationNotificationConstants.DETACH_IMPROVEMENT_FROM_CURSOR);
         facade.sendNotification(VirtualTaskNotificationInterest.APPLICATIONMODES_IMROVEMENT_DEINIT);
      }
   }
}

