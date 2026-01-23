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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:PlayfieldSwitchFieldObject = null;
         if(!_loc7_)
         {
            facade.removeProxy(FieldDeleteProxy.NAME);
            if(!(_loc7_ && Boolean(this)))
            {
               facade.removeCommand(ApplicationNotificationConstants.FIELD_CLICK);
               if(_loc6_ || Boolean(_loc3_))
               {
                  addr0052:
                  facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK);
                  if(!(_loc7_ && Boolean(_loc3_)))
                  {
                     addr006b:
                     facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OVER);
                     if(_loc6_ || Boolean(param1))
                     {
                        facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OUT);
                        if(!(_loc7_ && Boolean(_loc3_)))
                        {
                           facade.removeCommand(ApplicationNotificationConstants.FIELD_MOUSE_MOVE);
                           if(!(_loc7_ && Boolean(_loc3_)))
                           {
                              facade.sendNotification(ApplicationNotificationConstants.MENU_SELECTED_DEFAULT_SUB_NAVIGATION_POINT);
                              if(!(_loc7_ && Boolean(param1)))
                              {
                                 addr00dc:
                                 facade.sendNotification(VirtualTaskNotificationInterest.APPLICATIONMODES_DESTROY_DEINIT);
                                 if(!_loc7_)
                                 {
                                    addr00ed:
                                    if(facade.hasMediator(DemolitionQueryMiniLayerMediator.NAME))
                                    {
                                       if(!(_loc7_ && Boolean(_loc3_)))
                                       {
                                          addr010a:
                                          facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,DemolitionQueryMiniLayerMediator.NAME);
                                       }
                                    }
                                    §§goto(addr0119);
                                 }
                                 §§goto(addr010a);
                              }
                              addr0119:
                              var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
                              for each(_loc3_ in _loc2_.playfieldSwitchObjects)
                              {
                                 if(!(_loc7_ && Boolean(_loc3_)))
                                 {
                                    _loc3_.iconVisibility = true;
                                 }
                              }
                              return;
                           }
                           §§goto(addr00ed);
                        }
                        §§goto(addr010a);
                     }
                     §§goto(addr00ed);
                  }
                  §§goto(addr00dc);
               }
            }
            §§goto(addr006b);
         }
         §§goto(addr0052);
      }
   }
}

