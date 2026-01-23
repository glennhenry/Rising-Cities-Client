package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructure;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldItemDeleteSuccess extends SimpleCommand
   {
      
      public function ServerMessagePlayfieldItemDeleteSuccess()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc7_:BillboardObject = null;
         var _loc8_:SecurityMatrixProxy = null;
         var _loc9_:IEmergencyInfrastructure = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:SoundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         if(!_loc2_.json)
         {
            return;
         }
         var _loc5_:Number = Number(_loc2_.json.id);
         _loc7_ = _loc3_.getBillboardById(_loc5_);
         if(!_loc7_)
         {
            var _loc6_:IPlaneObject = _loc3_.getPlaneObjectById(_loc5_);
            if(!_loc6_)
            {
               return;
            }
            _loc3_.removeGameObjectVofromMatrix(null.objectVo);
            sendNotification(ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM,null);
         }
         else
         {
            _loc8_ = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
            if(_loc7_ is IEmergencyInfrastructure)
            {
               _loc9_ = _loc7_ as IEmergencyInfrastructure;
               _loc8_.removeObject(_loc9_.emergencyFieldObjectVo);
            }
            _loc4_.playBuildingDemolition();
            _loc3_.removeGameObjectVofromMatrix(_loc7_.billboardObjectVo);
            sendNotification(ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM,_loc7_);
         }
      }
   }
}

