package net.bigpoint.util
{
   public class VectorUtilities
   {
      
      public function VectorUtilities()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
         }
      }
      
      public static function shuffle(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:uint = uint(param1.length);
         var _loc3_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            while(true)
            {
               if(§§pop() >= _loc2_)
               {
                  break loop0;
               }
               swap(param1,_loc3_,_loc3_ + uint(Math.random() * (_loc2_ - _loc3_)));
               if(_loc4_)
               {
                  break;
               }
               §§push(_loc3_);
               if(_loc5_)
               {
                  §§push(uint(§§pop() + 1));
                  if(!(_loc4_ && Boolean(_loc3_)))
                  {
                     _loc3_ = §§pop();
                     if(_loc5_ || Boolean(_loc3_))
                     {
                        break;
                     }
                     break loop0;
                  }
               }
            }
         }
      }
      
      private static function swap(param1:Object, param2:uint, param3:uint) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:Object = param1[param2];
         if(!(_loc5_ && Boolean(param2)))
         {
            param1[param2] = param1[param3];
            if(_loc6_ || VectorUtilities)
            {
               addr0053:
               param1[param3] = _loc4_;
            }
            return;
         }
         §§goto(addr0053);
      }
      
      public static function getMinValue(param1:Vector.<Number>) : Number
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:* = NaN;
         var _loc2_:* = Number.MAX_VALUE;
         var _loc4_:int = 0;
         var _loc5_:* = param1;
         for each(_loc4_ in _loc5_)
         {
            §§push(_loc4_);
            if(!_loc6_)
            {
               _loc3_ = §§pop();
               if(_loc6_ && Boolean(_loc2_))
               {
                  continue;
               }
               §§push(Math.min(_loc3_,_loc2_));
            }
            _loc2_ = §§pop();
         }
         return _loc2_;
      }
   }
}

