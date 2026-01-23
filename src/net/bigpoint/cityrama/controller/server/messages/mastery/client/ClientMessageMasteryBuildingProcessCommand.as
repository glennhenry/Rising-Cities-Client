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
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:Object = param1.getBody();
         var _loc4_:Object = new Object();
         _loc4_.bid = _loc3_.buildingId;
         if(_loc7_)
         {
            if(_loc3_.masteryChallengeId)
            {
               if(_loc7_)
               {
                  _loc4_.mcid = _loc3_.masteryChallengeId;
                  if(!_loc6_)
                  {
                     §§goto(addr0079);
                  }
                  §§goto(addr00c6);
               }
            }
            §§goto(addr0092);
         }
         addr0079:
         _loc4_.i = _loc3_.instantFinish;
         if(!(_loc6_ && Boolean(param1)))
         {
            addr0092:
            if(_loc3_.masteryBonusId)
            {
               if(_loc7_ || Boolean(this))
               {
                  _loc4_.mbid = _loc3_.masteryBonusId;
                  if(_loc7_)
                  {
                     addr00c6:
                     _loc4_.mbp = _loc3_.masteryBonusPick;
                  }
                  §§goto(addr00d1);
               }
               §§goto(addr00c6);
            }
         }
         addr00d1:
         var _loc5_:MessageVo = _loc2_.createMessage(_loc4_,ServerMessageConstants.PLAYFIELD_BUILDING_MASTERY_PROCESS);
         if(!_loc6_)
         {
            _loc2_.sendMessage(_loc5_);
         }
      }
   }
}

