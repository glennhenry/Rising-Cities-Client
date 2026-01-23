package net.bigpoint.cityrama.model.server.vo.server.player.interfaces
{
   import net.bigpoint.cityrama.model.server.vo.server.ConfigAssistDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigImprovementDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigResourceDTO;
   
   public interface IQuestRewardDTO
   {
      
      function get rewardType() : String;
      
      function get amount() : Number;
      
      function get resourceConfig() : ConfigResourceDTO;
      
      function get goodConfig() : ConfigGoodDTO;
      
      function set resourceConfig(param1:ConfigResourceDTO) : void;
      
      function set goodConfig(param1:ConfigGoodDTO) : void;
      
      function get rewardConfigID() : Number;
      
      function get willItDrop() : Boolean;
      
      function get configPlayfieldItem() : ConfigPlayfieldItemDTO;
      
      function set configPlayfieldItem(param1:ConfigPlayfieldItemDTO) : void;
      
      function get improvementConfig() : ConfigImprovementDTO;
      
      function set improvementConfig(param1:ConfigImprovementDTO) : void;
      
      function get assistConfig() : ConfigAssistDTO;
      
      function set assistConfig(param1:ConfigAssistDTO) : void;
   }
}

