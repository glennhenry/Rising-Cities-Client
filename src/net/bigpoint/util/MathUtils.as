package net.bigpoint.util
{
   public class MathUtils
   {
      
      public function MathUtils()
      {
         super();
      }
      
      public static function randomInt(param1:int, param2:int) : int
      {
         return Math.floor(Math.random() * param2) + param1;
      }
      
      public static function roundTo5(param1:Number) : Number
      {
         var _loc2_:Number = NaN;
         _loc2_ = Math.floor(param1 * 100000) - Math.floor(param1) * 100000;
         if(_loc2_ >= 50000)
         {
            _loc2_ = Math.floor(param1) + 0.5;
         }
         else
         {
            _loc2_ = Math.floor(param1);
         }
         return _loc2_;
      }
      
      public static function roundTo(param1:Number, param2:int) : Number
      {
         return Math.round(param1 * Math.pow(10,param2)) / Math.pow(10,param2);
      }
      
      public static function randomSort(param1:Object, param2:Object) : int
      {
         return Math.round(Math.random() * 2) - 1;
      }
   }
}

