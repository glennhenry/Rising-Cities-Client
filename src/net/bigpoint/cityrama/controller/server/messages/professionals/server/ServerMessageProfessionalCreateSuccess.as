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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc5_:BillboardObject = null;
         var _loc6_:SecurityMatrixProxy = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:ProfessionalDTO = ConfigFactory.buildProfessionalDTO(_loc2_.json.prof);
         if(_loc4_)
         {
            if(!_loc8_)
            {
               _loc5_ = _loc3_.getBillboardById(_loc4_.buildingId);
               if(_loc5_)
               {
                  if(_loc7_ || Boolean(param1))
                  {
                     _loc5_.billboardObjectVo.buildingDTO.professionals.push(_loc4_);
                  }
               }
               §§goto(addr00a8);
            }
            §§goto(addr00b4);
         }
         addr00a8:
         if(_loc5_.billboardObjectVo is IEmergencyInfrastructureVO)
         {
            addr00b4:
            _loc6_ = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
            _loc6_.updateObject(_loc5_.billboardObjectVo as IEmergencyInfrastructureVO);
         }
      }
   }
}

