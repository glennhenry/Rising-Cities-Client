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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            super();
            if(_loc3_)
            {
               this._questRewardVo = param1;
            }
         }
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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this._type = param1;
         }
      }
   }
}

