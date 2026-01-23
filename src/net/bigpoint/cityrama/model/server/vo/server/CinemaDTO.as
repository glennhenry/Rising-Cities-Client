package net.bigpoint.cityrama.model.server.vo.server
{
   public class CinemaDTO
   {
      
      private var _viewsToday:uint = 0;
      
      private var _resetTimeStamp:Number = 0;
      
      public function CinemaDTO(param1:Object)
      {
         super();
         this._viewsToday = param1.v;
         if(param1.t)
         {
            this._resetTimeStamp = param1.t;
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

