package com.greensock.easing
{
   public class Linear
   {
      
      public static const power:uint = 0;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         power = 0;
      }
      
      public function Linear()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         §§push(param3);
         if(!(_loc6_ && Linear))
         {
            §§push(param1);
            if(!_loc6_)
            {
               §§push(§§pop() * §§pop());
               if(_loc5_ || Linear)
               {
                  §§push(param4);
                  if(_loc5_ || Boolean(param3))
                  {
                     §§goto(addr0063);
                  }
                  §§goto(addr0073);
               }
               §§goto(addr0072);
            }
            addr0063:
            §§goto(addr0074);
         }
         addr0074:
         §§push(§§pop() / §§pop());
         if(_loc5_ || Boolean(param1))
         {
            addr0073:
            addr0072:
            return §§pop() + param2;
         }
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         §§push(param3);
         if(_loc5_ || Boolean(param3))
         {
            §§push(param1);
            if(!(_loc6_ && Boolean(param3)))
            {
               §§push(§§pop() * §§pop());
               if(_loc5_)
               {
                  §§push(param4);
                  if(_loc5_ || Boolean(param1))
                  {
                     §§push(§§pop() / §§pop());
                     if(!_loc6_)
                     {
                        addr005e:
                        addr005d:
                        return §§pop() + param2;
                     }
                  }
                  §§goto(addr005e);
               }
               §§goto(addr005d);
            }
            §§goto(addr005e);
         }
         §§goto(addr005d);
      }
      
      public static function easeNone(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         §§push(param3);
         if(_loc6_ || Linear)
         {
            §§push(param1);
            if(!(_loc5_ && Boolean(param2)))
            {
               §§push(§§pop() * §§pop());
               if(!(_loc5_ && Linear))
               {
                  addr0054:
                  §§push(param4);
                  if(!_loc5_)
                  {
                     §§push(§§pop() / §§pop());
                     if(!_loc5_)
                     {
                        addr0064:
                        addr0063:
                        return §§pop() + param2;
                     }
                  }
                  §§goto(addr0064);
               }
               §§goto(addr0063);
            }
            §§goto(addr0064);
         }
         §§goto(addr0054);
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         §§push(param3);
         if(!(_loc5_ && Linear))
         {
            §§push(param1);
            if(!(_loc5_ && Linear))
            {
               §§push(§§pop() * §§pop());
               if(_loc6_ || Boolean(param3))
               {
                  §§push(param4);
                  if(_loc6_)
                  {
                     §§goto(addr0056);
                  }
                  §§goto(addr005e);
               }
               §§goto(addr005d);
            }
            addr0056:
            §§push(§§pop() / §§pop());
            if(_loc6_)
            {
               addr005e:
               addr005d:
               return §§pop() + param2;
            }
         }
         §§goto(addr005d);
      }
   }
}

