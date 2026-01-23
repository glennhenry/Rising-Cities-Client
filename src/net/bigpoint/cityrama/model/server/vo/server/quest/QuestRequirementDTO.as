package net.bigpoint.cityrama.model.server.vo.server.quest
{
   import net.bigpoint.cityrama.model.server.vo.server.quest.interfaces.IQuestRequirementDTO;
   
   public class QuestRequirementDTO implements IQuestRequirementDTO
   {
      
      private var _type:String;
      
      private var _amount:int;
      
      private var _configID:uint;
      
      public function QuestRequirementDTO(param1:Object)
      {
         super();
         this._type = param1.t;
         this._amount = param1.a;
         this._configID = param1.id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get amount() : int
      {
         return this._amount;
      }
      
      public function get configID() : uint
      {
         return this._configID;
      }
   }
}

