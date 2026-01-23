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
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:Object = null;
         if(!(_loc6_ && _loc3_))
         {
            super();
            if(!_loc6_)
            {
               this._id = param1.id;
               if(_loc5_ || Boolean(_loc2_))
               {
                  this._level = param1.l;
                  if(!(_loc6_ && Boolean(param1)))
                  {
                     this._nextLevelId = param1.nid;
                     if(!_loc6_)
                     {
                        addr006e:
                        this._previousLevelId = param1.pid;
                        if(_loc5_ || Boolean(this))
                        {
                           addr0094:
                           this._xp = param1.xp;
                           if(!(_loc6_ && Boolean(this)))
                           {
                              addr00ab:
                              this._requiredXP = param1.axp;
                              if(_loc5_ || Boolean(this))
                              {
                                 this._availableQuestSlots = param1.qs;
                                 if(!(_loc6_ && Boolean(_loc2_)))
                                 {
                                    addr00db:
                                    this._levelOutputs = new Vector.<ConfigOutputDTO>();
                                 }
                              }
                              for each(_loc2_ in param1.o)
                              {
                                 if(!_loc6_)
                                 {
                                    this._levelOutputs.push(new ConfigOutputDTO(_loc2_));
                                 }
                              }
                              return;
                              addr00e9:
                           }
                        }
                        §§goto(addr00db);
                     }
                     §§goto(addr0094);
                  }
                  §§goto(addr006e);
               }
               §§goto(addr00e9);
            }
            §§goto(addr00db);
         }
         §§goto(addr00ab);
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
         if(_loc2_ || _loc3_)
         {
            this._id = param1;
         }
      }
      
      public function get level() : Number
      {
         return this._level;
      }
      
      public function set level(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._level = param1;
         }
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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._xp = param1;
         }
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
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._levelOutputs = param1;
         }
      }
   }
}

