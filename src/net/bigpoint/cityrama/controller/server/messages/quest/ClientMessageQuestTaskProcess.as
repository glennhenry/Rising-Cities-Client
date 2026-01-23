package net.bigpoint.cityrama.controller.server.messages.quest
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageQuestTaskProcess extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageQuestTaskProcess()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:Object = param1.getBody();
         var _loc3_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc4_:Object = new Object();
         _loc4_.tid = _loc2_.taskConfigId;
         _loc4_.qid = _loc2_.questConfigId;
         _loc4_.t = _loc2_.questType;
         var _loc5_:MessageVo = _loc3_.createMessage(_loc4_,ServerMessageConstants.QUEST_TASK_PROCESS);
         _loc3_.sendMessage(_loc5_);
      }
   }
}

