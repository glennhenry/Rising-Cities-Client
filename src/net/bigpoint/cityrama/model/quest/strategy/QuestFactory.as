package net.bigpoint.cityrama.model.quest.strategy
{
   import net.bigpoint.cityrama.constants.quest.QuestSystemRewardTypeConstants;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestRewardDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.interfaces.IQuestRewardDTO;
   
   public class QuestFactory
   {
      
      public function QuestFactory()
      {
         super();
      }
      
      public static function getQuestRewardDto(param1:Object) : IQuestRewardDTO
      {
         var _loc2_:Vector.<String> = new <String>[QuestSystemRewardTypeConstants.GOOD,QuestSystemRewardTypeConstants.PERMISSION,QuestSystemRewardTypeConstants.RESOURCE,QuestSystemRewardTypeConstants.IMPROVEMENT];
         if(param1.t == null || param1.a == null || param1.id == null)
         {
            exit("property is Null");
            return null;
         }
         if(_loc2_.indexOf(param1.t) == -1)
         {
            exit("type not found");
            return null;
         }
         if(param1.id < 1 || param1.a < 1)
         {
            exit("amount or id smaller 1");
            return null;
         }
         return new QuestRewardDTO(param1);
      }
      
      private static function exit(param1:String) : void
      {
      }
   }
}

