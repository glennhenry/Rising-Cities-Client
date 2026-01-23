package net.bigpoint.cityrama.controller.emergencyBook
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyLayerProxy;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.EmergencyCitizenSpawnVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class StartEmergencyHandlingCommand extends SimpleCommand
   {
      
      public function StartEmergencyHandlingCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:BillboardObjectVo = param1.getBody() as BillboardObjectVo;
         var _loc3_:EmergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
         if(_loc2_)
         {
            var _loc4_:Vector.<Object> = _loc3_.getSlotProfessionalIdsForServer(_loc2_);
            var _loc5_:EmergencyCitizenSpawnVo = new EmergencyCitizenSpawnVo();
            _loc5_.billboardObjectVo = _loc2_;
            null.slotProfessionalVos = _loc3_.getActiveSlotProfessionals(_loc2_);
            sendNotification(ApplicationNotificationConstants.SPAWN_EMERGENCY_CITIZEN,null);
            sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_PROCESS_EMERGENCY,{
               "bid":_loc2_.buildingDTO.id,
               "ps":null
            });
            _loc3_.removeEmergencyInfo(_loc2_.buildingDTO.id);
         }
      }
   }
}

