package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructure;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.DecorationDTO;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldDecorationDeleteSuccess extends SimpleCommand
   {
      
      public function ServerMessagePlayfieldDecorationDeleteSuccess()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc7_:IEmergencyInfrastructure = null;
         var _loc2_:Object = MessageVo(param1.getBody()).json;
         var _loc4_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc5_:BillboardObject = _loc4_.getBillboardById(_loc2_.de.id);
         _loc4_.removeGameObjectVofromMatrix(_loc5_.billboardObjectVo);
         sendNotification(ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM,_loc5_);
         var _loc6_:SecurityMatrixProxy = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
         if(_loc5_ is IEmergencyInfrastructure)
         {
            _loc7_ = _loc5_ as IEmergencyInfrastructure;
            _loc6_.removeObject(_loc7_.emergencyFieldObjectVo);
         }
      }
   }
}

