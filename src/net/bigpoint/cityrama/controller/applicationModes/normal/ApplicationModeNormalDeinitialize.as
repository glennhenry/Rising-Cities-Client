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
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:PlayfieldInteractiveProxy = facade.retrieveProxy(PlayfieldInteractiveProxy.NAME) as PlayfieldInteractiveProxy;
         var _loc3_:BasementViewProxy = facade.retrieveProxy(BasementViewProxy.NAME) as BasementViewProxy;
         if(_loc2_.oldClickObject != null)
         {
            if(_loc3_.isBaseViewEnabled)
            {
               _loc3_.changeBaseViewForSingleBillboard(BillboardObject(_loc2_.oldClickObject));
            }
            _loc2_.oldClickObject = null;
         }
         facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK);
         facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OVER);
         facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_ROLL_OUT);
         facade.removeCommand(ApplicationNotificationConstants.PLAYFIELD_INTERACTIVE_CLICK_EMERGENCY);
      }
   }
}

