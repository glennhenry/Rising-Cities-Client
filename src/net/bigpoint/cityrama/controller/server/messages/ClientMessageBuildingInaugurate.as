package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageBuildingInaugurate extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageBuildingInaugurate()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:BillboardObjectVo = param1.getBody().vo as BillboardObjectVo;
         var _loc3_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc4_:Object = new Object();
         _loc4_.bid = _loc2_.buildingDTO.id;
         _loc4_.pid = _loc2_.inaugurationPhase.phaseId;
         if(param1.getBody().pop)
         {
            _loc4_.pop = param1.getBody().pop;
         }
         var _loc5_:MessageVo = _loc3_.createMessage(_loc4_,ServerMessageConstants.PLAYFIELD_BUILDING_INAUGURATE);
         _loc3_.sendMessage(_loc5_);
      }
   }
}

