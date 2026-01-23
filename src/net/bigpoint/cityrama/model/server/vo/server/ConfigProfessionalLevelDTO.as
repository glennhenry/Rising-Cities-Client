package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigProfessionalLevelDTO
   {
      
      private var _id:Number;
      
      private var _xpThreshold:uint;
      
      private var _skillpointGain:uint;
      
      public function ConfigProfessionalLevelDTO(param1:Object)
      {
         super();
         this._id = param1.pli;
         this._xpThreshold = param1.xp;
         this._skillpointGain = param1.sp;
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

