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
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:Object = null;
         if(_loc6_ || Boolean(param1))
         {
            super();
            if(_loc6_)
            {
               this._id = param1.id;
               if(!_loc5_)
               {
                  addr003f:
                  this._levelId = param1.l;
                  if(!(_loc5_ && Boolean(param1)))
                  {
                     this._totalAvailabilityTime = param1.tt;
                     if(!_loc5_)
                     {
                        addr0074:
                        this._availabilityTimeStart = param1.st;
                        if(!(_loc5_ && Boolean(this)))
                        {
                           addr008c:
                           this._eventType = param1.y;
                           if(_loc6_)
                           {
                              addr009b:
                              this._levelRestricts = new Vector.<ConfigEventLevel>();
                           }
                        }
                        for each(_loc2_ in param1.l)
                        {
                           if(_loc6_)
                           {
                              this._levelRestricts.push(new ConfigEventLevel(_loc2_));
                           }
                        }
                        return;
                        addr00aa:
                     }
                     §§goto(addr008c);
                  }
                  §§goto(addr009b);
               }
               §§goto(addr0074);
            }
            §§goto(addr00aa);
         }
         §§goto(addr003f);
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function set id(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._id = param1;
         }
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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._eventType = param1;
         }
      }
      
      public function get levelRestricts() : Vector.<ConfigEventLevel>
      {
         return this._levelRestricts;
      }
   }
}

