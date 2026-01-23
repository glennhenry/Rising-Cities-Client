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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(!(_loc2_ && Boolean(this)))
            {
               this._type = param1.t;
               if(_loc3_)
               {
                  this._amount = param1.a;
                  if(_loc3_ || Boolean(param1))
                  {
                     addr006e:
                     this._configID = param1.id;
                  }
                  return;
               }
            }
         }
         §§goto(addr006e);
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

