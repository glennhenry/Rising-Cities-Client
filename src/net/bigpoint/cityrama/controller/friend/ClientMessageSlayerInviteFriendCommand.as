package net.bigpoint.cityrama.controller.friend
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageSlayerInviteFriendCommand extends SimpleCommand
   {
      
      public function ClientMessageSlayerInviteFriendCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:ServerCommunicationProxy = null;
         var _loc3_:Object = null;
         var _loc4_:MessageVo = null;
         if(_loc6_)
         {
            if(param1.getBody() != null)
            {
               addr0040:
               _loc2_ = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
               _loc3_ = new Object();
               if(!_loc5_)
               {
                  _loc3_.fid = param1.getBody();
               }
               _loc4_ = _loc2_.createMessage(_loc3_,ServerMessageConstants.SLAYER_INVITE_FRIEND);
               if(_loc6_ || Boolean(_loc3_))
               {
                  _loc2_.sendMessage(_loc4_);
               }
            }
            return;
         }
         §§goto(addr0040);
      }
   }
}

