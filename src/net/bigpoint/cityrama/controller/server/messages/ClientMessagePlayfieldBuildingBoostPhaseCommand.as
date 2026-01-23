package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessagePlayfieldBuildingBoostPhaseCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientMessagePlayfieldBuildingBoostPhaseCommand()
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
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:Object = param1.getBody();
         var _loc3_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc4_:Object = new Object();
         _loc4_.bid = _loc2_.buildingId;
         if(_loc6_)
         {
            _loc4_.pid = _loc2_.phaseId;
            if(!(_loc7_ && Boolean(param1)))
            {
               _loc4_.bst = _loc2_.boost;
            }
         }
         var _loc5_:MessageVo = _loc3_.createMessage(_loc4_,ServerMessageConstants.PLAYFIELD_BUILDING_BOOSTPHASE);
         if(_loc6_)
         {
            _loc3_.sendMessage(_loc5_);
         }
      }
   }
}

