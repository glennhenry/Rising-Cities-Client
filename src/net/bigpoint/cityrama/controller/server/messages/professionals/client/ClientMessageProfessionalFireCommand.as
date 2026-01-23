package net.bigpoint.cityrama.controller.server.messages.professionals.client
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageProfessionalFireCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageProfessionalFireCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:Object = new Object();
         if(_loc6_ || Boolean(param1))
         {
            §§goto(addr007c);
         }
         else
         {
            _loc3_.pid = param1.getBody().pid as Number;
            if(!(_loc5_ && Boolean(this)))
            {
               addr007c:
               §§push(param1.getBody().pid);
               if(param1.getBody().bid)
               {
                  if(!_loc5_)
                  {
                     addr0099:
                     _loc3_.bid = param1.getBody().bid as Number;
                  }
               }
               var _loc4_:MessageVo = _loc2_.createMessage(_loc3_,ServerMessageConstants.PROFESSIONAL_DISMISS);
               if(_loc6_)
               {
                  _loc2_.sendMessage(_loc4_);
               }
               return;
            }
         }
         §§goto(addr0099);
      }
   }
}

