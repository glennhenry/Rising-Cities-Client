package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   
   public class ConfigUserLevelDTO implements ILoggableObject
   {
      
      private var _id:Number;
      
      private var _level:Number;
      
      private var _nextLevelId:Number;
      
      private var _previousLevelId:Number;
      
      private var _xp:Number;
      
      private var _requiredXP:Number;
      
      private var _levelOutputs:Vector.<ConfigOutputDTO>;
      
      private var _availableQuestSlots:int;
      
      public function ConfigUserLevelDTO(param1:Object)
      {
         var _loc2_:Object = null;
         super();
         this._id = param1.id;
         this._level = param1.l;
         this._nextLevelId = param1.nid;
         this._previousLevelId = param1.pid;
         this._xp = param1.xp;
         this._requiredXP = param1.axp;
         this._availableQuestSlots = param1.qs;
         this._levelOutputs = new Vector.<ConfigOutputDTO>();
         for each(_loc2_ in param1.o)
         {
            this._levelOutputs.push(new ConfigOutputDTO(_loc2_));
         }
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function set id(param1:Number) : void
      {
         this._id = param1;
      }
      
      public function get level() : Number
      {
         return this._level;
      }
      
      public function set level(param1:Number) : void
      {
         this._level = param1;
      }
      
      public function get nextLevelId() : Number
      {
         return this._nextLevelId;
      }
      
      public function get xp() : Number
      {
         return this._xp;
      }
      
      public function set xp(param1:Number) : void
      {
         this._xp = param1;
      }
      
      public function get previousLevelId() : Number
      {
         return this._previousLevelId;
      }
      
      public function get availableQuestSlots() : int
      {
         return this._availableQuestSlots;
      }
      
      public function get requiredXP() : Number
      {
         return this._requiredXP;
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
      
      public function get levelOutputs() : Vector.<ConfigOutputDTO>
      {
         return this._levelOutputs;
      }
      
      public function set levelOutputs(param1:Vector.<ConfigOutputDTO>) : void
      {
         this._levelOutputs = param1;
      }
   }
}

