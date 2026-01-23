package net.bigpoint.cityrama.controller.applicationModes.improvement
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.view.application.ApplicationMediator;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ImprovementInventoryMediator;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.ImprovementInventoryView;
   import net.bigpoint.cityrama.view.hud.HUDMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ApplicationModeImprovementInitialize extends SimpleCommand
   {
      
      public function ApplicationModeImprovementInitialize()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK,FieldClickForImprovementCommand);
         facade.registerCommand(ApplicationNotificationConstants.FIELD_MOUSE_MOVE,MouseMoveForImprovementCommand);
         facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OVER,PlayfieldInteractiveRollOverForImprovementCommand);
         facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OUT,PlayfieldInteractiveRollOutForImprovementCommand);
         (facade.retrieveMediator(HUDMediator.NAME) as HUDMediator).visible(false);
         facade.sendNotification(ApplicationNotificationConstants.HIDE_ALL_ICONS);
         facade.sendNotification(ApplicationNotificationConstants.REMOVE_ALL_URBIES);
         facade.sendNotification(ApplicationNotificationConstants.SHOW_IMPROVEMENT_ICONS);
         facade.sendNotification(VirtualTaskNotificationInterest.APPLICATIONMODES_IMROVEMENT_INIT);
         var _loc2_:ApplicationMediator = facade.retrieveMediator(ApplicationMediator.NAME) as ApplicationMediator;
         var _loc3_:ImprovementInventoryMediator = facade.retrieveMediator(ImprovementInventoryMediator.NAME) as ImprovementInventoryMediator;
         if(!_loc3_)
         {
            _loc3_ = new ImprovementInventoryMediator(ImprovementInventoryMediator.NAME,new ImprovementInventoryView());
            facade.registerMediator(_loc3_);
         }
         _loc3_.component.visible = true;
         _loc2_.component.mainView.inventoryTopBarView.addElement(_loc3_.component);
         sendNotification(ApplicationNotificationConstants.POPUP_REMOVE_ALL);
      }
   }
}

