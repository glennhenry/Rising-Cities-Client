package net.bigpoint.cityrama.model.quest.vo.interfaces
{
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestTaskDTO;
   
   public interface IQuestTaskVo
   {
      
      function get flavourText() : String;
      
      function set flavourText(param1:String) : void;
      
      function get headerText() : String;
      
      function set headerText(param1:String) : void;
      
      function get isCompleted() : Boolean;
      
      function set isCompleted(param1:Boolean) : void;
      
      function get isActive() : Boolean;
      
      function set isActive(param1:Boolean) : void;
      
      function get gfxId() : int;
      
      function set gfxId(param1:int) : void;
      
      function get localeId() : String;
      
      function set localeId(param1:String) : void;
      
      function set taskDTO(param1:QuestTaskDTO) : void;
   }
}

