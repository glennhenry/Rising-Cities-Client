package net.bigpoint.cityrama.model.infrastructure.vo
{
   import flash.errors.IllegalOperationError;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   
   public class SecurityStatusVo
   {
      
      public static const LEVEL_0:int = 0;
      
      public static const LEVEL_1:int = 1;
      
      public static const LEVEL_2:int = 2;
      
      public static const LEVEL_3:int = 3;
      
      public static const BLOCKED_BY_DEVICE:int = 99;
      
      private static const MAXLEVEL:int = 3;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc1_)
      {
         LEVEL_0 = 0;
         if(_loc2_)
         {
            LEVEL_1 = 1;
            if(!_loc1_)
            {
               LEVEL_2 = 2;
               if(!(_loc1_ && _loc2_))
               {
                  addr0063:
                  LEVEL_3 = 3;
                  if(!(_loc1_ && _loc2_))
                  {
                     §§goto(addr0078);
                  }
                  §§goto(addr008d);
               }
            }
            addr0078:
            BLOCKED_BY_DEVICE = 99;
            if(_loc2_ || _loc2_)
            {
               addr008d:
               MAXLEVEL = LEVEL_3;
            }
            return;
         }
         §§goto(addr008d);
      }
      §§goto(addr0063);
      
      private var _originID:Number = -1;
      
      private var _x:int;
      
      private var _y:int;
      
      private var _securtiyType:String;
      
      private var _level:int;
      
      public function SecurityStatusVo(param1:int, param2:int, param3:String, param4:Number = -1, param5:int = 0)
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(_loc6_ || Boolean(param3))
         {
            super();
            if(_loc6_)
            {
               addr002d:
               this._x = param1;
               if(!(_loc7_ && Boolean(param3)))
               {
                  this._y = param2;
                  if(_loc6_ || Boolean(this))
                  {
                     this._originID = param4;
                     if(!(_loc7_ && Boolean(param3)))
                     {
                        §§goto(addr0083);
                     }
                  }
                  §§goto(addr0096);
               }
            }
            addr0083:
            this.securtiyType = param3;
            if(!(_loc7_ && Boolean(param3)))
            {
               addr0096:
               this.level = param5;
            }
            return;
         }
         §§goto(addr002d);
      }
      
      public function clone() : SecurityStatusVo
      {
         return new SecurityStatusVo(this.x,this.y,this.securtiyType,this.originID,this.level);
      }
      
      public function get securtiyType() : String
      {
         return this._securtiyType;
      }
      
      public function set securtiyType(param1:String) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1;
         if(!_loc4_)
         {
            §§push(ServerTagConstants.FIRE_DEPARTMENT);
            if(_loc3_)
            {
               §§push(_loc2_);
               if(!(_loc4_ && _loc3_))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc4_ && Boolean(_loc2_)))
                     {
                        §§push(0);
                        if(_loc3_)
                        {
                        }
                     }
                     else
                     {
                        addr00c8:
                        §§push(1);
                        if(_loc3_ || Boolean(this))
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(ServerTagConstants.POLICE_DEPARTMENT);
                     if(!(_loc4_ && Boolean(_loc2_)))
                     {
                        §§push(_loc2_);
                        if(!_loc4_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc3_ || Boolean(_loc2_))
                              {
                                 §§goto(addr00c8);
                              }
                              else
                              {
                                 addr00e5:
                                 §§push(2);
                                 if(_loc3_)
                                 {
                                 }
                              }
                              addr00fc:
                              switch(§§pop())
                              {
                                 case 0:
                                 case 1:
                                 case 2:
                                    this._securtiyType = param1;
                                    if(_loc4_)
                                    {
                                    }
                                    return;
                                 default:
                                    throw IllegalOperationError("unkown Type: " + param1);
                              }
                           }
                           else
                           {
                              addr00e1:
                              addr00e0:
                              if(ServerTagConstants.HOSPITAL === _loc2_)
                              {
                                 §§goto(addr00e5);
                              }
                              else
                              {
                                 §§push(3);
                              }
                              §§goto(addr00fc);
                           }
                           §§goto(addr00e5);
                        }
                        §§goto(addr00e1);
                     }
                     §§goto(addr00e0);
                  }
                  §§goto(addr00fc);
               }
               §§goto(addr00e1);
            }
            §§goto(addr00e0);
         }
         §§goto(addr00c8);
      }
      
      public function get level() : int
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            §§push(this._level);
            if(!_loc2_)
            {
               §§push(BLOCKED_BY_DEVICE);
               if(!_loc2_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc1_ || Boolean(this))
                  {
                     §§push(!§§pop());
                     if(_loc1_)
                     {
                        var _temp_3:* = §§pop();
                        §§push(_temp_3);
                        if(_temp_3)
                        {
                           if(_loc1_)
                           {
                              §§pop();
                              if(_loc1_)
                              {
                                 §§push(this._level);
                                 if(_loc1_)
                                 {
                                    §§goto(addr0073);
                                 }
                                 §§goto(addr0087);
                              }
                              §§goto(addr0077);
                           }
                        }
                     }
                  }
                  addr0073:
                  §§goto(addr0068);
               }
               addr0068:
               if(§§pop() > MAXLEVEL)
               {
                  addr0077:
                  §§push(MAXLEVEL);
                  if(!(_loc2_ && _loc2_))
                  {
                     addr0087:
                     §§push(§§pop());
                     if(!_loc1_)
                     {
                        addr00a2:
                        return §§pop();
                     }
                  }
               }
               else
               {
                  §§push(this._level);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§goto(addr00a2);
                  }
               }
               return §§pop();
            }
            §§goto(addr00a2);
         }
         §§goto(addr0077);
      }
      
      public function set level(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._level = param1;
         }
      }
      
      public function get x() : int
      {
         return this._x;
      }
      
      public function get y() : int
      {
         return this._y;
      }
      
      public function get originID() : Number
      {
         return this._originID;
      }
      
      public function set x(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this._x = param1;
         }
      }
      
      public function set y(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._y = param1;
         }
      }
   }
}

