package net.bigpoint.cityrama.controller.client
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.model.field.vo.ProductionFieldObjectVo;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessagePlayfieldProcessHarvestProduction extends SimpleCommand implements ICommand
   {
      
      public function ClientMessagePlayfieldProcessHarvestProduction()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc5_:PhaseDTO = null;
         var _loc6_:MessageVo = null;
         var _loc2_:ProductionFieldObjectVo = ProductionFieldObjectVo(param1.getBody());
         var _loc3_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc4_:Object = new Object();
         _loc4_.bid = _loc2_.buildingDTO.id;
         for each(_loc5_ in _loc2_.activePhases)
         {
            if(_loc5_.config.phaseType == ServerPhaseTypes.PRODUCTION)
            {
               _loc4_.pid = _loc5_.config.phaseId;
            }
         }
         _loc6_ = _loc3_.createMessage(_loc4_,ServerMessageConstants.PLAYFIELD_BUILDING_PROCESSPHASE);
         _loc3_.sendMessage(_loc6_);
      }
   }
}

