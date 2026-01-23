package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessagePlayfieldBuildingRequestInstantFinishCommand extends SimpleCommand
   {
      
      public function ClientMessagePlayfieldBuildingRequestInstantFinishCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:Object = param1.getBody();
         var _loc3_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc4_:Object = new Object();
         _loc4_.bid = _loc2_.buildingId;
         if(!(_loc6_ && Boolean(param1)))
         {
            _loc4_.cpi = _loc2_.configId;
         }
         var _loc5_:MessageVo = _loc3_.createMessage(_loc4_,ServerMessageConstants.PLAYFIELD_REQUEST_INSTANTFINISH);
         if(_loc7_)
         {
            _loc3_.sendMessage(_loc5_);
         }
      }
   }
}

