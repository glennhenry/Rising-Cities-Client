package net.bigpoint.as3toolbox.mapfactory
{
   import flash.display.BitmapData;
   
   public class SimpleTile extends Tile
   {
      
      public static var bitmapDataCache:Array;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc2_))
      {
         bitmapDataCache = [];
      }
      
      public var bitmapData:BitmapData;
      
      public var cacheID:String;
      
      public function SimpleTile(param1:int, param2:BitmapData, param3:String = null)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            super(param1);
            if(_loc4_)
            {
               this.cacheID = param3;
               if(_loc4_ || Boolean(param1))
               {
                  addr0053:
                  if(param3 != null)
                  {
                     if(_loc4_ || Boolean(this))
                     {
                        bitmapDataCache[param3] = param2;
                        if(_loc4_)
                        {
                        }
                     }
                  }
                  else
                  {
                     this.bitmapData = param2;
                  }
               }
            }
            return;
         }
         §§goto(addr0053);
      }
   }
}

