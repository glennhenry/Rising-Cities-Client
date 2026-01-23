package net.bigpoint.cityrama.controller.applicationModes.normal
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldInteractiveProxy;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.FieldInfoLayerProxy;
   import net.bigpoint.cityrama.view.field.SecurityGradeHeatMapMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PlayfieldInteractiveRollOutForNormalCommand extends SimpleCommand
   {
      
      public function PlayfieldInteractiveRollOutForNormalCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:PlayfieldInteractiveProxy = PlayfieldInteractiveProxy(facade.retrieveProxy(PlayfieldInteractiveProxy.NAME));
         var _loc3_:FieldInfoLayerProxy = FieldInfoLayerProxy(facade.retrieveProxy(FieldInfoLayerProxy.NAME));
         if(!_loc5_)
         {
            _loc2_.rollOutObject.invalidateHighlightManager(ApplicationModeProxy.MODE_NORMAL,false);
            if(_loc6_)
            {
               addr0074:
               _loc3_.interactiveObject = null;
            }
            var _loc4_:SecurityGradeHeatMapMediator = facade.retrieveMediator(SecurityGradeHeatMapMediator.NAME) as SecurityGradeHeatMapMediator;
            _loc4_.hideRangeRect();
            if(!_loc5_)
            {
               sendNotification(ApplicationNotificationConstants.APPLICATION_CHANGE_CURSOR,ApplicationModeProxy.MODE_NORMAL);
            }
            return;
         }
         §§goto(addr0074);
      }
   }
}

