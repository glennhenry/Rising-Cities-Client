package net.bigpoint.cityrama.debug
{
   import flash.display.Bitmap;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   
   public class SMockProvider
   {
      
      private static var _instance:SMockProvider;
      
      public function SMockProvider()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
         throw new RamaCityError("Mock Provider used!!!!");
      }
      
      public static function getDummyImage(param1:int, param2:int) : Bitmap
      {
         throw new RamaCityError("Mock Provider used!!!! getDummyImage");
      }
      
      public static function getDummyText(param1:int) : String
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         throw new RamaCityError("Mock Provider used!!!! getDummyText");
      }
      
      public static function mockInt(param1:int) : int
      {
         throw new RamaCityError("Mock Provider used!!!!");
      }
      
      public static function mockString(param1:String) : String
      {
         throw new RamaCityError("Mock Provider used!!!!");
      }
      
      public static function mockNum(param1:Number) : Number
      {
         throw new RamaCityError("Mock Provider used!!!!");
      }
      
      public static function mockObj(param1:Object = null) : Object
      {
         throw new RamaCityError("Mock Provider used!!!!");
      }
      
      public static function mockBoolean(param1:Boolean) : Boolean
      {
         throw new RamaCityError("Mock Provider used!!!!");
      }
      
      public static function get instance() : SMockProvider
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            if(_instance == null)
            {
               if(_loc2_ || SMockProvider)
               {
                  _instance = new SMockProvider();
               }
            }
         }
         throw new RamaCityError("Mock Provider used!!!!");
      }
   }
}

