package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   
   public class ConfigCityWheelBuffDTO
   {
      
      private var _id:Number;
      
      private var _gfxId:Number;
      
      private var _localeId:String;
      
      private var _specialOutput:ConfigOutputDTO;
      
      public function ConfigCityWheelBuffDTO(param1:Object)
      {
         super();
         this._id = param1.i;
         this._gfxId = param1.g;
         this._localeId = param1.l;
         if(param1.o)
         {
            this._specialOutput = new ConfigOutputDTO(param1.o);
         }
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get gfxId() : Number
      {
         return this._gfxId;
      }
      
      public function get localeId() : String
      {
         return this._localeId;
      }
      
      public function get specialOutput() : ConfigOutputDTO
      {
         return this._specialOutput;
      }
      
      public function get isMultiplier() : Boolean
      {
         if(this._specialOutput)
         {
            if(this._specialOutput.type == ServerOutputConstants.TAG)
            {
               if(this._specialOutput.tagConfig)
               {
                  if(this._specialOutput.tagConfig.tagName == ServerTagConstants.WHEEL_BUFF_MULTI)
                  {
                     return true;
                  }
               }
            }
         }
         return false;
      }
      
      public function get multiplier() : uint
      {
         if(this.isMultiplier)
         {
            return this._specialOutput.outputAmount;
         }
         return 1;
      }
      
      public function get isJackpot() : Boolean
      {
         return this._gfxId == 14;
      }
   }
}

