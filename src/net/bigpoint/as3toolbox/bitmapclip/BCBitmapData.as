package net.bigpoint.as3toolbox.bitmapclip
{
   import flash.display.BitmapData;
   
   internal class BCBitmapData extends BitmapData
   {
      
      internal var offsetX:int;
      
      internal var offsetY:int;
      
      public function BCBitmapData(param1:int, param2:int, param3:Boolean = true, param4:uint = 4294967295)
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(!(_loc6_ && Boolean(this)))
         {
            super(param1,param2,param3,param4);
         }
      }
   }
}

