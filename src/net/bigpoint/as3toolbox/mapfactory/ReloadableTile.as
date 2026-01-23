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
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!_loc5_)
         {
            super(param1,null,param3);
            if(_loc4_)
            {
               addr0027:
               this.fileKey = param2;
            }
            return;
         }
         §§goto(addr0027);
      }
      
      final public function updateBitmapData(param1:BitmapData) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            if(cacheID != null)
            {
               if(!_loc2_)
               {
                  bitmapDataCache[cacheID] = param1;
                  if(_loc2_ && Boolean(this))
                  {
                  }
               }
            }
            else
            {
               this.bitmapData = param1;
            }
         }
      }
      
      final public function removeBitmapData() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            if(cacheID != null)
            {
               if(!_loc2_)
               {
                  if(bitmapDataCache[cacheID] as BitmapData != null)
                  {
                     if(_loc1_ || Boolean(this))
                     {
                        (bitmapDataCache[cacheID] as BitmapData).dispose();
                        if(!(_loc2_ && Boolean(this)))
                        {
                           bitmapDataCache[cacheID] = null;
                           if(!_loc1_)
                           {
                              addr009b:
                              bitmapData.dispose();
                              if(_loc1_)
                              {
                                 addr00a7:
                                 bitmapData = null;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr00ae);
               }
               §§goto(addr009b);
            }
            else if(bitmapData != null)
            {
               if(_loc1_ || _loc1_)
               {
                  §§goto(addr009b);
               }
               §§goto(addr00a7);
            }
         }
         addr00ae:
      }
   }
}

