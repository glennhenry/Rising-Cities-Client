package net.bigpoint.cityrama.controller.applicationModes.normal
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldInteractiveProxy;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.FieldInfoLayerProxy;
   import net.bigpoint.cityrama.model.field.vo.PlayfieldSwitchFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ActivatorFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.BoulderFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.TownHallFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.ClientFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInteraction;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PlayfieldInteractiveRollOverForNormalCommand extends SimpleCommand
   {
      
      public function PlayfieldInteractiveRollOverForNormalCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc5_:BillboardObject = null;
         var _loc6_:BoulderFieldObject = null;
         var _loc2_:Boolean = param1.getBody() as Boolean;
         var _loc3_:PlayfieldInteractiveProxy = PlayfieldInteractiveProxy(facade.retrieveProxy(PlayfieldInteractiveProxy.NAME));
         var _loc4_:FieldInfoLayerProxy = FieldInfoLayerProxy(facade.retrieveProxy(FieldInfoLayerProxy.NAME));
         if(_loc3_.rollOverObject is ClientFieldObject)
         {
            if((_loc3_.rollOverObject as ClientFieldObject).fieldMatrixObject3dVo is PlayfieldSwitchFieldObjectVo)
            {
               _loc3_.rollOverObject.invalidateHighlightManager(ApplicationModeProxy.MODE_NORMAL);
            }
            return;
         }
         if(_loc3_.rollOverObject is BillboardObject)
         {
            _loc5_ = _loc3_.rollOverObject as BillboardObject;
            if(_loc5_ is BoulderFieldObject)
            {
               _loc6_ = _loc5_ as BoulderFieldObject;
               _loc6_.invalidateHighlightManager(ApplicationModeProxy.MODE_DESTROY);
               sendNotification(ApplicationNotificationConstants.APPLICATION_CHANGE_CURSOR,ApplicationModeProxy.MODE_DESTROY);
               if(!_loc2_)
               {
                  _loc4_.interactiveObject = _loc6_ as IInteraction;
               }
            }
            else
            {
               _loc3_.rollOverObject.invalidateHighlightManager(ApplicationModeProxy.MODE_NORMAL);
               if(!_loc2_)
               {
                  if(_loc5_ is ActivatorFieldObject)
                  {
                     if(_loc5_ is TownHallFieldObject)
                     {
                        _loc4_.interactiveObject = _loc5_ as IInteraction;
                     }
                  }
                  else
                  {
                     _loc4_.interactiveObject = _loc5_ as IInteraction;
                  }
               }
            }
         }
      }
   }
}

