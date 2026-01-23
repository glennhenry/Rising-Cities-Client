package net.bigpoint.cityrama.controller.applicationModes.normal
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.baseView.BasementViewProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldInteractiveProxy;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ApplicationModeNormalDeinitialize extends SimpleCommand
   {
      
      public function ApplicationModeNormalDeinitialize()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:PlayfieldInteractiveProxy = facade.retrieveProxy(PlayfieldInteractiveProxy.NAME) as PlayfieldInteractiveProxy;
         var _loc3_:BasementViewProxy = facade.retrieveProxy(BasementViewProxy.NAME) as BasementViewProxy;
         if(!_loc5_)
         {
            if(_loc2_.oldClickObject != null)
            {
               if(_loc4_)
               {
                  if(_loc3_.isBaseViewEnabled)
                  {
                     if(!(_loc5_ && Boolean(param1)))
                     {
                        _loc3_.changeBaseViewForSingleBillboard(BillboardObject(_loc2_.oldClickObject));
                        if(_loc4_)
                        {
                           addr0081:
                           _loc2_.oldClickObject = null;
                           if(_loc4_)
                           {
                              addr008c:
                              facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK);
                              if(_loc4_)
                              {
                                 facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OVER);
                                 if(_loc4_ || Boolean(param1))
                                 {
                                    addr00c4:
                                    facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OUT);
                                    if(_loc4_)
                                    {
                                       addr00d5:
                                       facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK_EMERGENCY);
                                    }
                                    §§goto(addr00e1);
                                 }
                                 §§goto(addr00d5);
                              }
                           }
                           §§goto(addr00e1);
                        }
                        §§goto(addr008c);
                     }
                     addr00e1:
                     return;
                  }
                  §§goto(addr0081);
               }
            }
            §§goto(addr008c);
         }
         §§goto(addr00c4);
      }
   }
}

