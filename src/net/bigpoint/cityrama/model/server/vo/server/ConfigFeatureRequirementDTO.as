package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.model.server.vo.server.quest.ConfigQuestDTO;
   
   public class ConfigFeatureRequirementDTO
   {
      
      private var _correspondingConfigId:Number;
      
      private var _type:String;
      
      private var _configUserLevel:ConfigUserLevelDTO;
      
      private var _configQuest:ConfigQuestDTO;
      
      public function ConfigFeatureRequirementDTO(param1:Object)
      {
         super();
         this._correspondingConfigId = param1.eid;
         this._type = param1.t;
      }
      
      public function get correspondingConfigId() : Number
      {
         return this._correspondingConfigId;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get configUserLevel() : ConfigUserLevelDTO
      {
         return this._configUserLevel;
      }
      
      public function set configUserLevel(param1:ConfigUserLevelDTO) : void
      {
         this._configUserLevel = param1;
      }
      
      public function get configQuest() : ConfigQuestDTO
      {
         return this._configQuest;
      }
      
      public function set configQuest(param1:ConfigQuestDTO) : void
      {
         this._configQuest = param1;
      }
   }
}

