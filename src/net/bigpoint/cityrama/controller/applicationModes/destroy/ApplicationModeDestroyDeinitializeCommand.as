package net.bigpoint.cityrama.controller.applicationModes.destroy
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.FieldDeleteProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PlayfieldSwitchFieldObject;
   import net.bigpoint.cityrama.view.miniLayer.DemolitionQueryMiniLayerMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ApplicationModeDestroyDeinitializeCommand extends SimpleCommand
   {
      
      public function ApplicationModeDestroyDeinitializeCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc3_:PlayfieldSwitchFieldObject = null;
         facade.removeProxy(FieldDeleteProxy.NAME);
         facade.removeCommand(ApplicationNotificationConstants.FIELD_CLICK);
         facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK);
         facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OVER);
         facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OUT);
         facade.removeCommand(ApplicationNotificationConstants.FIELD_MOUSE_MOVE);
         facade.sendNotification(ApplicationNotificationConstants.MENU_SELECTED_DEFAULT_SUB_NAVIGATION_POINT);
         facade.sendNotification(VirtualTaskNotificationInterest.APPLICATIONMODES_DESTROY_DEINIT);
         if(facade.hasMediator(DemolitionQueryMiniLayerMediator.NAME))
         {
            facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,DemolitionQueryMiniLayerMediator.NAME);
         }
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         for each(_loc3_ in _loc2_.playfieldSwitchObjects)
         {
            _loc3_.iconVisibility = true;
         }
      }
   }
}

