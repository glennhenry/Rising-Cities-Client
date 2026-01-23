package net.bigpoint.cityrama.controller.server.messages.professionals.client
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.professionals.ProfessionalProxy;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageProfessionalLevelUpCommand extends SimpleCommand
   {
      
      public function ClientMessageProfessionalLevelUpCommand()
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
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:Object = new Object();
         var _loc4_:ProfessionalProxy = facade.retrieveProxy(ProfessionalProxy.NAME) as ProfessionalProxy;
         var _loc5_:Number = Number(param1.getBody().id);
         var _loc6_:Boolean = Boolean(param1.getBody().accept);
         §§push(_loc4_.getProfessionalById(_loc5_).buildingId);
         if(!(_loc10_ && Boolean(param1)))
         {
            §§push(§§pop());
         }
         var _loc7_:* = §§pop();
         if(!_loc10_)
         {
            _loc3_.prof = _loc5_;
            if(_loc9_)
            {
               _loc3_.bid = _loc7_;
               if(!(_loc10_ && Boolean(this)))
               {
                  addr00bc:
                  _loc3_.asg = _loc6_;
               }
            }
            var _loc8_:MessageVo = _loc2_.createMessage(_loc3_,ServerMessageConstants.PROFESSIONAL_LEVEL_UP);
            if(!(_loc10_ && Boolean(_loc2_)))
            {
               _loc2_.sendMessage(_loc8_);
            }
            return;
         }
         §§goto(addr00bc);
      }
   }
}

