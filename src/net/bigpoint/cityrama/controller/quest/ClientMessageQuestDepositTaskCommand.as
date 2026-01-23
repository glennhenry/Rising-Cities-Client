package net.bigpoint.cityrama.controller.quest
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageQuestDepositTaskCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageQuestDepositTaskCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:Object = param1.getBody();
         var _loc4_:Object = new Object();
         _loc4_.tid = _loc3_.taskId;
         _loc4_.qid = _loc3_.questConfigId;
         _loc4_.t = _loc3_.questType;
         _loc4_.q = {
            "t":_loc3_.category,
            "a":_loc3_.amount,
            "id":_loc3_.itemCid
         };
         var _loc5_:MessageVo = _loc2_.createMessage(_loc4_,ServerMessageConstants.QUEST_TASK_PROCESS);
         _loc2_.sendMessage(_loc5_);
      }
   }
}

