package net.bigpoint.cityrama.controller.server.messages.mastery.client
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageMasteryBuildingProcessCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageMasteryBuildingProcessCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:Object = param1.getBody();
         var _loc4_:Object = new Object();
         _loc4_.bid = _loc3_.buildingId;
         if(_loc3_.masteryChallengeId)
         {
            _loc4_.mcid = _loc3_.masteryChallengeId;
            _loc4_.i = _loc3_.instantFinish;
         }
         if(_loc3_.masteryBonusId)
         {
            _loc4_.mbid = _loc3_.masteryBonusId;
            _loc4_.mbp = _loc3_.masteryBonusPick;
         }
         var _loc5_:MessageVo = _loc2_.createMessage(_loc4_,ServerMessageConstants.PLAYFIELD_BUILDING_MASTERY_PROCESS);
         _loc2_.sendMessage(_loc5_);
      }
   }
}

