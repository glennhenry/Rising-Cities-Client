package net.bigpoint.cityrama.model.emergencyLayer.vo
{
   public class EmergencySuccessBarVo
   {
      
      public var progressCap:Number;
      
      public var capVisible:Boolean = true;
      
      public var advanceVisible:Boolean = false;
      
      public function EmergencySuccessBarVo(param1:Number)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            super();
            if(_loc3_)
            {
               this.progressCap = param1;
            }
         }
      }
   }
}

