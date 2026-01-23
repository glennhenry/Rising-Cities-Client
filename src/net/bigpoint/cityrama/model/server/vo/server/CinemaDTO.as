package net.bigpoint.cityrama.model.server.vo.server
{
   public class CinemaDTO
   {
      
      private var _viewsToday:uint = 0;
      
      private var _resetTimeStamp:Number = 0;
      
      public function CinemaDTO(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            super();
            if(_loc3_ || _loc2_)
            {
               this._viewsToday = param1.v;
               if(_loc3_)
               {
                  §§goto(addr0055);
               }
            }
            §§goto(addr006b);
         }
         addr0055:
         if(param1.t)
         {
            if(!(_loc2_ && _loc3_))
            {
               addr006b:
               this._resetTimeStamp = param1.t;
            }
         }
      }
      
      public function get viewsToday() : uint
      {
         return this._viewsToday;
      }
      
      public function get resetTimeStamp() : Number
      {
         return this._resetTimeStamp;
      }
   }
}

