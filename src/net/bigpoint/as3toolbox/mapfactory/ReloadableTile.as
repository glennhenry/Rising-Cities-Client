package net.bigpoint.as3toolbox.mapfactory
{
   import flash.display.BitmapData;
   
   public class ReloadableTile extends SimpleTile
   {
      
      public var fileKey:String;
      
      public var timestamp:int = -1;
      
      public var loading:Boolean;
      
      public function ReloadableTile(param1:int, param2:String, param3:String = null)
      {
         super(param1,null,param3);
         this.fileKey = param2;
      }
      
      final public function updateBitmapData(param1:BitmapData) : void
      {
         if(cacheID != null)
         {
            bitmapDataCache[cacheID] = param1;
         }
         else
         {
            this.bitmapData = param1;
         }
      }
      
      final public function removeBitmapData() : void
      {
         if(cacheID != null)
         {
            if(bitmapDataCache[cacheID] as BitmapData != null)
            {
               (bitmapDataCache[cacheID] as BitmapData).dispose();
               bitmapDataCache[cacheID] = null;
            }
         }
         else if(bitmapData != null)
         {
            bitmapData.dispose();
            bitmapData = null;
         }
      }
   }
}

