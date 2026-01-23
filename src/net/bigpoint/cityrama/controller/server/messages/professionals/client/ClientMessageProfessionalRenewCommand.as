package net.bigpoint.cityrama.controller.server.messages.professionals.client
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.professionals.ProfessionalProxy;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageProfessionalRenewCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageProfessionalRenewCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:Object = new Object();
         if(_loc6_)
         {
            if(param1.getBody().pid)
            {
               if(_loc6_)
               {
                  _loc3_.pid = param1.getBody().pid as Number;
                  if(!_loc7_)
                  {
                     addr006a:
                     if(param1.getBody().dextro)
                     {
                        if(!_loc7_)
                        {
                           addr007c:
                           _loc3_.rc = true;
                           if(_loc6_)
                           {
                           }
                        }
                     }
                     else
                     {
                        _loc3_.rc = false;
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0092);
            }
            §§goto(addr006a);
         }
         addr0092:
         var _loc4_:ProfessionalProxy = facade.retrieveProxy(ProfessionalProxy.NAME) as ProfessionalProxy;
         if(_loc6_ || Boolean(_loc2_))
         {
            _loc3_.bid = _loc4_.getProfessionalById(_loc3_.pid).buildingId;
         }
         var _loc5_:MessageVo = _loc2_.createMessage(_loc3_,ServerMessageConstants.PROFESSIONAL_RENEW);
         if(!_loc7_)
         {
            _loc2_.sendMessage(_loc5_);
         }
      }
   }
}

