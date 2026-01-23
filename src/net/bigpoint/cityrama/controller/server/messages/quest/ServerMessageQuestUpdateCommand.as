package net.bigpoint.cityrama.controller.server.messages.quest
{
   import net.bigpoint.cityrama.model.quest.QuestProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageQuestUpdateCommand extends SimpleCommand
   {
      
      public function ServerMessageQuestUpdateCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:QuestProxy = QuestProxy(facade.retrieveProxy(QuestProxy.NAME));
         _loc3_.updateQuestState(_loc2_.json.t,_loc2_.json.id,_loc2_.json.s,_loc2_.json.et,_loc2_.json.l);
      }
   }
}

