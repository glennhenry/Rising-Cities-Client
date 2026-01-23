package net.bigpoint.cityrama.controller.server.messages.education
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.professionals.ProfessionalProxy;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalAttributeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ProfessionalDTO;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageSpendSkillpointCommand extends SimpleCommand
   {
      
      public function ClientMessageSpendSkillpointCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc6_:ProfessionalAttributeDTO = null;
         var _loc7_:MessageVo = null;
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:ProfessionalProxy = facade.retrieveProxy(ProfessionalProxy.NAME) as ProfessionalProxy;
         var _loc4_:ProfessionalDTO = _loc3_.getProfessionalById(param1.getBody().profId);
         var _loc5_:Object = {};
         for each(_loc6_ in _loc4_.attributes)
         {
            if(_loc6_.config.attributeType == param1.getBody().attributeType)
            {
               if(_loc11_ || Boolean(_loc2_))
               {
                  _loc5_.att = _loc6_.config.id;
               }
            }
         }
         if(!_loc10_)
         {
            _loc5_.bid = _loc4_.buildingId;
            if(_loc11_)
            {
               _loc5_.prof = _loc4_.id;
               if(_loc11_)
               {
                  _loc5_.a = param1.getBody().amount;
               }
            }
         }
         _loc7_ = _loc2_.createMessage(_loc5_,ServerMessageConstants.SPEND_SKILLPOINT);
         if(!_loc10_)
         {
            _loc2_.sendMessage(_loc7_);
         }
      }
   }
}

