package net.bigpoint.cityrama.controller.server.messages.quest
{
   import net.bigpoint.cityrama.model.quest.QuestProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestDTO;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageQuestNewCommand extends SimpleCommand
   {
      
      public function ServerMessageQuestNewCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:QuestProxy = QuestProxy(facade.retrieveProxy(QuestProxy.NAME));
         var _loc4_:SoundProxy = SoundProxy(facade.retrieveProxy(SoundProxy.NAME));
         _loc3_.addQuest(new QuestDTO(_loc2_.json.q),true);
         if(_loc4_ != null)
         {
            _loc4_.playQuestNew();
         }
      }
   }
}

