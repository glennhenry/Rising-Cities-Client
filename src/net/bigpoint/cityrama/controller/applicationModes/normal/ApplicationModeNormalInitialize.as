package net.bigpoint.cityrama.controller.applicationModes.normal
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.ground.GridProxy;
   import net.bigpoint.cityrama.model.urbies.CitizensProxy;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ApplicationModeNormalInitialize extends SimpleCommand
   {
      
      public function ApplicationModeNormalInitialize()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:GridProxy = facade.retrieveProxy(GridProxy.NAME) as GridProxy;
         if(!(_loc4_ && Boolean(param1)))
         {
            _loc2_.tileGridVisiblity = false;
            if(!_loc4_)
            {
               _loc2_.itemGridVisiblity = false;
               if(!_loc4_)
               {
                  addr004a:
                  facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK,PlayfieldInteractiveClickForNormalCommand);
                  if(!_loc4_)
                  {
                     facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OVER,PlayfieldInteractiveRollOverForNormalCommand);
                     if(!(_loc4_ && Boolean(this)))
                     {
                        §§goto(addr0082);
                     }
                     §§goto(addr0095);
                  }
                  addr0082:
                  facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OUT,PlayfieldInteractiveRollOutForNormalCommand);
                  if(_loc5_)
                  {
                     addr0095:
                     facade.registerCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK_EMERGENCY,PlayfieldInteractiveClickEmergencyCommand);
                  }
               }
               §§goto(addr00a3);
            }
            §§goto(addr004a);
         }
         addr00a3:
         var _loc3_:CitizensProxy = facade.retrieveProxy(CitizensProxy.NAME) as CitizensProxy;
         if(!_loc4_)
         {
            _loc3_.scanForPfoTags();
            if(_loc5_ || Boolean(param1))
            {
               _loc3_.resetSpawnedList();
               if(_loc5_ || Boolean(param1))
               {
                  addr00ed:
                  facade.sendNotification(ApplicationNotificationConstants.CITIZEN_REBUILD_STREETMAP);
               }
               §§goto(addr00f8);
            }
            §§goto(addr00ed);
         }
         addr00f8:
      }
   }
}

