package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageRequestUpgrade extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageRequestUpgrade()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:Object = new Object();
         var _loc4_:BillboardObjectVo = BillboardObjectVo(param1.getBody());
         if(_loc4_.uprgadePhase)
         {
            _loc3_.bid = _loc4_.buildingDTO.id;
            _loc3_.pid = _loc4_.uprgadePhase.config.phaseId;
            var _loc5_:MessageVo = _loc2_.createMessage(_loc3_,ServerMessageConstants.PLAYFIELD_BUILDING_PROCESSPHASE);
            _loc2_.sendMessage(null);
            _loc4_.informationFloaterPhase = _loc4_.uprgadePhase.config;
            return;
         }
         throw new ArgumentError("ClientMessageRequestUpgrade - Object has no UPGRADE phase!");
      }
   }
}

