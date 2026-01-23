package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigEventDTO
   {
      
      private var _id:Number;
      
      private var _levelId:Number;
      
      private var _totalAvailabilityTime:Number;
      
      private var _eventType:String;
      
      private var _availabilityTimeStart:Number;
      
      private var _levelRestricts:Vector.<ConfigEventLevel>;
      
      public function ConfigEventDTO(param1:Object)
      {
         var _loc2_:Object = null;
         super();
         this._id = param1.id;
         this._levelId = param1.l;
         this._totalAvailabilityTime = param1.tt;
         this._availabilityTimeStart = param1.st;
         this._eventType = param1.y;
         this._levelRestricts = new Vector.<ConfigEventLevel>();
         for each(_loc2_ in param1.l)
         {
            this._levelRestricts.push(new ConfigEventLevel(_loc2_));
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
      
      public function get totalAvailabilityTime() : Number
      {
         return this._totalAvailabilityTime;
      }
      
      public function get availabilityTimeStart() : Number
      {
         return this._availabilityTimeStart;
      }
      
      public function get eventType() : String
      {
         return this._eventType;
      }
      
      public function set eventType(param1:String) : void
      {
         this._eventType = param1;
      }
      
      public function get levelRestricts() : Vector.<ConfigEventLevel>
      {
         return this._levelRestricts;
      }
   }
}

