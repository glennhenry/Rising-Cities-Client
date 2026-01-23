package net.bigpoint.cityrama.controller.field
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.MysteryBuildingFieldObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class EndMysteryBuildingUnwrapCommand extends SimpleCommand
   {
      
      public function EndMysteryBuildingUnwrapCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:MysteryBuildingFieldObject = MysteryBuildingFieldObject(param1.getBody());
         if(_loc2_)
         {
            sendNotification(ApplicationNotificationConstants.ENABLE_USER_INTERACTION,true);
            sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_CONSTRUCTIONPHASE_PROCESS,{
               "boost":false,
               "vo":_loc2_.billboardObjectVo
            });
         }
      }
   }
}

