package net.bigpoint.cityrama.controller.applicationModes.destroy
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.FieldDeleteProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.ground.GridProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PlayfieldSwitchFieldObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ApplicationModeDestroyInitializeCommand extends SimpleCommand
   {
      
      public function ApplicationModeDestroyInitializeCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc4_:PlayfieldSwitchFieldObject = null;
         var _loc2_:GridProxy = facade.retrieveProxy(GridProxy.NAME) as GridProxy;
         _loc2_.tileGridVisiblity = false;
         _loc2_.setItemSize(1,1,1,1);
         facade.sendNotification(ApplicationNotificationConstants.REMOVE_ALL_URBIES);
         facade.registerProxy(new FieldDeleteProxy(FieldDeleteProxy.NAME));
         facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK,InteractiveClickForDestroyCommand);
         facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OVER,PlayfieldInteractiveRollOverForDestroyCommand);
         facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OUT,PlayfieldInteractiveRollOutForDestroyCommand);
         facade.sendNotification(ApplicationNotificationConstants.REMOVE_ALL_URBIES);
         facade.sendNotification(VirtualTaskNotificationInterest.APPLICATIONMODES_DESTROY_INIT);
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE_ALL);
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         for each(_loc4_ in _loc3_.playfieldSwitchObjects)
         {
            _loc4_.iconVisibility = false;
         }
      }
   }
}

