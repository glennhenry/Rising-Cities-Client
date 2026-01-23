package net.bigpoint.cityrama.controller.applicationModes.normal
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.EmergencyConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldInteractiveProxy;
   import net.bigpoint.cityrama.model.miniLayer.EmergencyMiniLayerProxy;
   import net.bigpoint.cityrama.model.miniLayer.vo.ConstructionMiniLayerVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PlayfieldInteractiveClickEmergencyCommand extends SimpleCommand implements ICommand
   {
      
      public function PlayfieldInteractiveClickEmergencyCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc3_:BillboardObject = null;
         var _loc4_:EmergencyMiniLayerProxy = null;
         var _loc5_:ConstructionMiniLayerVo = null;
         var _loc2_:PlayfieldInteractiveProxy = PlayfieldInteractiveProxy(facade.retrieveProxy(PlayfieldInteractiveProxy.NAME));
         if(_loc2_.clickObject != null)
         {
            if(_loc2_.clickObject is BillboardObject)
            {
               _loc3_ = _loc2_.clickObject as BillboardObject;
               if(_loc3_.billboardObjectVo.hasEmergency())
               {
                  if(!_loc3_.billboardObjectVo.emergencyInProgress)
                  {
                     if(_loc3_.billboardObjectVo.emergencyState == EmergencyConstants.EMERGENCY_STATUS_STARTED)
                     {
                        sendNotification(ApplicationNotificationConstants.OPEN_EMERGENCY_INFOBOOK,_loc3_.billboardObjectVo);
                     }
                     else if(_loc3_.billboardObjectVo.emergencyState == EmergencyConstants.EMERGENCY_STATUS_SUCCESS)
                     {
                        sendNotification(ApplicationNotificationConstants.COLLECT_EMERGENCY_REWARD,_loc3_);
                        _loc3_.billboardObjectVo.userInteractionLocked = true;
                     }
                     else if(_loc3_.billboardObjectVo.emergencyState == EmergencyConstants.EMERGENCY_STATUS_FAIL)
                     {
                        _loc4_ = facade.retrieveProxy(EmergencyMiniLayerProxy.NAME) as EmergencyMiniLayerProxy;
                        _loc5_ = _loc4_.getEmergencyDamagedVo(_loc3_.billboardObjectVo);
                        if(_loc5_.amountNeeded > 0)
                        {
                           sendNotification(MiniLayerConstants.OPEN_MINI_EMERGENCY_CLEANUP,_loc3_.billboardObjectVo);
                        }
                        else
                        {
                           _loc3_.billboardObjectVo.userInteractionLocked = true;
                           sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_REPAIR_BUILDING,{
                              "bid":_loc3_.billboardObjectVo.buildingDTO.id,
                              "rc":false
                           });
                        }
                     }
                  }
               }
            }
         }
      }
   }
}

