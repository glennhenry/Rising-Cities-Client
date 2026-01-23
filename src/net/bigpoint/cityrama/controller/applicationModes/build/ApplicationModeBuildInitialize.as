package net.bigpoint.cityrama.controller.applicationModes.build
{
   import flash.display.Stage;
   import mx.core.FlexGlobals;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.FieldBuildProxy;
   import net.bigpoint.cityrama.model.field.ground.GridProxy;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ApplicationModeBuildInitialize extends SimpleCommand
   {
      
      public function ApplicationModeBuildInitialize()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:GridProxy = GridProxy(facade.retrieveProxy(GridProxy.NAME));
         _loc2_.tileGridVisiblity = true;
         _loc2_.itemGridVisiblity = false;
         if(facade.retrieveProxy(FieldBuildProxy.NAME) as FieldBuildProxy == null)
         {
            facade.registerProxy(new FieldBuildProxy());
         }
         facade.registerCommand(ApplicationNotificationConstants.FIELD_CLICK,FieldClickForBuildCommand);
         facade.registerCommand(ApplicationNotificationConstants.FIELD_MOUSE_MOVE,FieldMoveMouseForBuildCommand);
         facade.sendNotification(ApplicationNotificationConstants.REMOVE_ALL_URBIES);
         facade.sendNotification(ApplicationNotificationConstants.HIDE_ALL_ICONS);
         var _loc3_:Stage = FlexGlobals.topLevelApplication.stage as Stage;
         _loc3_.focus = FlexGlobals.topLevelApplication.stage;
         _loc3_.stageFocusRect = false;
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE_ALL);
         facade.sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_PLAYFIELD_RESOURCES);
      }
   }
}

