package com.adobe.crypto
{
   import com.adobe.utils.IntUtil;
   import flash.utils.ByteArray;
   
   public class MD5
   {
      
      public static var digest:ByteArray;
      
      public function MD5()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      private static function ff(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int) : int
      {
         return transform(f,param1,param2,param3,param4,param5,param6,param7);
      }
      
      private static function f(param1:int, param2:int, param3:int) : int
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §§push(param1);
         if(!(_loc4_ && MD5))
         {
            §§push(param2);
            if(!(_loc4_ && MD5))
            {
               §§push(§§pop() & §§pop());
               if(!_loc4_)
               {
                  addr0054:
                  §§push(param1);
                  if(_loc5_)
                  {
                     §§goto(addr006d);
                  }
                  §§goto(addr006a);
               }
               addr006d:
               §§goto(addr005b);
            }
            addr005b:
            §§push(~§§pop());
            if(_loc5_ || Boolean(param3))
            {
               addr006a:
               §§push(§§pop() & param3);
            }
            return §§pop() | §§pop();
         }
         §§goto(addr0054);
      }
      
      private static function g(param1:int, param2:int, param3:int) : int
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(param1);
         if(!_loc5_)
         {
            §§push(param3);
            if(!_loc5_)
            {
               §§push(§§pop() & §§pop());
               if(_loc4_ || MD5)
               {
                  addr005f:
                  addr003f:
                  §§push(param2);
                  if(_loc4_ || Boolean(param1))
                  {
                     §§push(param3);
                     if(_loc4_ || Boolean(param3))
                     {
                        §§push(~§§pop());
                     }
                     §§push(§§pop() & §§pop());
                  }
                  return §§pop() | §§pop();
               }
            }
            §§goto(addr005f);
         }
         §§goto(addr003f);
      }
      
      private static function h(param1:int, param2:int, param3:int) : int
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §§push(param1);
         if(_loc5_ || Boolean(param2))
         {
            §§push(param2);
            if(!_loc4_)
            {
               §§push(§§pop() ^ §§pop());
               if(!(_loc4_ && MD5))
               {
                  addr0048:
                  addr0047:
                  return §§pop() ^ param3;
               }
            }
            §§goto(addr0048);
         }
         §§goto(addr0047);
      }
      
      private static function i(param1:int, param2:int, param3:int) : int
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         §§push(param2);
         if(!(_loc4_ && Boolean(param1)))
         {
            §§push(param1);
            if(_loc5_)
            {
               §§push(param3);
               if(!_loc4_)
               {
                  §§push(~§§pop());
               }
               §§push(§§pop() | §§pop());
            }
            return §§pop() ^ §§pop();
         }
      }
      
      private static function transform(param1:Function, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int) : int
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         §§push(param2);
         if(!(_loc10_ && Boolean(param3)))
         {
            §§push(int(§§pop() + int(param1(param3,param4,param5)) + param6 + param8));
         }
         var _loc9_:* = §§pop();
         return IntUtil.rol(_loc9_,param7) + param3;
      }
      
      private static function hh(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int) : int
      {
         return transform(h,param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function hash(param1:String) : String
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:ByteArray = new ByteArray();
         if(_loc3_ || MD5)
         {
            _loc2_.writeUTFBytes(param1);
         }
         return hashBinary(_loc2_);
      }
      
      private static function createBlocks(param1:ByteArray) : Array
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:Array = new Array();
         var _loc3_:int = param1.length * 8;
         var _loc4_:int = 255;
         var _loc5_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc5_);
            loop1:
            while(true)
            {
               §§push(_loc3_);
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc6_ && Boolean(param1))
                     {
                        break;
                     }
                  }
                  else
                  {
                     _loc2_[int(_loc5_ >> 5)] = _loc2_[int(_loc5_ >> 5)] | (param1[_loc5_ / 8] & _loc4_) << _loc5_ % 32;
                     if(!(_loc7_ || Boolean(_loc3_)))
                     {
                        break;
                     }
                     §§push(_loc5_);
                     if(_loc6_ && Boolean(param1))
                     {
                        continue loop1;
                     }
                     §§push(8);
                     if(!(_loc7_ || Boolean(param1)))
                     {
                        continue;
                     }
                     §§push(int(§§pop() + §§pop()));
                     if(_loc6_ && Boolean(param1))
                     {
                        continue loop1;
                     }
                     _loc5_ = §§pop();
                     if(!_loc6_)
                     {
                        continue loop0;
                     }
                  }
                  _loc2_[int(_loc3_ >> 5)] = _loc2_[int(_loc3_ >> 5)] | 128 << _loc3_ % 32;
                  if(_loc7_)
                  {
                     _loc2_[int((_loc3_ + 64 >>> 9 << 4) + 14)] = _loc3_;
                  }
                  break;
               }
               break;
            }
            break;
         }
         return _loc2_;
      }
      
      public static function hashBinary(param1:ByteArray) : String
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 2308
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      private static function gg(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int) : int
      {
         return transform(g,param1,param2,param3,param4,param5,param6,param7);
      }
      
      private static function ii(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int) : int
      {
         return transform(i,param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function hashBytes(param1:ByteArray) : String
      {
         return hashBinary(param1);
      }
   }
}

