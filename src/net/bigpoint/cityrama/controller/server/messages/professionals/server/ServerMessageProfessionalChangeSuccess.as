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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc5_:Boolean = false;
         var _loc7_:BillboardObject = null;
         var _loc8_:ProfessionalDTO = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:ProfessionalDTO = ConfigFactory.buildProfessionalDTO(_loc2_.json.prof);
         if(_loc4_)
         {
            _loc7_ = _loc3_.getBillboardById(_loc4_.buildingId);
            if(_loc7_)
            {
               if(_loc12_)
               {
                  if(_loc7_.billboardObjectVo.buildingDTO.professionals.length)
                  {
                     addr0080:
                     for each(_loc8_ in _loc7_.billboardObjectVo.buildingDTO.professionals)
                     {
                        if(_loc8_.id == _loc4_.id)
                        {
                           if(_loc12_ || Boolean(_loc3_))
                           {
                              _loc7_.billboardObjectVo.buildingDTO.professionals[_loc7_.billboardObjectVo.buildingDTO.professionals.indexOf(_loc8_)] = _loc4_;
                              if(_loc12_)
                              {
                                 _loc5_ = true;
                              }
                           }
                           break;
                        }
                     }
                     if(_loc12_ || Boolean(_loc2_))
                     {
                        if(!_loc5_)
                        {
                           if(_loc12_)
                           {
                              _loc7_.billboardObjectVo.buildingDTO.professionals.push(_loc4_);
                              addr0118:
                           }
                        }
                        §§goto(addr0133);
                     }
                     §§goto(addr0118);
                  }
                  addr0133:
                  _loc7_.invalidateIconStateManager();
                  §§goto(addr0139);
               }
               §§goto(addr0080);
            }
         }
         addr0139:
         var _loc6_:EmergencyInfoProxy = facade.retrieveProxy(EmergencyInfoProxy.NAME) as EmergencyInfoProxy;
         _loc6_.renewProfessionalsInAllEmergencies();
         if(!_loc11_)
         {
            sendNotification(ApplicationNotificationConstants.PROFESSIONALS_CHANGED);
         }
      }
   }
}

