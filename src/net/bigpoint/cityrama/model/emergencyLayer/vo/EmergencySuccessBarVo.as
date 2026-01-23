package net.bigpoint.cityrama.model.emergencyLayer.vo
{
   public class EmergencySuccessBarVo
   {
      
      public var progressCap:Number;
      
      public var capVisible:Boolean = true;
      
      public var advanceVisible:Boolean = false;
      
      public function EmergencySuccessBarVo(param1:Number)
      {
         super();
         this.progressCap = param1;
      }
   }
}

