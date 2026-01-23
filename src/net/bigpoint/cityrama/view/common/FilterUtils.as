package net.bigpoint.cityrama.view.common
{
   import flash.filters.ColorMatrixFilter;
   import spark.filters.DropShadowFilter;
   import spark.filters.GlowFilter;
   
   public class FilterUtils
   {
      
      public function FilterUtils()
      {
         super();
      }
      
      public static function createDesaturationFilter() : ColorMatrixFilter
      {
         var _loc1_:Array = new Array(0.309,0.609,0.082,0,0,0.309,0.609,0.082,0,0,0.309,0.609,0.082,0,0,0,0,0,1,0);
         return new ColorMatrixFilter(_loc1_);
      }
      
      public static function createOutlineFilter(param1:Number = 0, param2:Number = 1, param3:Boolean = false, param4:Number = 1) : GlowFilter
      {
         return new GlowFilter(param1,param4,param2,param2,40,2,param3,false);
      }
      
      public static function createInnerShadowFilter(param1:Number = 0, param2:Boolean = false) : DropShadowFilter
      {
         return new DropShadowFilter(0,45,param1,0.8,4,4,2,2,true,param2,param2);
      }
      
      public static function createInnerShadowFilterDistance(param1:Number = 0, param2:Number = 2, param3:Number = 2, param4:Boolean = false) : DropShadowFilter
      {
         return new DropShadowFilter(0,45,param1,0.75,param2,param3,1,1,true,param4,param4);
      }
      
      public static function createDropShadowTextFilter() : DropShadowFilter
      {
         return new DropShadowFilter(0,90,0,1,2,2);
      }
      
      public static function createDropShadowTextFilterBig() : DropShadowFilter
      {
         return new DropShadowFilter(0,90,0,0.5,2,2,20);
      }
      
      public static function createDropShadowFilter(param1:Number = 4, param2:Number = 45, param3:uint = 0, param4:Number = 1, param5:Number = 4, param6:Number = 4, param7:Number = 1, param8:int = 1, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false) : DropShadowFilter
      {
         return new DropShadowFilter(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
   }
}

