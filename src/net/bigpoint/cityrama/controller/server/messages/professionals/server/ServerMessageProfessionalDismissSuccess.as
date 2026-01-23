package net.bigpoint.cityrama.controller.server.messages.professionals.server
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructureVO;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.professionals.ProfessionalProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageProfessionalDismissSuccess extends SimpleCommand implements ICommand
   {
      
      public function ServerMessageProfessionalDismissSuccess()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc10_:SecurityMatrixProxy = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:ProfessionalProxy = facade.retrieveProxy(ProfessionalProxy.NAME) as ProfessionalProxy;
         var _loc5_:Number = _loc2_.json.pid as Number;
         var _loc6_:ProfessionalDTO = _loc4_.getProfessionalById(_loc5_);
         if(_loc6_)
         {
            var _loc7_:BillboardObject = _loc3_.getBillboardById(_loc6_.buildingId);
         }
         if(null.billboardObjectVo is IEmergencyInfrastructureVO)
         {
            _loc10_ = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
            _loc10_.updateObject(null.billboardObjectVo as IEmergencyInfrastructureVO);
            null.invalidateIconStateManager();
         }
         var _loc8_:SecurityMatrixProxy = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
         _loc8_.invalidateAll();
         sendNotification(ApplicationNotificationConstants.PROFESSIONALS_DISMISS);
      }
   }
}

