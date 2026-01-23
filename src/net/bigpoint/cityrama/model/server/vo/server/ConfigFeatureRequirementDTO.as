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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            super();
            if(!(_loc3_ && Boolean(this)))
            {
               this._correspondingConfigId = param1.eid;
               if(_loc2_)
               {
                  addr0049:
                  this._type = param1.t;
               }
               return;
            }
         }
         §§goto(addr0049);
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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._configUserLevel = param1;
         }
      }
      
      public function get configQuest() : ConfigQuestDTO
      {
         return this._configQuest;
      }
      
      public function set configQuest(param1:ConfigQuestDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._configQuest = param1;
         }
      }
   }
}

