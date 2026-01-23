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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc2_:LocalStorageProxy = null;
         var _loc3_:ServerCommunicationProxy = null;
         var _loc4_:Object = null;
         var _loc5_:MessageVo = null;
         var _loc6_:Vector.<Number> = null;
         var _loc7_:* = NaN;
         if(!_loc11_)
         {
            if(param1.getBody() != null)
            {
               addr0041:
               _loc2_ = LocalStorageProxy(facade.retrieveProxy(LocalStorageProxy.NAME));
               _loc3_ = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
               _loc4_ = new Object();
               _loc4_.fid = param1.getBody();
               if(_loc10_)
               {
                  if(_loc2_.userdata.viewedFriendListUserIDs.indexOf(_loc4_.fid) != -1)
                  {
                     addr00a8:
                     _loc6_ = new Vector.<Number>();
                     var _loc8_:int = 0;
                     var _loc9_:* = _loc2_.userdata.viewedFriendListUserIDs;
                     for each(_loc8_ in _loc9_)
                     {
                        §§push(_loc8_);
                        if(_loc10_ || Boolean(_loc2_))
                        {
                           _loc7_ = §§pop();
                           §§push(_loc7_);
                        }
                        if(§§pop() != _loc4_.fid)
                        {
                           if(!_loc11_)
                           {
                              _loc6_.push(_loc7_);
                           }
                        }
                     }
                     if(_loc10_ || Boolean(_loc3_))
                     {
                        _loc2_.userdata.viewedFriendListUserIDs = _loc6_;
                        if(_loc10_)
                        {
                           _loc2_.flush();
                        }
                     }
                  }
                  _loc5_ = _loc3_.createMessage(_loc4_,ServerMessageConstants.SLAYER_INVITE_FRIEND_ACCEPT);
                  if(!(_loc11_ && Boolean(this)))
                  {
                     _loc3_.sendMessage(_loc5_);
                  }
                  §§goto(addr0156);
               }
               §§goto(addr00a8);
            }
            addr0156:
            return;
         }
         §§goto(addr0041);
      }
   }
}

