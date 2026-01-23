package net.bigpoint.cityrama.controller.server.messages.quest
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageQuestElementInstantFinishCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageQuestElementInstantFinishCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
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
         _loc4_.eid = _loc2_.elementId;
         if(!(_loc6_ && Boolean(_loc3_)))
         {
            _loc4_.qid = _loc2_.questId;
            if(!(_loc6_ && Boolean(this)))
            {
               addr0088:
               _loc4_.t = _loc2_.questType;
            }
            var _loc5_:MessageVo = _loc3_.createMessage(_loc4_,ServerMessageConstants.QUEST_ELEMENT_INSTANT_FINISH);
            if(_loc7_)
            {
               _loc3_.sendMessage(_loc5_);
            }
            return;
         }
         §§goto(addr0088);
      }
   }
}

