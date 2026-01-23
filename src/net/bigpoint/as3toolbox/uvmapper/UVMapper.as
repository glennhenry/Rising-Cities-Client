package net.bigpoint.as3toolbox.uvmapper
{
   import flash.display.BitmapData;
   
   public class UVMapper
   {
      
      private static var _uvMapperInstance:UVMapperInstance;
      
      public function UVMapper()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function get instance() : UVMapperInstance
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || UVMapper)
         {
            §§push(_uvMapperInstance);
            if(_loc2_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_ || UVMapper)
                  {
                     addr0042:
                     _uvMapperInstance = new UVMapperInstance();
                  }
               }
               return _uvMapperInstance;
            }
         }
         §§goto(addr0042);
      }
      
      public static function map(param1:BitmapData, param2:BitmapData, param3:BitmapData = null, param4:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(!(_loc5_ && Boolean(param3)))
         {
            instance.map(param1,param2,param3,param4);
         }
      }
   }
}

