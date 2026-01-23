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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:MysteryBuildingFieldObject = MysteryBuildingFieldObject(param1.getBody());
         if(!(_loc3_ && Boolean(param1)))
         {
            if(_loc2_)
            {
               if(!_loc3_)
               {
                  sendNotification(ApplicationNotificationConstants.ENABLE_USER_INTERACTION,true);
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     addr006b:
                     sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_CONSTRUCTIONPHASE_PROCESS,{
                        "boost":false,
                        "vo":_loc2_.billboardObjectVo
                     });
                  }
               }
            }
            return;
         }
         §§goto(addr006b);
      }
   }
}

