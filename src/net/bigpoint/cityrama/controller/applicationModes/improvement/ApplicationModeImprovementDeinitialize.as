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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK);
            if(_loc3_)
            {
               facade.removeCommand(ApplicationNotificationConstants.FIELD_MOUSE_MOVE);
               if(!_loc2_)
               {
                  facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OVER);
                  if(!_loc2_)
                  {
                     addr0049:
                     facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OUT);
                     if(_loc3_)
                     {
                        facade.removeMediator(ImprovementInventoryMediator.NAME);
                        if(!_loc2_)
                        {
                           addr0076:
                           (facade.retrieveMediator(HUDMediator.NAME) as HUDMediator).visible(true);
                           if(!(_loc2_ && _loc2_))
                           {
                              addr0096:
                              facade.sendNotification(ApplicationNotificationConstants.HIDE_IMPROVEMENT_ICONS);
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 facade.sendNotification(ApplicationNotificationConstants.SHOW_ALL_ICONS);
                                 addr00ae:
                                 if(_loc3_ || _loc2_)
                                 {
                                    §§goto(addr00d0);
                                 }
                                 §§goto(addr00e7);
                              }
                              §§goto(addr00d0);
                           }
                           §§goto(addr00e7);
                        }
                        addr00d0:
                        facade.sendNotification(ApplicationNotificationConstants.DETACH_IMPROVEMENT_FROM_CURSOR);
                        if(_loc3_ || Boolean(param1))
                        {
                           addr00e7:
                           facade.sendNotification(VirtualTaskNotificationInterest.APPLICATIONMODES_IMROVEMENT_DEINIT);
                        }
                        §§goto(addr00f2);
                     }
                     §§goto(addr0076);
                  }
                  §§goto(addr00ae);
               }
               §§goto(addr0096);
            }
            §§goto(addr0049);
         }
         addr00f2:
      }
   }
}

