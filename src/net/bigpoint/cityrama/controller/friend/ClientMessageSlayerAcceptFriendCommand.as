package net.bigpoint.cityrama.controller.friend
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageSlayerAcceptFriendCommand extends SimpleCommand
   {
      
      public function ClientMessageSlayerAcceptFriendCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:LocalStorageProxy = null;
         var _loc3_:ServerCommunicationProxy = null;
         var _loc4_:Object = null;
         var _loc5_:MessageVo = null;
         var _loc6_:Vector.<Number> = null;
         var _loc7_:Number = NaN;
         if(param1.getBody() != null)
         {
            _loc2_ = LocalStorageProxy(facade.retrieveProxy(LocalStorageProxy.NAME));
            _loc3_ = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
            _loc4_ = new Object();
            _loc4_.fid = param1.getBody();
            if(_loc2_.userdata.viewedFriendListUserIDs.indexOf(_loc4_.fid) != -1)
            {
               _loc6_ = new Vector.<Number>();
               for each(_loc7_ in _loc2_.userdata.viewedFriendListUserIDs)
               {
                  if(_loc7_ != _loc4_.fid)
                  {
                     _loc6_.push(_loc7_);
                  }
               }
               _loc2_.userdata.viewedFriendListUserIDs = _loc6_;
               _loc2_.flush();
            }
            _loc5_ = _loc3_.createMessage(_loc4_,ServerMessageConstants.SLAYER_INVITE_FRIEND_ACCEPT);
            _loc3_.sendMessage(_loc5_);
         }
      }
   }
}

