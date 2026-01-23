package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.model.field.vo.BoulderObjectVo;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageBoulderProcessPhaseCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageBoulderProcessPhaseCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc5_:Number = NaN;
         var _loc7_:PhaseDTO = null;
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:BoulderObjectVo = BoulderObjectVo(param1.getBody());
         var _loc4_:Object = {};
         _loc4_.bid = _loc3_.boulderVo.id;
         if(_loc3_.activePhases.length > 0)
         {
            for each(_loc7_ in _loc3_.activePhases)
            {
               if(_loc7_.config.phaseType == ServerPhaseTypes.DESTRUCTIONPHASE_REMOVE_BOULDER)
               {
                  _loc5_ = _loc7_.phaseId;
               }
            }
         }
         else
         {
            _loc5_ = _loc3_.configPlayfieldItemVo.destructionPhases[0].phaseId;
         }
         _loc4_.pid = _loc5_;
         var _loc6_:MessageVo = _loc2_.createMessage(_loc4_,ServerMessageConstants.PLAYFIELD_BOULDER_PROCESSPHASE);
         _loc2_.sendMessage(_loc6_);
      }
   }
}

