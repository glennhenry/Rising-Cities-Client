package net.bigpoint.cityrama.controller.server.messages.professionals.server
{
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructureVO;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageProfessionalCreateSuccess extends SimpleCommand implements ICommand
   {
      
      public function ServerMessageProfessionalCreateSuccess()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc6_:SecurityMatrixProxy = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:ProfessionalDTO = ConfigFactory.buildProfessionalDTO(_loc2_.json.prof);
         if(_loc4_)
         {
            var _loc5_:BillboardObject = _loc3_.getBillboardById(_loc4_.buildingId);
            if(_loc5_)
            {
               null.billboardObjectVo.buildingDTO.professionals.push(_loc4_);
            }
         }
         if(null.billboardObjectVo is IEmergencyInfrastructureVO)
         {
            _loc6_ = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
            _loc6_.updateObject(null.billboardObjectVo as IEmergencyInfrastructureVO);
         }
      }
   }
}

