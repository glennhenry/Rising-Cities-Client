package net.bigpoint.cityrama.model.server.vo.server.quest
{
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   import net.bigpoint.cityrama.model.server.vo.server.AbstractQuestSystemConfigDTO;
   import net.bigpoint.cityrama.model.server.vo.server.quest.interfaces.IQuestConfigDTO;
   import net.bigpoint.cityrama.model.server.vo.server.quest.interfaces.IQuestRequirementDTO;
   
   public class ConfigQuestDTO extends AbstractQuestSystemConfigDTO implements ILoggableObject, IQuestConfigDTO
   {
      
      private var _questRequirements:Vector.<IQuestRequirementDTO>;
      
      private var _resumable:Boolean;
      
      private var _timeLeft:Number;
      
      private var _questGiverGFXid:Number;
      
      public function ConfigQuestDTO(param1:Object)
      {
         var _loc2_:Object = null;
         super(param1);
         this._timeLeft = param1.et;
         this._resumable = param1.s;
         this._questGiverGFXid = param1.cgId;
         this._questRequirements = new Vector.<IQuestRequirementDTO>();
         for each(_loc2_ in param1.rq)
         {
            this._questRequirements.push(new QuestRequirementDTO(_loc2_));
         }
      }
      
      override public function log(param1:int, param2:int) : void
      {
      }
      
      public function get saveable() : Boolean
      {
         return this._resumable;
      }
      
      public function get resumable() : Boolean
      {
         return this._resumable;
      }
      
      public function get questRequirements() : Vector.<IQuestRequirementDTO>
      {
         return this._questRequirements;
      }
      
      public function get runtimeFull() : Number
      {
         return this._timeLeft;
      }
      
      public function get questGiverGFXid() : Number
      {
         return this._questGiverGFXid;
      }
   }
}

