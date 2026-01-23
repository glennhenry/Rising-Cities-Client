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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc13_:Boolean = true;
         var _loc14_:* = §§pop();
         var _loc7_:BillboardObject = null;
         var _loc9_:ProfessionalDTO = null;
         var _loc10_:SecurityMatrixProxy = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:ProfessionalProxy = facade.retrieveProxy(ProfessionalProxy.NAME) as ProfessionalProxy;
         var _loc5_:Number = _loc2_.json.pid as Number;
         var _loc6_:ProfessionalDTO = _loc4_.getProfessionalById(_loc5_);
         if(_loc6_)
         {
            if(!_loc14_)
            {
               _loc7_ = _loc3_.getBillboardById(_loc6_.buildingId);
               §§goto(addr008a);
            }
            §§goto(addr009e);
         }
         addr008a:
         if(_loc7_)
         {
            if(_loc13_ || Boolean(param1))
            {
               addr009e:
               if(_loc7_.billboardObjectVo.buildingDTO.professionals.length)
               {
                  addr00bc:
                  for each(_loc9_ in _loc7_.billboardObjectVo.buildingDTO.professionals)
                  {
                     if(_loc9_.id == _loc5_)
                     {
                        if(!_loc14_)
                        {
                           _loc7_.billboardObjectVo.buildingDTO.professionals.splice(_loc7_.billboardObjectVo.buildingDTO.professionals.indexOf(_loc9_),1);
                        }
                        break;
                     }
                  }
               }
               §§goto(addr011c);
            }
            §§goto(addr00bc);
         }
         addr011c:
         if(_loc7_.billboardObjectVo is IEmergencyInfrastructureVO)
         {
            _loc10_ = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
            _loc10_.updateObject(_loc7_.billboardObjectVo as IEmergencyInfrastructureVO);
            if(!_loc14_)
            {
               _loc7_.invalidateIconStateManager();
            }
         }
         var _loc8_:SecurityMatrixProxy = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
         _loc8_.invalidateAll();
         if(_loc13_)
         {
            sendNotification(ApplicationNotificationConstants.PROFESSIONALS_DISMISS);
         }
      }
   }
}

