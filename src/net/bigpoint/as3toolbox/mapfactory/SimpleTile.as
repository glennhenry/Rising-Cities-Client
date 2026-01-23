package net.bigpoint.as3toolbox.mapfactory
{
   import flash.display.BitmapData;
   
   public class SimpleTile extends Tile
   {
      
      public static var bitmapDataCache:Array = [];
      
      public var bitmapData:BitmapData;
      
      public var cacheID:String;
      
      public function SimpleTile(param1:int, param2:BitmapData, param3:String = null)
      {
         super(param1);
         this.cacheID = param3;
         if(param3 != null)
         {
            bitmapDataCache[param3] = param2;
         }
         else
         {
            this.bitmapData = param2;
         }
      }
   }
}

