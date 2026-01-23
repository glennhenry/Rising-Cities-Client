package com.greensock.easing
{
   public class Sine
   {
      
      private static const _HALF_PI:Number;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         _HALF_PI = Math.PI * 0.5;
      }
      
      public function Sine()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         §§push(param3);
         if(!_loc5_)
         {
            §§push(§§pop() * Math.sin(param1 / param4 * _HALF_PI));
            if(!_loc5_)
            {
               return §§pop() + param2;
            }
         }
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         §§push(param3);
         if(!_loc5_)
         {
            §§push(-§§pop());
            if(_loc6_ || Boolean(param1))
            {
               §§push(§§pop() * Math.cos(param1 / param4 * _HALF_PI));
               if(_loc6_ || Boolean(param2))
               {
                  addr0062:
                  §§push(param3);
                  if(_loc6_ || Boolean(param3))
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc6_)
                     {
                        addr0079:
                        addr0078:
                        return §§pop() + param2;
                     }
                  }
                  §§goto(addr0079);
               }
            }
            §§goto(addr0078);
         }
         §§goto(addr0062);
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         §§push(param3);
         if(_loc6_)
         {
            §§push(-§§pop());
            if(_loc6_ || Boolean(param2))
            {
               §§push(0.5);
               if(_loc6_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc5_)
                  {
                     addr0057:
                     §§push(Math.cos(Math.PI * param1 / param4) - 1);
                     if(_loc6_)
                     {
                        §§goto(addr0077);
                     }
                     §§goto(addr0076);
                  }
                  addr0077:
                  §§push(§§pop() * §§pop());
                  if(!_loc5_)
                  {
                     addr0076:
                     addr0075:
                     return §§pop() + param2;
                  }
               }
               §§goto(addr0076);
            }
            §§goto(addr0057);
         }
         §§goto(addr0075);
      }
   }
}

