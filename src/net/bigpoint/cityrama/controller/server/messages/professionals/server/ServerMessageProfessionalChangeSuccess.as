package net.bigpoint.cityrama.controller.server.messages.professionals.server
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.emergencyLayer.EmergencyInfoProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageProfessionalChangeSuccess extends SimpleCommand implements ICommand
   {
      
      public function ServerMessageProfessionalChangeSuccess()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:ProfessionalDTO = ConfigFactory.buildProfessionalDTO(_loc2_.json.prof);
         if(_loc4_)
         {
            var _loc7_:BillboardObject = _loc3_.getBillboardById(_loc4_.buildingId);
            if(_loc7_)
            {
               if(null.billboardObjectVo.buildingDTO.professionals.length)
               {
                  for each(var _loc8_ in null.billboardObjectVo.buildingDTO.professionals)
                  {
                     if(_loc8_.id == _loc4_.id)
                     {
                        null.billboardObjectVo.buildingDTO.professionals[null.billboardObjectVo.buildingDTO.professionals.indexOf(null)] = _loc4_;
                        var _loc5_:Boolean = true;
                        break;
                     }
                  }
                  null.billboardObjectVo.buildingDTO.professionals.push(_loc4_);
               }
               null.invalidateIconStateManager();
            }
         }
         var _loc6_:EmergencyInfoProxy = facade.retrieveProxy(EmergencyInfoProxy.NAME) as EmergencyInfoProxy;
         _loc6_.renewProfessionalsInAllEmergencies();
         sendNotification(ApplicationNotificationConstants.PROFESSIONALS_CHANGED);
      }
   }
}

