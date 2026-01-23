package net.bigpoint.util
{
   public class MathUtils
   {
      
      public function MathUtils()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function randomInt(param1:int, param2:int) : int
      {
         return Math.floor(Math.random() * param2) + param1;
      }
      
      public static function roundTo5(param1:Number) : Number
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = NaN;
         if(_loc4_)
         {
            §§push(Math.floor(param1 * 100000) - Math.floor(param1) * 100000);
            if(_loc4_)
            {
               §§push(§§pop());
               if(_loc4_)
               {
                  _loc2_ = §§pop();
                  if(_loc4_ || Boolean(param1))
                  {
                     §§push(_loc2_);
                     if(_loc4_ || Boolean(_loc2_))
                     {
                        addr0069:
                        if(§§pop() >= 50000)
                        {
                           if(_loc4_)
                           {
                              addr0077:
                              §§push(Math.floor(param1) + 0.5);
                              if(!(_loc3_ && MathUtils))
                              {
                                 _loc2_ = §§pop();
                                 if(_loc3_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr00b1:
                                 _loc2_ = §§pop();
                              }
                           }
                           addr00b2:
                           return _loc2_;
                        }
                        else
                        {
                           §§push(Math.floor(param1));
                           if(_loc4_)
                           {
                              §§goto(addr00b1);
                           }
                        }
                     }
                     return §§pop();
                  }
                  §§goto(addr0077);
               }
            }
            §§goto(addr0069);
         }
         §§goto(addr00b2);
      }
      
      public static function roundTo(param1:Number, param2:int) : Number
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §§push(Math.round(param1 * Math.pow(10,param2)) / Math.pow(10,param2));
         if(_loc5_ || MathUtils)
         {
            return §§pop();
         }
      }
      
      public static function randomSort(param1:Object, param2:Object) : int
      {
         return Math.round(Math.random() * 2) - 1;
      }
   }
}

