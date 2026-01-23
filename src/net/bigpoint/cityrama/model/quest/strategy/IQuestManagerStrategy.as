package net.bigpoint.cityrama.model.quest.strategy
{
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.preloader.CvTagProxy;
   import net.bigpoint.cityrama.model.quest.vo.QuestBookVo;
   import net.bigpoint.cityrama.model.server.vo.server.QuestCompleteCostVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.interfaces.IQuestPlayerVo;
   import org.puremvc.as3.interfaces.IFacade;
   
   public interface IQuestManagerStrategy
   {
      
      function prepare(param1:IFacade, param2:GameConfigProxy, param3:CvTagProxy, param4:PlayerProxy, param5:PlayfieldProxy) : void;
      
      function set questBook(param1:QuestBookVo) : void;
      
      function get questBook() : QuestBookVo;
      
      function addQuest(param1:QuestDTO) : IQuestPlayerVo;
      
      function updateTask(param1:Number, param2:String, param3:Number, param4:Number, param5:QuestCompleteCostVo) : void;
      
      function updateQuestState(param1:Number, param2:String, param3:Number, param4:Boolean = false) : void;
   }
}

