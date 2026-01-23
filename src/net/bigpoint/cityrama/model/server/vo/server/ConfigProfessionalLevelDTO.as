package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigProfessionalLevelDTO
   {
      
      private var _id:Number;
      
      private var _xpThreshold:uint;
      
      private var _skillpointGain:uint;
      
      public function ConfigProfessionalLevelDTO(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            super();
            if(!(_loc2_ && Boolean(this)))
            {
               this._id = param1.pli;
               if(_loc3_)
               {
                  this._xpThreshold = param1.xp;
                  if(!_loc2_)
                  {
                     addr005a:
                     this._skillpointGain = param1.sp;
                  }
                  §§goto(addr0063);
               }
               §§goto(addr005a);
            }
         }
         addr0063:
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get xpThreshold() : uint
      {
         return this._xpThreshold;
      }
      
      public function get skillpointGain() : uint
      {
         return this._skillpointGain;
      }
   }
}

