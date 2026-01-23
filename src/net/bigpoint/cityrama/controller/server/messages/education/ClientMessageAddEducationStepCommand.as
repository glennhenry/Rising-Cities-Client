package net.bigpoint.cityrama.controller.server.messages.education
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageAddEducationStepCommand extends SimpleCommand
   {
      
      public function ClientMessageAddEducationStepCommand()
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
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:Object = param1.getBody();
         var _loc4_:MessageVo = _loc2_.createMessage(_loc3_,ServerMessageConstants.ADD_EDUCATION_STEP);
         if(!(_loc6_ && Boolean(this)))
         {
            _loc2_.sendMessage(_loc4_);
         }
      }
   }
}

