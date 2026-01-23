package net.bigpoint.cityrama.model.server.vo.server
{
   import flash.utils.getTimer;
   import net.bigpoint.cityrama.constants.quest.QuestSystemCompositePatternSucksConstants;
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   import net.bigpoint.cityrama.model.server.vo.server.quest.QuestRequirementDTO;
   
   public class AbstractQuestSystemDTO implements ILoggableObject
   {
      
      private var _elementState:String;
      
      protected var _downstreamQuestElement:Vector.<AbstractQuestSystemDTO>;
      
      private var _questRequirementvo:QuestRequirementDTO;
      
      private var _endTimeStamp:Number;
      
      private var _endTimeStampSetted:Number;
      
      private var _timeLeft:Number;
      
      public function AbstractQuestSystemDTO(param1:Object)
      {
         super();
         this._elementState = param1 == null ? "NEW" : String(param1.s);
         this._downstreamQuestElement = new Vector.<AbstractQuestSystemDTO>();
         if(param1 != null)
         {
            this.endTimeStamp = param1.et;
            if(param1.u != null && param1.u.et != null && param1.u.et == QuestSystemCompositePatternSucksConstants.QUEST_REQUIREMENT)
            {
               this._questRequirementvo = new QuestRequirementDTO(param1.u);
            }
            if(param1.c)
            {
               for each(var _loc4_ in param1.c.ds)
               {
                  var _loc3_:Boolean = false;
               }
            }
         }
      }
      
      public function get elementState() : String
      {
         return this._elementState;
      }
      
      public function set elementState(param1:String) : void
      {
         this._elementState = param1;
      }
      
      public function get downstreamQuestElement() : Vector.<AbstractQuestSystemDTO>
      {
         return this._downstreamQuestElement;
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
      
      public function get questRequirementvo() : QuestRequirementDTO
      {
         return this._questRequirementvo;
      }
      
      public function get endTimeStamp() : Number
      {
         return this._endTimeStamp;
      }
      
      public function set endTimeStamp(param1:Number) : void
      {
         this._endTimeStampSetted = getTimer();
         this._endTimeStamp = param1;
      }
   }
}

