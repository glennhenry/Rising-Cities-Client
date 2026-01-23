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
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc4_:Vector.<Object> = null;
         var _loc5_:EmergencyCitizenSpawnVo = null;
         var _loc2_:BillboardObjectVo = param1.getBody() as BillboardObjectVo;
         var _loc3_:EmergencyLayerProxy = facade.retrieveProxy(EmergencyLayerProxy.NAME) as EmergencyLayerProxy;
         if(!_loc6_)
         {
            if(_loc2_)
            {
               addr004c:
               _loc4_ = _loc3_.getSlotProfessionalIdsForServer(_loc2_);
               _loc5_ = new EmergencyCitizenSpawnVo();
               _loc5_.billboardObjectVo = _loc2_;
               if(!(_loc6_ && Boolean(param1)))
               {
                  _loc5_.slotProfessionalVos = _loc3_.getActiveSlotProfessionals(_loc2_);
                  if(_loc7_)
                  {
                     §§goto(addr0095);
                  }
                  §§goto(addr00dd);
               }
               addr0095:
               sendNotification(ApplicationNotificationConstants.SPAWN_EMERGENCY_CITIZEN,_loc5_);
               if(_loc7_ || Boolean(param1))
               {
                  sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_PROCESS_EMERGENCY,{
                     "bid":_loc2_.buildingDTO.id,
                     "ps":_loc4_
                  });
                  if(!_loc6_)
                  {
                     addr00dd:
                     _loc3_.removeEmergencyInfo(_loc2_.buildingDTO.id);
                  }
               }
               §§goto(addr00e8);
            }
            addr00e8:
            return;
         }
         §§goto(addr004c);
      }
   }
}

