package net.bigpoint.util
{
   public class VectorUtilities
   {
      
      public function VectorUtilities()
      {
         super();
      }
      
      public static function shuffle(param1:Object) : void
      {
         var _loc2_:uint = uint(param1.length);
         var _loc3_:uint = 0;
         while(_loc3_ < _loc2_)
         {
            swap(param1,_loc3_,_loc3_ + uint(Math.random() * (_loc2_ - _loc3_)));
            _loc3_++;
         }
      }
      
      private static function swap(param1:Object, param2:uint, param3:uint) : void
      {
         var _loc4_:Object = param1[param2];
         param1[param2] = param1[param3];
         param1[param3] = _loc4_;
      }
      
      public static function getMinValue(param1:Vector.<Number>) : Number
      {
         var _loc3_:Number = NaN;
         var _loc2_:Number = Number.MAX_VALUE;
         for each(_loc3_ in param1)
         {
            _loc2_ = Math.min(_loc3_,_loc2_);
         }
         return _loc2_;
      }
   }
}

