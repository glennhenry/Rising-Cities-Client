package net.bigpoint.cityrama.controller.worldMap
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenWorldMapOrLoadPlayfieldCommand extends SimpleCommand
   {
      
      public function OpenWorldMapOrLoadPlayfieldCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:FeatureProxy = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
         if(!_loc2_.isMoreThanOnePlayfieldEnabled)
         {
            facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_SWITCH_PLAYFIELD,1);
         }
         else
         {
            facade.sendNotification(ApplicationNotificationConstants.SHOW_GUI,false);
            facade.sendNotification(ApplicationNotificationConstants.OPEN_WORLD_MAP,false);
         }
      }
   }
}

