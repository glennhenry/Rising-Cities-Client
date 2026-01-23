package net.bigpoint.cityrama.model.server.vo.server.player.interfaces
{
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestChallengeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestDTO;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestRewardInfoVo;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestTaskDTO;
   import net.bigpoint.cityrama.model.server.vo.server.quest.ConfigQuestDTO;
   
   public interface IQuestPlayerVo
   {
      
      function get type() : String;
      
      function get state() : String;
      
      function set state(param1:String) : void;
      
      function get id() : int;
      
      function get tasks() : Vector.<QuestTaskDTO>;
      
      function get challenges() : Vector.<QuestChallengeDTO>;
      
      function get config() : ConfigQuestDTO;
      
      function get questDto() : QuestDTO;
      
      function get rewards() : Vector.<QuestRewardInfoVo>;
      
      function set tasks(param1:Vector.<QuestTaskDTO>) : void;
      
      function set challenges(param1:Vector.<QuestChallengeDTO>) : void;
   }
}

