package net.bigpoint.cityrama.model.server.vo.server.player
{
   import net.bigpoint.cityrama.model.server.vo.server.player.interfaces.IQuestRewardDTO;
   
   public class QuestRewardInfoVo
   {
      
      private var _questRewardVo:IQuestRewardDTO;
      
      private var _name:String;
      
      private var _type:String;
      
      public function QuestRewardInfoVo(param1:IQuestRewardDTO)
      {
         super();
         this._questRewardVo = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get questRewardVo() : QuestRewardDTO
      {
         return this._questRewardVo as QuestRewardDTO;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
   }
}

