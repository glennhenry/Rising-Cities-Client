package net.bigpoint.as3toolbox.uvmapper
{
   import flash.display.BitmapData;
   
   public class UVMapper
   {
      
      private static var _uvMapperInstance:UVMapperInstance;
      
      public function UVMapper()
      {
         super();
      }
      
      public static function get instance() : UVMapperInstance
      {
         if(_uvMapperInstance == null)
         {
            _uvMapperInstance = new UVMapperInstance();
         }
         return _uvMapperInstance;
      }
      
      public static function map(param1:BitmapData, param2:BitmapData, param3:BitmapData = null, param4:Boolean = false) : void
      {
         instance.map(param1,param2,param3,param4);
      }
   }
}

